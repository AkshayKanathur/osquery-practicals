## Checking if a Package/Process is Running

### Queries Used
```sql
-- Check if nmap is running
select uid, name, path from processes where name like '%nmap%';

-- Check if osquery itself is running
select uid, name, path from processes where name like '%osquery%';
```

### Output
```
-- nmap: no results (not running)

-- osquery:
| uid  | name      | path                        |
|------|-----------|-----------------------------|
| 0    | osqueryd  |                             |
| 0    | osqueryd  |                             |
| 1000 | osqueryi  | /opt/osquery/bin/osqueryd   |
```

### Blue Team Relevance
- Confirm whether a **suspected malicious process** is actively running
- Verify that **security tools** (osqueryd, auditd, etc.) are actually running
- Detect **unauthorized processes** running under unexpected UIDs
