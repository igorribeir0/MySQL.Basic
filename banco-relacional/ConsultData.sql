-- SELECT * FROM estados  -- Não usar

-- SELECT nome, sigla from estados

SELECT 
    nome as 'Nome do Estado', 
    sigla,
    populacao
from estados
WHERE populacao >= 10
order by populacao desc