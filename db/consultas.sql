select 
e.sigla,
ma.titulo,
sum(i.pontuacaoBase) as total
from avaliacaoClube as ac 
inner join clube as c on c.id = ac.idClube
inner join estado as e on e.id = c.idEstado
inner join indicador as i on i.id = ac.idIndicador
inner join mesoIndicador as mi on mi.id = ac.idMeso
inner join macroIndicador as ma on ma.id = mi.idMacro
where year(dataAvaliacao) = year(getdate())
group by 
e.sigla,
ma.titulo
order by e.sigla

select 
c.id as codigo,
c.nome,
c.presidente,
c.email,
c.responsavel,
r.nome as referencia,
format(c.dataCadastro, 'dd/MM/yyyy') as cadastro,
t.descricao as tipo,
e.sigla as estado
from clube as c
left outer join clube as r on r.id = c.idEntidadeReferencia
inner join tipo as t on t.id = c.idTipo
inner join estado as e on e.id = c.idEstado
and t.descricao = 'CLUBE'
and c.status = 1
order by c.nome

select 
n.id as _id,
atleta.id as idatleta,
atleta.nome as atleta,
academia.id as idacademia,
academia.nome as academia,
categoria.id as idcategoria,
categoria.nome as categoria,
avaliador.id as idavaliador,
avaliador.nome as avaliador,
n.dataCadastro as dataCadastro
from nutricaoAnamnese as n 
inner join clube as avaliador on avaliador.id = n.idAvaliador
inner join academia as academia on academia.id = n.idAcademia
inner join categoria as categoria on categoria.id = n.idCategoria
inner join clube as atleta on atleta.id = n.idAtleta
order by n.dataCadastro

select
c.id,
c.nome,
c.email
from clube as c
inner join tipo as t on t.id = c.idTipo and t.descricao = 'ATLETA'


select 
n.id as _id,
atleta.id as idatleta,
atleta.nome as nome,
academia.id as idacademia,
academia.nome as academia,
categoria.id as idcategoria,
categoria.nome as categoria,
avaliador.id as idavaliador,
avaliador.nome as avaliador,
n.dataCadastro as dataCadastro
from nutricaoAnamnese as n 
inner join clube as avaliador on avaliador.id = n.idAvaliador
inner join academia as academia on academia.id = n.idAcademia
inner join categoria as categoria on categoria.id = n.idCategoria
inner join clube as atleta on atleta.id = n.idAtleta
order by n.dataCadastro

select * from clube



select
c.id as id,
c.nome as nome,
c.responsavel as responsavel,
c.idtipo as idtipo,
t.descricao as tipo,
cl.nome as clube
from clube as c
inner join tipo as t on t.id = c.idtipo
left outer join clube as cl on cl.id = c.idClube
where c.emailResponsavel = 'joao.nogueira@brasilrugby.com.br'
and c.senha = 'nuc@008'
and c.idtipo = '2760ed10-b61a-eb11-9fb3-0003ff5034ab'
and c.dtAprovacao is not null

select c.id as id,
c.nome as nome,
c.responsavel as responsavel
 from clube as c 
 where c.senha = 'nuc@008'

select 
n.id as _id,
atleta.id as idatleta,
atleta.nome as nome,
academia.id as idacademia,
academia.nome as academia,
categoria.id as idcategoria,
categoria.nome as categoria,
avaliador.id as idavaliador,
avaliador.nome as avaliador,
n.dataCadastro as dataCadastro,
n.estatura, 
n.pesocorporal, 
n.pesoideal, 
n.pesoosseo, 
n.pesopele,
n.pesoresidual, 
n.somadobras, 
n.somadobrasideal, 
n.massamuscular, 
n.massamuscularideal, 
n.gorduracorporal, 
n.gorduracorporalideal
from nutricaoAnamnese as n 
inner join clube as avaliador on avaliador.id = n.idAvaliador
inner join academia as academia on academia.id = n.idAcademia
inner join categoria as categoria on categoria.id = n.idCategoria
inner join clube as atleta on atleta.id = n.idAtleta
order by n.dataCadastro

select 
c.id,
upper(c.nome) as nome
from clube as c
inner join tipo as t on t.id = c.idTipo and t.descricao = 'CLUBE'
where c.id not in (
    select 
    distinct(idClube)
    from avaliacaoClube
    where year(dataAvaliacao) = year(GETDATE())
)
and c.status = 1
order by c.nome

