-- Talaba nomli jadval yarating(uning ustunlari: id, ismi, stipendiyasi, kursi). Ushbu jadvalni 
-- 10tadan kam bo’lmagan ma’lumot bilan to’ldiring. So’rov1da Barcha 4-kurs talabalariga 
-- umumiy hisobda qancha stipendiya to’langanligini aniqlang va So’rov2da ismining 
-- uzunligi 7tadan kam bo’lgan talabalarni kursi bo’yicha teskari tartibda chiqaring.

-- jadval yaratish

create table talaba2(
    -> ID in not null,
    -> ismi varchar(20) not null,
    -> stipendiyasi int not null,
    -> kursi int not null,
    -> primary key(ID));

-- ma'lumot kiritish

insert into talaba2 values(1, "Toxir", 500, 1);
insert into talaba2 values(2, "Sobir", 500, 2);
insert into talaba2 values(3, "Anvar", 500, 3);
insert into talaba2 values(4, "Nodira", 500, 4);
insert into talaba2 values(5, "Azam", 500, 1);
insert into talaba2 values(6, "Samandar", 500, 2);
insert into talaba2 values(7, "Samandar", 500, 3);
insert into talaba2 values(8, "Jamol", 500, 4);
insert into talaba2 values(9, "Tolib", 500, 1);
insert into talaba2 values(10, "Po'lat", 500, 2);

-- so'rov1

select sum(stipendiyasi) from talaba2 where kursi = 4;

-- so'rov2

select * from talaba2 where length(ismi) < 7 order by kursi desc;
