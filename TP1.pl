:- discontiguous excecao/1.

:- op( 900,xfy,'::' ).

:- dynamic utente/10.
:- dynamic centro_saude/6.
:- dynamic staff/4.
:- dynamic '-'/1.
:- dynamic excecao/1.
:- dynamic vacinacao_Covid/5.

% utente: #Idutente, Nº Segurança_Social, Nome, Data_Nasc, Email, Telefone, Morada,Profissão, [Doenças_Crónicas], CentroSaúde
utente(1, 48680284, "Pedro António",-20, "pedroantonio@alunos.uminho.pt", 935491642, "Viana do Castelo", estudante, [gonorreia], 2).

utente(2, 42864945, "Marco Pereira", 2000, "a89556@alunos.uminho.pt", 935826269, "Vila Pouca de Aguiar", estudante, [bronquite], 1).

utente(3, 42846963, "Rúben Cerqueira", 2000, "rubencerqueira@alunos.uminho.pt", 935346787, "Ponte de Lima", estudante, [sida,lepra], 10).

utente(4, 14363804, "Rúben Adão", 2000, "rubenadao@alunos.uminho.pt", 9654362423, "Vilar Formoso", estudante, [], 5).

utente(5, 42847909, "João Correia", 1999, "joaocorreia@alunos.uminho.pt", 928358323, "Abrantes", estudante, [sífilis], 9).

utente(6, 42164415, "Maria Almirante", 1981, "marioalmirante@gmail.com", 917435425, "Azambuja", almirante, [varicela], 3).

utente(7, 44362497, "Jorge Mendes", 1970, "jorgemendes@hotmail.com", 936854246, "Barcelos", inspetor, [diabetes], 4).

utente(8, 16774286, "Sérgio Calado", 1985, "sergiocalado@hotmail.com", 939764463, "Beja", inspetor, [micose, tuberculose, chagas], 7).

utente(9, 27758899, "Júlia Pinheiro", 1971, "juliapinheiro@gmail.com", 910919542, "Cabeceiras de Basto", apresentadora_televisivo, [hepatite_B], 6).

utente(10, 16324784, "Vera Foz", 2004, "verafoz@outlook.com", 929744312, "Campo Maior", nadador_salvador, [], 8).

utente(11, 27691440, "José Reis", 1968, "josereis@gmail.com", 919436326, "Castelo Branco", actor, [hipertensão, AVC], 10).

utente(12, 68992414, "Manuel Carvalho", 1943, "manuelcarvalho@gmail.com", 969284532, "Murça", estudante, [alzheimer], 9).

utente(13, 46759423, "Sara Matos", 1937, "saramatos@gmail.com", 967468212, "Viana do Castelo", atriz, [enfisema_pulmonar], 7).

utente(14, 14789014, "Afonso Henriques", 1932, "afonsohenriques@hotmail.com", 932835351, "Vizela", rei, [], 8).

utente(15, 97644284, "Eduardo Costa", 1929, "eduardocosta@outlook.com", 936846292, "Nazaré", enfermeiro, [alzheimer, parkinson], 6).

utente(16, 75236142, "Sebastião Almeida", 1947, "sebastiaoalmeida@gmail.com", 929611051, "Odivelas", atendedor_de_balcão, [gonorreia], 1).

utente(17, 89871442, "Rui Pedro", 1956, "ruipedro@gmail.com", 969641236, "Covilhã", agricultor, [bronquite, sida, lepra, diabetes], 4).

utente(18, 98631442, "Mario Mario", 1961, "mariopedro@hotmail.com", 916921281, "Batalha", estrela_da_nintendo, [depressão, sífilis, falta_de_amor_prórpio], 3).

utente(19, 84645423, "Luigi Mario", 1959, "luigimario@hotmail.com", 919308531, "Condeixa-a-Nova", irmão_do_mario, [micose, tuberculose], 2).

utente(20, 97672348, "Eva Pessego", 1978, "evapessego@hotmail.com", 913252315, "Paços de Ferreira", princesa, [sífilis, falta_de_atenção], 5).

%centro_saúde: #Idcentro, Nome, Morada, Telefone, Email, agrupamento_hospitalar

centro_saude(1, "Templo dos Primatas", "Avenida dos Abutres", 253696969, "miliga@vai.net", 1).

centro_saude(2, "Belo Horizonte", "Avenida da Engenharia Civil", 253224, "linic@nhamnham.pt", 3).

centro_saude(3, "Casa da mãe Joana", "Algures em Viana", 43434, "cs@vianacity.pt", 3).

centro_saude(1, "Belo Horizonte", "Avenida da Engenharia Civil", 253224118, "belohorizonte@gmail.com", 3).

centro_saude(2, "Linic", "Parque da Sociologia", 256864328, "linic@outlook.com", 3).

