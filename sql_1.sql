-- 5.	Meva nomli jadval yarating(uning ustunlari: id, nomi, narxi, navi). Ushbu jadvalni 10tadan kam bo’lmagan 
-- ma’lumot bilan to’ldiring. So’rov1da Barcha Meva narxi 10000 va 50000
-- oraliqdagi barcha Mevalarni chiqaring va So’rov2da nomining uzunligi 
-- bir xil bo’lgan mevalarni narxi bo’yicha teskari tartibda chiqaring.

--jadval yaratish

create table meva(
    -> ID int not null,
    -> nomi varchar(15) not null,
    -> narxi int not null,
    -> navi varchar(10) not null,
    -> primary key(ID));


--malumot kiritish

insert int meva values(1, "olma", 25000, "oliy");
insert into meva values(2, "anjir", 30000, "o'rta");
insert into meva values(3, "anor", 9000, "o'rta");
insert into meva values(4, "nok", 40000, "birinchi");
insert into meva values(5, "qulpnay", 55000, "oliy");
insert into meva values(6, "olcha", 13000, "o'rta");
insert into meva values(7, "banan", 85000, "oliy");
insert into meva values(8, "kakos", 50000, "o'rta");
insert into meva values(9, "kivi", 45000, "oliy");
insert into meva values(10, "uzum", 25000, "birinchi");

--so'rov1

select * from meva where narxi > 10000 and narxi < 50000;

--so'rov2

select * from meva where length(nomi) in (select length(nomi) as klop from meva group by klop having count(klop) > 1);