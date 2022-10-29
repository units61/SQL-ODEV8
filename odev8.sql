-- 1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
);

-- 2 - Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employee (name, email, birthday) values ('Ferdy', 'fburgwyn0@webs.com', '1916-04-13');
insert into employee (name, email, birthday) values ('Ofella', null, '1937-10-03');
insert into employee (name, email, birthday) values ('Dale', 'dlyford2@stanford.edu', '1944-01-15');
insert into employee (name, email, birthday) values ('Wolf', 'wranklin3@storify.com', '1974-06-08');
insert into employee (name, email, birthday) values ('Andie', 'acourage4@webeden.co.uk', '1931-04-28');
insert into employee (name, email, birthday) values ('Lolita', 'livanenko5@eventbrite.com', '1968-08-16');
insert into employee (name, email, birthday) values ('Maryjane', null, '1998-11-10');
insert into employee (name, email, birthday) values ('Theodore', 'tcampe7@live.com', '1908-11-16');
insert into employee (name, email, birthday) values ('Trevar', 'tkieff8@ustream.tv', '2010-12-28');
insert into employee (name, email, birthday) values ('Laney', 'lthow9@biglobe.ne.jp', '1997-12-10');
insert into employee (name, email, birthday) values ('Corey', 'ckindlea@mail.ru', '1963-01-01');
insert into employee (name, email, birthday) values ('Nikolaus', null, '1963-06-03');
insert into employee (name, email, birthday) values ('Rene', 'rjentzschc@weather.com', '1978-04-02');
insert into employee (name, email, birthday) values ('Garfield', null, '1997-08-22');
insert into employee (name, email, birthday) values ('Brynn', 'bheningheme@yellowpages.com', '2016-02-15');
insert into employee (name, email, birthday) values ('Regine', 'rmarkusf@flavors.me', '1984-03-28');
insert into employee (name, email, birthday) values ('Cecilla', 'cprantonig@ebay.com', '1984-07-20');
insert into employee (name, email, birthday) values ('Willow', null, '1985-10-30');
insert into employee (name, email, birthday) values ('Jessalin', 'jkellandi@deviantart.com', '1909-12-14');
insert into employee (name, email, birthday) values ('Pooh', 'pjefferyj@cdc.gov', '1994-06-24');
insert into employee (name, email, birthday) values ('Paolo', 'pcaviek@ehow.com', '1967-09-30');
insert into employee (name, email, birthday) values ('Pren', 'protheral@symantec.com', '1933-09-18');
insert into employee (name, email, birthday) values ('Ansley', 'aguillilandm@dailymotion.com', '1920-06-12');
insert into employee (name, email, birthday) values ('Glennie', 'gblownn@gmpg.org', '1950-10-21');
insert into employee (name, email, birthday) values ('Northrop', 'ntaxo@google.ru', '1955-11-22');
insert into employee (name, email, birthday) values ('Felicia', 'fleggittp@marriott.com', '1957-07-16');
insert into employee (name, email, birthday) values ('Coralie', 'clehrerq@yellowbook.com', '2010-07-23');
insert into employee (name, email, birthday) values ('Perrine', null, '1922-01-24');
insert into employee (name, email, birthday) values ('Reggis', 'rdehmels@stanford.edu', '1912-07-14');
insert into employee (name, email, birthday) values ('Robbyn', null, '1985-04-17');
insert into employee (name, email, birthday) values ('Oswell', 'owitheringtonu@friendfeed.com', '2016-01-26');
insert into employee (name, email, birthday) values ('Consolata', null, '1907-08-19');
insert into employee (name, email, birthday) values ('Jude', 'jkippingw@delicious.com', '2019-01-29');
insert into employee (name, email, birthday) values ('Carlyle', 'cbigginsx@fda.gov', '1916-04-07');
insert into employee (name, email, birthday) values ('Nananne', 'nmcawy@digg.com', '1963-01-23');
insert into employee (name, email, birthday) values ('Inna', 'ispunerz@tiny.cc', '1938-06-02');
insert into employee (name, email, birthday) values ('Constantine', 'cbrann10@psu.edu', '1965-10-01');
insert into employee (name, email, birthday) values ('Archibald', 'adyster11@webnode.com', '1928-05-03');
insert into employee (name, email, birthday) values ('Emerson', 'espivey12@amazon.co.jp', '1912-07-29');
insert into employee (name, email, birthday) values ('Patricia', 'pivanshintsev13@nyu.edu', '1908-05-14');
insert into employee (name, email, birthday) values ('Bibbie', null, '1975-03-11');
insert into employee (name, email, birthday) values ('Tabitha', 'tpacheco15@comcast.net', '1904-01-01');
insert into employee (name, email, birthday) values ('Odo', 'omacnockater16@tmall.com', '1950-06-15');
insert into employee (name, email, birthday) values ('Sylvan', 'sclohessy17@yelp.com', '1931-01-12');
insert into employee (name, email, birthday) values ('Kylila', 'kharbach18@facebook.com', '2022-04-24');
insert into employee (name, email, birthday) values ('Evin', 'ewreak19@abc.net.au', '1930-08-29');
insert into employee (name, email, birthday) values ('Sam', 'sbrattell1a@bloglovin.com', '1972-03-26');
insert into employee (name, email, birthday) values ('Jarid', 'jgomery1b@washingtonpost.com', '1981-07-07');
insert into employee (name, email, birthday) values ('Lizabeth', 'lparadise1c@infoseek.co.jp', '1902-01-07');
insert into employee (name, email, birthday) values ('Nicol', 'ntroker1d@prlog.org', '1961-04-28');

--3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

--UPDATE1- Ofella isimli verinin email kısmı boş olduğundan güncelliyorum.
UPDATE employee
SET email='ofella@asd.com'
WHERE name='Ofella'
RETURNING *;

--Update2- Bu senaryoda email alanı NULL olarak gözüken verileri BOŞ OLARAK değiştiriyorum.
UPDATE employee
SET email='BOŞ'
WHERE id IN (7,12,14,18,28,30,32,41)
RETURNING *;

--UPDATE3 Andie isimli veriyi Kate olarak değiştiriyorum.

UPDATE employee
SET name='Kate'
WHERE name = 'Andie'
RETURNING *;

--UPDATE4 Trevar ismili verinin Doğum tarihini değiştiriyorum.

UPDATE employee
SET birthday='1998-10-10'
WHERE name = 'Trevar'
RETURNING *;

--UPDATE5 id si 25 olan verinin emailini değiştiriyorum.

UPDATE employee
SET email = 'Northrop@google.ru'
WHERE id IN (25)
RETURNING *;

-- 4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

--DELETE1 email kısmı boş olan verileri siliyorum.

DELETE FROM employee 
WHERE email='BOŞ'
RETURNING *;

--DELETE2 isimlerinin son harfi 'n' olan verileri siliyorum.

DELETE FROM employee 
WHERE name LIKE '%n'
RETURNING *;

--DELETE3 id si 25 olan veriyi siliyorum.
DELETE FROM employee 
WHERE id=25
RETURNING *;

--DELETE4 id si 45 ten buyuk olan verileri siliyorum

DELETE FROM employee 
WHERE id > 45
RETURNING *;

--DELETE5 birthday verisi "1916-04-13" olan veriyi siliyorum

DELETE FROM employee 
WHERE birthday = '1916-04-13'
RETURNING *;
