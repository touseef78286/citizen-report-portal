# ✅ Database Verification Steps

## Current Status:
✅ PostgreSQL 17 running hai
✅ `citizen_report_portal` database exist karta hai

## Ab Verify Karna Hai:

### Step 1: Database Tables Check Karo

pgAdmin mein:

1. **Left panel mein:**
   - `PostgreSQL 17` → `Databases` → `citizen_report_portal` expand karo
   - `Schemas` → `public` → `Tables` expand karo

2. **Tables check karo:**
   Ye tables honi chahiye:
   - ✅ `users`
   - ✅ `reports`
   - ✅ `report_images`
   - ✅ `report_updates`
   - ✅ `notifications`

### Step 2: Agar Tables Nahi Hain

Migrations run karni hongi:

1. **Backend PowerShell window** open karo
2. **Command run karo:**
   ```bash
   cd server
   npm run migrate
   ```

### Step 3: Database Connection Test

Backend server console mein check karo:
- `Connected to PostgreSQL database` message dikhna chahiye

---

## Quick Check:

### Option 1: pgAdmin se
1. `citizen_report_portal` database par right-click
2. **Query Tool** select karo
3. Ye query run karo:
   ```sql
   SELECT table_name 
   FROM information_schema.tables 
   WHERE table_schema = 'public';
   ```
4. Tables list dikhni chahiye

### Option 2: Backend Console se
Backend server window mein:
- `Connected to PostgreSQL database` dikhna chahiye
- Agar nahi dikh raha, connection issue hai

---

## Expected Result:

✅ Database: `citizen_report_portal` exists
✅ Tables: 5 tables created
✅ Connection: Backend se connected

---

## Next Steps:

1. ✅ Database exists - **DONE**
2. ⏳ Tables check karo
3. ⏳ Backend connection verify karo
4. ⏳ Register form test karo


