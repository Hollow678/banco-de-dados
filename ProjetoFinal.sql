/*CREATE TABLE cliente(
  codcliente INTEGER,
  nomecliente VARCHAR (40),
  idade integer,
  cidade VARCHAR (30),
  email VARCHAR (50),
  bairro VARCHAR (30),
  rua VARCHAR (30),
  PRIMARY key (codcliente));
  
  */
 /* CREATE TABLE pedido (
    codpedido integer,
     desconto float,
    valorpeedido float,
    datapedido DATE,
    codcliente INTEGER,
    foreign KEY (codcliente) REFERENCES cliente (codcliente),
    primary key (codpedido));
    
   */ 
   /*
    CREATE TABLE livro (
      
      codlivro INTEGER,
      isbn integer,
      titulo varchar (40),
      
      autor varchar (50),
      anopublicacao INTEGER,
      preco float,
     codestoque integer,
      codpedido integer,
      codeditora INTEGER,
         FOREIGN KEY (codeditora) REFERENCES editora (codeditora),
      PRIMARY KEY (codlivro),
         FOREIGN KEY (codestoque) REFERENCES estoque (codestoque),
      FOREIGN KEY (codpedido) REFERENCES pedido (codpedido));
      
    */
      
    /*  CREATE TABLE editora (
        nomeedit VARCHAR (30),
        codeditora INTEGER,
        nacionalidade VARCHAR (3),
        email VARCHAR (40),
        telefoneedit INTEGER,
        PRIMARY KEY ( codeditora));
        
      */  
        
     /*   CREATE TABLE estoque(
          codestoque INTEGER,
          cidadeestoque varchar (40),
          enderecoestoque varchar (30),
          quantidade INTEGER,
          codtransportadora integer,
          foreign key (codtransportadora) references transportadora (codtransportadora),
          PRIMARY KEY (codestoque ));
         */
         /* CREATE TABLE transportadora(
            endereco VARCHAR (40),
            codtransportadora INTEGER,
            cnpj integer,
            nometransportadora VARCHAR (20),
            PRIMARY KEY (codtransportadora),
            telefonetransp integer);
       */
  
         
      /*  INSERT into   cliente(codcliente,nomecliente,idade,cidade,email,bairro,rua)
        VALUES ( 1,'Inara',45,'cuiaba','inara@gmail.com','jardim das américas','rua L'), ( 2,'Aldo',47,'cuiaba','aldo@gmail.com','cpa I','rua H'),( 3,'João',17,'sinop','joao@gmail.com','despraiado','rua j'),( 4,'Giulia',16,'cuiaba','giulia@gmail.com','despraiado','rua M'),( 5,'Lucas',22,'varzea grande','inara@gmail.com','bairro dos campos','rua P')
        */ 
         
         
     /*  INSERT INTO editora (nomeedit,codeditora,nacionalidade,email,telefoneedit)
         VALUES( 'atlas',11,'br','atlas@gmail.com',98223372),('saraiva',12,'br','saraiva@gmail.com',93222662),('globo',13,'br','globo@gmail.com',9277621),('darksidebook',14,'br','dk@gmail.com',92632661),('aleph',15,'br','aleph@gmail.com',98163636);
       */  
         
         
       /*  INSERT INTO pedido
         VALUES (100,10,90,'2022-10-01',1),(101,15,220,'2022-02-10',2),(102,15,80,'2023-03-03',3),(103,10,40,'2023-12-12',4),(104,25,95,'2023-07-22',5);
        */
        
        
       /* INSERT into estoque
        VALUES (11110,'cuiaba','rua das flores',20,20),(11111,'sinop','rua dos campos',30,21),(11112,'cuiaba','rua D',10,22),(11113,'varzea grande','rua santo antonio',0,23),(11114,'cuiaba','avenida miguel sutil',2,24);*/
         
       /* INSERT into transportadora
         VALUES ('rua J',20,17362899,'brasspress',98278222),('rua h avenida 2',21,88811838,'rodonaves',9827747),('rua dos caminhos',22,83727841,'jamef',935312344),('rua 12',23,81771877,'alfa',92827200),('rua osvaldo dda silva',24,927818133,'translovato',91366388);
         */
       /* INSERT into livro(codlivro,isbn,titulo,autor,anopublicacao,preco,codestoque,codpedido,codeditora)
         VALUES (30, 88883891, ' as cronicas de joao','Joelinton Silva',2022,100,11110,100,11),(31,82666817,'as 3 ovelhinhas','Joao Paulo',2020,235,11111,101,12),(32,8381832,'os segredos secretos','Maria Antoniela',2010,95,11112,102,13),(33,8171622,'o ladrão de trovões','Carla Lopez',2023,50,11113,103,14),(34,26772733,'lusiado','Joaquim Ferreira',2000,120,11114,104,15)
         */
          /*SELECT * FROM cliente where cidade like 'cuiaba' and idade >18;
         */
        /* SELECT codlivro,titulo,anopublicacao,preco FROM livro where preco> (SELECT AVG ( preco) from livro)*/
     
      /*  SELECT titulo,estoque.codestoque,quantidade from livro,estoque where livro.codestoque= estoque.codestoque*/
      
/*
SELECT transportadora.codtransportadora,codestoque,nometransportadora from transportadora,estoque 
where estoque.codtransportadora=transportadora.codtransportadora*/
/*SELECT titulo, nomeedit,nacionalidade,isbn FROM editora,livro 
where nacionalidade like 'br' and anopublicacao > 2020 and livro.codeditora=editora.codeditora
*/
/*select nomecliente, idade,cliente.codcliente,codpedido, valorpeedido FROM cliente,pedido
where (valorpeedido-desconto) > (SELECT AVG (valorpeedido) FROM pedido) and cliente.codcliente=pedido.codcliente*/
 /*SELECT nometransportadora,estoque.codestoque, titulo,isbn FROM estoque,livro,transportadora
 where estoque.codtransportadora=transportadora.codtransportadora and livro.codestoque=estoque.codestoque;*/
/* SELECT * from cliente where cidade not like 'cuiaba'*/
/*SELECT nomecliente, pedido.codpedido,(valorpeedido-desconto), titulo, codlivro from livro,cliente,pedido 
where cliente.codcliente= pedido.codcliente and pedido.codpedido=livro.codpedido*/





SELECT nomecliente,nomeedit,estoque.codestoque,titulo,isbn,pedido.codpedido,transportadora.codtransportadora 
from cliente,editora,estoque,livro,pedido,transportadora
where cliente.codcliente=pedido.codcliente and livro.codpedido=pedido.codpedido
and livro.codestoque= estoque.codestoque and livro.codeditora=editora.codeditora
and transportadora.codtransportadora=estoque.codtransportadora 