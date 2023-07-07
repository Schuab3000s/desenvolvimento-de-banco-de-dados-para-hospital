use hospital_db_kevin_schuab;

insert into medico (nome, endereco, data_de_nascimento, cpf, crm, uf_crm, telefone)
values ('Anny Quintanilha', 'Rua Flores, 10, apto 101', '70/11/10', 86132473009, 120935, 'RS', '(51) 3752-5488'),
('Suéli Simão Pegado', 'Avenida João, 50', '90/08/27', 62876978067, 15891, 'SP', '(11) 2810-2734'),
('Alisson Sacramento', 'Rua Albieri, 480', '81/1/15', 80814279023, 178105, 'MG', '(32) 2718-0264'),
('Lívia Veloso', 'Travessa A, 89', '72/3/22', 20924987030, 9826, 'MG', '(32) 3019-1483'),
('Gael Milheiro Lemes', 'Rua das Rosas, 80, apto 200', '64/2/13', 38603737061, 9826, 'RS', '(51) 2433-7762'),
('Gisela Espinosa', 'Avenida Santos, 90', '80/9/12', 23529091049, 34548, 'SP', '(11) 3368-4812'),
('Nelson Anjos Palmeira', 'Rua Álamo, 180, apto 90', '80/10/14', 03626639045, 344789, 'SP', '(11) 3941-4795'),
('Ezequiel Pestana Henrique', 'Avenida Chateaubriand, 150', '79/6/30', 67297959057, 9756, 'RS', '(51) 2537-6076'),
('Tito Carqueijeiro', 'Rua Flores, 670', '73/5/19', 74588651056, 14777, 'RS', '(51) 3272-8326'),
('Fabiano Gomide', 'Avenida das Águias, 600', '89/8/31', 32972518080, 65765, 'RS', '(51) 3230-5071'),
('Cristovão Xavier', 'Rua da luz, 80', '79/12/12', 92690490005, 67432, 'RS', '(51) 2448-9465'),
('Alberto Veríssimo', 'Avenida das Aves, 9912, apto 60', '86/6/26', 70600178013, 13548, 'SP', '(11) 3754-8886'),
('Júlia Camarinho', 'Rua Albieri, 590', '80/7/5', 74492596054, 24654, 'MG', '(32) 2615-4776');

insert into medico_especialidade (medico_id, especialidade_id)
values (1, 1),
(1, 4),
(2, 3),
(2, 8),
(3, 5),
(3, 8),
(4, 6),
(4, 2),
(5, 9),
(6, 7),
(7, 8),
(7, 3),
(8, 3),
(9, 4),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(13, 4),
(13, 2);

insert into paciente (nome, endereco, cpf, rg, data_de_nascimento, telefone, email, convenio_id)
values ('Karine Macena Porciúncula', 'Rua Professor Maurício Wanderley, 684', 34859796004, 484242696, '2006/5/15', '(51) 9865-4578', null, 2),
('Zilda Gomide Osório', 'Rua São Francisco de Assis, 458', 06915827692, 357798909, '1986/12/27', '(32) 4598-8654', null, 1),
('Fabrício Norões Xavier', 'Avenida Cricaré, 513, apto 502', 27065272850, 329201232, '2010/4/13', '(11) 1265-4532', 'camen979@uorak.com', 1),
('César Sítima faria', 'Rua Heitor Bittencourt, 148', 10586521682, 462012268, '1969/6/16', '(21) 7125-0093', 'liware2693@anwarb.com', null),
('Silvana Fartaria Nazário', 'Rua João Beraldino, 469', 85563868494, 371771766, '1963/11/27', '(21) 9875-4209', null, null),
('Evandro Trindade Bouça', 'Rua Antônio Marinho Camacho, 95', 47124854423, 491871235, '1934/3/1', '(45) 1245-6598', null, null),
('Ivo Brandão Palos', 'Rua Juvenil Luiz da Silva, 24', 42912389240, 150915214, '2015/5/26', '(45) 9514-3578', 'yvone8366@uorak.com', 3),
('Armindo Moreira Azeredo', 'Rua Rachid Atihé, 68, apto 103', 44736326794, 183077301, '1975/12/9', '(62) 9438-5126', null, null),
('Mark Festas Santana', 'Rua Juracy Miranda, 1045', 76894346658, 155909459, '1988/7/15', '(21) 5786-2486', 'idilia3551@uorak.com', 2),
('Helton Espinosa', 'Avenida Luiz Carlos Prestes, 5026, apto 802', 55335562145, 105855157, '1995/6/25', '(11) 6794-2277', null, 2),
('Giovanni Arouca Mata', 'Rua do Campo, 47', 55820438884, 464995206, '2009/7/21', '(11) 6645-2298', 'beaulah5169@uorak.com', 4),
('Pablo Atiliano Flores', 'Travessa Antônio VG, 912', 08385411356, 285871183, '1945/9/23', '(56) 5548-3466', 'karrie2791@uorak.com', 2),
('Cármen Mata Camargo', 'Rua Francisco Duarte, 185', 27403925246, 278928997, '2009/2/1', '(48) 7521-865', null, 3),
('Francisca Parracho Caneira', 'Travessa Borges, 753', 30548773106, 396978551, '2011/1/30', '(87) 6523-1542', null, 4);

