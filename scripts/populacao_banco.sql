USE `Biblioteca`;

INSERT INTO `Enderecos` VALUES
 (1,'Dos Bobos',0,'00000000','Casa Sem Nada'),
 (2,'Torta',43,'33333333','Casa Torta'),
 (3,'Se fosse minha',1000,'99999999','Ladrilhada Com Pedrinhas De Brilhantes'),
 (4,'Do Ouvidor',1,'21000000','Machado de Assis'),
 (5,'Cabeça de Porco',18,'21000001','Cortiço Do João Romão');
 
 INSERT INTO `Editoras` VALUES 
  (1,'Adeus Internacional','07226128000117','334155678','adeusinternacional@gmail.com'),
  (2,'Livro de Folhas','09226158000187','234645679','livrosfolhas@yahoo.com.br'),
  (3,'Imprensa Solta Pendurada','05427159000135','264675689','imprensasoltinha@bol.com'),
  (4,'A editora','07436198000128','254645789','aeditora@yahoo.com.br'),
  (5,'Planeta Solitário','01786156000189','235944379','platenasolitario@hotmail.com.br');
 
 INSERT INTO `Generos` VALUES
   (1,'Comédia'),
   (2,'Ação'), 
   (3,'Suspense'),
   (4,'Drama'),
   (5,'Ficção');
 
 
 INSERT INTO `Pessoas` VALUES
  (1,'Judith Flores','judith@flores.com','12345678910','1098754321','1945-04-18',4),
  (2,'Sergio Malandro','hora@capeta.com','66666666666','9999999999','1955-10-12',1),
  (3,'Cascão de Souza','cascao@turmadamonica.com','01010101010','11961611616','1961-08-01',5),
  (4,'Senhor Torto','tortodesentortador@desentortando.com','43434343431','43434343432','1913-10-19',2),
  (5,'Dona Creuza','creuzinhagatinha@bol.com','01123456789','98765432110','1980-08-03',3);
  
  INSERT INTO `Usuarios` VALUES 
  (1,'1234567',1),
  (2,'6754323',2),
  (3,'3456765',3),
  (4,'4565898',4),
  (5,'5698765',5);
  
  INSERT INTO `Funcionarios` VALUES 
  (1,'1239123','Assistente',4),
  (2,'1984753','Bibliotecario',2),
  (3,'8674394','Bibliotecario',1),
  (4,'9842340','Recepcionista',3),
  (5,'8759095','Auxiliar de Serviços Gerais',5);
  
  INSERT INTO `Autores` VALUES 
  (1,3,5),
  (2,5,3),
  (3,1,1),
  (4,2,2),
  (5,4,4);
  
  INSERT INTO `Livros` VALUES 
  (1,'If Tomorrow Doesnt Come','2023-05-09','1º Edição',1362,'Inglês',true,3,4,1),
  (2,'O Poder do Hábito','2012-02-28','3 Edição',9286,'pt_BR',true,1,3,5),
  (3,'Cosmos','1980-01-01','2 Edição',2946,'pt_BR',true,5,2,4),
  (4,'Maybe you should talk to someone','2019-04-02','2 Edição',2057,'Inglês',true,2,1,3),
  (5,'A Louca dos Gatos','2018-07-13','1 Edição',0567,'pt_BR',true,3,5,2);
  