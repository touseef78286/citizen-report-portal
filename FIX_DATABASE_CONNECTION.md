# 🔧 Database Connection Fix Guide

## Problem:
Backend se error aa raha hai: **"password authentication failed for user 'postgres'"**

Yeh database connection issue hai.

---

## ✅ Solution Steps:

### Step 1: Backend Server Window Check Karo

Backend PowerShell window mein check karo:
- Server running hai ya nahi?
- Koi database connection error dikh raha hai?

### Step 2: PostgreSQL Service Check Karo

1. **Windows Services** open karo:
   - `Win + R` press karo
   - Type: `services.msc`
   - Enter press karo

2. **PostgreSQL service** find karo:
   - Service name: `postgresql-x64-XX` (XX = version number)
   - Status: **Running** hona chahiye

3. **Agar stopped hai:**
   - Right-click → **Start**

### Step 3: Database Password Verify Karo

1. **pgAdmin** open karo
2. **Server** → **PostgreSQL** → Right-click → **Properties**
3. **Connection** tab mein password check karo
4. Ya **psql** se test karo:
   ```bash
   psql -U postgres -h localhost
   ```

### Step 4: `.env` File` Check Karo

**Location:** `server/.env`

File mein yeh hona chahiye:
```env
DB_HOST=localhost
DB_PORT=5432
DB_NAME=citizen_report_portal
DB_USER=postgres
DB_PASSWORD=01336
```

**Important:** 
- `DB_PASSWORD` apne actual PostgreSQL password se match karna chahiye
- Agar password change kiya hai, `.env` file update karo

### Step 5: Backend Server Restart Karo

1. Backend PowerShell window mein:
   - `Ctrl + C` press karo (server stop karo)
   - Phir: `npm run dev`

2. Console mein check karo:
   ```
   Server is running on port 5000
   Connected to PostgreSQL database
   ```

### Step 6: Database Connection Test Karo

Backend console mein yeh dikhna chahiye:
```
Connected to PostgreSQL database
```

Agar nahi dikh raha, database connection issue hai.

---

## 🔍 Quick Test:

### Test 1: Backend Health Check
Browser mein open karo: http://localhost:5000/api/health
- Should show: `{"status":"ok","message":"Server is running"}`

### Test 2: Database Connection Test
Backend console mein check karo:
- `Connected to PostgreSQL database` message dikhna chahiye
- Agar nahi dikh raha, database connection fail hai

### Test 3: Manual Database Test
pgAdmin ya psql se database connect karo:
```sql
\c citizen_report_portal
SELECT * FROM users LIMIT 1;
```

---

## ⚠️ Common Issues:

### Issue 1: PostgreSQL Service Not Running
**Solution:** Services mein PostgreSQL start karo

### Issue 2: Wrong Password in .env
**Solution:** `.env` file mein correct password set karo

### Issue 3: Database Not Created
**Solution:** Database create karo:
```sql
CREATE DATABASE citizen_report_portal;
```

### Issue 4: Migrations Not Run
**Solution:** Migrations run karo:
```bash
cd server
npm run migrate
```

---

## 📝 Next Steps:

1. ✅ PostgreSQL service running hai?
2. ✅ `.env` file mein correct password hai?
3. ✅ Backend server restart kiya?
4. ✅ Database connection successful?
5. ✅ Register form test karo

---

## 🎯 Expected Result:

Backend console mein:
```
Server is running on port 5000
Connected to PostgreSQL database
```

Frontend console mein (after registration):
```
API Response: POST /auth/register 201
Registration successful!
```


