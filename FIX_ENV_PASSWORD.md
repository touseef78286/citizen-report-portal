# 🔧 Fix .env Password Issue

## Problem:
`.env` file se `DB_PASSWORD` load nahi ho raha.

## Solution:

### Step 1: `.env` File Check Karo

**Location:** `server/.env`

File open karo aur check karo ki yeh format hai:

```env
DB_HOST=localhost
DB_PORT=5432
DB_NAME=citizen_report_portal
DB_USER=postgres
DB_PASSWORD=01336
```

### Step 2: Common Issues:

#### Issue 1: Password Line Missing
**Solution:** Add this line:
```env
DB_PASSWORD=01336
```

#### Issue 2: Password Has Spaces
**Solution:** Remove spaces:
```env
DB_PASSWORD=01336
```
NOT: `DB_PASSWORD = 01336` ❌

#### Issue 3: Password Has Quotes
**Solution:** Remove quotes:
```env
DB_PASSWORD=01336
```
NOT: `DB_PASSWORD="01336"` ❌

#### Issue 4: Empty Password
**Solution:** Set actual password:
```env
DB_PASSWORD=your_actual_password
```

### Step 3: Verify Password

1. **pgAdmin** open karo
2. **PostgreSQL 17** → Right-click → **Properties**
3. **Connection** tab mein password check karo
4. Same password `.env` file mein set karo

### Step 4: Test Again

After fixing `.env` file:
```bash
cd server
npm run migrate
```

---

## Quick Fix:

1. Open `server/.env` file
2. Check if `DB_PASSWORD=01336` line exists
3. Agar nahi hai, add karo
4. Agar hai but different password, update karo
5. Save karo
6. Migrations run karo

---

## Expected Output After Fix:

```
Loading .env from: T:\...\server\.env
Loaded 12 environment variables
Loaded keys: [..., 'DB_PASSWORD', ...]
DB_PASSWORD in envVars: ***SET***
DB_PASSWORD: ***SET***
Using DB config: { host: 'localhost', ... }
Starting database migrations...
Running migration: 001_create_users.sql
✓ Completed: 001_create_users.sql
...
All migrations completed successfully!
```


