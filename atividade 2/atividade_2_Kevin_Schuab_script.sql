create database hospital_db_kevin_schuab;

use hospital_db_kevin_schuab;

create table medico(
 id int not null auto_increment primary key,
 nome varchar(45) not null,
 endereco varchar(100),
 data_de_nascimento date,
 cpf varchar(11) not null,
 crm int(6) not null,
 uf_crm varchar(2) not null,
 telefone varchar(15) not null
);

create table especialidade(
id int not null auto_increment primary key,
especialidade varchar(45) not null
);

create table medico_especialidade(
id int not null auto_increment primary key,
medico_id int not null,
especialidade_id int not null,
foreign key (medico_id) references medico(id),
foreign key (especialidade_id) references especialidade(id)
);

create table paciente(
id int not null auto_increment primary key,
nome varchar(45) not null,
endereco varchar(100),
cpf varchar(11) not null,
rg varchar(11) not null,
data_de_nascimento date not null,
telefone varchar(15),
email varchar(45),
convenio_id int,
foreign key(convenio_id) references convenio(id)
);

create table convenio(
id int not null auto_increment primary key,
nome varchar(45) not null,
cnpj varchar(45) not null,
tempo_carencia varchar(45) not null
);

create table consultas(
id int not null auto_increment primary key,
data datetime not null,
medico_id int not null,
especialidade_id int not null,
paciente_id int not null, 
convenio_id int,
numero_carteira int,
valor decimal(9,2),
foreign key (medico_id) references medico(id),
foreign key (especialidade_id) references especialidade(id),
foreign key (paciente_id) references paciente(id),
foreign key (convenio_id) references convenio(id)
);

create table internacao(
id int not null auto_increment primary key,
data_entrada date not null,
data_prev_alta date,
data_alta date,
procedimento varchar(45),
quarto_id int not null,
paciente_id int not null,
medico_id int not null,
foreign key (quarto_id) references quarto(id),
foreign key (paciente_id) references paciente(id),
foreign key (medico_id) references medico(id)
);

create table quarto(
id int not null auto_increment primary key,
numero int,
tipo_quarto_id int,
foreign key(tipo_quarto_id) references tipo_quarto(id)
);

create table tipo_quarto(
id int not null auto_increment primary key,
descricao varchar(45),
valor_diaria decimal(9,2)
);

create table enfermeiro(
id int not null auto_increment primary key,
nome varchar(45) not null,
cpf varchar(11) not null,
cre varchar(11) not null
);

create table enfermeiro_internacao(
id int not null auto_increment primary key,
enfermeiro_id int not null,
internacao_id int not null,
foreign key(enfermeiro_id) references enfermeiro(id),
foreign key(internacao_id) references internacao(id)
);

create table receita(
id int not null auto_increment primary key,
consultas_id int not null,
receita varchar(50),
foreign key(consultas_id) references consultas(id)
);