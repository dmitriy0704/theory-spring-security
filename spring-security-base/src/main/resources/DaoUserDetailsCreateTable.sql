create schema springsecuritybase;

create table users
(
    id       bigserial,
    username varchar(30) not null,
    password varchar(80) not null,
    email    varchar(50) not null unique,
    primary key (id)
);

create table roles
(
    id   serial,
    name varchar(50) not null,
    primary key (id)
);

create table users_roles
(
    user_id  bigint not null,
    role_id int    not null,
    primary key (user_id, role_id),
    foreign key (user_id) references users (id),
    foreign key (role_id) references roles (id)
);

insert into roles (name)
values ('ROLE_USER'),
       ('ROLE_ADMIN');
insert into users (username, password, email)
VALUES ('user', '$2a$12$kputjUlcR.to1koq2B4J9uIsFVdPm0w3FyOH46sw6mzG4XTKNKOFO', 'user@mail.ru');
insert into users_roles (user_id, role_id)
VALUES (1, 2);
