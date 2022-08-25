-- 5.	Talaba nomli jadval yarating(uning ustunlari: id, ismi, tug’ilgan sanasi, bahosi). 
-- Ushbu jadvalda 10tadan kam bo’lmagan ma’lumot bilan to’ldiring. 
-- So’rov1da faqat har xil ismli talabalar haqida ma’lumotni chiqaring va So’rov2da 
-- bahosi 3ga teng bo’lgan va may oyida tug’ilgan talabalarni 4 bahoga o’zgartiring.

--jadval yaratish

create table talaba(
    -> ID int not null,
    -> ismi varchar(20) not null,
    -> tugilgan_sanasi varchar(12) not null,
    -> bahosi int not null,
    -> primary key(ID));

-- ma'lumot kiritish

insert into talaba values(1, 'Sardor', '23.05.1995', 3);
insert into talaba values(2, 'Saloh', '23.05.1998', 2);
insert into talaba values(3, 'Mashraf', '23.05.1997', 3);
insert into talaba values(4, 'Sardor', '23.05.1999', 5);
insert into talaba values(5, 'Asror', '23.05.1992', 3);
insert into talaba values(6, 'Saloh', '23.05.1997', 5);
insert into talaba values(7, 'Zafar', '12.07.1996', 2);
insert into talaba values(8, 'Islom', '25.08.1994', 3);
insert into talaba values(9, 'Saloh', '02.01.1997', 4);
insert into talaba values(10, 'Yorqin', '02.02.1995', 5);

--so'rov1

select * from talaba group by ismi;

--so'rov2

update talaba set bahosi = 4 where bahosi = 3 and tugilgan_sanasi like '___05%';