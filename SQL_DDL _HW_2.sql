/*SQL_DDL
Первая часть.

Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.

*/
create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees (employee_name)
  values ('Reggie Batey'), 
         ('Clara Poore'), 
         ('Tammy Galindo'), 
         ('Rickey Jones'), 
         ('Jill Anspach'), 
         ('Lacy Racicot'), 
         ('David Macias'), 
         ('Jessica Manns'), 
         ('Amber Holcomb'), 
         ('Betty Wells'), 
         ('Miguel Fletcher'), 
         ('Joseph Hodges'), 
         ('Ida Bohannon'), 
         ('Cindy Merrifield'), 
         ('Mary Dowell'), 
         ('Marie Thomas'), 
         ('Donald Fierro'), 
         ('Anna Wick'), 
         ('Robert Harian'), 
         ('Michael Mark'), 
         ('Lucius Patterson'), 
         ('Lorna Rose'), 
         ('Karen Santiago'), 
         ('Peggy Beachler'), 
         ('Chester Baird'), 
         ('Ronda Colley'), 
         ('Robert Chapman'), 
         ('Sandra Hibbard'), 
         ('Steven Pagano'), 
         ('Ramona Russell'), 
         ('Ryan Morgan'), 
         ('Shannon Daugherty'), 
         ('Charlene Little'), 
         ('Steve Lewandowski'), 
         ('Donnie Shoemaker'), 
         ('Veronica Treto'), 
         ('Jonathon Belanger'), 
         ('William Hughes'), 
         ('Courtney Alston'), 
         ('Isaac Walters'), 
         ('Leon Ashcraft'), 
         ('Daniel Patterson'), 
         ('Randall Phillips'), 
         ('James Williams'), 
         ('Nancy Searles'), 
         ('Edward Hilliard'), 
         ('Joel Vandevelde'), 
         ('Nancy Bravo'), 
         ('Jesse Clark'), 
         ('Gregory Magelssen'), 
         ('Ella Cortez'), 
         ('Michael Diaz'), 
         ('Robert Walsh'), 
         ('Valorie Seibert'), 
         ('Yoshiko Miller'), 
         ('Timothy Johnson'), 
         ('Lita Webb'), 
         ('Lindsay Barrera'), 
         ('Jacqulyn Matthews'), 
         ('Lee Rehart'), 
         ('Fred Spencer'), 
         ('Melinda Webster'), 
         ('Shawn Pretti'), 
         ('Betty Schaefer'), 
         ('Barbara Teets'), 
         ('Patricia Tomas'), 
         ('Mattie Kelley'), 
         ('Mary Yates'), 
         ('Andrea Croes'), 
         ('Amanda Riley');  
        
 /* Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
 */
 create table salary(
id serial primary key,
monthly_salary int not null
);

insert into salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);


 /*Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id 
 */
      
  create table employee_salary (
     id serial primary key,
     employee_id int not null unique,
     salary_id int not null);    
      
 insert into employee_salary (employee_id, salary_id)
  values (1, 4),
         (2, 9),
         (3, 13),
         (4, 4),
         (5, 2),
         (6, 10),
         (7, 13),
         (8, 4),
         (9, 1),
         (10, 7),
         (11, 8),
         (12, 6),
         (13, 11),
         (14, 5),
         (15, 12),
         (16, 9),
         (17, 1),
         (18, 2),
         (19, 3),
         (20, 11),
         (21, 14),
         (22, 6),
         (23, 8),
         (24, 9),
         (25, 10),
         (26, 11),
         (27, 12),
         (28, 4),
         (29, 7),
         (30, 6),
         (71, 8),
         (72, 7),
         (73, 4),
         (74, 3),
         (75, 5),
         (76, 2),
         (77, 1),
         (78, 9),
         (79, 10),
         (80, 10);  
 
  Таблица roles

/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:
*/
    
  create table roles(
id serial primary key,
role_name int unique not null 
);
 Alter table roles alter column role_name TYPE varchar(30);

 insert into roles (role_name)
 values ('Junior Python developer'),
        ('Middle Python developer'),
        ('Senior Python developer'),
        ('Junior Java developer'),
        ('Middle Java developer'),
        ('Senior Java developer'),
        ('Junior JavaScript developer'),
        ('Middle JavaScript developer'),
        ('Senior JavaScript developer'),
        ('Junior Manual QA engineer'),
        ('Middle Manual QA engineer'),
        ('Senior Manual QA engineer'),
        ('Project Manager'),
        ('Designer'),
        ('HR'),
        ('CEO'),
        ('Sales manager'),
        ('Junior Automation QA engineer'),
        ('Middle Automation QA engineer'),
        ('Senior Automation QA engineer');
       
 /*Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:
  */
       
 create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
    references employees(id),
foreign key (role_id)
    references roles(id)
);
       

