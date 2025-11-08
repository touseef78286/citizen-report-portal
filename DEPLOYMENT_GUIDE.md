# 🚀 Free Domain & Hosting Guide

## 📋 Best Free Options

### 🌐 **Free Domain Options:**

1. **Freenom** (`.tk`, `.ml`, `.ga`, `.cf`, `.gq`)
   - Website: https://www.freenom.com
   - Completely free domains
   - ⚠️ Note: Some email providers block these domains

2. **No-IP** (Free subdomain)
   - Website: https://www.noip.com
   - Free subdomain like: `yourname.ddns.net`

3. **GitHub Pages** (Free subdomain)
   - Website: https://pages.github.com
   - Free subdomain: `yourname.github.io`

### 🖥️ **Free Hosting Options:**

#### **Frontend (React/Vite):**

1. **Vercel** ⭐ (Recommended)
   - Website: https://vercel.com
   - Free tier: Unlimited projects
   - Auto-deploy from GitHub
   - Custom domain support
   - Global CDN

2. **Netlify**
   - Website: https://www.netlify.com
   - Free tier: 100GB bandwidth/month
   - Auto-deploy from GitHub
   - Custom domain support

3. **GitHub Pages**
   - Free for public repos
   - Simple static hosting
   - Custom domain support

#### **Backend (Node.js/Express):**

1. **Render** ⭐ (Recommended)
   - Website: https://render.com
   - Free tier: 750 hours/month
   - PostgreSQL database included
   - Auto-deploy from GitHub
   - Custom domain support

2. **Railway**
   - Website: https://railway.app
   - Free tier: $5 credit/month
   - PostgreSQL included
   - Auto-deploy from GitHub

3. **Fly.io**
   - Website: https://fly.io
   - Free tier: 3 shared VMs
   - Good for Node.js apps

4. **Cyclic**
   - Website: https://cyclic.sh
   - Free tier for serverless Node.js
   - Auto-deploy from GitHub

#### **Database (PostgreSQL):**

1. **Supabase** ⭐ (Recommended)
   - Website: https://supabase.com
   - Free tier: 500MB database
   - PostgreSQL included
   - Auto backups

2. **Neon**
   - Website: https://neon.tech
   - Free tier: 0.5GB storage
   - Serverless PostgreSQL

3. **Render PostgreSQL**
   - Free tier: 90 days, then $7/month
   - Included with Render hosting

---

## 🎯 **Recommended Setup (Easiest):**

### **Option 1: Vercel + Render + Supabase** ⭐

- **Frontend**: Vercel (free, unlimited)
- **Backend**: Render (free tier)
- **Database**: Supabase (free tier)

### **Option 2: Netlify + Railway + Neon**

- **Frontend**: Netlify (free tier)
- **Backend**: Railway (free tier)
- **Database**: Neon (free tier)

---

## 📝 **Step-by-Step Deployment:**

### **Step 1: Prepare Your Code**

