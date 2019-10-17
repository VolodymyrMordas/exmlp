create database exmlp;
create table exmlp.entry
(
  id                 varchar(255) unique not null,
  path               varchar(1000) unique not null,
  type               varchar(255)        not null,
  version            integer             not null,
  current           boolean default true,
  created_at         timestamp           not null default now(),
  version_created_at timestamp           not null default now(),
  created_by         varchar(255)        not null,
  hash_meta          varchar(255)        not null
);

create table exmlp.entry_metadata
(
  hash varchar(255) unique not null,
  created_at timestamp default now(),
  meta json not null
);

create table exmlp.files
(
	sync_id varchar(255) not null,
	name varchar(150) not null,
	path varchar(1500) not null,
	parent varchar(1500) null,
	type varchar(1) not null,
	extension varchar(150) null,
	size varchar(150) null,
	created varchar(150) null,
	last_modified varchar(150) null,
	access_time varchar(150) null,
	`read_only` tinyint(1) default '0' null,
	hidden tinyint(1) default '0' null,
	url varchar(1000) null,
	constraint files_pk unique (sync_id, name, path)
);