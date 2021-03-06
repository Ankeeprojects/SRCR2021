:- discontiguous excecao/1.

:- op( 900,xfy,'::' ).

:- dynamic utente/10.
:- dynamic centro_saude/6.
:- dynamic staff/4.
:- dynamic '-'/1.
:- discontiguous (-)/1.
:- discontiguous (::)/2.
:- discontiguous utente/10.
:- discontiguous nulo/1.
:- discontiguous centro_saude/6.
:- discontiguous staff/4.
:- discontiguous vacinacao_Covid/5.
:- dynamic excecao/1.
:- dynamic vacinacao_Covid/5.
:- style_check(-singleton).

% utente: #Idutente, Nº Segurança_Social, Nome, Data_Nasc, Email, Telefone, Morada,Profissão, [Doenças_Crónicas], CentroSaúde
utente(1, 48680284, "Pedro António",1999, "pedroantonio@alunos.uminho.pt", 935491642, "Viana do Castelo", estudante, [gonorreia], 2).

utente(2, 42864945, "Marco Pereira", 2000, "a89556@alunos.uminho.pt", 935826269, "Vila Pouca de Aguiar", estudante, [bronquite], 1).

utente(3, 42846963, "Rúben Cerqueira", 2000, "rubencerqueira@alunos.uminho.pt", 935346787, "Ponte de Lima", estudante, [sida,lepra], 10).

utente(4, 14363804, "Rúben Adão", 2000, "rubenadao@alunos.uminho.pt", 9654362423, "Vilar Formoso", estudante, [], 5).

utente(5, 42847909, "João Correia", 1999, "joaocorreia@alunos.uminho.pt", 928358323, "Abrantes", estudante, [sífilis], 9).

utente(6, 42164415, "Maria Almirante", 1981, "marioalmirante@gmail.com", 917435425, "Azambuja", almirante, [varicela], 3).

utente(7, 44362497, "Jorge Mendes", 1970, "jorgemendes@hotmail.com", 936854246, "Barcelos", inspetor, [diabetes], 4).

utente(8, 16774286, "Sérgio Calado", 1985, "sergiocalado@hotmail.com", 939764463, "Beja", inspetor, [micose, tuberculose, chagas], 7).

utente(9, 27758899, "Júlia Pinheiro", 1971, "juliapinheiro@gmail.com", 910919542, "Cabeceiras de Basto", apresentadora_televisiva, [hepatite_B], 6).

utente(10, 16324784, "Vera Foz", 2004, "verafoz@outlook.com", 929744312, "Campo Maior", nadador_salvador, [], 8).

utente(11, 27691440, "José Reis", 1968, "josereis@gmail.com", 919436326, "Castelo Branco", actor, [hipertensão, avc], 10).

utente(12, 68992414, "Manuel Carvalho", 1943, "manuelcarvalho@gmail.com", 969284532, "Murça", estudante, [alzheimer], 9).

utente(13, 46759423, "Sara Matos", 1937, "saramatos@gmail.com", 967468212, "Viana do Castelo", atriz, [enfisema_pulmonar], 7).

utente(14, 14789014, "Afonso Henriques", 1932, "afonsohenriques@hotmail.com", 932835351, "Vizela", rei, [], 8).

utente(15, 97644284, "Eduardo Costa", 1929, "eduardocosta@outlook.com", 936846292, "Nazaré", enfermeiro, [alzheimer, parkinson], 6).

utente(16, 75236142, "Sebastião Almeida", 1947, "sebastiaoalmeida@gmail.com", 929611051, "Odivelas", atendedor_de_balcão, [gonorreia], 1).

utente(17, 89871442, "Rui Pedro", 1956, "ruipedro@gmail.com", 969641236, "Covilhã", agricultor, [bronquite, sida, lepra, diabetes], 4).

utente(18, 98631442, "Mario Mario", 1961, "mariopedro@hotmail.com", 916921281, "Batalha", estrela_da_nintendo, [depressão, sífilis, falta_de_amor_prórpio], 3).

utente(19, 84645423, "Luigi Mario", 1959, "luigimario@hotmail.com", 919308531, "Condeixa-a-Nova", irmão_do_mario, [micose, tuberculose], 2).

utente(20, 97672348, "Eva Pessego", 1978, "evapessego@hotmail.com", 913252315, "Paços de Ferreira", princesa, [sífilis, falta_de_atenção], 5).


% É incerto qual o email do utente 27
utente(27, 42535342, "Anacleto Veloso", 1983, desc2, 914132813, "Guimarães", cabeleireiro, [], 3).