select 
c.id,
upper(c.nome) as nome,
c.email as email,
c.emailResponsavel as responsavel
from clube as c 
inner join tipo as t on t.id = c.idTipo and t.descricao = 'CLUBE' 
where c.id in (
    select 
    distinct(idClube)
    from avaliacaoClube
    where dataFechamentoAvaliacao is null
    and year(dataAvaliacao) = year(GETDATE())
)
and c.status = 1
order by c.nome

select id, email, emailResponsavel, senha from clube where idTipo = 'b544433e-f36b-1410-8d73-003948fa5f97'


select 
c.id as codigo,
c.nome as nome,
t.descricao as funcao,
c.emailResponsavel as email,
c.dataCadastro as cadastro,
e.nome as clube
from clube as c 
inner join clube as e on e.id = c.idEntidadeReferencia
inner join tipo as t on t.id = c.idTipo and t.descricao in ('MASTER TRAINER','TRAINER','EDUCADOR','TREINADOR','PREPARADOR FISICO','EDUCADOR FISICO','MANAGER','PROFESSOR','ENTUSIASTA')

select 
c.id as codigo,
upper(c.nome) as nome,
upper(t.descricao) as funcao,
upper(c.emailResponsavel) as email,
c.dataCadastro as cadastro,
upper(e.nome) as clube,
c.cnpj
from clube as c 
inner join clube as e on e.id = c.idClube
inner join tipo as t on t.id = c.idTipo and t.descricao in ('MASTER TRAINER','TRAINER','EDUCADOR','TREINADOR','PREPARADOR FISICO','EDUCADOR FISICO','MANAGER','PROFESSOR','ENTUSIASTA')
order by c.nome, e.nome

select 
c.id,
c.idtipo,
f.id as idfederacao,
c.idEntidadeReferencia,
c.idClube,
c.idestado, 
c.idcidade,
upper(c.nome) as nome,
c.cpf,
c.rne,
format(c.datafundacao,'dd/MM/yyyy') as datafundacao,
c.telefone,
upper(c.emailResponsavel) as email,
upper(c.endereco) as endereco,
upper(c.numero) as numero,
upper(c.complemento) as complemento,
upper(c.bairro) as bairro, 
c.cep,
c.facebook,
c.instagram,
c.twitter
from clube as c 
inner join clube as e on e.id = c.idClube
inner join clube as f on f.id = e.idEntidadeReferencia
inner join tipo as t on t.id = c.idTipo and t.descricao in ('MASTER TRAINER','TRAINER','EDUCADOR','TREINADOR','PREPARADOR FISICO','EDUCADOR FISICO','MANAGER','PROFESSOR','ENTUSIASTA')
left outer join estado as est on est.id = c.idestado
left outer join cidade as cid on cid.id = e.idCidade

select * from clube 
order by datacadastro

select 
c.id as codigo,
upper(trim(c.nome)) as nome,
c.presidente,
c.email,
c.responsavel,
r.nome as referencia,
format(c.dataCadastro, 'dd/MM/yyyy') as cadastro,
t.descricao as tipo,
e.sigla as estado,
c.senha
from clube as c
left outer join clube as r on r.id = c.idEntidadeReferencia
inner join tipo as t on t.id = c.idTipo
inner join estado as e on e.id = c.idEstado
and t.descricao = 'TREINADOR'
and c.status = 1
order by c.nome

select 
c.id,
c.nome
from atletaAcademiaCategoriaPosicao as aacp
inner join clube as c on c.id = aacp.idAtleta
where aacp.idAcademia = '57EE1558-3C13-EB11-9FB3-501AC5CEE536'
and aacp.idCategoria = 'FA5F8AD7-AE22-EB11-9FB3-0003FF5034AB'

