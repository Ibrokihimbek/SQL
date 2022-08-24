-- 5.	Kompyuter nomli jadval yarating(uning ustunlari: id, modeli, tarkibi(videokarta, protsessor, operativka, monitor), narxi). 
-- Ushbu jadvalda 10tadan kam bo’lmagan ma’lumot bilan to’ldiring. So’rov1da tarkibida videokartasi bor kompyuterlar haqida ma’lumotni chiqaring 
-- va So’rov2da narxi 100000dan kichik va modeli A harfi bilan boshlanadigan kompyuterlar haqidagi ma’lumotlarning modellarni DELLga o’zgartiring. 

--jadval yaratish

create table kompyuter(
    -> ID int not null,
    -> model varchar(20) not null,
    -> tarkibi varchar(13) not null,
    -> narxi int not null,
    -> primary key(ID));


--malumot kiritish

insert into kompyuter values(1, "Victus", "Videokarta, protsessor, operativka, monitor", 950);
insert into kompyuter values(2, "HP", "protsessor, operativka, monitor", 650);
insert into kompyuter values(3, "Lenovo", "Videokarta, protsessor, operativka, monitor", 800);
insert into kompyuter values(4, "Asus", "protsessor, operativka, monitor", 550);
insert into kompyuter values(5, "Dell", "Videokarta, protsessor, operativka, monitor", 598);
insert into kompyuter values(6, "Omen", "protsessor, operativka, monitor", 245);
insert into kompyuter values(7, "Mac", "Videokarta, protsessor, operativka, monitor", 1300);
insert into kompyuter values(8, "Pailion", "protsessor, operativka, monitor", 784);
insert into kompyuter values(9, "Tuf gaming", "Videokarta, protsessor, operativka, monitor", 1000);
insert into kompyuter values(10,  "Elit book", "protsessor, operativka, monitor", 545);

--so'rov1

select * from kompyuter where tarkibi like 'v%';

--so'rov2

update kompyuter set model = 'DELL' where narxi < 100000 and madel like 'A%';
