
drop table if exists history_owner cascade;
drop table if exists engine cascade;
drop table if exists driver;
drop table if exists car;

create table engine (
  id serial primary key,
  power int
);

create table car (
  id serial primary key,
  engine_id int unique references engine(id)
);

create table driver (
  id serial primary key,
  name varchar(250)
);

create table history_owner (
  id serial primary key,
  driver_id int not null references driver(id),
  car_id int not null references car(id)
);