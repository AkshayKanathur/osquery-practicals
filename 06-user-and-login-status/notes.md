## Detecting Users and Checking Login Status

### Queries Used
```sql
-- List all human user accounts (UID >= 1000)
select username, uid, gid, description, directory, shell 
from users 
where uid >= 1000 
order by uid desc;

-- Check if a specific user is currently logged in
select * from logged_in_users where user = 'akshay';
```

### Output
```
-- Users:
| username | uid   | gid   | description | directory     | shell           |
|----------|-------|-------|-------------|---------------|-----------------|
| nobody   | 65534 | 65534 | nobody      | /nonexistent  | /usr/sbin/nologin |
| akshay   | 1000  | 1000  |             | /home/akshay  | /usr/bin/fish   |

-- Logged in users:
| type | user   | tty   | host | time       | pid  |
|------|--------|-------|------|------------|------|
| user | akshay | pts/1 |      | 1774335989 | 401  |
| user | akshay | pts/2 |      | 1774338929 | 7862 |
```

### Blue Team Relevance
- Detect **newly created user accounts** (common persistence method)
- Verify **who is currently logged in** during an active incident
- Multiple active sessions for one user can indicate **session hijacking**
- `uid >= 1000` filters out system accounts, focusing on human users