excecao(utente(Id, Seguranca, Nome, Ano, Email, Numero, Morada, Profissao,
 Doencas, Centro)):-
    utente(Id, Seguranca, Nome, Ano, desc2, Numero, Morada, Profissao,
 Doencas, Centro).

% É incerto o número de telefone do utente 26

utente(26, 6255342, "Jesualdo Ferreira", 1953, "cenasetal@coisas.com", desc3, "Viana do Castelo", tenista, [joanetes], 2).

excecao(utente(Id, Seguranca, Nome, Ano, Email, Numero, Morada, Profissao,
 Doencas, Centro)):-
    utente(Id, Seguranca, Nome, Ano, Email, desc3, Morada, Profissao,
 Doencas, Centro).

% Não se sabe qual a profissão do utente 25, mas sabe-se que não é
% soldado.

-utente(25, 8263345, "Paula Marisa", 1957, "JNF@vida.pt", 935412312, "Braga", soldado, [artroses], 1).

utente(25, 8263345, "Paula Marisa", 1957, "JNF@vida.pt", 935412312, "Braga", desc4, [artroses], 1).

excecao(utente(Id, Seguranca, Nome, Ano, Email, Numero, Morada, Profissao,
 Doencas, Centro)):-
    utente(Id, Seguranca, Nome, Ano, Email, Numero, Morada, desc4,
 Doencas, Centro).

% Não se sabe qual o número de segurança social do utente 24, mas
% sabe-se que não é nem 3842134, nem 4996435.

-utente(24, 3842134, "António Costa", 1946, "Anc@coisas.com", 92842323, "Fafe", mecanico, [micose], 4).

-utente(24, 4996435, "António Costa", 1946, "Anc@coisas.com", 92842323, "Fafe", mecanico, [micose], 4).

utente(24, desc5, "António Costa", 1946, "Anc@coisas.com", 92842323, "Fafe", mecanico, [micose], 4).

excecao(utente(Id, Seguranca, Nome, Ano, Email, Numero, Morada, Profissao,
 Doencas, Centro)):-
    utente(Id, desc5, Nome, Ano, Email, Numero, Morada, Profissao,
 Doencas, Centro).

% Não se sabe o número de telefone do utente 23, mas sabemos que está
% compreendido entre 935491600 e 935491700

excecao(utente(23, Seguranca, Nome, Ano, Email, V, Morada, Profissao, Doencas, Centro)):-
    V >= 935491600, V =< 935491700.

% Não se conhece o número de segurança social do utente 22, mas sabemos
% que é mais baixo que 86931232.

excecao(utente(22, S, Nome, Ano, Email, Numero, Morada, Profissao, Doencas, Centro)):-
    S =< 86931232.

% Não sabemos o email do utente 21, nem poderemos sabe-lo no futuro.

utente(21, 48343535, "Júlio Lambretas", 1975, desc20, 935349122, "Lisboa", jardineiro, [], 5).

excecao(utente(Id,Seguranca,Nome,Ano,Email,Numero,Morada,Profissao,Doencas,Centro)):-
    utente(Id,Seguranca,Nome,Ano,desc20,Numero,Morada,Profissao,Doencas,Centro).

nulo(desc20).

+utente(Id,Seguranca,Nome,Ano,Email,Numero,Morada,Profissao,Doencas,Centro)::(
     findall(D,(utente(21, 48343535, "Júlio Lambretas", 1975, D, 935349122, "Lisboa", jardineiro, [], 5),not(nulo(D))),S),
     comprimento(S,N),
     N==0).

% Não sabemos a profissao do utente 40, nem poderemos sabe-la no futuro.

utente(40, 58333525, "Júlia Pinhas", 1985, "jp@cabritos.pt", 935349122, "Cartaxo", desc21, [artroses,asma], 2).

excecao(utente(Id,Seguranca,Nome,Ano,Email,Numero,Morada,Profissao,Doencas,Centro)):-
    utente(Id,Seguranca,Nome,Ano,Email,Numero,Morada,desc21,Doencas,Centro).

nulo(desc21).

+utente(Id,Seguranca,Nome,Ano,Email,Numero,Morada,Profissao,Doencas,Centro)::(
     findall(D,(utente(40, 58333525, "Júlia Pinhas", 1985, "jp@cabritos.pt", 935349122, "Cartaxo", desc21, [artroses,asma], 2),not(nulo(D))),S),
     comprimento(S,N),
     N==0).

