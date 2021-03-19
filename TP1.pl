:- discontiguous excecao/1.

:- op( 900,xfy,'::' ).

:- dynamic utente/10.
:- dynamic centro_saude/5.
:- dynamic staff/4.
:- dynamic '-'/1.
:- dynamic excecao/1.
:- dynamic vacinacao_Covid/5.


utente(1, 4284234, "Pedro", 1988, "cenas@alunos.uminho.pt", 9354916423, "Freguesia das Rãs", estudante, [micose, coceira], 2).

utente(2, 3324324, "Joca", 2020, "coiso@etal.com", 5343435, "lar das cegonhas", soldado, ["pdm",cenas], 1).

utente(3, 353252, "Zé Fintas", 1940, "besouros@gmail.com", 64534, "Guimarães City", ladrão, [], 2).

utente(4, 4353534, "Rui Joaquim", 1930, "a64853@alunos.uminho.pt", 54334, "Braga", lavrador, [coxo], 2).

centro_saude(1, "Templo dos Primatas", "Avenida dos Abutres", 253696969, "miliga@vai.net").

centro_saude(2, "Belo Horizonte", "Avenida da Engenharia Civil", 253224, "linic@nhamnham.pt").

centro_saude(3, "Casa da mãe Joana", "Algures em Viana", 43434, "cs@vianacity.pt").

staff(1, 2, "Armando Lamparina", "blaze420@superlegal.net").

staff(2, 1, "João Asperla", "beyblades@saofixes.com").

staff(3, 3, "Tógui", "to@hotmail.com").

staff(4, 1, "Zé da Via", "ZV@gmail.com").

staff(5, 1, "Ana Cunha", "cenas@coiso.com").

staff(6, 1, "Sara Cristina", "sara@vianacity.pt").

staff(7, 1, "Rita Personagem", "rr@telepac.pt").


vacinacao_Covid(3, 1, "2021/03/02", pfeizer, 1).

vacinacao_Covid(2, 4, "2021/03/02", pfeizer, 2).

vacinacao_Covid(2, 1, "2021/03/01", pfeizer, 2).

vacinacao_Covid(4, 3, "2021/03/03", astrazeneca, 1).

% Predicado que calcula o comprimento de uma lista
comprimento([],0).
comprimento([_|T],X):- comprimento(T,R), X is R+1.

% Predicado que avalia se uma lista é sublista de outra
prefixo([H|T], [H|Ts]) :- prefixo(T, Ts).
prefixo([], _).

sublista([H|T], [H|Ts]) :- prefixo(T, Ts).
sublista(Prefix, [_|Ts]) :- sublista(Prefix, Ts).

sublist(X,Y):- atom_chars(X,A), atom_chars(Y,B), sublista(A,B).

%Invariante estrutural: não podemos ter utentes com numero repetidos
+utente(Id, _, _, _,_, _, _,_, _, _)::(
     findall(Id,utente(Id, _, _, _,_, _, _,_, _, _),S),
     comprimento(S,N),
     N == 1).

%Invariante estrutural: utentes devem ter endereços de email diferentes
+utente(_, _, _, _,Mail, _, _,_, _, _)::(
     findall(Mail,utente(_, _, _, _,Mail, _, _,_, _, _),S),
     comprimento(S,N),
     N == 1).

% Invariante: apenas podemos adicionar utentes a centros de saúde
% existentes.
+utente(_,_,_,_,_,_,_,_,_,C)::(
     centro_saude(C,_,_,_,_)).


%Invariante estrutural: não pode haver staff com numeros
% repetidos
+staff(Id, _, _, _)::(
     findall(Id, staff(Id,_,_,_), S),
     comprimento(S,N),
     N == 1).

% Invariante referencial: Cada centro de saúde tem no máximo 10 membros
% de staff.
+staff(_,C,_,_)::(
     findall(C,staff(_,C,_,_),S),
     comprimento(S,N),
     N =< 10).

%Invariante referencial: Membros de staff têm Ids não negativos.
+staff(Id,_,_,_)::(
     Id >= 0).

% Invariante estrutural: Staff apenas pode ser adicionado a centros de saúde que já
% existam.
+staff(_,C,_,_)::(
     centro_saude(C,_,_,_,_)).


%Invariante estrutural: Centros de saúde não podem ter o mesmo número de
% telefone.
+centro_saude(_,_,_,Num,_)::(
     findall(Num,centro_saude(_,_,_,Num,_), S),
     comprimento(S,N),
     N == 1).

