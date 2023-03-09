create schema if not exists app;

set schema 'app';

create table if not exists accounts (
	user_id serial primary key,
	username VARCHAR(50) unique not null,
	password VARCHAR(50) not null,
	email VARCHAR(50) unique not null,
	created_on TIMESTAMP not null,
	last_login TIMESTAMP
);

create table if not exists roles (
	role_id serial primary key,
	role_name VARCHAR(50) unique not null
);

create table if not exists account_roles (
	user_id INT not null,
	role_id INT not null,
	grant_date TIMESTAMP,
	primary key (user_id, role_id),
	foreign key (role_id)
		references roles (role_id),
	foreign key (user_id)
		references accounts (user_id)
);
