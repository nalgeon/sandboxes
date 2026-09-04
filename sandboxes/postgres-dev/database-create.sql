create user :user;
create database :user with encoding = 'utf8' lc_collate='en_us.utf8' lc_ctype='en_us.utf8' template=template0 owner :user;

\connect :user
create extension pg_buffercache;
grant select on pg_buffercache, pg_buffercache_numa, pg_buffercache_os_pages to :user;
grant execute on function
    pg_buffercache_pages(),
    pg_buffercache_numa_pages(),
    pg_buffercache_os_pages(boolean),
    pg_buffercache_summary(),
    pg_buffercache_usage_counts()
    to :user;
