update estados -- WARNING
set nome = 'Maranhão'
Where sigla = 'MA' 

SELECT nome.est
from estados est
where sigla = 'Maranhão'

update estados
SET nome = 'Paraná', 
    populacao = 11.32
where sigla = 'PR' -- Geralemnte usado PK

SELECT  nome,
        sigla,
        populacao
from estados
where sigla ='PR'