SELECT * from cidades c inner join prefeitos p on c.id = p.cidade_id;
SELECT * from cidades c left outer join prefeitos p on c.id = p.cidade_id;
SELECT * from cidades c right join `prefeitos` p on c.id = p.cidade_id;


-- FUll
SELECT * from cidades c left outer join prefeitos p on c.id = p.cidade_id
union
SELECT * from cidades c right join `prefeitos` p on c.id = p.cidade_id;


