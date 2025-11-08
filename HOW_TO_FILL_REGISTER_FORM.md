# 📝 Register Form Fill Karne Ka Tarika

## Step-by-Step Instructions:

### 1. Register Page Open Karo
- Browser mein jao: http://localhost:3000/register
- Ya landing page se "Register" button click karo

### 2. Form Fields Fill Karo (Left to Right, Top to Bottom):

#### **Left Column:**

**Citizen ID ***
- Type karo: `CIT-0001` (ya koi bhi unique ID)
- Example: `CIT-1234`, `CIT-ABCD`

**Email ***
- Type karo: Valid email address
- Example: `test@example.com`
- Format: `something@domain.com`

**City/Area ***
- Dropdown se select karo
- Click karo dropdown par
- Options se ek city select karo:
  - New York
  - Los Angeles
  - Chicago
  - Houston
  - Phoenix
  - Philadelphia
  - San Antonio
  - San Diego

**Password ***
- Type karo: At least 6 characters
- Example: `password123`
- Minimum: 6 characters

#### **Right Column:**

**Full Name ***
- Type karo: Your full name
- Example: `John Doe`
- Minimum: 2 characters

**Mobile Number ***
- Type karo: Phone number
- Example: `+1234567890` ya `1234567890`
- Minimum: 10 digits

**Confirm Password ***
- Type karo: Same password jo aapne upar type kiya
- Example: `password123` (same as Password field)
- Must match Password field exactly

### 3. Form Validation Rules:

✅ **Citizen ID:** Required, any text
✅ **Full Name:** Required, minimum 2 characters
✅ **Email:** Required, valid email format
✅ **Mobile:** Required, minimum 10 digits
✅ **City:** Required, must select from dropdown
✅ **Password:** Required, minimum 6 characters
✅ **Confirm Password:** Required, must match Password

### 4. Example Form Data:

```
Citizen ID: CIT-0001
Full Name: John Doe
Email: john@example.com
Mobile Number: +1234567890
City/Area: New York
Password: password123
Confirm Password: password123
```

### 5. Submit Karo:

- Sab fields fill karne ke baad
- **"Register"** button click karo
- Button blue color ka hoga, bottom mein

### 6. Success Message:

- Agar sab sahi hai, success dialog dikhega
- Citizen ID generate hoga
- "Continue to Dashboard" button click karo

---

## ⚠️ Common Mistakes:

❌ **Password aur Confirm Password match nahi karte**
- Solution: Dono fields mein same password type karo

❌ **Email format galat hai**
- Solution: Valid email format use karo (something@domain.com)

❌ **City select nahi kiya**
- Solution: Dropdown se city select karo (type nahi karna)

❌ **Password 6 se kam characters ka hai**
- Solution: At least 6 characters ka password use karo

---

## 🎯 Quick Test Data:

Agar test karna ho, ye data use karo:

```
Citizen ID: CIT-TEST-001
Full Name: Test User
Email: test@example.com
Mobile Number: 1234567890
City/Area: New York
Password: test123
Confirm Password: test123
```

---

## 💡 Tips:

1. **City Field:** Type nahi karna, dropdown se select karna hai
2. **Password:** Strong password use karo (letters + numbers)
3. **Email:** Real email use karo (agar email verification ho)
4. **Mobile:** Country code ke saath ya without, dono chalega

---

## 🔍 Agar Form Submit Nahi Ho Raha:

1. Browser Console open karo (F12)
2. Console tab par jao
3. Register button click karo
4. Console messages check karo
5. Errors share karo


