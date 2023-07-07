/*
Desabilite o safe update para funcionamento correto do script, vai em:
Edit ->  Preferences -> SQL Editor -> Safe Updates
*/

use hospital_db_kevin_schuab;

alter table medico add column em_atividade bit;

update medico set em_atividade = 1;

update medico
set em_atividade = 0 
where id = 3 or id = 7 or id = 8;

update internacao
set data_prev_alta = '2017/08/03'
where id=2;

update internacao
set data_prev_alta = '2021/12/06'
where id=6;

alter table consultas add foreign key (convenio_id) references convenio(id) on delete cascade;

delete from convenio where id = 4;
delete from consultas where convenio_id = 4;