use hospital_db_kevin_schuab;

/*Todos os dados e o valor médio das consultas do ano de 2020 realizadas SEM convênio*/
select * from consultas where convenio_id is null and year(data) = 2020;
select avg(valor) as valor_medio from consultas where convenio_id is null and year(data) = 2020;

/*Todos os dados e o valor médio das consultas do ano de 2020 realizadas POR convênio*/
select * from consultas where convenio_id is not null and year(data) = 2020;
select avg(valor) as valor_medio from consultas where convenio_id is not null and year(data) = 2020;

/*Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta*/
/*update internacao set data_alta = '17/9/15' where id = 2;
update internacao set data_prev_alta = '17/9/10' where id = 2;
update internacao set data_alta = '21/12/19' where id = 6;
update internacao set data_prev_alta = '21/12/13' where id = 6;*/

select * from internacao where data_alta > data_prev_alta;

/*Receituário completo da primeira consulta registrada com receituário associado*/
select r.receita, cs.data, m.nome as medico, e.especialidade, p.nome as paciente, cn.nome as convenio, cs.numero_carteira, cs.valor from receita as r 
inner join consultas as cs
inner join medico as m
inner join especialidade as e
inner join paciente as p
inner join convenio as cn
on r.consultas_id=cs.id and cs.medico_id=m.id and cs.especialidade_id=e.id and cs.paciente_id=p.id and cs.convenio_id=cn.id
where r.id= 1;

/*Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio)*/
select * from consultas
where convenio_id is null and (valor = (select max(valor) from consultas where convenio_id is null) or valor = (select min(valor) from consultas where convenio_id is null))
order by valor;

/*Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta*/
/*update internacao set data_alta = date_add(data_entrada, interval 3 day) where data_alta is null;
update internacao set data_prev_alta = date_add(data_entrada, interval 3 day) where data_prev_alta is null;*/

select i.*, sum((tq.valor_diaria) * (datediff(data_alta, data_entrada))) as total from internacao as i
inner join quarto as q
inner join tipo_quarto as tq
on i.quarto_id=q.id and q.tipo_quarto_id=tq.id
group by id;

/*Data, procedimento e número do quarto de internações em quartos do tipo “apartamento”*/
select i.data_entrada, i.procedimento, q.numero as quarto from internacao as i
inner join tipo_quarto as tq
inner join quarto as q
on i.quarto_id=q.id and q.tipo_quarto_id=tq.id
where tq.descricao = 'apartamento';

/*Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta*/
select p.nome as paciente, c.data, e.especialidade
from paciente as p
inner join consultas as c
inner join especialidade as e
on c.paciente_id=p.id and c.especialidade_id=e.id
where ((year(c.data)) - year(data_de_nascimento)) <18 and not e.especialidade= 'pediatria'
order by c.data;

/*Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”*/
select p.nome as paciente, m.nome as medico, i.data_entrada, i.procedimento from internacao as i
inner join paciente as p
inner join medico as m
inner join especialidade as e
inner join medico_especialidade as me
inner join quarto as q
inner join tipo_quarto as tq
on i.paciente_id=p.id and i.medico_id=m.id and i.quarto_id=q.id and q.tipo_quarto_id=tq.id and me.medico_id=m.id and me.especialidade_id=e.id 
where e.especialidade = 'gastroenterologia' and tq.descricao = 'enfermaria';


/*Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou*/
select m.nome, m.crm, count(c.medico_id) as quantidade_consultas from medico as m
inner join consultas as c
on c.medico_id=m.id
group by m.id
order by m.nome;

/*Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação*/
select e.nome, e.cre, count(ei.enfermeiro_id) as quantidade_internacao from enfermeiro as e
inner join internacao as i
inner join enfermeiro_internacao as ei
on ei.enfermeiro_id=e.id and ei.internacao_id=i.id
group by ei.enfermeiro_id
having count(ei.enfermeiro_id) > 1
order by e.nome;

/*Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes tinham entre 20 e 40 anos na data da consulta, ordenado por nome do paciente*/
select p.nome as paciente, c.data, e.especialidade
from paciente as p
inner join consultas as c
inner join especialidade as e
on c.paciente_id=p.id and c.especialidade_id=e.id
where ((year(c.data)) - year(data_de_nascimento)) between 20 and 40
order by p.nome;