centro_saude(3, "Penha de França", "Centro de Literatura", 253257862, "penhadefrança@hotmail.com", 2).

centro_saude(4, "Centro 3 Reis", "Covilhã", 256259272, "3reis@gmail.com", 1).

centro_saude(5, "Grupo de Farmácia Bosquez", "Bosquez", 259257492, "farmáciabosquez@hotmail.com", 3).

centro_saude(6, "Centro Correria", "Nazaré", 259164986, "correria@outlook.com", 2).

centro_saude(7, "Centro de Saúde Todo Poderoso", "Mondim", 253872675, "todopoderoso@gmail.com", 1).

centro_saude(8, "Centro de Saúde Folar Napolitana", "Campo Maior", 251976274, "folarnapolitana@gmail.com", 2).

centro_saude(9, "Centro de Saúde Murça", "Murça", 253976362, "csmurca@gmail.com", 3).

centro_saude(10, "Centro de Saúde Castelo Preto", "Castelo Branco", 256623327, "castelopreto@gmail.com", 3).


%staff: Idstaff, Idcentro, Nome, email

staff(1, 2, "Armando Lamparina", "blaze420@hotmail.com").

staff(2, 1, "João Asperla", "beyblades@gmail.com").

staff(3, 3, "Tógui", "to@hotmail.com").

staff(4, 4, "Zé da Via", "ZV@gmail.com").

staff(5, 5, "Ana Cunha", "anacunha@outlook.com").

staff(6, 7, "Sara Cristina", "saracristina@gmail.com").

staff(7, 6, "Rita Personagem", "ritapersonagem@gmail.com").

staff(8, 8, "Jacinto AntiVax", "jacintoantivax@hotmail.com").

staff(9, 9, "Antonio Gomes", "antonio1gomes@hotmail.com").

staff(10, 1, "Carlos Oliveira", "carlosoliveira2@hotmail.com").

staff(11, 10, "Salazar Santos", "salazar3santos@hotmail.com").

staff(12, 2, "Célia Silva", "celiasilva@gmail.com").

staff(13, 3, "Rafela Rodrigues", "rafaelarodrigues@gmail.com").

staff(14, 4, "Luís Alves", "luisalves@gmail.com").

staff(15, 5, "Joel Ferreira", "joelferreira@gmail.com").

staff(16, 6, "Bárbara Soares", "barbarasoares@gmail.com").

staff(17, 7, "Catarina Gonçalves", "catarinagonçalves@gmail.com").

staff(18, 8, "Gonçalo Leite", "gonçaloleite@gmail.com").

staff(19, 9, "Hugo Costa", "hugocosta@gmail.com").

staff(20, 10, "Francisca Aparecida", "desaparecida@outlook.com").

%vacina: Id, Tipo, Dosagem(ml)

vacina(1, moderna, 0.5).
vacina(2, astrazeneca, 0.5).
vacina(3, pfizer, 0.3).

%vacinação_Covid: Staff, utente, Data, Vacina, Toma

vacinacao_Covid(1, 1, "2021/03/01", 1, 1).
vacinacao_Covid(1, 1, "2021/03/16", 1, 2).
vacinacao_Covid(1, 2, "2021/03/02", 2, 1).
vacinacao_Covid(2, 2, "2021/03/20", 2, 2).
vacinacao_Covid(2, 3, "2021/03/04", 3, 1).
vacinacao_Covid(3, 3, "2021/04/25", 3, 2).
vacinacao_Covid(4, 4, "2021/03/01", 1, 1).
vacinacao_Covid(4, 4, "2021/03/16", 1, 2).
vacinacao_Covid(5, 5, "2021/03/02", 2, 1).
vacinacao_Covid(6, 5, "2021/03/17", 2, 2).
vacinacao_Covid(7, 6, "2021/03/03", 3, 1).
vacinacao_Covid(7, 6, "2021/03/18", 3, 2).
vacinacao_Covid(7, 7, "2021/03/04", 1, 1).
vacinacao_Covid(7, 7, "2021/03/19", 1, 2).
vacinacao_Covid(8, 8, "2021/03/05", 2, 1).
vacinacao_Covid(8, 8, "2021/03/20", 2, 2).
vacinacao_Covid(9, 9, "2021/03/06", 3, 1).
vacinacao_Covid(10, 9, "2021/03/21", 3, 2).
vacinacao_Covid(10, 10, "2021/03/07", 1, 1).
vacinacao_Covid(9, 10, "2021/03/22", 1, 2).
vacinacao_Covid(11, 11, "2021/03/08", 2, 1).
vacinacao_Covid(12, 11, "2021/03/23", 2, 2).
vacinacao_Covid(13, 12, "2021/03/09", 3, 1).
vacinacao_Covid(14, 12, "2021/03/24", 3, 2).
vacinacao_Covid(15, 13, "2021/03/10", 1, 1).
vacinacao_Covid(15, 13, "2021/03/25", 1, 2).
vacinacao_Covid(13, 14, "2021/03/11", 2, 1).
vacinacao_Covid(14, 14, "2021/03/26", 2, 2).
vacinacao_Covid(16, 15, "2021/03/12", 3, 1).
vacinacao_Covid(16, 15, "2021/03/27", 3, 2).
vacinacao_Covid(17, 16, "2021/03/13", 1, 1).
vacinacao_Covid(18, 16, "2021/03/28", 1, 2).
vacinacao_Covid(19, 17, "2021/03/14", 2, 1).
vacinacao_Covid(16, 17, "2021/03/29", 2, 2).
vacinacao_Covid(17, 18, "2021/03/15", 3, 1).
vacinacao_Covid(18, 18, "2021/03/30", 3, 2).
vacinacao_Covid(19, 19, "2021/03/16", 1, 1).
vacinacao_Covid(20, 19, "2021/03/31", 1, 2).
vacinacao_Covid(20, 20, "2021/03/17", 2, 1).
vacinacao_Covid(5, 20, "2021/04/01", 2, 2).