% Conhecimento negativo sobre utentes
-utente(Id,Num,Nome,Data,Email,Telefone,Morada,Profissao,Doencas,Centro) :-
    not(utente(Id,Num,Nome,Data,Email,Telefone,Morada,Profissao,Doencas,Centro)),
    not(excecao(utente(Id,Num,Nome,Data,Email,Telefone,Morada,Profissao,Doencas,Centro))).

%centro_saúde: #Idcentro, Nome, Morada, Telefone, Email, agrupamento_hospitalar

centro_saude(1, "Belo Horizonte", "Avenida da Engenharia Civil", 253224118, "belohorizonte@gmail.com", 3).

centro_saude(2, "Centro Paulo Jorge", "Parque da Sociologia", 256864328, "paulojorge@outlook.com", 3).

centro_saude(3, "Penha de França", "Centro de Literatura", 253257862, "penhadefrança@hotmail.com", 2).

centro_saude(4, "Centro 3 Reis", "Covilhã", 256259272, "3reis@gmail.com", 1).

centro_saude(5, "Grupo de Farmácia Bosquez", "Bosquez", 259257492, "farmáciabosquez@hotmail.com", 3).

centro_saude(6, "Centro Correria", "Nazaré", 259164986, "correria@outlook.com", 2).

centro_saude(7, "Centro de Saúde Todo Poderoso", "Mondim", 253872675, "todopoderoso@gmail.com", 1).

centro_saude(8, "Centro de Saúde Folar Napolitana", "Campo Maior", 251976274, "folarnapolitana@gmail.com", 2).

centro_saude(9, "Centro de Saúde Murça", "Murça", 253976362, "csmurca@gmail.com", 3).

centro_saude(10, "Centro de Saúde Castelo Preto", "Castelo Branco", 256623327, "castelopreto@gmail.com", 3).

% É incerto qual o nome do centro de saúde 11
centro_saude(11, desc30, "Fafe", 25259232, "saudefafe@gmail.com", 4).

excecao(centro_saude(Id, Nome, Morada, Numero, Email, Agrupamento)):-
    centro_saude(Id,desc30,Morada,Numero,Email, Agrupamento).

% É incerto o número de telefone do centro de saúde 12

centro_saude(12, "Centro das Camelias", "Viana", desc31, "camelias@centros.pt", 2).

excecao(centro_saude(Id, Nome, Morada, Numero, Email, Agrupamento)):-
    centro_saude(Id,Nome,Morada, desc31,Email, Agrupamento).


% Não se sabe qual o email do centro de saúde 13, mas sabe-se que não é
% saude@sns.com


-centro_saude(13, "Centro Girassol", "Joane", 253534534, "saude@sns.com", 1).

centro_saude(13, "Centro Girassol", "Joane", 253534534, desc32, 1).

excecao(centro_saude(Id, Nome, Morada, Numero, Email, Agrupamento)):-
    centro_saude(Id,Nome,Morada,Numero,desc32, Agrupamento).

% Não se sabe qual o número de telefone do centro de saúde 14, mas
% sabe-se que não é nem 253111111, nem 253424242.

-centro_saude(14, "Centro Hospitalar do Canto", "Azeitao", 253111111,"canto@centro.com", 2).

-centro_saude(14, "Centro Hospitalar do Canto", "Azeitao", 253424242,"canto@centro.com", 2).

centro_saude(14, "Centro Hospitalar do Canto", "Azeitao", desc33, "canto@centro.com", 2).

excecao(centro_saude(Id, Nome, Morada, Numero, Email, Agrupamento)):-
    centro_saude(Id,Nome,Morada, desc33,Email, Agrupamento).

% Não se sabe o número de telefone do centro de saúde 15, mas sabemos
% que está compreendido entre 935392500 e 935393000

excecao(centro_saude(15, Nome, Morada, Numero, Email, Agrupamento)):-
    Numero >= 935392500, Numero =< 935393000.

% Não sabemos o email do centro de saúde 16, nem poderemos sabe-lo no
% futuro.

centro_saude(16, "Centro da Rua", "Guimaraes", 253593435, desc34, 1).

excecao(centro_saude(Id, Nome, Morada, Numero, Email, Agrupamento)):-
    centro_saude(Id, Nome, Morada, Numero, desc34, Agrupamento).

nulo(desc34).

+centro_saude(_, _, _, _, _, _)::(
     findall(D,(centro_saude(16, "Centro da Rua", "Guimaraes", 253593435, D, 1),not(nulo(D))),S),
     comprimento(S,N),
     N==0).

