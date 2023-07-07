use hospital_db_kevin_schuab;

insert into especialidade (especialidade)
values ('pediatria'),
('clínico_geral'),
('gastroenterologia'),
('dermatologia'),
('cirurgia_geral'),
('cardiologista'),
('psiquiatria'),
('pneumologia'),
('ginecologia');

insert into convenio (nome, cnpj, tempo_carencia)
values ('interodonto', '99.305.730/0001-68', '3 meses'),
('Amil', '54.758.307/0001-85', '3 meses'),
('Assim', '66.169.371/0001-00', '5 meses'),
('Unimed', '22.212.411/0001-83', '4 meses');

insert into tipo_quarto (descricao, valor_diaria)
values ('apartamento', 150),
('quarto_duplos', 250),
('enfermaria', 80),
('sala de cirurgia', 175);