INSERT INTO cidades (nome, area, estado_id)
VALUES ('Recife', 795, 31)

INSERT INTO cidades (nome, area, estado_id)
VALUES ('Niterói', 133.9, 25)

INSERT INTO cidades (nome, area, estado_id)
VALUES (
    'Caruaru', 
    133.9, 
    (SELECT id from `estados` WHERE sigla = 'PE' )
)

INSERT INTO cidades (nome, area, estado_id)
VALUES (
    'Juazeiro do Norte',
    248.2,
    (SELECT id FROM `estados` WHERE sigla = 'CE')
)

Select * from cidades