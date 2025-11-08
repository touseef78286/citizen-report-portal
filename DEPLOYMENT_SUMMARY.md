# 🚀 Free Domain & Hosting - Complete Guide

## 📌 **Quick Summary:**

Aapko **3 cheezein** chahiye:
1. **Frontend Hosting** → Vercel (FREE)
2. **Backend Hosting** → Render (FREE)
3. **Database** → Supabase (FREE)

**Total Cost: ₹0 (Completely FREE!)**

---

## 🎯 **Step-by-Step (Simple):**

### **Step 1: GitHub par code push karo** (5 min)

```bash
# Terminal mein ye commands run karo:
git init
git add .
git commit -m "Ready for deployment"
git remote add origin https://github.com/YOUR_USERNAME/citizen-report-portal.git
git push -u origin main
```

### **Step 2: Frontend deploy karo - Vercel** (10 min)

1. Website: https://vercel.com
2. "Sign up" → GitHub se login karo
3. "Add New..." → "Project"
4. Apna repository select karo
5. **Settings:**
   - Framework: **Vite**
   - Build Command: `npm run build`
   - Output Directory: `dist`
6. "Deploy" click karo
7. ✅ **Frontend live ho jayega!** (e.g., `yourproject.vercel.app`)

### **Step 3: Database setup - Supabase** (5 min)

1. Website: https://supabase.com
2. "Start your project" → GitHub se login
3. "New Project" click karo
4. **Details fill karo:**
   - Name: `citizen-report-portal`
   - Password: **Save karo!** (ye zaroori hai)
   - Region: Apne paas wala choose karo
5. 2 minutes wait karo (setup ho raha hai)
6. "Settings" → "Database" → Connection string copy karo

### **Step 4: Backend deploy karo - Render** (10 min)

1. Website: https://render.com
2. "Get Started" → GitHub se login
3. "New +" → "Web Service"
4. Apna repository select karo
5. **Settings:**
   - Name: `citizen-report-backend`
   - Root Directory: `server`
   - Build Command: `npm install && npm run build`
   - Start Command: `npm start`
6. **Environment Variables add karo:**
   - `DB_HOST` = Supabase se mila host
   - `DB_PORT` = `5432`
   - `DB_NAME` = Supabase se mila database name
   - `DB_USER` = Supabase se mila user
   - `DB_PASSWORD` = Supabase ka password (jo save kiya tha)
   - `JWT_SECRET` = Koi bhi random string (e.g., `my-secret-key-12345`)
   - `JWT_EXPIRES_IN` = `7d`
   - `PORT` = `5000`
   - `FRONTEND_URL` = Vercel ka URL (e.g., `https://yourproject.vercel.app`)
7. "Create Web Service" click karo
8. ✅ **Backend live ho jayega!** (e.g., `yourproject.onrender.com`)

### **Step 5: Database migrations run karo** (2 min)

1. Render dashboard mein → Apna backend service
2. "Shell" tab click karo
3. Ye command run karo:
   ```bash
   cd server
   npm run migrate
   ```
4. ✅ Tables create ho jayengi!

### **Step 6: Frontend ka API URL update karo** (2 min)

1. Vercel dashboard → Apna project
2. "Settings" → "Environment Variables"
3. Add karo:
   - Key: `VITE_API_URL`
   - Value: `https://yourproject.onrender.com/api`
4. "Deployments" → "..." → "Redeploy"

---

## 🎉 **Done!**

Ab aapka app live hai:
- **Frontend**: `https://yourproject.vercel.app`
- **Backend**: `https://yourproject.onrender.com/api`

---

## 🌐 **Free Domain (Optional):**

Agar custom domain chahiye:

1. **Freenom se free domain lo:**
   - Website: https://www.freenom.com
   - Register: `yourname.tk` (FREE!)

2. **Vercel mein connect karo:**
   - Vercel → Project → Settings → Domains
   - Apna domain add karo
   - DNS instructions follow karo

3. **Render mein subdomain add karo:**
   - Render → Service → Settings → Custom Domain
   - Add: `api.yourname.tk`
   - DNS instructions follow karo

---

## ✅ **Test Karo:**

1. Frontend URL open karo
2. Register karo (new user)
3. Login karo
4. Report submit karo

Agar sab kaam kar raha hai, **success!** 🎊

---

## 📚 **Detailed Guides:**

- **Complete Guide**: `DEPLOYMENT_GUIDE.md` (detailed steps)
- **Quick Guide**: `QUICK_DEPLOY.md` (fast deployment)
- **Checklist**: `DEPLOYMENT_CHECKLIST.md` (step-by-step checklist)

---

## 🆘 **Agar Problem Aaye:**

### **Backend database connect nahi ho raha:**
- Render mein environment variables check karo
- Supabase ka connection string verify karo
- Database password sahi hai ya nahi check karo

### **Frontend backend ko call nahi kar raha:**
- Vercel mein `VITE_API_URL` check karo
- Backend URL sahi hai ya nahi verify karo
- Browser console mein errors check karo

### **Migrations fail ho rahi hain:**
- Render Shell mein manually run karo
- Database credentials verify karo
- Supabase mein database exists hai ya nahi check karo

---

## 💡 **Tips:**

1. **Environment variables** ko kabhi bhi GitHub par commit mat karo
2. **Database password** ko safe rakho
3. **Free tier limits** monitor karo
4. **Backups** regular lete raho
5. **HTTPS** automatically enable hai (Vercel/Render par)

---

**Good luck! 🚀**

Agar koi problem aaye, mujhe batao! 😊