insert into roles_employee (employee_id, role_id)
  values (1, 1),
         (2, 3),
         (3, 2),
         (4, 1),
         (5, 4),
         (6, 5),
         (7, 7),
         (8, 6),
         (9, 13),
         (10, 12),
         (11, 8),
         (12, 9),
         (13, 10),
         (14, 11),
         (15, 14),
         (16, 15),
         (17, 17),
         (18, 20),
         (19, 18),
         (20, 19),
         (21, 17),
         (22, 1),
         (23, 2),
         (24, 4),
         (25, 15),
         (26, 10),
         (27, 11),
         (28, 7),
         (29, 19),
         (30, 18),
         (31, 17),
         (32, 18),
         (33, 2),
         (34, 10),
         (35, 19),
         (36, 11),
         (37, 5),
         (38, 2),
         (39, 8),
         (40, 14);


        
  /*SQL HomeWork 2. Joins

Подключится к 
Host: 159.69.151.133
Port: 5056
DB: подключение к той таблице где делали DDL операции
User: подключение к тем пользователем каким делали DDL операции
Pass: 123

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )


 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.*/
 
  select employee_name, monthly_salary
  from employee_salary
  join employees on employee_id=employees.id 
  join salary on salary_id=salary.id;
 
 /*2. Вывести всех работников у которых ЗП меньше 2000.*/
  select employee_name, monthly_salary
  from employee_salary
  join employees on employee_id=employees.id 
  join salary on salary_id=salary.id
  where monthly_salary < 2000;
   
 /*3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
  /*1)*/
  
  select * from employee_salary
  right join employees on employee_id=employees.id 
  right join salary on salary_id=salary.id
  where employee_id is NULL;
 
  /*2)*/
  select employee_name, monthly_salary
  from employee_salary
  right join employees on employee_id=employees.id 
  right join salary on salary_id=salary.id
  where employee_name is NULL;
 
 /*4. Вывести все зарплатные позиции  меньше 2500 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
  select employee_name, monthly_salary
  from employee_salary
  right join employees on employee_id=employees.id 
  right join salary on salary_id=salary.id
  where employee_name is null and monthly_salary < 2500;
 
 /*5. Найти всех работников кому не начислена ЗП.*/
  select employee_name, monthly_salary
  from employee_salary
  left join employees on employee_id=employees.id 
  left join salary on salary_id=salary.id
  where monthly_salary is null;
 
 /*6. Вывести всех работников с названиями их должности.*/
  select employee_name, role_name
  from roles_employee
  join employees on employee_id=employees.id 
  join roles on role_id=roles.id;
 
 /*7. Вывести имена и должность только Java разработчиков.*/
  select employee_name, role_name
  from roles_employee
  join employees on employee_id = employees.id 
  join roles on role_id = roles.id
  where role_name in ('Junior Java developer','Middle Java developer', 'Senior Java developer');
 
 /*8. Вывести имена и должность только Python разработчиков.*/
  select employee_name, role_name
  from roles_employee
  join employees on employee_id = employees.id 
  join roles on role_id = roles.id
  where role_name in ('Junior Python developer','Middle Python developer', 'Senior Python developer');
 
 /*9. Вывести имена и должность всех QA инженеров.*/
  select employee_name, role_name
  from roles_employee
  join employees on employee_id = employees.id 
  join roles on role_id = roles.id
  where role_name in ('Junior Manual QA engineer','Middle Manual QA engineer', 'Senior Manual QA engineer','Junior Automation QA engineer', 'Middle Automation QA engineer', 'Senior Automation QA engineer');
 
 /*10. Вывести имена и должность ручных QA инженеров.*/
  select employee_name, role_name
  from roles_employee
  join employees on employee_id = employees.id 
  join roles on role_id = roles.id
  where role_name in ('Junior Manual QA engineer','Middle Manual QA engineer', 'Senior Manual QA engineer');

 /*11. Вывести имена и должность автоматизаторов QA*/
  select employee_name, role_name
  from roles_employee
  join employees on employee_id = employees.id 
  join roles on role_id = roles.id
  where role_name in ('Junior Automation QA engineer', 'Middle Automation QA engineer', 'Senior Automation QA engineer');
 
 /*12. Вывести имена и зарплаты Junior специалистов*/
  select es.employee_id, e.employee_name, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like 'Junior%';
 
 /*13. Вывести имена и зарплаты Middle специалистов*/
  select es.employee_id, e.employee_name, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like 'Middle%';
 
 /*14. Вывести имена и зарплаты Senior специалистов*/
  select es.employee_id, e.employee_name, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like 'Senior%';
 
 /*15. Вывести зарплаты Java разработчиков*/
  select es.employee_id, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like '%Java developer';
 
 /*16. Вывести зарплаты Python разработчиков*/
  select es.employee_id, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like '%Python developer';
 
 /*17. Вывести имена и зарплаты Junior Python разработчиков*/
  select es.employee_id, e.employee_name, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like 'Junior Python developer';
 
 /*18. Вывести имена и зарплаты Middle JS разработчиков*/
  select es.employee_id, e.employee_name, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like 'Middle JavaScript developer';
 
 /*19. Вывести имена и зарплаты Senior Java разработчиков*/
  select es.employee_id, e.employee_name, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like 'Senior Java developer';
 
 /*20. Вывести зарплаты Junior QA инженеров*/
  select es.employee_id, s.monthly_salary, r.role_name 
  from employees e
  join roles_employee re 
  on e.id = re.employee_id 
  join  roles r 
  on r.id = re.role_id
  join employee_salary es on e.id=es.employee_id
  join salary s on s.id = es.salary_id
  where role_name like 'Junior % QA %';
 
 /*21. Вывести среднюю зарплату всех Junior специалистов*/
  select AVG(s.monthly_salary), role_name
  from roles_employee re
  join roles r 
  on re.role_id=r.id 
  join employee_salary es 
  on re.employee_id=es.employee_id
  join salary s 
  on es.salary_id=s.id
  where role_name like 'Junior %'
  group by role_name;
 
 /*22. Вывести сумму зарплат JS разработчиков*/
  select SUM(s.monthly_salary) 
  from roles_employee re
  join roles r 
  on re.role_id=r.id 
  join employee_salary es 
  on re.employee_id=es.employee_id
  join salary s 
  on es.salary_id=s.id
  where role_name like '%JavaScript developer';

 /*23. Вывести минимальную ЗП QA инженеров*/
  select MIN(s.monthly_salary)
  from roles_employee re
  join roles r 
  on re.role_id=r.id 
  join employee_salary es 
  on re.employee_id=es.employee_id
  join salary s 
  on es.salary_id=s.id
  where role_name like '%QA%';
 
 /*24. Вывести максимальную ЗП QA инженеров*/
  select MAX(s.monthly_salary)
  from roles_employee re
  join roles r 
  on re.role_id=r.id 
  join employee_salary es 
  on re.employee_id=es.employee_id
  join salary s 
  on es.salary_id=s.id
  where role_name like '%QA%';
 
 /*25. Вывести количество QA инженеров*/
  select COUNT(*) as number_of_QA_engineers
  from roles_employee re
  join roles r 
  on re.role_id=r.id 
  join employee_salary es 
  on re.employee_id=es.employee_id
  join salary s 
  on es.salary_id=s.id
  where role_name like '%QA%';
 
 /*26. Вывести количество Middle специалистов.*/
  select COUNT(*) as number_of_Middle_specialist
  from roles_employee re
  join roles r 
  on re.role_id=r.id 
  join employee_salary es 
  on re.employee_id=es.employee_id
  join salary s 
  on es.salary_id=s.id
  where role_name like '%Middle%';
 
 /*27. Вывести количество разработчиков*/
  select COUNT(*) as sum_of_developers
  from roles_employee re
  join roles r 
  on re.role_id=r.id 
  join employee_salary es 
  on re.employee_id=es.employee_id
  join salary s 
  on es.salary_id=s.id
  where role_name like '%developer';
 
 /*28. Вывести фонд (сумму) зарплаты разработчиков.*/
  select SUM(monthly_salary) as sum_of_monthly_salary
  from roles_employee re
  join roles r 
  on re.role_id=r.id 
  join employee_salary es 
  on re.employee_id=es.employee_id
  join salary s 
  on es.salary_id=s.id
  where role_name like '%developer';
 
 /*29. Вывести имена, должности и ЗП всех специалистов по возрастанию*/
  select employee_name, role_name, monthly_salary
  from employees e
  join roles_employee re 
  on e.id=re.employee_id 
  join roles r
  on r.id=re.role_id
  join employee_salary es 
  on e.id=es.employee_id
  join salary s
  on s.id = es.salary_id
  order by monthly_salary;

 /*30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300*/
  select employee_name, role_name, monthly_salary
  from employees e
  join roles_employee re 
  on e.id=re.employee_id 
  join roles r
  on r.id=re.role_id
  join employee_salary es 
  on e.id=es.employee_id
  join salary s
  on s.id = es.salary_id
  where monthly_salary between 1700 and 2300
  order by monthly_salary;
 
 /*31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300*/
  select employee_name, role_name, monthly_salary
  from employees e
  join roles_employee re 
  on e.id=re.employee_id 
  join roles r
  on r.id=re.role_id
  join employee_salary es 
  on e.id=es.employee_id
  join salary s
  on s.id = es.salary_id
  where monthly_salary < 2300
  order by monthly_salary;
 
 /*32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000*/
  select employee_name, role_name, monthly_salary
  from employees e
  join roles_employee re 
  on e.id=re.employee_id 
  join roles r
  on r.id=re.role_id
  join employee_salary es 
  on e.id=es.employee_id
  join salary s
  on s.id = es.salary_id
  where monthly_salary in (1100, 1500, 2000) 
  order by monthly_salary;  

 
 /*CHECKING*/
 
 select * from employees;
 select * from salary;
 select * from employee_salary;
 select * from roles;
 select * from roles_employee;
        
 



