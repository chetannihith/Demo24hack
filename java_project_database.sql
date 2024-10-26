use author;

CREATE TABLE tasks(taskId int auto_increment primary key , name varchar(25),
 due_date date,due_time time, category varchar(25),priority int,completed boolean);
 
 insert into tasks (name, due_date,due_time,category,priority,completed)values
 ('tfr','2023-12-07','20:14:12','aer',1,false),
 ('tfr','2023-12-07','19:14:12','aer',2,false),
 ('tfr','2023-12-07','21:14:12','aer',3,false);
 
select * from tasks;

delete from tasks where taskId=3;