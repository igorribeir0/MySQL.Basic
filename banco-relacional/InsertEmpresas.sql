ALTER TABLE empresas MODIFY cnpj VARCHAR(14);

INSERT INTO empresas
    (nome, cnpj)
VALUES 
    ('Bradesco', 12345678000199),
    ('Vale', 98765432000147),
    ('Cielo', 56473829000132);

desc empresas;

INSERT INTO empresas_unidades
    (empresa_id, cidade_id, sede)
VALUES 
    (1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);


