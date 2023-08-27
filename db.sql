-- SQL 
create table accounts (
    id int primary key auto_increment,
    owner varchar(255) not null unique,
    balance int not null,
    currency varchar(255) not null,
    country varchar(255) not null,
    created_at int not null
);

create table entries (
    id int primary key auto_increment,
    account_id int not null,
    amount int not null,
    created_at int not null,
    updated_at int not null
);

create table transfers (
    id int primary key auto_increment,
    from_account_id int,
    to_account_id int,
    created_at int not null
);

-- FK
alter table entries
add foreign key (account_id) references accounts (id) 
on update CASCADE on delete CASCADE;

alter table transfers
add foreign key (from_account_id) references accounts (id) 
on update CASCADE on delete CASCADE;

alter table transfers
add foreign key (to_account_id) references accounts (id) 
on update CASCADE on delete CASCADE;