% Não sabemos o número do centro de saúde 17, nem poderemos vir a
% conhece-lo no futuro.

centro_saude(17, "Centro da Esquina", "Braga", desc35, "esquina@centros.com", 2).

excecao(centro_saude(Id, Nome, Morada, Numero, Email, Agrupamento)):-
    centro_saude(Id, Nome, Morada, desc35, Email, Agrupamento).

nulo(desc35).

+centro_saude(_, _, _, _, _, _)::(
     findall(D,(centro_saude(17, "Centro da Esquina", "Braga", D, "esquina@centros.com", 2),not(nulo(D))),S),
     comprimento(S,N),
     N==0).

% Conhecimento falso sobre centros de saúde
-centro_saude(Id,Nome,Morada,Telefone,Email,Agr) :-
    not(centro_saude(Id,Nome,Morada,Telefone,Email,Agr)),
    not(excecao(centro_saude(Id,Nome,Morada,Telefone,Email,Agr))).


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

% É incerto o email do staff 21 e 22

staff(21, 13, "Arlindo Dente", descS).
staff(22, 10, "Francisca Pinto", descS).

% O nome do staff 23 pode pode ser Rui ou Ruben Lamparim, mas sabe-se que não é Rita Lamparim
excecao(staff(23,10,"Rui Lamparim", "imstaff@gmail.com")).
excecao(staff(23,10,"Ruben Lamparim", "imstaff@gmail.com")).
-excecao(staff(23,10,"Rita Lamparim", "imstaff@gmail.com")).

% Não se sabe o email do staff 24 nem é possivel saber
staff(24,17,"Luisa Matias",nuloS).

+staff(_, _, _, _)::(
     findall(D,(centro_saude(24, 17, "Luisa Matias", D),not(nulo(D))),S),
     comprimento(S,N),
     N==0).

excecao(staff(I,C,N,E)) :-
    staff(I,C,N,descS);
    staff(I,C,N,nuloS).

% Conhecimento falso sobre staff
-staff(Id,IdC,Nome,Email) :-
    not(staff(Id,IdC,Nome,Email)),
    not(excecao(staff(Id,IdC,Nome,Email))).

%vacina: Id, Tipo, Dosagem(ml)
vacina(1, moderna, 0.5).
vacina(2, astrazeneca, 0.5).

%Não se sabe ao certo a dosagem da vacina pfizer
vacina(3, pfizer, descVac).

excecao(vacina(A,B,C)) :-
    vacina(A,B,descVac).

% Conhecimento falso sobre vacinas
-vacina(Num,Nome,Dos) :-
    not(vacina(Num,Nome,Dos)),
    not(excecao(vacina(Num,Nome,Dos))).

%vacinação_Covid: Staff, utente, Data, Vacina, Toma

vacinacao_Covid(1, 1, "2021/03/01", 1, 1).
vacinacao_Covid(1, 1, "2021/03/16", 1, 2).
vacinacao_Covid(1, 2, "2021/03/02", 2, 1).
vacinacao_Covid(2, 2, "2021/03/20", 2, 2).
vacinacao_Covid(2, 3, "2021/03/04", 3, 1).
vacinacao_Covid(3, 3, "2021/04/25", 3, 2).
vacinacao_Covid(5, 5, "2021/03/02", 2, 1).
vacinacao_Covid(6, 5, "2021/03/17", 2, 2).
vacinacao_Covid(7, 6, "2021/03/03", 3, 1).
vacinacao_Covid(7, 6, "2021/03/18", 3, 2).
vacinacao_Covid(7, 7, "2021/03/04", 1, 1).
vacinacao_Covid(7, 7, "2021/03/19", 1, 2).
vacinacao_Covid(8, 8, "2021/03/05", 2, 1).
vacinacao_Covid(9, 9, "2021/03/06", 3, 1).
vacinacao_Covid(10, 9, "2021/03/21", 3, 2).
vacinacao_Covid(10, 10, "2021/03/07", 1, 1).
vacinacao_Covid(9, 10, "2021/03/22", 1, 2).
vacinacao_Covid(11, 11, "2021/03/08", 2, 1).
vacinacao_Covid(12, 11, "2021/03/23", 2, 2).
vacinacao_Covid(15, 13, "2021/03/10", 1, 1).
vacinacao_Covid(15, 13, "2021/03/25", 1, 2).
vacinacao_Covid(14, 14, "2021/03/26", 2, 2).
vacinacao_Covid(16, 15, "2021/03/12", 3, 1).
vacinacao_Covid(16, 15, "2021/03/27", 3, 2).
vacinacao_Covid(17, 16, "2021/03/13", 1, 1).
vacinacao_Covid(19, 17, "2021/03/14", 2, 1).
vacinacao_Covid(19, 19, "2021/03/16", 1, 1).
vacinacao_Covid(17, 19, "2021/03/31", 1, 2).
vacinacao_Covid(5, 20, "2021/04/01", 2, 1).

