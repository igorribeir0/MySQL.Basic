SELECT e.nome as Estado, c.nome as Cidade, regiao as Região from estados e, cidades c 
WHERE e.id = c.estado_id;

SELECT 
    c.nome as Cidades,
    e.nome as Estados,
    regiao as Região
FROM 
    estados e
inner join cidades c on e.id = c.estado_id;

    