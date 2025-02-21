-- SQLite

-- Criando tabela de vendas (SALES)

CREATE TABLE SALES (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    CUSTOMER_ID INTEGER NOT NULL,
    EMPLOYEE_ID INTEGER NOT NULL,
    DATE_SALE DATETIME NOT NULL,
    TOTAL DECIMAL(10,2) NOT NULL,
    DESCRIPTION TEXT,

    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (ID),
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES (ID)
);

-- Inserir valores
INSERT INTO SALES (CUSTOMER_ID, EMPLOYEE_ID, DATE_SALE, TOTAL, DESCRIPTION) VALUES
    (5, 1, '2022-06-10', 299.90,    'Pagamento via PIX'),
    (8, 2, '2022-06-25', 5000,      'Pagamento via Cartão'),
    (9, 3, '2022-06-04', 25.80,     'Pagamento via Cartão'),
    (7, 3, '2022-07-10', 799.80,    'Pagamento via Cartão'),
    (5, 2, '2022-07-25', 2244.95,   'Pagamento via PIX'),
    (8, 2, '2022-07-27', 5199.9,   'Pagamento via Cartão');


-- Mostrar tabela
SELECT * FROM CUSTOMERS;
SELECT * FROM EMPLOYEES;
SELECT * FROM PRODUCTS;
SELECT * FROM SALES;

DELETE FROM SALES;


INSERT INTO SALES (CUSTOMER_ID, EMPLOYEE_ID, DATE_SALE, TOTAL, DESCRIPTION) VALUES
    (5, 1, '2022-06-10', 299.90,    'Pagamento via PIX'),
    (8, 2, '2022-06-25', 5000,      'Pagamento via Cartão'),
    (9, 3, '2022-06-04', 25.80,     NULL),
    (7, 3, '2022-07-10', 799.80,    NULL),
    (5, 2, '2022-07-25', 2244.95,   NULL),
    (8, 2, '2022-07-27', 5199.9,    NULL);