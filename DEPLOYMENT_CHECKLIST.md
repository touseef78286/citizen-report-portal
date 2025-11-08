# ✅ Deployment Checklist

## 📋 Pre-Deployment

- [ ] Code is working locally
- [ ] All tests passing (if any)
- [ ] `.env` files are NOT committed to git
- [ ] `.gitignore` includes `.env` files
- [ ] Database migrations are ready
- [ ] CORS is configured for production

## 🚀 Deployment Steps

### **1. GitHub Setup**
- [ ] Create GitHub account (if not exists)
- [ ] Create new repository
- [ ] Push code to GitHub
- [ ] Verify `.env` files are NOT in repository

### **2. Frontend Deployment (Vercel)**
- [ ] Sign up on Vercel
- [ ] Connect GitHub account
- [ ] Import repository
- [ ] Configure build settings:
  - [ ] Framework: Vite
  - [ ] Build Command: `npm run build`
  - [ ] Output Directory: `dist`
- [ ] Add environment variable:
  - [ ] `VITE_API_URL` = `https://your-backend-url.onrender.com/api`
- [ ] Deploy
- [ ] Test frontend URL

### **3. Database Setup (Supabase)**
- [ ] Sign up on Supabase
- [ ] Create new project
- [ ] Save database password
- [ ] Get connection details:
  - [ ] Host
  - [ ] Port (5432)
  - [ ] Database name
  - [ ] User
  - [ ] Password
- [ ] Test connection

### **4. Backend Deployment (Render)**
- [ ] Sign up on Render
- [ ] Connect GitHub account
- [ ] Create new Web Service
- [ ] Configure settings:
  - [ ] Root Directory: `server`
  - [ ] Build Command: `npm install && npm run build`
  - [ ] Start Command: `npm start`
- [ ] Add environment variables:
  - [ ] `DB_HOST`
  - [ ] `DB_PORT` = `5432`
  - [ ] `DB_NAME`
  - [ ] `DB_USER`
  - [ ] `DB_PASSWORD`
  - [ ] `JWT_SECRET` (generate strong secret)
  - [ ] `JWT_EXPIRES_IN` = `7d`
  - [ ] `PORT` = `5000`
  - [ ] `NODE_ENV` = `production`
  - [ ] `FRONTEND_URL` = `https://your-frontend-url.vercel.app`
- [ ] Deploy
- [ ] Test backend URL

### **5. Database Migrations**
- [ ] Open Render Shell
- [ ] Run: `cd server && npm run migrate`
- [ ] Verify tables created
- [ ] Check for errors

### **6. Update Frontend API URL**
- [ ] Go to Vercel dashboard
- [ ] Update `VITE_API_URL` with actual backend URL
- [ ] Redeploy frontend

### **7. Update CORS**
- [ ] Update `server/src/config/cors.ts` with frontend URL
- [ ] Push changes to GitHub
- [ ] Render will auto-redeploy

## 🧪 Testing

- [ ] Frontend loads correctly
- [ ] Can register new user
- [ ] Can login
- [ ] Can submit report
- [ ] Can view reports
- [ ] Can update profile
- [ ] Images upload correctly
- [ ] All API endpoints working

## 🌐 Custom Domain (Optional)

- [ ] Get free domain from Freenom
- [ ] Add domain to Vercel
- [ ] Configure DNS
- [ ] Add subdomain to Render
- [ ] Update CORS with new domain
- [ ] Update `VITE_API_URL` with new backend domain

## 📊 Post-Deployment

- [ ] Monitor error logs
- [ ] Check database usage
- [ ] Monitor bandwidth usage
- [ ] Set up alerts (if available)
- [ ] Document deployment process
- [ ] Share URLs with team

## 🔧 Troubleshooting

### **Frontend Issues:**
- [ ] Check build logs in Vercel
- [ ] Verify environment variables
- [ ] Check browser console for errors
- [ ] Verify API URL is correct

### **Backend Issues:**
- [ ] Check build logs in Render
- [ ] Verify environment variables
- [ ] Check database connection
- [ ] Verify CORS settings
- [ ] Check server logs

### **Database Issues:**
- [ ] Verify connection string
- [ ] Check database credentials
- [ ] Verify migrations ran successfully
- [ ] Check database firewall settings

---

## 📝 Notes

- Keep your `.env` files secure
- Never commit secrets to GitHub
- Monitor your free tier usage
- Set up backups for database
- Document your deployment URLs

---

**Good luck! 🚀**