%Invariante estrutural: Não pode haver centros com o mesmo número.
+centro_saude(Id,_,_,_,_)::(
     findall(Id,centro_saude(Id,_,_,_,_), S),
     comprimento(S,N),
     N == 1).

%Invariante estrutural: Centros de saúde têm Ids não negativos.
+centro_saude(Id,_,_,_,_)::(
     Id >= 0).

%Invariante estrutural: Não se pode remover centros de saúde
-centro_saude(_,_,_,_,_)::fail.

%Invariante estrutural: Não se pode remover utentes que tenham vacinas na base
-utente(X,_,_,_,_,_,_,_,_,_)::(
     not(vacinacao_Covid(_,X,_,_,1)),
     not(vacinacao_Covid(_,X,_,_,2))).

% Invariante estrutural: Vacinas têm que ser admnistradas a utentes que existam,
% por staff que exista.
+vacinacao_Covid(Staff,Utente,_,_,_)::(
     staff(Staff,_,_,_),
     utente(Utente,_,_,_,_,_,_,_,_,_)).


% Permitir a definição de fases de vacinação, definindo critérios de
% inclusão de utentes nas
%diferentes fases (e.g., doenças crónicas, idade, profissão);

primeiraF(X):-
    utente(X,_,_,Nasc,_,_,Morada,_,Doencas,_),
    ((2021 - Nasc >= 50,
      comprimento(Doencas, N),
      N > 2, !);
      (sublist("lar",Morada),!);
      (excecao(primeiraF(X)),!)).

primeiraFase(S):- findall(X,primeiraF(X),S).

excecao(primeiraF(X)):-
    utente(X,_,_,_,_,_,_,Y,_,_),
    (Y == soldado;
     Y == enfermeiro;
     Y == medico;
     Y == segurança).


segundaF(X):-
   utente(X,_,_,Nasc,_,_,_,_,_,_),
    ((2021 - Nasc >= 50,!);
     excecao(segundaFase(X))).

segundaFase(S):- findall(X,segundaF(X),S).

excecao(segundaFase(X)):-
    utente(X,_,_,_,_,_,Morada,_,Doencas,_),
     ((comprimento(Doencas, N),
     N > 0);
     sublist("Guimarães",Morada)).


terceiraF(X):-
    utente(X,_,_,_,_,_,_,_,_,_).

terceiraFase(S):-
    findall(X,terceiraF(X),S).

% identificar pessoas não vacinadas;

naoVacinado(X):-
    not(vacinado(X)).

todosNaoVacinados(S):-
    findall(X,naoVacinado(X),S).

% identificar pessoas vacinadas;

vacinado(X):-
    vacinacao_Covid(_,X,_,_,1);
    vacinacao_Covid(_,X,_,_,2).

todosVacinados(S):-
    findall(X,vacinado(X),S).

% identificar pessoas vacinadas indevidamente;
vacinacaoErrada(X):-
  utente(X,_,_,_,_,_,_,_,_,C),
  centro_saude(C,_,_,_,_),
  vacinado(X),
  vacinacao_Covid(Y,X,_,_,_),
  staff(Y,C,_,_), !, fail.

% identificar pessoas não vacinadas e que são candidatas a vacinação;
eCandidato(X):-
    naoVacinado(X),
    (primeiraF(X);
     segundaF(X)).

candidatosV(S):- findall(X,eCandidato(X),S).

% identificar pessoas a quem falta a segunda toma da vacina;
faltaSegunda(X):-
    utente(Z,_,X,_,_,_,_,_,_,_),
    vacinacao_Covid(_,Z,_,_,1),
    not(vacinacao_Covid(_,Z,_,_,2)).

%  Desenvolver um sistema de inferência capaz de implementar os
% mecanismos de raciocínio inerentes a estes sistemas

si(Questao,verdadeiro):-
    Questao.
si(Questao,falso):-
    -Questao.
si(Questao,desconhecido):-
    not(Questao),
    not(-Questao).

evolucao(Termo):-
     findall(Invariante,+Termo::Invariante,Lista),
     insercao(Termo),
     teste(Lista).

insercao(Termo):-
    assert(Termo).
insercao(Termo):-
    retract(Termo),!,fail.

involucao(Termo) :-
    findall(Invariante,-Termo::Invariante, Lista),
    remocao(Termo),
    teste(Lista).

remocao(Termo):-
    retract(Termo).
remocao(Termo):-
    assert(Termo),!,fail.

teste([]).
teste([R|LR]):-
     R,
     teste(LR).

















