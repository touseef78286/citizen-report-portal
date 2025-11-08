# Backend Server Restart Required

## Problem
Backend server was returning 500 Internal Server Error because database connection was failing.

## Fix Applied
Updated `server/src/config/database.ts` to handle UTF-16 encoded `.env` files (same fix as in `migrate.ts`).

## Action Required
**Backend server ko restart karo:**

1. Backend PowerShell window mein `Ctrl + C` press karo (server stop karo)
2. Phir: `cd server` (agar root directory mein ho)
3. Phir: `npm run dev`

## Expected Output
Backend server start hone ke baad console mein ye dikhna chahiye:
- `Loaded X environment variables from .env`
- `Database config: { host: 'localhost', port: 5432, ... }`
- `Connected to PostgreSQL database`
- `Server running on port 5000`

## After Restart
1. Frontend refresh karo (Ctrl + Shift + R)
2. Register form fill karo
3. Submit karo
4. Ab registration successful hona chahiye!

