-- ============================================
-- osquery Practicals — All Queries
-- Author: Akshay R
-- Tool: osquery v5.22.1 | OS: Ubuntu
-- ============================================


-- 1. Verify osquery version (run in terminal, not osqueryi)
-- osqueryi --version


-- 2. List all installed packages with name and version
select name, version from deb_packages;


-- 3. Search for a specific package (example: nmap)
select name, version from deb_packages where name like '%nmap%';


-- 4a. Check if nmap process is running
select uid, name, path from processes where name like '%nmap%';

-- 4b. Check if osquery process is running
select uid, name, path from processes where name like '%osquery%';


-- 5. Check file modification time of a binary
select path, datetime(mtime, 'unixepoch') AS modified_time 
from file 
where path like '/usr/bin/nma%' or path like '/usr/lib/%nmap%';


-- 6a. List all human user accounts (UID >= 1000)
select username, uid, gid, description, directory, shell 
from users 
where uid >= 1000 
order by uid desc;

-- 6b. Check login status of a specific user
select * from logged_in_users where user = 'akshay';


-- 7. Query all active outbound network connections
select local_address, local_port, remote_address, remote_port, state 
from process_open_sockets 
where remote_address != '' and state = 'ESTABLISHED';