1. **Create GitHub Repository:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/yourusername/citizen-report-portal.git
   git push -u origin main
   ```

2. **Separate Frontend and Backend:**
   - Frontend: Root directory
   - Backend: `server/` directory

### **Step 2: Deploy Frontend (Vercel)**

1. Go to https://vercel.com
2. Sign up with GitHub
3. Click "New Project"
4. Import your repository
5. **Root Directory**: Leave empty (or set to root)
6. **Build Command**: `npm run build`
7. **Output Directory**: `dist`
8. **Install Command**: `npm install`
9. Click "Deploy"
10. Your frontend will be live at: `yourproject.vercel.app`

### **Step 3: Deploy Backend (Render)**

1. Go to https://render.com
2. Sign up with GitHub
3. Click "New +" → "Web Service"
4. Connect your repository
5. **Settings:**
   - **Name**: `citizen-report-backend`
   - **Root Directory**: `server`
   - **Environment**: `Node`
   - **Build Command**: `npm install && npm run build`
   - **Start Command**: `npm start`
6. **Environment Variables:**
   - Add all variables from `server/.env`:
     - `DB_HOST`
     - `DB_PORT`
     - `DB_NAME`
     - `DB_USER`
     - `DB_PASSWORD`
     - `JWT_SECRET`
     - `JWT_EXPIRES_IN`
     - `PORT=5000`
7. Click "Create Web Service"
8. Your backend will be live at: `yourproject.onrender.com`

### **Step 4: Setup Database (Supabase)**

1. Go to https://supabase.com
2. Sign up with GitHub
3. Click "New Project"
4. **Settings:**
   - **Name**: `citizen-report-portal`
   - **Database Password**: (save this!)
   - **Region**: Choose closest
5. Wait for project to be created
6. Go to "Settings" → "Database"
7. Copy **Connection String** (URI format)
8. Update Render environment variables:
   - `DB_HOST`: From connection string
   - `DB_PORT`: `5432`
   - `DB_NAME`: From connection string
   - `DB_USER`: From connection string
   - `DB_PASSWORD`: Your saved password

### **Step 5: Run Database Migrations**

1. In Render dashboard, go to your backend service
2. Click "Shell" tab
3. Run migrations:
   ```bash
   cd server
   npm run migrate
   ```

### **Step 6: Update Frontend API URL**

1. In Vercel dashboard, go to your project
2. Go to "Settings" → "Environment Variables"
3. Add:
   - `VITE_API_URL`: `https://yourproject.onrender.com/api`
4. Redeploy frontend

### **Step 7: Connect Custom Domain (Optional)**

1. **Get Free Domain:**
   - Go to Freenom.com
   - Register free domain (e.g., `yourname.tk`)

2. **Connect to Vercel:**
   - Vercel dashboard → Your project → Settings → Domains
   - Add your domain
   - Follow DNS instructions

3. **Connect to Render:**
   - Render dashboard → Your service → Settings → Custom Domain
   - Add subdomain (e.g., `api.yourname.tk`)
   - Follow DNS instructions

---

## 🔧 **Important Configuration:**

### **Backend CORS Update:**

Update `server/src/config/cors.ts`:

```typescript
export const corsOptions = {
  origin: [
    'http://localhost:5173',
    'https://yourproject.vercel.app',
    'https://yourname.tk',
    // Add all your frontend URLs
  ],
  credentials: true,
};
```

### **Frontend .env.production:**

Create `.env.production`:

```env
VITE_API_URL=https://yourproject.onrender.com/api
```

---

## ✅ **Deployment Checklist:**

- [ ] Code pushed to GitHub
- [ ] Frontend deployed to Vercel/Netlify
- [ ] Backend deployed to Render/Railway
- [ ] Database created on Supabase/Neon
- [ ] Environment variables configured
- [ ] Database migrations run
- [ ] Frontend API URL updated
- [ ] CORS configured
- [ ] Custom domain connected (optional)
- [ ] Test registration/login
- [ ] Test report submission

---

## 🆘 **Troubleshooting:**

### **Backend not connecting to database:**
- Check environment variables in Render
- Verify database connection string
- Check database firewall settings in Supabase

### **Frontend can't reach backend:**
- Verify `VITE_API_URL` in Vercel environment variables
- Check CORS settings in backend
- Verify backend URL is correct

### **Migrations failing:**
- Run migrations manually in Render Shell
- Check database credentials
- Verify database exists

---

## 📚 **Additional Resources:**

- Vercel Docs: https://vercel.com/docs
- Render Docs: https://render.com/docs
- Supabase Docs: https://supabase.com/docs
- GitHub: https://github.com

---

## 💡 **Pro Tips:**

1. **Use GitHub Actions** for automated deployments
2. **Set up monitoring** with free services like Sentry
3. **Use environment-specific configs** (dev, staging, prod)
4. **Enable HTTPS** (automatic with Vercel/Render)
5. **Set up backups** for database
6. **Monitor usage** to stay within free tier limits

---

Good luck with your deployment! 🚀

