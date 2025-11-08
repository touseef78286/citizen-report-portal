# Simple Steps - Bas Ye Karna Hai

## ✅ Jo Already Ho Gaya Hai (Main Ne Kar Diya)

- ✅ Frontend aur Backend code complete
- ✅ .env files create ho chuki hain
- ✅ Dependencies install ho chuki hain
- ✅ Batch files ready hain (START_SERVERS.bat, RUN_MIGRATIONS.bat)

---

## 🎯 Aapko Sirf Ye 3 Cheeze Karni Hain

### 1️⃣ PostgreSQL Database Create Karna

**Kahan se milega:**
- Agar already installed hai → Start Menu se "pgAdmin 4" search karo
- Agar nahi hai → https://www.postgresql.org/download/windows/ se download karo

**Kaise karna hai:**

**Method 1: pgAdmin (Easiest)**
1. Start Menu → "pgAdmin 4" open karo
2. Left side mein "Servers" → Expand karo
3. PostgreSQL server par **right-click** → **Connect**
4. Password enter karo (jab install kiya tha tab diya tha)
5. "Databases" par **right-click** → **Create** → **Database**
6. Name: `citizen_report_portal`
7. **Save** button click karo

**Method 2: Command Line**
```powershell
# PowerShell open karo
cd "C:\Program Files\PostgreSQL\15\bin"
.\psql.exe -U postgres
# Password enter karo
CREATE DATABASE citizen_report_portal;
\q
```

**Agar PostgreSQL Install Nahi Hai:**
1. https://www.postgresql.org/download/windows/ se download karo
2. Installer run karo
3. Password set karo (yeh yaad rakhna hai!)
4. Install complete hone ke baad upar wala Method 1 follow karo

---

### 2️⃣ Database Password Update Karna

**Kahan se milega:**
- File: `server\.env` (server folder mein)

**Kaise karna hai:**
1. `server` folder open karo
2. `.env` file open karo (Notepad se)
3. Line 9 ko dhundho: `DB_PASSWORD=postgres`
4. `postgres` ko apni PostgreSQL password se replace karo
5. File save karo

**Example:**
```
DB_PASSWORD=mysecretpassword123
```

---

### 3️⃣ Migrations Run Karna

**Kahan se milega:**
- Root folder mein `RUN_MIGRATIONS.bat` file (main ne bana di hai)

**Kaise karna hai:**

**Easy Way:**
1. Root folder mein jao
2. `RUN_MIGRATIONS.bat` file par **double-click** karo
3. Wait karo - "All migrations completed successfully!" message aayega

**Manual Way:**
```powershell
cd server
npm run migrate
```

---

## 🚀 Phir Servers Start Karna

**Kahan se milega:**
- Root folder mein `START_SERVERS.bat` file (main ne bana di hai)

**Kaise karna hai:**
1. Root folder mein jao
2. `START_SERVERS.bat` file par **double-click** karo
3. 2 naye windows khulengi:
   - Backend server (port 5000)
   - Frontend server (port 3000)
4. Browser automatically open hoga: http://localhost:3000

**Manual Way:**
- Terminal 1: `cd server && npm run dev`
- Terminal 2: `npm run dev`

---

## 📋 Quick Checklist

- [ ] PostgreSQL install kiya (agar nahi hai)
- [ ] Database `citizen_report_portal` create kiya
- [ ] `server\.env` mein password update kiya
- [ ] `RUN_MIGRATIONS.bat` run kiya
- [ ] `START_SERVERS.bat` run kiya
- [ ] Browser mein http://localhost:3000 open kiya

---

## ❓ Agar Problem Aaye

### Database Connection Error
- PostgreSQL service running hai ya nahi check karo
- `server\.env` mein password sahi hai ya nahi

### Port Already in Use
- `server\.env` mein PORT change karo: `PORT=5001`
- Frontend `.env` mein: `VITE_API_URL=http://localhost:5001/api`

### Migration Error
- Database drop karo aur phir se create karo
- Phir se migration run karo

---

## 🎉 Bas Itna Hi!

Agar sab kuch sahi hai to:
1. Browser mein application khulega
2. Register karo
3. Login karo
4. Report submit karo
5. Enjoy! 🎊

