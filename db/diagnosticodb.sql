insert into macroindicador (titulo)
values ('GESTÃO')
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Estrutura Física do Clube (TREINOS)'), 'EFCT')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui campo próprio para treinos (escritura do local em nome do clube)'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui concessão de campo para treinos (contrato de longo prazo com duração de 5 anos ou mais)'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui parceria estável (pública) para utilização de campo para treinos ou aluguel com contratos e garantias'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Utiliza campo alugado para treino'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Utiliza espaço público não demarcado para treinos (praça, parque, etc)'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Estrutura Física do Clube (JOGOS)'), 'EFCJ')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui campo próprio para mando de jogos (escritura do local em nome do clube)'), 20)
go 

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui concessão de campo para mando de jogos (contrato de longo prazo com duração de 5 anos ou mais'), 15)
go 

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui parceria estável (pública) para utilização de campo em dias de jogos ou aluguel com contratos e garantias'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Utiliza campo alugado pontualmente para dias de jogos'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui acesso a campo para mando de jogos'), 0)
go


insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Processo de gestão'), 'PG')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Equipe de gestão completa (técnicos e gestores) se reúne mensalmente para alinhamento do plano de metas do clube e está dentro dos prazos'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Alguns membros da equipe de gestão se reúnem mensalmente para alinhamento de metas do clube e está próximo dos prazos'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Alguns membros do clube se reúnem mensalmente para organizar o clube e não medem as metas e prazos'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube está definindo seus membros diretores, gestores, técnicos e plano de metas'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não há reuniões sobre gestão'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Plano estratégico (ter métricas, objetivos e prazos definidos e escritos)'), 'PE')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Tem plano estratégico, com objetivos e monitora prazos nas reuniões de gestão'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Tem plano estratégico, com objetivos e monitora prazos'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Tem plano estratégico e objetivos definidos'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Tem plano estratégico'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não tem plano estratégico'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Fontes de arrecadação (Eventos, merchandising, patrocínio, mensalidades, projetos incentivados nacional, estadual, municipal, outras ações)'), 'FA')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('6 ou mais fontes'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('4 ou 5'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('2 ou 3'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('1'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Canais de comunicação (mídia eletrônica semanalmente e outras mensalmente)'), 'CC')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube trabalha 5 canais de comunicação com regularidade (Facebook, Instagram, Rádio, TV e mídia impressa)'), 20)

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube trabalha pelo menos 3, dos 5 canais de comunicação com regularidade'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube faz mídia eletrônica (Facebook e Instagram) com regularidade'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube faz mídia eletrônica (Facebook e Instagram) ocasionalmente'), 5)
go 

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube não trabalha canais de comunicação'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Estrutura Jurídica'), 'EJ')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui CNPJ ativo com as posições executivas atuantes de maneira remunerada'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui CNPJ ativo com as posições executivas atuantes de maneira voluntária'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui CNPJ ativo (apenas documento)'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Está com CNPJ inativo ou em processo de aprovação ou criação'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui CNPJ'), 0)
go


insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Organização de eventos'), 'OE')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Organizou nos últimos 12 meses 3 ou mais eventos que geraram lucro'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Organizou nos últimos 12 meses 2 eventos que geraram lucro'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Organizou nos últimos 12 meses 1 evento que gerou lucro'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Organizou nos últimos 12 meses eventos que não geraram lucro nem prejuízo'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não organizou eventos nos últimos 12 meses ou organizou eventos que geraram prejuízo'), 0)
go

insert into macroindicador (titulo)
values ('ADULTO')
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Categoria Adulta Masculina'), 'CAM')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui 2 equipes completas na categoria adulta (Principal e Intermedia). obs: minimo 50 atletas cadastrados no CNRU'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui 1 equipe completa na categoria adulta. obs: minimo 25 atletas por categoria cadastrados no CNRU'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui entre 15 e 25 atletas cadastrados no CNRu na categoria adulta'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui menos de 15 atletas cadastrados no CNRU na categoria adulta'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui atletas adultos cadastrados no CNRU'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Categoria Adulta Feminina'), 'CAF')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui 1 equipe completa para Rugby XV. obs: minimo 25 atletas cadastradas no CNRU'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui entre 15 e 25 atletas cadastradas no CNRu na categoria adulta feminina'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui entre 12 e 15 atletas cadastradas no CNRu na categoria adulta feminina'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui menos de 12 atletas cadastradas no CNRU na categoria adulta feminina'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui atletas adultas cadastradas no CNRU'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('PARTICIPAÇÃO - Categoria Adulta Masculina'), 'PCAM')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais há mais de 3 anos'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2017'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2018'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2019'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não participa de competições oficiais'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('PARTICIPAÇÃO - Categoria Adulta Feminina'), 'PCAF')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais há mais de 3 anos'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2017'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2018'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2019'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não participa de competições oficiais'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('DESEMPENHO - Categoria Adulta Masculina'), 'DCAM')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Disputa Primeira Divisão Nacional (XV)'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Disputa Segunda Divisão Nacional (XV)'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Disputa Estadual de XV, ou interestadual, caso seu estado não tenha Campeonato próprio, ou Campeonato Nacional de Sevens'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Disputa Estadual de sevens, ou interestadual, caso seu estado não tenha Campeonato próprio, ou competições universitárias'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não participa de competições oficiais'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('DESEMPENHO - Categoria Adulta Feminina'), 'DCAF')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Disputa Primeira Divisão Nacional - Super Sevens'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Disputa Segunda Divisão Nacional - Super Sevens'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Disputa Estadual de Sevens (ou interestadual, caso seu estado não tenha Campeonato próprio)'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Disputa torneios de Sevens universitários ou não oficiais'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não participa de competições'), 0)
go

