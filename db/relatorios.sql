select 
upper(c.nome) as CLUBE,
upper(f.nome) as FEDERACAO
from clube as c
inner join clube as f on f.id = c.idEntidadeReferencia
where c.idTipo = (select id from tipo where descricao = 'CLUBE')
order by f.nome, c.nome

select 
upper(trim(c.nome)) as CLUBE,
upper(trim(f.nome)) as FEDERACAO,
upper(e.sigla) as ESTADO
from clube as c
inner join clube as f on f.id = c.idEntidadeReferencia
inner join estado as e on e.id = c.idEstado
where c.id in (
    select 
    distinct(idClube)
    from avaliacaoClube
    where dataFechamentoAvaliacao is not null
)
and c.idTipo = (select id from tipo where descricao = 'CLUBE')
order by f.nome, c.nome 

select * from vwRankingAvaliacoes