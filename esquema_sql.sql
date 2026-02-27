-- =========================================
-- DROP DATABASE
-- =========================================
DROP DATABASE IF EXISTS ecommerce;
CREATE DATABASE ecommerce;
USE ecommerce;

-- =========================================
-- CLIENT (ENTIDADE PRINCIPAL)
-- =========================================
CREATE TABLE clients (
    idClient INT AUTO_INCREMENT PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    clientType ENUM('PF','PJ') NOT NULL
);

-- =========================================
-- CLIENT PF (Especialização)
-- =========================================
CREATE TABLE client_pf (
    idClient INT PRIMARY KEY,
    Fname VARCHAR(50) NOT NULL,
    Minit CHAR(3),
    Lname VARCHAR(50) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    CONSTRAINT fk_pf_client
        FOREIGN KEY (idClient)
        REFERENCES clients(idClient)
        ON DELETE CASCADE
);

-- =========================================
-- CLIENT PJ (Especialização)
-- =========================================
CREATE TABLE client_pj (
    idClient INT PRIMARY KEY,
    SocialName VARCHAR(255) NOT NULL,
    CNPJ CHAR(14) NOT NULL UNIQUE,
    CONSTRAINT fk_pj_client
        FOREIGN KEY (idClient)
        REFERENCES clients(idClient)
        ON DELETE CASCADE
);

-- =========================================
-- PRODUCTS
-- =========================================
CREATE TABLE products(
    idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(100) NOT NULL,
    Classification_kids BOOLEAN DEFAULT FALSE,
    Category ENUM ('Eletronico', 'Vestimenta', 'Alimentos', 'Moveis') NOT NULL,
    Rate DECIMAL(3,2) DEFAULT 0,
    size VARCHAR(10)
);

-- =========================================
-- ORDERS
-- =========================================
CREATE TABLE orders(
    idOrder INT AUTO_INCREMENT PRIMARY KEY,
    idClient INT NOT NULL,
    orderStatus ENUM ('Cancelado', 'Confirmado', 'Em processamento')
        DEFAULT 'Em processamento',
    orderDescription VARCHAR(255),
    sendValue DECIMAL(10,2) DEFAULT 10.00,
    CONSTRAINT fk_orders_client
        FOREIGN KEY (idClient)
        REFERENCES clients(idClient)
        ON DELETE RESTRICT
);

-- =========================================
-- PAYMENTS (permite múltiplos pagamentos)
-- =========================================
CREATE TABLE payments(
    idPayment INT AUTO_INCREMENT PRIMARY KEY,
    idOrder INT NOT NULL,
    typePayment ENUM('dinheiro', 'boleto', 'cartão') NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_payment_order
        FOREIGN KEY (idOrder)
        REFERENCES orders(idOrder)
        ON DELETE CASCADE
);

-- =========================================
-- DELIVERY
-- =========================================
CREATE TABLE delivery(
    idDelivery INT AUTO_INCREMENT PRIMARY KEY,
    idOrder INT UNIQUE,
    deliveryStatus ENUM('Processando','Enviado','Em transporte','Entregue','Atrasado')
        DEFAULT 'Processando',
    trackingCode VARCHAR(100),
    CONSTRAINT fk_delivery_order
        FOREIGN KEY (idOrder)
        REFERENCES orders(idOrder)
        ON DELETE CASCADE
);

-- =========================================
-- STORAGE LOCATION
-- =========================================
CREATE TABLE storageLocation(
    idStorage INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255) NOT NULL
);

-- =========================================
-- PRODUCT STORAGE (N:N)
-- =========================================
CREATE TABLE productStorage(
    idProduct INT,
    idStorage INT,
    quantity INT DEFAULT 0,
    PRIMARY KEY (idProduct, idStorage),
    CONSTRAINT fk_ps_product
        FOREIGN KEY (idProduct)
        REFERENCES products(idProduct)
        ON DELETE CASCADE,
    CONSTRAINT fk_ps_storage
        FOREIGN KEY (idStorage)
        REFERENCES storageLocation(idStorage)
        ON DELETE CASCADE
);

-- =========================================
-- SUPPLIER
-- =========================================
CREATE TABLE supplier(
    idSupplier INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(255) NOT NULL,
    CNPJ CHAR(14) NOT NULL UNIQUE,
    contact CHAR(11) NOT NULL
);

-- =========================================
-- SELLER
-- =========================================
CREATE TABLE seller(
    idSeller INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(255) NOT NULL,
    AbstName VARCHAR(255),
    CNPJ CHAR(14),
    CPF CHAR(11),
    Location VARCHAR(255),
    Contact CHAR(11) NOT NULL,
    CONSTRAINT unique_cnpj_seller UNIQUE (CNPJ),
    CONSTRAINT unique_cpf_seller UNIQUE (CPF)
);

-- =========================================
-- PRODUCT x SELLER (N:N)
-- =========================================
CREATE TABLE productSeller(
    idSeller INT,
    idProduct INT,
    prodQuantity INT DEFAULT 1,
    PRIMARY KEY(idSeller, idProduct),
    CONSTRAINT fk_pseller_seller
        FOREIGN KEY (idSeller)
        REFERENCES seller(idSeller)
        ON DELETE CASCADE,
    CONSTRAINT fk_pseller_product
        FOREIGN KEY (idProduct)
        REFERENCES products(idProduct)
        ON DELETE CASCADE
);

-- =========================================
-- PRODUCT x ORDER (N:N)
-- =========================================
CREATE TABLE productOrder(
    idProduct INT,
    idOrder INT,
    poQuantity INT DEFAULT 1,
    poStatus ENUM('Disponivel', 'Sem estoque') DEFAULT 'Disponivel',
    PRIMARY KEY (idProduct, idOrder),
    CONSTRAINT fk_porder_product
        FOREIGN KEY(idProduct)
        REFERENCES products(idProduct)
        ON DELETE CASCADE,
    CONSTRAINT fk_porder_order
        FOREIGN KEY(idOrder)
        REFERENCES orders(idOrder)
        ON DELETE CASCADE
);