select 
n.id as _id,
atleta.id as idatleta,
atleta.nome as nome,
academia.id as idacademia,
academia.nome as academia,
categoria.id as idcategoria,
categoria.nome as categoria,
avaliador.id as idavaliador,
avaliador.nome as avaliador,
format(n.dataCadastro, 'yyyy-MM-dd') as datacadastro,
n.estatura, 
n.pesocorporal, 
n.pesoideal, 
n.pesoosseo, 
n.pesopele,
n.pesoresidual, 
n.somadobras, 
n.somadobrasideal, 
n.massamuscular, 
n.massamuscularideal, 
n.gorduracorporal, 
n.gorduracorporalideal
from nutricaoAnamnese as n 
inner join atletaAcademiaCategoriaPosicao aacp on aacp.idatleta = n.idAtleta and aacp.idacademia = n.idAcademia and aacp.idcategoria = n.idCategoria
inner join clube as atleta on atleta.id = aacp.idAtleta
inner join academia as academia on academia.id = aacp.idAcademia
inner join categoria as categoria on categoria.id = aacp.idCategoria
inner join clube as avaliador on avaliador.id = n.idAvaliador
order by n.dataCadastro


select 
n.id as _id,
atleta.id as idatleta,
atleta.nome as nome,
academia.id as idacademia,
academia.nome as academia,
categoria.id as idcategoria,
categoria.nome as categoria,
avaliador.id as idavaliador,
avaliador.nome as avaliador,
format(n.dataCadastro, 'yyyy-MM-dd') as datacadastro,
n.direita51015, 
n.esquerda51015
from fisicoAgilidade as n 
inner join atletaAcademiaCategoriaPosicao aacp on aacp.idatleta = n.idAtleta and aacp.idacademia = n.idAcademia and aacp.idcategoria = n.idCategoria
inner join clube as atleta on atleta.id = aacp.idAtleta
inner join academia as academia on academia.id = aacp.idAcademia
inner join categoria as categoria on categoria.id = aacp.idCategoria
inner join clube as avaliador on avaliador.id = n.idAvaliador
order by n.dataCadastro


select 
*
from historicoformacao

select 
c.id,
upper(c.nome) as nome
from clube as c 
inner join clube as e on e.id = c.idClube
inner join tipo as t on t.id = c.idTipo and t.descricao in ('MASTER TRAINER','TRAINER','EDUCADOR')
order by c.nome, e.nome

select 
c.id,
c.idtipo,
f.id as idfederacao,
c.idClube,
c.idestado, 
c.idcidade,
upper(c.nome) as nome,
c.cpf,
c.rne,
format(c.datafundacao,'yyyy-MM-dd') as datafundacao,
c.telefone,
upper(c.emailResponsavel) as email,
upper(c.endereco) as endereco,
upper(c.numero) as numero,
upper(c.complemento) as complemento,
upper(c.bairro) as bairro, 
c.cep,
c.facebook,
c.instagram,
c.twitter
from clube as c 
left outer join clube as e on e.id = c.idClube
left outer join clube as f on f.id = e.idEntidadeReferencia
inner join tipo as t on t.id = c.idTipo and t.descricao in ('MASTER TRAINER','TRAINER','EDUCADOR','TREINADOR','PREPARADOR FISICO','EDUCADOR FISICO','MANAGER','PROFESSOR','ENTUSIASTA')
left outer join estado as est on est.id = c.idestado
left outer join cidade as cid on cid.id = e.idCidade
where c.id = '6f5d827c-1c50-eb11-a606-a085fc56d5eb'

select * from clube as c inner join tipo as t on t.id = c.idTipo and t.descricao = 'EDUCADOR'

select 
c.id,
c.idtipo,
f.id as idfederacao,
c.idClube,
c.idestado, 
c.idcidade,
upper(c.nome) as nome,
c.cpf,
c.rne,
format(c.datafundacao,'yyyy-MM-dd') as datafundacao,
c.telefone,
upper(c.emailResponsavel) as email,
upper(c.endereco) as endereco,
upper(c.numero) as numero,
upper(c.complemento) as complemento,
upper(c.bairro) as bairro, 
c.cep,
c.facebook,
c.instagram,
c.twitter
from clube as c 
left outer join clube as e on e.id = c.idClube
left outer join clube as f on f.id = e.idEntidadeReferencia
inner join tipo as t on t.id = c.idTipo and t.descricao in ('MASTER TRAINER','TRAINER','EDUCADOR','TREINADOR','PREPARADOR FISICO','EDUCADOR FISICO','MANAGER','PROFESSOR','ENTUSIASTA')
left outer join estado as est on est.id = c.idestado
left outer join cidade as cid on cid.id = e.idCidade
where c.id = 'cb2aed85-3745-eb11-a606-a085fc56d5eb'

select * from tipo
order by organizacao

select * from clube where nome like 'LUCAS %'

select * from historicoexperiencia