%agrupamento_hospitalar: ID, Nome, Email

agrupamento_hospitalar(1,"Unidade de Saúde do Norte", "USN@saude.pt").
agrupamento_hospitalar(2,"Associação Privada de Saúde", "APS@saude.pt").
agrupamento_hospitalar(3,"Associação Rui Pinheiro", "ARP@saude.pt").

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
     centro_saude(C,_,_,_,_,_)).


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
     centro_saude(C,_,_,_,_,_)).


%Invariante estrutural: Centros de saúde não podem ter o mesmo número de
% telefone.
+centro_saude(_,_,_,Num,_,_)::(
     findall(Num,centro_saude(_,_,_,Num,_,_), S),
     comprimento(S,N),
     N == 1).

%Invariante estrutural: Não pode haver centros com o mesmo número.
+centro_saude(Id,_,_,_,_,_)::(
     findall(Id,centro_saude(Id,_,_,_,_,_), S),
     comprimento(S,N),
     N == 1).

%Invariante estrutural: Centros de saúde têm Ids não negativos.
+centro_saude(Id,_,_,_,_,_)::(
     Id >= 0).

%Invariante referencial: Centros de saúde têm de estar ligados a um ID de agrupamento existente.
+centro_saude(_,_,_,_,_,AH)::(
     findall(AH,agrupamento_hospitalar(AH,_,_), S),
     comprimento(S,N),
     N >= 1).

%Invariante estrutural: Não se pode remover centros de saúde
-centro_saude(_,_,_,_,_,_)::fail.

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
% ordem: [moderna, astrazeneca, pfizer]

quantasTAux([],[0,0,0]).
quantasTAux([1|T],[P,M,A]):-
    quantasTAux(T,[Pp,M,A]),
    P is Pp+1.
quantasTAux([2|T],[P,M,A]):-
    quantasTAux(T,[P,Mm,A]),
    M is Mm+1.
quantasTAux([3|T],[P,M,A]):-
    quantasTAux(T,[P,M,Aa]),
    A is Aa+1.

quantasTomaram(R):-
    findall(X,vacinacao_Covid(_,_,_,X,_), S),
    quantasTAux(S,R).

% Predicado que calcula quantas vacinas de cada tipo são dadas
% num agrupamento

somaVacinas([],_,[]).
somaVacinas([A|B],[C|D],[H|T]) :-
    H is A + C,
    somaVacinas(B,D,T).

quantasVacinasStaffTipo([],[0,0,0]).
quantasVacinasStaffTipo([H|T],S) :-
    quantasVacinasStaffTipo(T,SS),
    findall(V,vacinacao_Covid(H,_,_,V,_),R),
    quantasTAux(R,RS),
    somaVacinas(RS,SS,S).

quantasVacinasCentrosSaudeTipo([],[0,0,0]).
quantasVacinasCentrosSaudeTipo([CENTRO|T],S) :-
    quantasVacinasCentrosSaudeTipo(T,SS),
    findall(ID,staff(ID,CENTRO,_,_),R),
    quantasVacinasStaffTipo(R,RS),
    somaVacinas(RS,SS,S).

quantasVacinasAgrupamentoTipo(AG,S) :-
    findall(ID,centro_saude(ID,_,_,_,_,AG),R),
    quantasVacinasCentrosSaudeTipo(R,S).


% Predicado que indica quantas vacinas foram dadas em cada Agrupamento
% por ordem de ID

somaLista([],0).
somaLista([H|T],S) :-
    somaLista(T,SS),
    S is SS + H.

quantasVacinasAgrupamento(AG,S) :-
    findall(ID,centro_saude(ID,_,_,_,_,AG),R),
    quantasVacinasCentrosSaudeTipo(R,L),
    somaLista(L,S).


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

















