create table estados (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('NORTE', 'SUL', 'Centro-Oeste', 'Sudeste', 'NORDESTE') NOT NULL,
    populacao DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (nome),
    UNIQUE KEY (sigla)
);