insert into macroindicador (titulo)
values ('BASE')
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Categoria Juvenil Masculina'), 'CJM')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui no mínimo 25 atletas por categoria (M16 E M19) cadastrados no CNRU'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui no mínimo 25 atletas em uma categoria (M16 OU M19) cadastrados no CNRU'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui 25 atletas juvenis cadastrados no CNRU na somatória de todas as categorias (M16 + M19)'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui menos de 25 atletas juvenis cadastrados no CNRU na somatória de todas as categorias'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui atletas juvenis cadastrados no CNRU'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Categoria Juvenil Feminina'), 'CJF')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui no mínimo 15 atletas por categoria (M16 E M19) cadastrados no CNRU'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui no mínimo 15 atletas em uma categoria (M16 OU M19) cadastrados no CNRU'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui 15 atletas juvenis cadastradas no CNRU na somatória de todas as categorias'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui menos de 15 atletas juvenis cadastradas no CNRU na somatória de todas as categorias'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui atletas juvenis cadastradas no CNRU'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Categoria Infanto-Juvenil (M14)'), 'CIJ')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui no mínimo 20 atletas M14 cadastrados no CNRU'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui entre 10 e 20 atletas M14 cadastrados no CNRU'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui menos de 10 atletas M14 cadastrados no CNRU'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui atletas M14 cadastrados no CNRU'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Categoria Infantil'), 'CCI')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui no mínimo 10 atletas por categoria (M8 E M10 E M12)'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui no mínimo 10 atletas em pelo menos 2 das categorias (M8, M10, M12)'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui mais de 10 atletas infantis na somatória de todas as categorias'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui menos de 10 atletas infantis na somatória de todas as categorias'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui atletas infantis'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('PARTICIPAÇÃO - Categoria Juvenil Masculina'), 'PCJM')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais há mais de 3 anos'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2017'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2018'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2019'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não participa de competições oficiais'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('PARTICIPAÇÃO - Categoria Juvenil Feminina'), 'PCJF')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais há mais de 3 anos'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2017'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2018'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de competições oficiais desde 2019'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não participa de competições oficiais'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('PARTICIPAÇÃO - Categoria Infanto-Juvenil (M14)'), 'PCCI')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participou de Campeonato oficial M14 em 2019'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de Festivais M14 há mais de 2 anos'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de Festivais M14 há menos de 2 anos'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não participa de Festivais M14'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('PARTICIPAÇÃO - Categoria Infantil'), 'PCI')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de Festivais Infantis há mais de 3 anos'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de Festivais Infantis desde 2017'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de Festivais Infantis desde 2018'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Participa de Festivais Infantis desde 2019'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não participa de Festivais Infantis'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Plano de Desenvolvimento de Atleta a Longo Prazo'), 'PDALP')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui um Plano formal de Desenvolvimento de Atleta a Longo Prazo em funcionamento. Prática (alinhamento sobre  processos de transição entre as categorias) e Teoria (documento formalizado).'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Está desenvolvendo um Plano formal de Desenvolvimento de Atleta a Longo Prazo. Prática (alinhamento sobre processos de transição entre as categorias) e Teoria (documento em construção).'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Planeja construir um processo de transição entre as categorias, com algumas ações já colocadas em prática.'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Planeja construir um processo de transição entre as categorias, sem ações práticas.'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não planeja os processos de transição entre as categorias.'), 0)
go