insert into consultas (data, medico_id, especialidade_id, paciente_id, convenio_id, numero_carteira, valor)
values 
('19/02/06 09:20', 13, 2, 1, 2, 12341234, '110,90'),
('19/02/16 09:10', 3, 5, 2, 1, 55643215, '110,90'),
('19/03/01 09:20', 12, 1, 1, 2, 12341234, '110,90'),
('19/04/04 09:20', 13, 4, 3, 1, 21484234, '180,00'),
('19/05/24 11:10', 3, 8, 3, 1, 21484234, '150,00'),
('19/07/02 16:10', 2, 3, 4,  null, null, '110,90'),
('19/07/20 12:10', 5, 9, 5,	null, null, '180,00'),
('19/08/03 15:20', 9, 4, 6,	null, null, '150,00'),
('19/08/05 16:10', 3, 5, 1, 2, 12341234, '110,90'),
('19/10/14 09:20', 8, 3, 7, 3, 21341244, '75,00'),
('19/11/01 08:10', 1, 1, 8, null, null, '150,00'),
('19/11/05 15:10', 3, 8, 2, 1, 55643215, '100,00'),
('19/11/27 13:10', 4, 6, 9,	2,	4351315, '100,00'),
('20/02/17 10:10', 8, 3, 8, null, null, '75,00'),
('20/03/01 08:10', 8, 3, 9, 2, 4351315, '75,00'),
('20/03/07 08:20', 9, 4, 8, null,	null, '150,00'),
('20/05/16 11:20', 2, 8, 10, 2, 2446354, '150,00'),
('20/05/18 09:10', 10, 2, 3, 1, 21484234, '100,00'),
('20/06/15 14:20', 10, 2, 11, 4, 226672634, '100,00'),
('20/07/16 08:10', 11, 2, 13,	3, 542315, '110,90'),
('20/08/06 08:20', 13, 2, 1 , 2, 12341234, '180,00'),
('20/08/24 13:20', 8, 3, 3, 1, 21484234, '180,00'),
('20/09/07 15:10', 1, 1, 5, null, null, '180,00'),
('20/09/20 11:10', 7, 3, 12, 2, 2354641656, '110,90'),
('20/09/22 13:20', 1, 4, 13, 3, 542315, '110,90'),
('20/10/12 12:10', 9, 4, 6,	null, null, '100,00'),
('20/10/18 10:10', 9, 4, 2, 1,	55643215, '180,00'),
('20/10/23 15:20', 10, 2, 14, 4, 12525312531, '110,90'),
('20/11/05 08:10', 4, 2, 7, 3, 21341244, '100,00'),
('20/11/15 12:10', 5, 9, 6, null,	null, '150,00');

insert into receita (consultas_id, receita)
values (1, 'tomar dipirona de 8 em 8 horas e anti-inflamatório de 6 em 6 horas por 4 dias'),
(2, 'tomar omeprazol quando sentir dores após refeições'),
(3, 'tomar zina 2 vezes so dia e dipirona 2 vezes ao dia, em horarios distintos'),
(4, 'tomar eno quando sentir embrulho estomacais'),
(5, 'tomar Rabeprazol 3 vezes ao dia'),
(6, 'pingar lacrifilm e esperar 10 minutos e pingar Colírio Legrand 4 vezes ao dia, princiaplmente ao acordar e quando for deitar'),
(7, 'passar profergan na região irritada 3 vezes ao dia'),
(8, 'tomar anti-inflamatório e dipirona 2 vezes ao dia'),
(9, 'tomar omeprazol quando sentir dores após refeições'),
(10, 'Amiodaroma 2 vezes ao dia e acetilcisteína 1 a 2 vezes ao dia');


insert into quarto (numero, tipo_quarto_id)
values (101, 1),
(102, 1),
(201, 2),
(202, 2),
(301, 3),
(401, 4),
(402, 4),
(403, 4);

insert into enfermeiro (nome, cpf, cre)
values ('Cristina Soares', 33567578146, 357951),
('Heber Fonsseca', 63865320740, 486257),
('Robert Coelho', 33833862440, 485126),
('Marianna Lins', 14854283513, 357846),
('Marcos Machado', 12134228849, 946587),
('Moises Filho', 35227745749, 213548),
('Ruan da Luz', 81019242132, 678459);

insert into internacao(data_entrada, data_prev_alta, data_alta, procedimento, quarto_id, paciente_id, medico_id)
values ('17/05/18', null, null, 'remoção de cisto na região do maxilar', 6, 7, 5),
('17/08/27', null, null, 'enfaixar braço quebrado', 5, 9, 2),
('18/06/11', null, null, 'dor de ouvido aguda', 3, 7, 11),
('19/10/30', null, null, '24 horas de observação por causa de pele irritada e mucosa ', 1, 11, 13),
('20/04/09', null, null, 'tratramento para cancer de pele', 3, 7, 9),
('21/12/03', null, null, 'lavagem intestinal', 5, 3, 7),
('18/7/16', null, null, 'ciurgia de remoção de celulas cancerigenas da pele', 7, 11, 3);

insert into enfermeiro_internacao (enfermeiro_id, internacao_id)
values (1,7),
(1,5),
(2,4),
(2,6),
(3,1),
(3,3),
(4,5),
(4,2),
(5,1),
(5,7),
(6,6),
(6,2),
(7,3),
(7,4);