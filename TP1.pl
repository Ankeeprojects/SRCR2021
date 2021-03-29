:- discontiguous excecao/1.

:- op( 900,xfy,'::' ).

:- dynamic utente/10.
:- dynamic centro_saude/5.
:- dynamic staff/4.
:- dynamic '-'/1.
:- dynamic excecao/1.
:- dynamic vacinacao_Covid/5.

% utente: #Idutente, Nº Segurança_Social, Nome, Data_Nasc, Email, Telefone, Morada,Profissão, [Doenças_Crónicas], CentroSaúde

utente(1, 4284234, "Pedro", 1988, "cenas@alunos.uminho.pt", 9354916423, "Freguesia das Rãs", estudante, [micose, coceira], 2).

utente(2, 3324324, "Joca", 2020, "coiso@etal.com", 5343435, "lar das cegonhas", soldado, ["pdm",cenas], 1).

utente(3, 353252, "Zé Fintas", 1940, "besouros@gmail.com", 64534, "Guimarães City", ladrão, [], 2).

utente(4, 4353534, "Rui Joaquim", 1930, "a64853@alunos.uminho.pt", 54334, "Braga", lavrador, [coxo], 2).

utente(5,123343, "Osvaldo Lopes", 2000, "OL@empresa.com", 483843, "Quinta das Camelias", gatuno,[],3).

%centro_saúde: #Idcentro, Nome, Morada, Telefone, Email

centro_saude(1, "Templo dos Primatas", "Avenida dos Abutres", 253696969, "miliga@vai.net").

centro_saude(2, "Belo Horizonte", "Avenida da Engenharia Civil", 253224, "linic@nhamnham.pt").

centro_saude(3, "Casa da mãe Joana", "Algures em Viana", 43434, "cs@vianacity.pt").

%staff: Idstaff, Idcentro, Nome, email

staff(1, 2, "Armando Lamparina", "blaze420@superlegal.net").

staff(2, 1, "João Asperla", "beyblades@saofixes.com").

staff(3, 3, "Tógui", "to@hotmail.com").

staff(4, 1, "Zé da Via", "ZV@gmail.com").

staff(5, 1, "Ana Cunha", "cenas@coiso.com").

staff(6, 1, "Sara Cristina", "sara@vianacity.pt").

staff(7, 1, "Rita Personagem", "rr@telepac.pt").

%vacina: Id, Tipo, Dosagem(ml)

vacina(1, pfeizer, 15).
vacina(2, pfeizer, 20).
vacina(3, moderna, 15).
vacina(4, astrazeneca, 10).
vacina(5, pfeizer, 30).

%vacinação_Covid: Staff, utente, Data, Vacina, Toma

vacinacao_Covid(3, 1, "2021/03/02", 1, 1).

vacinacao_Covid(2, 4, "2021/03/02", 2, 2).

vacinacao_Covid(2, 1, "2021/03/01", 3, 2).

vacinacao_Covid(4, 3, "2021/03/03", 4, 1).

vacinacao_Covid(1, 4, "2021/03/01", 5, 1).

% Predicado que calcula o comprimento de uma lista
comprimento([],0).
comprimento([_|T],X):- comprimento(T,R), X is R+1.

% Predicado que avalia se uma lista é sublista de outra
prefixo([H|T], [H|Ts]) :- prefixo(T, Ts).
prefixo([], _).

sublista([H|T], [H|Ts]) :- prefixo(T, Ts).
sublista(Prefix, [_|Ts]) :- sublista(Prefix, Ts).

sublist(X,Y):- atom_chars(X,A), atom_chars(Y,B), sublista(A,B).

% Predicado que determina se um elemento está presente numa lista
pertence(_,[]):- !,fail.
pertence(X,[X|_]).
pertence(X,[_|T]):- pertence(X,T).

% Predicado que remove repetidos de uma lista

remReps([],[]).
remReps([H|T],[H|R]):-
    not(pertence(H,T)),
    remReps(T,R).
remReps([_|T],R):-
    remReps(T,R).

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
      N > 2);
      (sublist("lar",Morada));
      excecao(primeiraF(X))).

primeiraFaux([],[]).
primeiraFaux([H|T],[H|Y]):- primeiraF(H), primeiraFaux(T,Y).
primeiraFaux([_|T],Y):- primeiraFaux(T,Y).

primeiraFase(S):-
    findall(X,utente(X,_,_,_,_,_,_,_,_,_), Res),
    primeiraFaux(Res,S).

excecao(primeiraF(X)):-
    utente(X,_,_,_,_,_,_,Y,_,_),
    (Y == soldado;
     Y == enfermeiro;
     Y == medico;
     Y == segurança).


segundaF(X):-
   utente(X,_,_,Nasc,_,_,_,_,_,_),
   not(primeiraF(X)),
    ((2021 - Nasc >= 50);
     excecao(segundaFase(X))).

segundaFaux([],[]).
segundaFaux([H|T],[H|Y]):- segundaF(H), segundaFaux(T,Y).
segundaFaux([_|T],Y):- segundaFaux(T,Y).

segundaFase(S):- findall(X,utente(X,_,_,_,_,_,_,_,_,_),Res),
                 segundaFaux(Res,S).

excecao(segundaFase(X)):-
    utente(X,_,_,_,_,_,Morada,_,Doencas,_),
     ((comprimento(Doencas, N),
     N > 0);
     sublist("Guimarães",Morada)).


terceiraF(X):-
    utente(X,_,_,_,_,_,_,_,_,_),
    not(primeiraF(X)),
    not(segundaF(X)).

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

%Predicado que determina se alguém na lista não foi vacinado
faltaVacinar([]):- !, fail.
faltaVacinar([H|T]):- naoVacinado(H),faltaVacinar(T).

% identificar pessoas vacinadas indevidamente;
vacinacaoErradaAux(X):-
  utente(X,_,_,_,_,_,_,_,_,_),
  vacinado(X),
  ((not(pertence(X,primeiraFase(S))),
   faltaVacinar(S));
   (not(pertence(X,segundaFase(R))),
   faltaVacinar(R))).

vacinacaoErrada(S):- findall(X,vacinacaoErradaAux(X),S).

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

% Predicado que identifica quais os utentes que tomaram vacinas de tipo
% X
quaisTAux([],[]).

quaisTAux([H|T],[X|R]):-
    vacinacao_Covid(_,X,_,H,_),
    quaisTAux(T,R).

quaisTAux([_|T],R):-
    quaisTAux(T,R).

quaisTomaram(V, R):-
    findall(X,vacina(X,V,_),S),
    quaisTAux(S,Y),
    remReps(Y,R).

% Predicado que identifica quantas pessoas tomaram cada vacina
% ordem: [pfeizer, moderna, astrazeneca]

quantasTAux([],[0,0,0]).
quantasTAux([pfeizer|T],[P,M,A]):-
    quantasTAux(T,[Pp,M,A]),
    P is Pp+1.
quantasTAux([moderna|T],[P,M,A]):-
    quantasTAux(T,[P,Mm,A]),
    M is Mm+1.
quantasTAux([astrazeneca|T],[P,M,A]):-
    quantasTAux(T,[P,M,Aa]),
    A is Aa+1.

quantasTomaram(R):-
    findall(X,vacina(_,X,_), S),
    quantasTAux(S,R).
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

















