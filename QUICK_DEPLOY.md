# ⚡ Quick Deployment Guide

## 🎯 Fastest Way to Deploy (30 minutes)

### **Step 1: Push to GitHub** (5 min)

```bash
# In your project root
git init
git add .
git commit -m "Ready for deployment"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/citizen-report-portal.git
git push -u origin main
```

### **Step 2: Deploy Frontend to Vercel** (10 min)

1. Go to: https://vercel.com
2. Click "Sign up" → "Continue with GitHub"
3. Click "Add New..." → "Project"
4. Import your repository
5. **Settings:**
   - Framework Preset: **Vite**
   - Root Directory: `./` (leave empty)
   - Build Command: `npm run build`
   - Output Directory: `dist`
6. Click "Deploy"
7. ✅ Frontend live at: `yourproject.vercel.app`

### **Step 3: Deploy Backend to Render** (10 min)

1. Go to: https://render.com
2. Click "Get Started" → "Sign up with GitHub"
3. Click "New +" → "Web Service"
4. Connect your repository
5. **Settings:**
   - Name: `citizen-report-backend`
   - Root Directory: `server`
   - Environment: **Node**
   - Build Command: `npm install && npm run build`
   - Start Command: `npm start`
6. **Environment Variables** (click "Add Environment Variable"):
   ```
   DB_HOST=your-db-host
   DB_PORT=5432
   DB_NAME=your-db-name
   DB_USER=your-db-user
   DB_PASSWORD=your-db-password
   JWT_SECRET=your-secret-key-here
   JWT_EXPIRES_IN=7d
   PORT=5000
   ```
7. Click "Create Web Service"
8. ✅ Backend live at: `yourproject.onrender.com`

### **Step 4: Setup Database on Supabase** (5 min)

1. Go to: https://supabase.com
2. Click "Start your project" → "Sign up with GitHub"
3. Click "New Project"
4. Fill details:
   - Name: `citizen-report-portal`
   - Database Password: **Save this!**
   - Region: Choose closest
5. Wait 2 minutes for setup
6. Go to "Settings" → "Database"
7. Copy **Connection String** (URI format)
8. Update Render environment variables with database details

### **Step 5: Run Migrations** (2 min)

1. In Render dashboard → Your backend service
2. Click "Shell" tab
3. Run:
   ```bash
   cd server
   npm run migrate
   ```

### **Step 6: Update Frontend API URL** (2 min)

1. In Vercel dashboard → Your project
2. Go to "Settings" → "Environment Variables"
3. Add:
   - Key: `VITE_API_URL`
   - Value: `https://yourproject.onrender.com/api`
4. Go to "Deployments" → Click "..." → "Redeploy"

### **Step 7: Update CORS** (1 min)

Update `server/src/config/cors.ts`:

```typescript
export const corsOptions = {
  origin: [
    'http://localhost:5173',
    'https://yourproject.vercel.app',
  ],
  credentials: true,
};
```

Push changes:
```bash
git add .
git commit -m "Update CORS"
git push
```

---

## 🎉 **Done!**

Your app is now live:
- **Frontend**: `https://yourproject.vercel.app`
- **Backend**: `https://yourproject.onrender.com/api`

---

## 🔗 **Next Steps (Optional):**

### **Add Custom Domain:**

1. **Get Free Domain:**
   - Go to: https://www.freenom.com
   - Register: `yourname.tk` (free)

2. **Connect to Vercel:**
   - Vercel → Project → Settings → Domains
   - Add: `yourname.tk`
   - Follow DNS instructions

3. **Connect to Render:**
   - Render → Service → Settings → Custom Domain
   - Add: `api.yourname.tk`
   - Follow DNS instructions

---

## ✅ **Test Your Deployment:**

1. Visit your frontend URL
2. Try registering a new user
3. Try logging in
4. Try submitting a report

If everything works, you're done! 🎊