insert into macroindicador (titulo)
values ('TREINADORES')
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Treinadores remunerados (Quantitativo)'), 'TRQ')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('8 ou mais treinadores remunerados no clube'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('5 a 8 treinadores remunerados no clube'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 a 5 treinadores remunerados no clube'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Menos de 3 treinadores remunerados no clube'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0 treinadores remunerados no clube'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Capacitação de Treinadores - Curso World Rugby Nível 1'), 'CWRN1')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('8 ou mais treinadores com certificado de Curso World Rugby Nível 1'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('5 a 8 treinadores com certificado de Curso World Rugby Nível 1'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 a 5 treinadores com certificado de Curso World Rugby Nível 1'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Menos de 3 treinadores com certificado de Curso World Rugby Nível 1'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0 treinadores com certificado de Curso World Rugby Nível 1'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Capacitação de Treinadores - Curso World Rugby Nivel 2'), 'CWRN2')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('8 ou mais treinadores com certificado de Curso World Rugby Nível 2'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('5 a 8 treinadores com certificado de Curso World Rugby Nível 2'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 a 5 treinadores com certificado de Curso World Rugby Nível 2'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Menos de 3 treinadores com certificado de Curso World Rugby Nível 2'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0 treinadores com certificado de Curso World Rugby Nível 2'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Fomento à formação de novos treinadores'), 'FFNT')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube realiza AÇÕES de fomento direcionada a jogadores, ex-jogadores, dirigentes, preparadores físicos, equipe médica e familiares'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube realiza AÇÕES de fomento direcionadas apenas para jogadores e ex-jogadores'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube realiza AÇÕES de fomento direcionadas apenas a jogadores'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube realiza AÇÕES de fomento apenas aos que se mostram interessados'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube não realiza AÇÕES de fomento à formação de novos treinadores'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Plano de desenvolvimento para treinadores (ter métricas, objetivos e prazos definidos e escritos)'), 'PDT')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Tem plano de desenvolvimento definido, executa e monitora o desempenho'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Tem plano de desenvolvimento definido, mas executa parcialmente'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Executa ações de desenvolvimento não planejadas'),10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Está construindo um plano de desenvolvimento e ainda não executa'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não tem plano de desenvolvimento'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Melhoria continua do jogo'), 'MJ')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Promove reuniões técnicas semanais, com processos claros de alinhamento técnico/ tático entre todo corpo técnico do clube'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Promove reuniões técnicas semanais, sem um processo claro de alinhamento técnico/ tático entre todo corpo técnico do clube'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Promove reuniões técnicas, com periodicidade de acordo com necessidades apresentadas ao longo do dia a dia'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Treinadores se reúnem apenas em momentos de treinos e jogos, sem pauta definida'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não promove momentos de conversas entre os treinadores do clube'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Treinadores voluntários (Quantitativo)'), 'TV')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('8 ou mais treinadores voluntários no clube'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('5 a 8 treinadores voluntários no clube'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 a 5 treinadores voluntários no clube'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Menos de 3 treinadores voluntários no clube'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0 treinadores voluntários no clube'), 0)
go

insert into macroindicador (titulo)
values ('ARBITRAGEM')
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Árbritos em atividade (Quantitativo)'), 'AAQ')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('8 ou mais árbitros N1 ou N2 atuante nos campeonatos oficiais da federação'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('5 a 8 árbitros N1 ou N2 atuante nos campeonatos oficiais da federação'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 a 5 árbitros N1 ou N2 atuante nos campeonatos oficiais da federação'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Menos de 3 árbitros N1 ou N2 atuante nos campeonatos oficiais da federação'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0 árbitros N1 ou N2 atuante nos campeonatos oficiais da federação'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Capacitação de árbitros - Curso World Rugby Nível 1'), 'CAWRN1')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('8 ou mais árbitros s com certificado de Curso World Rugby Nível 1'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('5 a 8 árbitros com certificado de Curso World Rugby Nível 1'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 a 5 árbitros com certificado de Curso World Rugby Nível 1'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Menos de 3 árbitros com certificado de Curso World Rugby Nível 1'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0 árbitros com certificado de Curso World Rugby Nível 1'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Capacitação de Árbitros- Curso World Rugby Nível 2'), 'CAWRN2')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('8 ou mais árbitros com certificado de Curso World Rugby Nível 2'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('5 a 8 árbitros com certificado de Curso World Rugby Nível 2'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 a 5 árbitros com certificado de Curso World Rugby Nível 2'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Menos de 3 árbitros com certificado de Curso World Rugby Nível 2'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0 árbitros com certificado de Curso World Rugby Nível 2'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Processos de capacitação continuada'), 'PCC')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Os árbitros em atividade, participam atuando ativamente e expecificamente dos treinos de equipes variadas e demais beneficios oferecidos pelo clube (preparação fisica, academia, fisioterapia, nutricionista e etc)'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Os árbitros em atividade, participam atuando ativamente e expecificamente dos treinos de equipes variadas'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Os árbitros em atividade, participam dos treinos como atleta ou equipe técnica'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Os árbitros em atividade, participam dos treinos como atletas'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Os árbitros não participam das atividades do clube'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Fomento à formação de novos Árbitros'), 'FFNA')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube realiza AÇÕES de fomento direcionada a jogadores, ex-jogadores, dirigentes, treinadores, preparadores físicos, equipe médica e familiares'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube realiza AÇÕES de fomento direcionadas apenas para jogadores e equipe técnica'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube realiza AÇÕES de fomento direcionadas apenas a jogadores'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube realiza AÇÕES de fomento apenas aos que se mostram interessados'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube não realiza AÇÕES de fomento à formação de novos árbitros'), 0)
go

