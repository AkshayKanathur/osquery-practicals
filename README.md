# 🔍 osquery Practicals — Ubuntu

Hands-on exploration of osquery for endpoint visibility, threat detection, and SOC skill building.

## 📌 Topics Covered
- Installation & version verification
- Listing all installed packages with name and version
- Searching for a specific package
- Checking if a package/process is running
- Checking file modification time of a binary
- Detecting users and login status
- Querying outbound network connections

## 🛠️ Environment
- **Tool:** osquery v5.22.1
- **OS:** Ubuntu (WSL on Windows)

## 📂 Folder Structure
```
osquery-practicals/
├── 01-installation/
│   └── notes.md
├── 02-package-enumeration/
│   ├── notes.md
│   └── screenshot.png
├── 03-search-specific-package/
│   ├── notes.md
│   └── screenshot.png
├── 04-process-check/
│   ├── notes.md
│   └── screenshot.png
├── 05-file-modification-time/
│   ├── notes.md
│   └── screenshot.png
├── 06-user-and-login-status/
│   ├── notes.md
│   └── screenshot.png
├── 07-outbound-connections/
│   ├── notes.md
│   └── screenshot.png
└── queries/
    └── all-queries.sql
```

## 🎯 Purpose
Building blue team skills — SOC analysis, threat hunting, and endpoint monitoring using osquery.

## 🔗 References
- [osquery official docs](https://osquery.readthedocs.io)
- [osquery schema](https://osquery.io/schema)