% Não se sabe se a vacinacao do utente 20 foi dada por staff 1, 2 ou 3.
excecao(vacinacao_Covid(X, 20, "2021/03/17", 2, 2)) :-
    X == 1;X == 2;X == 3.

% Não é possivel saber a data da vacinacao do utente 12.
vacinacao_Covid(3,12,nuloV,3,1).

nulo(nuloV).

+vacinacao_Covid(_,_,_,_,_) :: (
    findall(D,(vacinacao_Covid(3,12,D,3,1),not(nulo(D))),S),
    comprimento(S,N),
    N == 0).

% Estabelecimento de conhecimento incerto na administraçao de vacinas.

vacinacao_Covid(desc, 4, "2021/03/01", 1, 1).
vacinacao_Covid(13, 14, desc, 2, 1).
vacinacao_Covid(18, 16, desc, 1, 2).
vacinacao_Covid(21, 24,"2021/04/10", desc, 1).

excecao(vacinacao_Covid(S,U,D,V,T)) :-
    vacinacao_Covid(desc,U,D,V,T);
    vacinacao_Covid(S,U,desc,V,T);
    vacinacao_Covid(S,U,D,desc,T).

% Não se sabe ao certo se o utente 18 recebeu a pfizer ou astrazeneca

excecao(vacinacao_Covid(18,18,"2021/03/30",X,1)) :-
    X == 1 ; X == 2.

%Conhecimento falso sobre vacinação
-vacinacao_Covid(S,U,D,V,T) :-
    not(vacinacao_Covid(S,U,D,V,T)),
    not(excecao(vacinacao_Covid(S,U,D,V,T))).

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
     not(vacinacao_Covid(_,X,_,_,1));
     not(vacinacao_Covid(_,X,_,_,2))).

% Invariante estrutural: Vacinas têm que ser admnistradas a utentes que existam,
% por staff que exista.
+vacinacao_Covid(Staff,Utente,_,_,_)::(
     staff(Staff,_,_,_),
     utente(Utente,_,_,_,_,_,_,_,_,_)).

% Invariante estrutural: Registos de vacinação diferentes não podem ter a mesma Toma.
+vacinacao_Covid(_,Utente,_,_,Toma)::(
    findall((Utente,Toma),vacinacao_Covid(_,Utente,_,_,Toma), S),
    comprimento(S,N),
    N == 1).

% Invariante estrutural: Registos de vacinação não podem ser apagados.
-vacinacao_Covid(_,_,_,_,_)::fail.

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


primeiraFase(S):-
    findall(X,utente(X,_,_,_,_,_,_,_,_,_), Res),
    filter(primeiraF,Res,[],S).

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

segundaFase(S):- findall(X,utente(X,_,_,_,_,_,_,_,_,_),Res),
                 filter(segundaF,Res,[],S).

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
faltaVacinar([]) :- fail.
faltaVacinar([H|_]):- naoVacinado(H), !.
faltaVacinar([_|T]):- faltaVacinar(T).


% identificar pessoas vacinadas indevidamente;
vacinacaoErradaAux(X):-
  utente(X,_,_,_,_,_,_,_,_,_),
  vacinado(X),
  (segundaF(X),
  primeiraFase(F1),
  faltaVacinar(F1);
  terceiraF(X),
  (segundaFase(F2),
  faltaVacinar(F2);
  primeiraFase(F),
  faltaVacinar(F)
  )).

vacinacaoErrada(Res):- findall(X,vacinacaoErradaAux(X),S), remReps(S,Res).

% identificar pessoas não vacinadas e que são candidatas a vacinação;

eCandidato(X):-
    naoVacinado(X),
    (primeiraF(X);
     segundaF(X)),!.

candidatosV(Res):-
    findall(X,utente(X,_,_,_,_,_,_,_,_,_),S),
    filter(eCandidato,S,[],Res).


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


filter(_,[],R,R).
filter(Condicao,[H|T],S,R):-
     call(Condicao,H),
     filter(Condicao,T,[H|S],R),!.
filter(Condicao,[_|T],S,R):-
     filter(Condicao,T,S,R).








