## Listing All Installed Packages

### Query Used
```sql
select name, version from deb_packages;
```

### What It Does
Pulls all installed packages on the system from the `deb_packages` table, showing the package name and its installed version.

### Sample Output
```
| name         | version              |
|--------------|----------------------|
| adduser      | 3.137ubuntu1         |
| apparmor     | 4.0.1really4.0.1-... |
| apt          | 2.8.3                |
| bash         | 5.2.21-2ubuntu4      |
| nmap         | 7.94+git20230807...  |
```

### Blue Team Relevance
- Useful for **software inventory** during incident response
- Helps detect **unauthorized or unexpected packages** installed on a system
- Can be used to verify if a **vulnerable version** of a package is present
