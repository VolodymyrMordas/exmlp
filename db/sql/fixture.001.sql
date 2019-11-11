insert into exmlp.entry_metadata (hash, meta)
values ('hash-1', '{}');

insert into exmlp.entry_metadata (hash, meta)
values ('hash-2', '{}');

insert into exmlp.entry (id, path, type, version, created_by, hash_meta)
values (uuid(), '/', 'D', 1, 'user-1', 'hash-1');

insert into exmlp.entry (id, path, type, version, created_by, hash_meta)
values (uuid(), '/miracle', 'D', 1, 'user-1', 'hash-1');

insert into exmlp.entry (id, path, type, version, created_by, hash_meta)
values (uuid(), '/miracle/exmpl', 'D', 1, 'user-1', 'hash-1');

insert into exmlp.entry (id, path, type, version, created_by, hash_meta)
values (uuid(), '/miracle/exmpl/a.pdf', 'F', 1, 'user-1', 'hash-2');

insert into exmlp.entry (id, path, type, version, created_by, hash_meta)
values (uuid(), '/miracle/exmpl/b.pdf', 'F', 1, 'user-1', 'hash-2');

insert into exmlp.entry (id, path, type, version, created_by, hash_meta)
values (uuid(), '/miracle/exmpl/c.pdf', 'F', 1, 'user-1', 'hash-2');

insert into exmlp.entry (id, path, type, version, created_by, hash_meta)
values (uuid(), '/miracle/exmpl/d.pdf', 'F', 1, 'user-1', 'hash-2');


insert into exmlp.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'exmpl', '/exmpl', null, 'D', '', '', '2019-10-17', '2019-10-18', null, null);

insert into exmlp.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'a.pdf', '/exmpl/a.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);

insert into exmlp.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'b.pdf', '/exmpl/b.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);

insert into exmlp.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'c.pdf', '/exmpl/c.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);

insert into exmlp.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'e.pdf', '/exmpl/e.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);

insert into exmlp.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'f.pdf', '/exmpl/f.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);

insert into exmlp.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'datastore', '/exmpl/datastore', null, 'D', '', '', '2019-10-17', '2019-10-18', null, null);

insert into exmlp.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'a.pdf', '/exmpl/datastore/a.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);
