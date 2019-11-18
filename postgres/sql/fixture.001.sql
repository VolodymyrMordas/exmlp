insert into exmpl.entry_metadata (hash, metadata) values ('00000000-0000-0000-0000-000000000000'::uuid, '{"alt":"root folder alternative name","comments":0}'::json);
insert into exmpl.entry_metadata (hash, metadata) values ('00000000-0000-0000-0000-000000000001'::uuid, '{"alt":"miracle folder alternative name","comments":1}'::json);
insert into exmpl.entry_metadata (hash, metadata) values ('00000000-0000-0000-0000-000000000002'::uuid, '{"alt":"exmpl folder alternative name","comments":2}'::json);
insert into exmpl.entry_metadata (hash, metadata) values ('00000000-0000-0000-0000-000000000003'::uuid, '{"dataSource":{"type":"pdf","name":"pdf cloud datastore"}, "alt":"a.pdf file alternative name","comments":3}'::json);
insert into exmpl.entry_metadata (hash, metadata) values ('00000000-0000-0000-0000-000000000004'::uuid, '{"dataSource":{"type":"pdf","name":"pdf cloud datastore"}, "alt":"b.pdf file alternative name","comments":4}'::json);
insert into exmpl.entry_metadata (hash, metadata) values ('00000000-0000-0000-0000-000000000005'::uuid, '{"dataSource":{"type":"pdf","name":"pdf cloud datastore"}, "alt":"c.pdf file alternative name","comments":5}'::json);
insert into exmpl.entry_metadata (hash, metadata) values ('00000000-0000-0000-0000-000000000006'::uuid, '{"dataSource":{"type":"pdf","name":"pdf cloud datastore"}, "alt":"d.pdf file alternative name","comments":6}'::json);


insert into exmpl.entry_search (hash, path_vector, metadata_vector)
values ('00000000-0000-0000-0000-000000000000'::uuid,
        to_tsvector('english', '/'),
        to_tsvector('english', '{"alt":"root folder alternative name","comments":0}'));

insert into exmpl.entry_search (hash, path_vector, metadata_vector)
values ('00000000-0000-0000-0000-000000000001'::uuid,
        to_tsvector('english', '/miracle'),
        to_tsvector('english', '{"alt":"miracle folder alternative name","comments":1}'));

insert into exmpl.entry_search (hash, path_vector, metadata_vector)
values ('00000000-0000-0000-0000-000000000002'::uuid,
        to_tsvector('english', '/miracle/exmpl'),
        to_tsvector('english', '{"alt":"exmpl folder alternative name","comments":2}'));

insert into exmpl.entry_search (hash, path_vector, metadata_vector)
values ('00000000-0000-0000-0000-000000000003'::uuid,
        to_tsvector('english', '/miracle/exmpl/a.pdf'),
        to_tsvector('english', '{"dataSource":{"type":"pdf","name":"pdf cloud datastore"}, "alt":"a.pdf file alternative name","comments":3}'));

insert into exmpl.entry_search (hash, path_vector, metadata_vector)
values ('00000000-0000-0000-0000-000000000004'::uuid,
        to_tsvector('english', '/miracle/exmpl/b.pdf'),
        to_tsvector('english', '{"dataSource":{"type":"pdf","name":"pdf cloud datastore"}, "alt":"b.pdf file alternative name","comments":4}'));

insert into exmpl.entry_search (hash, path_vector, metadata_vector)
values ('00000000-0000-0000-0000-000000000005'::uuid,
        to_tsvector('english', '/miracle/exmpl/c.pdf'),
        to_tsvector('english', '{"dataSource":{"type":"pdf","name":"pdf cloud datastore"}, "alt":"c.pdf file alternative name","comments":5}'));

insert into exmpl.entry_search (hash, path_vector, metadata_vector)
values ('00000000-0000-0000-0000-000000000006'::uuid,
        to_tsvector('english', '/miracle/exmpl/d.pdf'),
        to_tsvector('english', '{"dataSource":{"type":"pdf","name":"pdf cloud datastore"}, "alt":"d.pdf file alternative name","comments":6}'));

insert into exmpl.entries (id, path, type, version, current, created_by, hash_metadata, hash_search)
values ('00000000-0000-0000-0000-000000000000'::uuid, '/', 'D', 1, true, 'user-1', '00000000-0000-0000-0000-000000000000'::uuid, '00000000-0000-0000-0000-000000000000'::uuid);

insert into exmpl.entries (id, path, type, version, current, created_by, hash_metadata, hash_search)
values ('00000000-0000-0000-0000-000000000001'::uuid, '/miracle', 'D', 1, true, 'user-1', '00000000-0000-0000-0000-000000000001'::uuid, '00000000-0000-0000-0000-000000000001'::uuid);

insert into exmpl.entries (id, path, type, version, current, created_by, hash_metadata, hash_search)
values ('00000000-0000-0000-0000-000000000002'::uuid, '/miracle/exmpl', 'D', 1, true, 'user-1', '00000000-0000-0000-0000-000000000002'::uuid, '00000000-0000-0000-0000-000000000002'::uuid);

insert into exmpl.entries (id, path, type, version, current, created_by, hash_metadata, hash_search)
values ('00000000-0000-0000-0000-000000000003'::uuid, '/miracle/exmpl/a.pdf', 'F', 1, true, 'user-1', '00000000-0000-0000-0000-000000000003'::uuid, '00000000-0000-0000-0000-000000000003'::uuid);

insert into exmpl.entries (id, path, type, version, current, created_by, hash_metadata, hash_search)
values ('00000000-0000-0000-0000-000000000004'::uuid, '/miracle/exmpl/b.pdf', 'F', 1, true, 'user-1', '00000000-0000-0000-0000-000000000004'::uuid, '00000000-0000-0000-0000-000000000004'::uuid);

insert into exmpl.entries (id, path, type, version, current, created_by, hash_metadata, hash_search)
values ('00000000-0000-0000-0000-000000000005'::uuid, '/miracle/exmpl/c.pdf', 'F', 1, true, 'user-1', '00000000-0000-0000-0000-000000000005'::uuid, '00000000-0000-0000-0000-000000000005'::uuid);

insert into exmpl.entries (id, path, type, version, current, created_by, hash_metadata, hash_search)
values ('00000000-0000-0000-0000-000000000006'::uuid, '/miracle/exmpl/d.pdf', 'F', 1, true, 'user-1', '00000000-0000-0000-0000-000000000006'::uuid, '00000000-0000-0000-0000-000000000006'::uuid);

insert into exmpl.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'exmpl', '/exmpl', null, 'D', '', '', '2019-10-17', '2019-10-18', null, null);
-- --
insert into exmpl.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'a.pdf', '/exmpl/a.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);
-- --
insert into exmpl.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'b.pdf', '/exmpl/b.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);
-- --
insert into exmpl.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'c.pdf', '/exmpl/c.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);
-- --
insert into exmpl.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'e.pdf', '/exmpl/e.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);
-- --
insert into exmpl.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'f.pdf', '/exmpl/f.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);
-- --
insert into exmpl.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'datastore', '/exmpl/datastore', null, 'D', '', '', '2019-10-17', '2019-10-18', null, null);
-- --
insert into exmpl.files (sync_id, name, path, parent, type, extension, size, created, last_modified, access_time, url)
values ('sync-id-1', 'a.pdf', '/exmpl/datastore/a.pdf', null, 'F', 'pdf', '1000', '2019-10-17', '2019-10-18', null, null);
