-- CLIENTES BASE
INSERT INTO clients (Address, clientType) VALUES
('Recife','PF'),
('Olinda','PF'),
('Paulista','PF'),
('Caruaru','PF'),
('Jaboatao','PF'),
('Recife','PJ'),
('Olinda','PJ'),
('Paulista','PJ'),
('Recife','PF'),
('Caruaru','PF'),
('Olinda','PF'),
('Recife','PF'),
('Jaboatao','PJ'),
('Paulista','PF'),
('Recife','PF'),
('Caruaru','PJ'),
('Olinda','PF'),
('Recife','PF'),
('Paulista','PJ'),
('Jaboatao','PF');

INSERT INTO client_pf VALUES
(1,'Ana','M','Lima','11111111101'),
(2,'Bruno','A','Silva','11111111102'),
(3,'Carlos','B','Souza','11111111103'),
(4,'Daniel','C','Pereira','11111111104'),
(5,'Eduardo','D','Costa','11111111105'),
(9,'Fernanda','E','Alves','11111111106'),
(10,'Gabriel','F','Melo','11111111107'),
(11,'Helena','G','Ramos','11111111108'),
(12,'Igor','H','Barros','11111111109'),
(14,'Juliana','I','Dias','11111111110'),
(15,'Karen','J','Teixeira','11111111111'),
(17,'Lucas','K','Monteiro','11111111112'),
(18,'Marina','L','Rocha','11111111113'),
(20,'Nicolas','M','Freitas','11111111114');

INSERT INTO client_pj VALUES
(6,'Tech Solutions LTDA','00000000000001'),
(7,'Comercial Recife SA','00000000000002'),
(8,'Nordeste Imports','00000000000003'),
(13,'Distribuidora Brasil','00000000000004'),
(16,'Moveis Premium SA','00000000000005'),
(19,'Eletronicos Nordeste','00000000000006');


INSERT INTO storageLocation (location) VALUES
('Recife Centro'),
('Olinda Norte'),
('Paulista Sul'),
('Caruaru Leste'),
('Jaboatao Oeste');

INSERT INTO products (Pname, Classification_kids, Category, Rate, size) VALUES
('Notebook',FALSE,'Eletronico',4.5,NULL),
('Smartphone',FALSE,'Eletronico',4.7,NULL),
('TV 50',FALSE,'Eletronico',4.3,NULL),
('Camiseta',FALSE,'Vestimenta',4.0,'M'),
('Tenis',FALSE,'Vestimenta',4.6,'42'),
('Geladeira',FALSE,'Eletronico',4.2,NULL),
('Chocolate',TRUE,'Alimentos',4.8,NULL),
('Biscoito',TRUE,'Alimentos',4.4,NULL),
('Sofa',FALSE,'Moveis',4.1,NULL),
('Mesa',FALSE,'Moveis',4.0,NULL),
('Cadeira',FALSE,'Moveis',4.2,NULL),
('Boneca',TRUE,'Alimentos',3.9,NULL),
('Carrinho',TRUE,'Alimentos',4.3,NULL),
('Jaqueta',FALSE,'Vestimenta',4.5,'G'),
('Microondas',FALSE,'Eletronico',4.1,NULL),
('Fone',FALSE,'Eletronico',4.6,NULL),
('Relogio',FALSE,'Vestimenta',4.4,NULL),
('Armario',FALSE,'Moveis',4.0,NULL),
('Monitor',FALSE,'Eletronico',4.5,NULL),
('Tablet',FALSE,'Eletronico',4.6,NULL),
('Arroz',TRUE,'Alimentos',4.2,NULL),
('Feijao',TRUE,'Alimentos',4.1,NULL),
('Cama',FALSE,'Moveis',4.3,NULL),
('Impressora',FALSE,'Eletronico',4.4,NULL),
('Sandalia',FALSE,'Vestimenta',4.2,'39');



INSERT INTO productStorage VALUES
(1,1,20),(1,2,10),
(2,1,30),(3,2,15),
(4,3,40),(5,3,25),
(6,4,10),(7,1,100),
(8,2,80),(9,4,12),
(10,5,14),(11,3,20),
(12,1,60),(13,1,50),
(14,2,22),(15,4,8),
(16,1,35),(17,2,28),
(18,3,10),(19,4,16),
(20,5,18),(21,1,90),
(22,2,70),(23,3,11),
(24,4,13),(25,5,19);


