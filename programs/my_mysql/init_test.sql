create table if not exists person (
    id bigint primary key,
    name varchar(255)
);

insert into person values (1, 'zs'),(2, 'ls'),(3, 'ww');

-- mysql db -uroot -pmysql_root_password