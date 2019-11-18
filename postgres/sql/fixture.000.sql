create schema exmpl;
create table exmpl.entries
(
  id                 uuid unique not null,
  path               varchar(1000) unique not null,
  type               varchar(255)        not null,
  version            integer             not null,
  current           boolean default true,
  created_at         timestamp           not null default now(),
  version_created_at timestamp           not null default now(),
  created_by         varchar(255)        not null,
  hash_metadata      uuid not null,
  hash_search        uuid not null
);

create table exmpl.entry_metadata
(
  hash uuid not null,
  created_at timestamp default now(),
  metadata jsonb not null
);

CREATE TABLE exmpl.entry_search
(
    hash uuid not null,
    created_at timestamp default now(),
    path_vector tsvector not null,
    metadata_vector tsvector not null
);

create table exmpl.files
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
  read_only boolean default false,
  hidden boolean default false,
  url varchar(1000) null,
  constraint files_pk unique (sync_id, name, path)
);

