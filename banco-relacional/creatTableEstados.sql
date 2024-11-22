CREATE TABLE IF NOT EXISTS cidades (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    estado_id INT UNSIGNED NOT NULL,
    area DECIMAL(10, 2),
    PRIMARY KEY (id),
    FOREIGN KEY (estado_id) REFERENCES estados (id)
); -- Caso sejam diversos CREATS necessário o uso do ;


CREATE TABLE IF NOT EXISTS teste (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

-- Se você quer apenas esvaziar uma tabela sem remover sua estrutura, use TRUNCATE TABLE em vez de DROP.
-- Cuidado com o Uso do DROP

-- DROP TABLE IF EXISTS teste;


