CREATE TABLE public.students (
 id serial NOT NULL,
 "name" varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 "password" varchar(50) NOT NULL,
 created_on timestamp NOT NULL,
 CONSTRAINT students_email_key UNIQUE (email),
 CONSTRAINT students_pkey PRIMARY KEY (id)
);


/*SQL_HW_1
Создать .sql файл в котором под каждой командой напишите sql запрос который выполнит команду.

.sql файл выгружайте на гит и скидывайте ссылки на проверку.*/

 /*1. Вывести все поля и все строки.*/
 select * from students;
        
 /*2. Вывести всех студентов в таблице*/
 select * from students;

 /*3. Вывести только Id пользователей*/
 select id from students;

 /*4. Вывести только имя пользователей*/
  select name from students;

 /*5. Вывести только email пользователей*/
  select email from students;
 
 /*6. Вывести имя и email пользователей*/
 select name, email from students;
 
 /*7. Вывести id, имя, email и дату создания пользователей*/
  select name, email, created_on from students;

 /*8. Вывести пользователей где password 12333*/
  select name from students
  where password = '12333';
 
 /*9. Вывести пользователей которые были созданы 2021-03-26 00:00:00*/
  select name from students
  where created_on = '2021-03-26 00:00:00';
 
 /*10. Вывести пользователей где в имени есть слово Анна*/
  select name from students
  where name like '%Anna%';
 
 /*11. Вывести пользователей где в имени в конце есть 8*/
  select name from students
  where name like '%8';
  
 /*12. Вывести пользователей где в имени в есть буква а*/
  select name from students
  where name like '%a%';
 
 /*13. Вывести пользователей которые были созданы 2021-07-12 00:00:00*/
  select name from students
  where created_on = '2021-07-12 00:00:00';
 
 /*14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313*/
  select name from students
  where created_on = '2021-07-12 00:00:00' and password = '1m313';
 
 /*15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey*/
  select name from students
  where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
 
 /*16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8*/
  select name from students
  where created_on = '2021-07-12 00:00:00' and name like '%8%';
 
 /*17. Вывести пользователя у которых id равен 110*/
  select name from students
  where id = '110';
 
 /*18. Вывести пользователя у которых id равен 153*/
  select name, id from students
  where id = '153';
 
 /*19. Вывести пользователя у которых id больше 140*/
  select name, id from students
  where id > 140;
  
 /*20. Вывести пользователя у которых id меньше 130*/
  select name, id from students
  where id < 130;
 
 /*21. Вывести пользователя у которых id меньше 127 или больше 188*/
  select name, id from students
  where id < 127 or id > 188;
 
 /*22. Вывести пользователя у которых id меньше либо равно 137*/
  select name, id from students
  where id < 137 or id = 137;
 
 /*23. Вывести пользователя у которых id больше либо равно 137*/
  select name, id from students
  where id > 137 or id = 137;
 
 /*24. Вывести пользователя у которых id больше 180 но меньше 190*/
  select name, id from students
  where id > 180 and id < 190;
 
 /*25. Вывести пользователя у которых id между 180 и 190*/
  select name, id from students
  where id between 180 and 190;
 
 /*26. Вывести пользователей где password равен 12333, 1m313, 123313*/
  select name, password from students
  where password in ('12333', '1m313', '123313');
 
 /*27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00*/
  select name, created_on from students
  where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00';
  
  select name, created_on from students
  where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
 
 /*28. Вывести минимальный id*/
  select min(id) from students;
  
 /*29. Вывести максимальный.*/
  select max(id) from students;
 
 /*30. Вывести количество пользователей*/
  select count(id) from students;

 /*31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.*/
  select id, name, created_on from students
  order by created_on;

 /*32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.*/
  select id, name, created_on from students
  order by created_on desc;