insert into macroindicador (titulo)
values ('PREPARAÇÃO FÍSICA')
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Preparação Fisica'), 'PF')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui equipe de preparação fisica com 3 preparadores fisicos contratados desenvolvendo a parte física dos ateltas ( base e adulto)'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui equipe de 1 preparador fisico contratado e voluntarios desenvolvendo a parte física dos atletas (Base e Adulto)'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui parceria com instituições, profissionais ou academias para desenvolver a parte fisica dos atletas adultos.'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Possui voluntários para desenvolver a parte física dos atletas adulto.'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não desenvolve trabalho direcionado para a parte física dos atletas'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Capacitação de Preparadores Fisicos - Curso World Rugby Nível 1'), 'CPFWRN1')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('4 ou mais preparadores físicos com certificado de Curso World Rugby Nível 1'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 preparadores físicos com certificado de Curso World Rugby Nível 1'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('2 preparadores físicos com certificado de Curso World Rugby Nível 1'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('1 preparador físico com certificado de Curso World Rugby Nível 1'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0 treinadores com certificado de Curso World Rugby Nível 1'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Capacitação de Preparadores Fisicos - Avançado'), 'CPFA')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui pelo menos 1 preparador físico com World Rugby Nível 2 e no mínimo pós-graduação em preparação física'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui pelo menos 1 preparador físico com no mínimo pós-graduação em preparação física'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui pelo menos 1 preparador físico com World Rugby Nível 2'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui pelo menos 1 pessoa cursando ou formado em educação física'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Não possui colaboradores que atendam as anteriores'), 0)
go

insert into macroindicador (titulo)
values ('SAÚDE')
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Área médica'), 'AM')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui um médico parceiro, remunerado ou voluntário que sempre atende ao clube e acompanha a saúde dos atletas durante a temporada'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui uma instituição parceira, remunerada ou voluntária, que eventualmente atende ao clube'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui um médico parceiro, remunerado ou voluntário, que eventualmente atende ao clube'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube não tem área médica'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Apoio de ambulância'), 'AMB')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube sempre consegue ambulância gratuita para apoio nos eventos'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube consegue eventualmente (pelo menos 3 vezes por ano) ambulância gratuita para apoio nos eventos'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube tem um contato prático de contratação de ambulância'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube não tem estrutura de ambulância'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Fisioterapia'), 'FISIO')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui 1 ou mais fisioterapuetas oficiais remunerados (temporários ou permanente)'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui instituição parceira, remunerada ou voluntária, que eventualmente atende ao clube'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui um fisioterapeuta parceiro, remunerado ou voluntário, que eventualmente atende ao clube'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube não tem fisioterapia'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Capacitação primeiros socorros Nível 1 e 2'), 'CPSN12')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('2 ou mais Nível 2 e 8 ou mais nível 1'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('1 Nível 2 e 5 ou mais nível 1'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 ou mais nível 1'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Menos de 3 nível 1'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('Nenhum'), 0)
go

insert into macroindicador (titulo)
values ('CAPTAÇÃO DE JOGADORES')
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Plano de captação definido'), 'PCD')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui e executa um plano com processos, estratégias e metas definidas para captação de novos jogadores'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui um plano para captação de novos jogadores, mas não executa completamente ou está muito distante das metas definidas'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube está desenvolvendo um plano com processos, estratégias e metas definidas e já realiza algumas ações'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube pretende iniciar o plano e já realiza algumas de captação de novos jogadores'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube não possui um plano de captação definido e não realiza ações de captação de novos jogadores'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Recursos humanos dedicados a captação'), 'RHDC')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui de 3 a 5 pessoas constantemente dedicadas ao processo de captação de novos jogadores'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui até 3 pessoas constentemente dedicadas ao processo de captação de novos jogadores'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube possui de 1 pessoa constantemente dedicada ao processo de captação de novos jogadores'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube faz ações de captação de novos jogadores eventualmente'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('O clube não faz captação de novos jogadores'), 0)
go

insert into mesoindicador (idmacro, titulo, mnemonic)
values ((select max(id) from macroindicador), UPPER('Campanhas de captação (conjunto de ações setorizadas para captar novos jogadores)'), 'CCCJ')
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('4 ou mais por ano'), 20)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('3 por ano'), 15)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('2 por ano'), 10)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('1 por ano'), 5)
go

insert into indicador (idmeso, descricao, pontuacaobase)
values ((select max(id) from mesoindicador), UPPER('0'), 0)
go