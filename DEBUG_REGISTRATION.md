# 🔍 Registration Debugging Guide

## Steps to Debug Registration Issue

### 1. Check Browser Console (F12)
Open browser console (F12) and look for:
- `Form submit event triggered` - Form is being submitted
- `onSubmit called with data:` - Form validation passed
- `API Request: POST /auth/register` - Request is being sent
- `API Response:` or `API Error:` - Backend response

### 2. Check Backend Server
Make sure backend server is running on port 5000:
- Open backend PowerShell window
- Should see: `Server is running on port 5000`

### 3. Test Backend Connection
Open browser and go to: http://localhost:5000/api/health
- Should see: `{"status":"ok","message":"Server is running"}`

### 4. Common Issues

#### Issue 1: Backend Not Running
**Solution:** Start backend server
```bash
cd server
npm run dev
```

#### Issue 2: CORS Error
**Solution:** Check `server/src/config/cors.ts` allows frontend origin

#### Issue 3: Form Validation Failing
**Solution:** Check console for validation errors
- All fields must be filled
- Email must be valid format
- Password must be at least 6 characters
- Passwords must match

#### Issue 4: Network Error
**Solution:** Check if API URL is correct
- Frontend expects: `http://localhost:5000/api`
- Check `.env` file has `VITE_API_URL=http://localhost:5000/api`

### 5. What to Look For in Console

**If form is not submitting:**
- No "Form submit event triggered" message
- Check if button is disabled
- Check if form has validation errors

**If validation is failing:**
- "onSubmit called with data:" will show missing fields
- Check error messages under each field

**If API call is failing:**
- "API Error:" will show the error
- Check status code and error message
- Common errors:
  - 400: Bad request (missing fields)
  - 500: Server error
  - Network error: Backend not running

### 6. Test Registration Manually

Try this in browser console:
```javascript
fetch('http://localhost:5000/api/auth/register', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    citizenId: 'CIT-TEST',
    name: 'Test User',
    email: 'test@example.com',
    mobile: '1234567890',
    city: 'New York',
    password: 'password123'
  })
})
.then(r => r.json())
.then(console.log)
.catch(console.error);
```

If this works, the issue is in the frontend form.
If this fails, the issue is in the backend.