INSERT INTO seller (SocialName,AbstName,CNPJ,Location,Contact) VALUES
('Magazine Luiza','Magalu','10000000000001','Recife','81900000001'),
('Amazon Brasil','Amazon','10000000000002','SP','81900000002'),
('Casas Bahia','Bahia','10000000000003','SP','81900000003'),
('Shopee Brasil','Shopee','10000000000004','Recife','81900000004'),
('Americanas','Americanas','10000000000005','SP','81900000005'),
('Submarino','Sub','10000000000006','Recife','81900000006'),
('Ponto Frio','Ponto','10000000000007','SP','81900000007'),
('Kabum','Kabum','10000000000008','SP','81900000008');


INSERT INTO orders (idClient,orderStatus,orderDescription,sendValue) VALUES
(1,'Confirmado','Compra eletronicos',20),
(2,'Confirmado','Compra vestimenta',15),
(3,'Em processamento','Compra moveis',30),
(4,'Confirmado','Compra alimentos',10),
(5,'Cancelado','Pedido cancelado',0),
(6,'Confirmado','Compra corporativa',50),
(7,'Confirmado','Compra PJ',40),
(8,'Em processamento','Compra grande',60),
(9,'Confirmado','Compra simples',12),
(10,'Confirmado','Compra online',18),
(11,'Confirmado','Compra tv',20),
(12,'Confirmado','Compra tenis',15),
(13,'Confirmado','Compra monitor',18),
(14,'Em processamento','Compra geladeira',35),
(15,'Confirmado','Compra relogio',9),
(16,'Confirmado','Compra moveis',45),
(17,'Confirmado','Compra alimentos',8),
(18,'Confirmado','Compra notebook',25),
(19,'Confirmado','Compra tablet',22),
(20,'Confirmado','Compra smartphone',20),
(1,'Confirmado','Nova compra',12),
(2,'Confirmado','Compra mesa',11),
(3,'Confirmado','Compra cadeira',13),
(4,'Confirmado','Compra carrinho',9),
(5,'Confirmado','Compra microondas',19),
(6,'Confirmado','Compra empresarial',55),
(7,'Confirmado','Compra lote',65),
(8,'Confirmado','Compra grande lote',70),
(9,'Confirmado','Compra impressora',17),
(10,'Confirmado','Compra sandalia',10),
(11,'Confirmado','Compra arroz',7),
(12,'Confirmado','Compra feijao',6),
(13,'Confirmado','Compra cama',33),
(14,'Confirmado','Compra armario',28),
(15,'Confirmado','Compra fone',5),
(16,'Confirmado','Compra chocolate',4),
(17,'Confirmado','Compra biscoito',3),
(18,'Confirmado','Compra sofa',21),
(19,'Confirmado','Compra jaqueta',14),
(20,'Confirmado','Compra monitor',19);

use ecommerce

INSERT INTO orders (idClient,orderStatus,orderDescription,sendValue) values (20,'Em processamento','Compra biscoito',60)


INSERT INTO productOrder VALUES
(1,7,2,'Disponivel')



INSERT INTO payments (idOrder,typePayment,amount) VALUES
(1,'cartão',5000),(1,'boleto',500),
(2,'dinheiro',200),
(3,'cartão',1500),
(4,'dinheiro',100),
(6,'cartão',7000),
(7,'boleto',4000),
(8,'cartão',6000),
(9,'dinheiro',300),
(10,'cartão',1200),
(11,'cartão',2000),
(12,'dinheiro',500),
(13,'cartão',1800),
(14,'boleto',3500),
(15,'dinheiro',250),
(16,'cartão',4500),
(17,'dinheiro',100),
(18,'cartão',2500),
(19,'cartão',2200),
(20,'cartão',3000);



INSERT INTO payments (idOrder,typePayment,amount) VALUES
(2,'cartão',5000),(2,'boleto',500)

INSERT INTO delivery (idOrder,deliveryStatus,trackingCode) VALUES
(1,'Entregue','BR123'),
(2,'Entregue','BR124'),
(3,'Em transporte','BR125'),
(4,'Entregue','BR126'),
(6,'Enviado','BR127'),
(7,'Enviado','BR128'),
(8,'Processando','BR129'),
(9,'Entregue','BR130'),
(10,'Entregue','BR131'),
(11,'Entregue','BR132'),
(12,'Entregue','BR133'),
(13,'Entregue','BR134'),
(14,'Em transporte','BR135'),
(15,'Entregue','BR136');



INSERT INTO supplier (SocialName, CNPJ, contact) VALUES
('Tech Distribuidora LTDA', '12345678000101', '11988887777'),
('Mega Eletronicos SA', '22345678000102', '11977776666'),
('Global Imports LTDA', '32345678000103', '11966665555'),
('Fashion Atacado LTDA', '42345678000104', '11955554444'),
('Casa & Conforto LTDA', '52345678000105', '11944443333'),
('Vendedor Premium LTDA', '62345678000106', '11933332222'),
('Top Vendas SA', '72345678000107', '11922221111');











