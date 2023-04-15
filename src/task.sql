create type Genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');
CREATE TYPE GENDER AS ENUM ('MALE','FEMALE');
CREATE TABLE publishers (
                            id serial primary key,
                            name varchar
);

create table authors (
                         id serial primary key,
                         first_name varchar,
                         last_name varchar,
                         email varchar ,
                         date_of_birth date ,
                         country varchar,
                         gender GENDER
);

create table books (
                       id serial primary key,
                       name varchar ,
                       country varchar,
                       published_year date,
                       price numeric ,
                       genre Genre
);

create table languages (
                           id serial primary key ,
                           language varchar
);

alter table authors add constraint varchar unique (email);
alter table books add column language_id int references languages(id);
alter table books add column publisher_id int references publishers(id);
alter table books add column author_id int references authors(id);
alter table languages alter column language set not null;

insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '9/25/1968', 'France', 'FEMALE'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10/31/1965', 'China', 'FEMALE'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/16/1980', 'Germany', 'MALE'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4/24/1964', 'United States', 'MALE'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'MALE'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12/29/1964', 'Russia', 'MALE'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/14/1983', 'China', 'FEMALE'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/29/1960', 'United States', 'FEMALE'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11/17/1978', 'France', 'MALE'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'MALE'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'FEMALE'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8/28/1983', 'Germany', 'MALE'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/28/1980', 'Russia', 'FEMALE'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'MALE'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/17/1962', 'United States', 'FEMALE');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values('Taina', 'Russia', '11/12/2021', '568','DETECTIVE', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANCE', '5', '13', '11'),
      ('Homo Faber', 'Germany', '4/10/2022', '772','FANTASY', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780','DETECTIVE', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '7/11/2015', '900','FANTASY', '1', '2', '4'),
      ('Un soir au club', 'France', '1/12/2018', '480','DRAMA', '2', '1', '1'),
      ('Voina', 'Russia', '12/6/2004', '880',  'HISTORY', '5', '4', '13'),
      ('Sun Tzu', 'China', '9/5/2022', '349',  'HISTORY', '4', '4', '2'),


      ('Emil und die Detektive', 'Germany', '6/11/2010', '228','DETECTIVE','3', '5', '10'),
      ('Coule la Seine', 'France', '3/1/2015', '732','FANTASY', '2', '6', '1'),
      ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANCE', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '3/10/2018', '309','FANTASY', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANCE', '2', '6', '9'),
      ('“The Death of Ivan Ilyich', 'Russia', '9/24/2000', '814','DRAMA', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANCE', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '6/19/2008', '305', 'DETECTIVE','3','7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566','DETECTIVE', '3', '3', '3'),
      ('LÉtranger', 'France', '11/14/2017', '422', 'ROMANCE', '2', '8', '5'),
      ('Lao Tse', 'China', '7/16/2005', '900','FANTASY', '4', '4', '2'),
      ('Semya', 'Russia', '4/12/2004', '194','DRAMA', '5', '13', '11'),
      ('Empty World', 'United States', '1/4/2008', '324','FANTASY', '1', '11', '15'),
      ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANCE', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '2/13/2008', '396', 'ROMANCE','1', '9', '4'),
      ('Die R uber', 'Germany', '6/25/2020', '300', 'ROMANCE', '3', '7', '12'),
      ('Jung Chang', 'China', '5/14/2021', '600',  'HISTORY', '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '4/10/2015', '582','DRAMA', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269','DETECTIVE', '3', '5', '10'),
      ('Amy Tan', 'China', '1/9/2023', '486','DRAMA', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '2/7/2020', '550','FANTASY', '5', '12', '11'),
      ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY','1', '2', '15');

select name, published_year,genre from books;--Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select distinct (country) from authors;--Авторлордун мамлекеттери уникалдуу чыксын.
select * from books where published_year between '1/1/2020' and '1/1/2023';--.2020-2023 жылдардын арасындагы китептер чыксын.
select name, genre from books where genre = 'DETECTIVE'; --Детектив китептер жана алардын аттары чыксын.
select concat (first_name ,' ', last_name)as author from authors ; --Автордун аты-жону author деген бир колонкага чыксын.
select concat (first_name, ' ', last_name) as full_name,country from authors where country in ('France','Germany') order by full_name asc;--Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select name, country,published_year, price,genre from books where country not in ('Roman')and price <500;--7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select * from authors where gender = 'FEMALE' limit 3;--Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from authors where gender = 'FEMALE' and email like '%.com' and first_name like '____';--Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select country, count(*) from authors group by country;--Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select country ,count(*) from authors group by country  having count(*)>2 order by country asc;--Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select genre, sum(price )from books group by genre;--Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select genre, min(price ) from books where genre in ('ROMANCE' , 'DETECTIVE') group by genre;-- Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select genre , count (*) from books where genre in ('HISTORY','BIOGRAPHY') group by genre;--История жана Биографиялык китептердин сандарын чыгарыныз
select books.name ,p.name, l.language from books join publishers p on books.publisher_id = p.id join languages l on books.language_id= l.id ;--Китептердин , издательстволордун аттары жана тили чыксын
select * , b.publisher_id from authors left join books b on authors.id = b.publisher_id;--Китептердин , издательстволордун аттары жана тили чыксын
select authors.*, p.* from authors left join books b on authors.id = b.publisher_id join publishers p on b.publisher_id = p.id;--Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select concat(first_name,' ',last_name)as full_name,b.name from authors left join books b on authors.id = b.author_id ;--Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select l.language, count(*) from books join languages l on books.language_id = l.id group by l.language order by count(*) desc;--Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select p , round(sum(price)) from books join publishers p on books.publisher_id= p.id group by p;--Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select books.*,a.first_name, a.last_name from books join authors a on books.author_id = a.id where published_year between '1/1/2010' and '1/1/2015';--2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select concat(first_name , ' ', last_name)as full_name ,  sum (price) from books join authors a on books.author_id=a.id where published_year between '1/1/2010' and '12/31/2015' group by full_name ;--2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.




