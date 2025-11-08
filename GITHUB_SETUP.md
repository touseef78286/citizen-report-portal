# 📦 GitHub Setup Guide

## 🔧 **Step 1: Git Install Karo**

### **Option 1: Git for Windows (Recommended)**

1. **Download Git:**
   - Website: https://git-scm.com/download/win
   - Click "Download for Windows"
   - File download ho jayega (e.g., `Git-2.43.0-64-bit.exe`)

2. **Install Git:**
   - Downloaded file ko run karo
   - "Next" click karte raho (default settings theek hain)
   - Installation complete hone tak wait karo

3. **Verify Installation:**
   - PowerShell ya Command Prompt open karo
   - Ye command run karo:
     ```bash
     git --version
     ```
   - Agar version number dikhe, Git install ho gaya hai! ✅

### **Option 2: GitHub Desktop (Easier)**

1. **Download GitHub Desktop:**
   - Website: https://desktop.github.com
   - Click "Download for Windows"
   - Install karo

2. **GitHub Desktop se directly push kar sakte ho!**

---

## 📝 **Step 2: GitHub Account Banao**

1. **Website:** https://github.com
2. **"Sign up"** click karo
3. **Details fill karo:**
   - Username
   - Email
   - Password
4. **Verify email** (email check karo)
5. ✅ **Account ready!**

---

## 🚀 **Step 3: GitHub Repository Banao**

1. **GitHub par login karo**
2. **Top right corner** mein **"+"** click karo
3. **"New repository"** select karo
4. **Repository details:**
   - **Repository name**: `citizen-report-portal` (ya kuch aur)
   - **Description**: `Citizen Report Portal - React + Node.js + PostgreSQL`
   - **Public** select karo (ya Private, aapki choice)
   - **❌ "Initialize with README"** mat check karo (code already hai)
   - **❌ "Add .gitignore"** mat check karo (already hai)
5. **"Create repository"** click karo
6. ✅ **Repository ready!**

---

## 💻 **Step 4: Code Push Karo (Terminal se)**

### **PowerShell ya Command Prompt mein ye commands run karo:**

```bash
# Step 1: Project folder mein jao
cd "T:\Cursor Work BY zenith\reporting to govert"

# Step 2: Git initialize karo
git init

# Step 3: Sab files add karo
git add .

# Step 4: Commit karo
git commit -m "Initial commit - Citizen Report Portal"

# Step 5: Main branch set karo
git branch -M main

# Step 6: GitHub repository add karo (YOUR_USERNAME aur REPO_NAME replace karo)
git remote add origin https://github.com/YOUR_USERNAME/citizen-report-portal.git

# Step 7: Code push karo
git push -u origin main
```

### **Example:**
```bash
git remote add origin https://github.com/touseefpanjtan/citizen-report-portal.git
```

---

## 🖥️ **Step 5: GitHub Desktop se (Easier Method)**

1. **GitHub Desktop open karo**
2. **"File" → "Add Local Repository"**
3. **Project folder select karo:**
   - `T:\Cursor Work BY zenith\reporting to govert`
4. **"Publish repository"** click karo
5. **Repository name** enter karo
6. **"Publish"** click karo
7. ✅ **Done!**

---

## ⚠️ **Important Notes:**

### **1. .env Files Check Karo:**
- `.env` files GitHub par **NAHI** jani chahiye
- `.gitignore` mein `.env` already hai ✅
- Verify karo:
  ```bash
  git status
  ```
  - Agar `.env` files dikh rahi hain, mat add karo!

### **2. Large Files:**
- `node_modules/` already `.gitignore` mein hai ✅
- `dist/` aur `build/` bhi ignore ho rahe hain ✅

### **3. First Time Push:**
- GitHub username aur password puch sakta hai
- Ya **Personal Access Token** use karo (recommended)

---

## 🔐 **Personal Access Token (If Needed):**

1. **GitHub** → **Settings** → **Developer settings**
2. **Personal access tokens** → **Tokens (classic)**
3. **"Generate new token"** → **"Generate new token (classic)"**
4. **Note**: `Git Push Token`
5. **Expiration**: 90 days (ya unlimited)
6. **Scopes**: `repo` check karo
7. **"Generate token"** click karo
8. **Token copy karo** (sirf ek baar dikhega!)
9. **Password ki jagah token use karo** jab push karo

---

## ✅ **After Push:**

1. **GitHub repository** open karo
2. **Sab files** dikhni chahiye
3. **`.env` files** nahi dikhni chahiye ✅
4. **Ready for deployment!** 🚀

---

## 🆘 **Troubleshooting:**

### **"git is not recognized":**
- Git install karo (Step 1)
- PowerShell restart karo

### **"Permission denied":**
- GitHub username/password check karo
- Personal Access Token use karo

### **".env files showing":**
- `.gitignore` check karo
- `.env` files manually remove karo:
  ```bash
  git rm --cached .env
  git rm --cached server/.env
  ```

### **"Large file error":**
- `node_modules/` already ignore hai
- Agar koi aur large file hai, `.gitignore` mein add karo

---

**Good luck! 🚀**

Agar koi problem aaye, mujhe batao! 😊

