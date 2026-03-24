## osquery Installation & Launch

### Steps
1. Download and install osquery on Ubuntu
2. Verify installation with version flag
3. Launch the interactive shell

### Commands Used
```bash
osqueryi --version
osqueryi
```

### Output
```
osqueryi version 5.22.1
Using a virtual database. Need help, type '.help'
osquery>
```

### Notes
- `osqueryi` is the interactive shell (like a SQL prompt for your OS)
- `osqueryd` is the daemon that runs in the background
- Once inside, you query system tables just like a SQL database
