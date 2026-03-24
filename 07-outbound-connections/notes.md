## Querying Outbound Network Connections

### Query Used
```sql
select local_address, local_port, remote_address, remote_port, state 
from process_open_sockets 
where remote_address != '' and state = 'ESTABLISHED';
```

### Output
```
| local_address  | local_port | remote_address  | remote_port | state       |
|----------------|------------|-----------------|-------------|-------------|
| 172.17.222.219 | 60908      | 164.132.23.184  | 443         | ESTABLISHED |
| 172.17.222.219 | 37010      | 62.141.37.218   | 443         | ESTABLISHED |
| 172.17.222.219 | 40316      | 54.37.80.38     | 9700        | ESTABLISHED |
```

### What It Does
Queries `process_open_sockets` to show all currently active outbound TCP connections with their source/destination IPs and ports.

### Blue Team Relevance
- **Hunt for C2 (Command & Control) traffic** — look for unusual remote IPs or ports
- Port 443 is normal (HTTPS), but **port 9700 should be investigated** in a real environment
- Cross-reference remote IPs against **threat intel feeds** (VirusTotal, Shodan)
- Baseline normal connections so anomalies stand out during an incident
