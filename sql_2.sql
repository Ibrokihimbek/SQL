-- 5.	AEROPORT nomli jadval yarating(uning ustunlari: id, samolyot turi, 
-- uchish sanasi, uchish_shaxri, qo’nish shaxri, 
-- uchish vaqti(soat va minut ko’rinishida)). 
-- Ushbu jadvalda 10tadan kam bo’lmagan 
-- ma’lumot bilan to’ldiring. So’rov1da bahor 
-- oylarida uchadigan samolyotlar haqida ma’lumotni 
-- chiqaring va So’rov2da uchish soati 14:00 va 18:00 
-- oralig’idagi va qo’nish shaxri ‘Toshkent’ 
-- bo’lgan samolyotlarni jadvaldan o’chirib tashlang.


--jadval yaratish

create table aeroport(
    -> ID int not null,
    -> turi varchar(20) not null,
    -> uchish_sanasi varchar(13) not null,
    -> uchish_shaxri varchar(20) not null,
    -> qonish_shaxri varchar(20) not null,
    -> uchish_vaqti varchar(6) not, null,
    -> primary key(ID));


--malumot kiritish

insert into aeroport values(1, "boing", "01.01.2022", "Toshkent", "Norvegia", "07:00");
insert into aeroport values(2, "Kukuruz", "10.02.2020", "Toshkent", "Samarqand", "10:00");
insert into aeroport values(3, "T500", "21.03.2020", "Germania", "Toshkent", "11:00");
insert into aeroport values(4, "AS560", "15.04.2020", "USA", "Toshkent", "15:00"); 
insert into aeroport values(5, "bonig T780", "31.08.2020", "Turkia", "Rusia", "19:00"); 
insert into aeroport values(6, "AN148", "26.05.2020", "Tojikiston", "Toshkent", "17:00");
insert into aeroport values(7, "AN24", "15.06.2022", "Jpn", "Toshkent", "16:00");
insert into aeroport values(8, "AN24", "15.09.2022", "JPN", "UK", "21:00");
insert into aeroport values(9, "TR450", "25.10.2022", "Toshkent", "Polsha", "23:00");
insert into aeroport values(10, "TR450", "25.05.2022", "Mongoliya", "Toshkent", "15:00");

--so'rov1

select * from aeroport where uchish_sanasi like '___03%' or uchish_sanasi like '___04%' or uchish_sanasi like '___05%';

--so'rov2

delete from aeroport where uchish_vaqti like "15%" or uchish_vaqti like "16%" or uchish_vaqti like "17%" and qonish_shaxri = "Toshkent";


