# Quick Start Guide - Step by Step

## Step 1: Create .env Files

### Frontend .env File

1. Root directory mein (project ke main folder mein) `.env` naam ki file banao
2. Is file mein yeh add karo:

```
VITE_API_URL=http://localhost:5000/api
```

**Windows PowerShell mein:**
```powershell
New-Item -Path ".env" -ItemType File
Add-Content -Path ".env" -Value "VITE_API_URL=http://localhost:5000/api"
```

**Ya manually:**
- Root folder mein right-click karo
- New > Text Document
- Name change karo: `.env` (dot se start)
- File open karo aur upar wala content paste karo

### Backend .env File

1. `server` folder mein jao
2. Wahan `.env` file banao
3. Is content ko add karo:

```
PORT=5000
NODE_ENV=development
DB_HOST=localhost
DB_PORT=5432
DB_NAME=citizen_report_portal
DB_USER=postgres
DB_PASSWORD=postgres
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production-12345
JWT_EXPIRES_IN=7d
UPLOAD_DIR=./uploads
MAX_FILE_SIZE=10485760
FRONTEND_URL=http://localhost:3000
```

**Important:** `DB_PASSWORD` ko apni PostgreSQL password se replace karo!

**Windows PowerShell mein:**
```powershell
cd server
New-Item -Path ".env" -ItemType File
# Phir manually edit karo aur password update karo
```

---

## Step 2: PostgreSQL Database Setup

### Option A: Agar PostgreSQL Already Installed Hai

1. **pgAdmin open karo** (PostgreSQL ka GUI tool)
   - Start Menu se "pgAdmin 4" search karo
   
2. **Server connect karo:**
   - Left sidebar mein "Servers" expand karo
   - PostgreSQL server par right-click > Connect
   - Password enter karo (jab install kiya tha tab diya tha)

3. **Database create karo:**
   - "Databases" par right-click > Create > Database
   - Name: `citizen_report_portal`
   - Save karo

### Option B: Command Line Se (psql)

1. **Command Prompt ya PowerShell open karo**
2. **PostgreSQL bin folder mein jao:**
   ```powershell
   cd "C:\Program Files\PostgreSQL\15\bin"
   ```
   (Version number different ho sakta hai - apni version check karo)

3. **psql run karo:**
   ```powershell
   .\psql.exe -U postgres
   ```
   Password enter karo

4. **Database create karo:**
   ```sql
   CREATE DATABASE citizen_report_portal;
   ```

5. **Exit karo:**
   ```sql
   \q
   ```

### Option C: Agar PostgreSQL Install Nahi Hai

1. **Download karo:**
   - https://www.postgresql.org/download/windows/ se download karo
   - Installer run karo

2. **Installation ke dauran:**
   - Password set karo (yeh yaad rakhna hai!)
   - Port: 5432 (default)
   - Username: postgres (default)

3. **Installation ke baad:**
   - Option A ya B follow karo database create karne ke liye

---

## Step 3: Run Migrations

1. **Terminal/PowerShell open karo**
2. **Server folder mein jao:**
   ```powershell
   cd "T:\Cursor Work BY zenith\reporting to govert\server"
   ```

3. **Migrations run karo:**
   ```powershell
   npm run migrate
   ```

4. **Agar successful hai to:**
   - "All migrations completed successfully!" message aayega
   - Database tables create ho jayengi

**Agar error aaye:**
- Database connection check karo
- `server/.env` file mein password sahi hai ya nahi
- PostgreSQL service running hai ya nahi

---

## Step 4: Start Servers

### Terminal 1 - Backend Server

1. **PowerShell/Terminal open karo**
2. **Server folder mein jao:**
   ```powershell
   cd "T:\Cursor Work BY zenith\reporting to govert\server"
   ```

3. **Backend start karo:**
   ```powershell
   npm run dev
   ```

4. **Success message:**
   ```
   Server is running on port 5000
   Connected to PostgreSQL database
   ```

### Terminal 2 - Frontend Server

1. **Naya PowerShell/Terminal window open karo**
2. **Root folder mein jao:**
   ```powershell
   cd "T:\Cursor Work BY zenith\reporting to govert"
   ```

3. **Frontend start karo:**
   ```powershell
   npm run dev
   ```

4. **Browser automatically open hoga:**
   - http://localhost:3000

---

## Step 5: Test Application

1. **Browser mein jao:** http://localhost:3000
2. **Register karo:**
   - "Register" button click karo
   - Form fill karo
   - Submit karo
3. **Login karo:**
   - Registered credentials se login karo
4. **Report submit karo:**
   - Dashboard se "Submit Report" click karo
   - Form fill karo aur submit karo

---

## Troubleshooting

### Database Connection Error

**Error:** "Connection refused" ya "password authentication failed"

**Solution:**
1. PostgreSQL service check karo:
   ```powershell
   # Services check karo
   Get-Service -Name postgresql*
   ```
2. Agar stopped hai to start karo
3. `server/.env` mein password sahi hai ya nahi check karo

### Port Already in Use

**Error:** "Port 5000 already in use"

**Solution:**
1. `server/.env` mein PORT change karo:
   ```
   PORT=5001
   ```
2. Frontend `.env` mein bhi update karo:
   ```
   VITE_API_URL=http://localhost:5001/api
   ```

### Migration Errors

**Error:** "relation already exists"

**Solution:**
1. Database drop karo aur phir se create karo:
   ```sql
   DROP DATABASE citizen_report_portal;
   CREATE DATABASE citizen_report_portal;
   ```
2. Phir se migration run karo

---

## Quick Commands Summary

```powershell
# 1. Backend start
cd server
npm run dev

# 2. Frontend start (nayi terminal mein)
cd "T:\Cursor Work BY zenith\reporting to govert"
npm run dev

# 3. Migrations run
cd server
npm run migrate
```

---

## Checklist

- [ ] Frontend `.env` file created
- [ ] Backend `server/.env` file created (password updated)
- [ ] PostgreSQL installed
- [ ] Database `citizen_report_portal` created
- [ ] Migrations run successfully
- [ ] Backend server running (port 5000)
- [ ] Frontend server running (port 3000)
- [ ] Browser mein application open ho raha hai

---

**Agar koi problem aaye to batao, main help karunga!**

