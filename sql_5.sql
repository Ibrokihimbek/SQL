-- 5.	Talaba nomli jadval yarating(uning ustunlari: id, ismi, tug’ilgan sanasi, bahosi). 
-- Ushbu jadvalda 10tadan kam bo’lmagan ma’lumot bilan 
-- to’ldiring. So’rov1da kuz oylarida tu’g’ilgan talabalar haqida ma’lumotni chiqaring 
-- va So’rov2da bahosi 4ga teng bo’lgan talabalarni jadvaldan o’chirib tashlang. 

--jadval yaratish

create table talaba1(
    -> ID int not null,
    -> ismi varchar(20) not null,
    -> tugilgan_sanasi varchar(12) not null,
    -> bahosi int not null,
    -> primary key(ID));

-- ma'lumot kiritish

insert into talaba1 values(1, "Shoxrux", "12.09.1995", 5);
insert into talaba1 values(2, "Shoxrux", "12.09.1995", 4);
insert into talaba1 values(3, "Shoxrux", "12.09.1995", 3);
insert into talaba1 values(4, "Shoxrux", "12.09.1995", 4);
insert into talaba1 values(5, "Shoxrux", "12.09.1995", 5);
insert into talaba1 values(6, "Shoxrux", "12.09.1995", 2);
insert into talaba1 values(7, "Shoxrux", "12.09.1995", 3);
insert into talaba1 values(8, "Shoxrux", "12.09.1995", 5);
insert into talaba1 values(9, "Shoxrux", "12.09.1995", 3);
insert into talaba1 values(10, "Shoxrux", "12.09.1995", 4);

-- so'rov1

select * from talaba1 where tugilgan_sanasi like '___09%' or tugilgan_sanasi like '___10%' or tugilgan_sanasi like '___11%';

--so'rov2

delete from talaba1 where bahosi = 4;