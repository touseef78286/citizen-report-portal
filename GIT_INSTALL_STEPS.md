# ⚡ Quick Git Installation Steps

## 🎯 **Problem:**
Git command recognize nahi ho raha hai. Git install karna hoga.

---

## 🚀 **Solution: Git Install Karo** (5 minutes)

### **Step 1: Download Git**

1. **Website open karo:**
   ```
   https://git-scm.com/download/win
   ```

2. **"Download for Windows"** button click karo
3. **File download ho jayega** (e.g., `Git-2.43.0-64-bit.exe`)

### **Step 2: Install Git**

1. **Downloaded file ko run karo** (double-click)
2. **Installation wizard:**
   - "Next" click karo
   - "Next" click karo (default settings theek hain)
   - "Next" click karo
   - **Important:** "Git from the command line and also from 3rd-party software" select karo ✅
   - "Next" → "Install"
3. **Installation complete** (2-3 minutes)
4. **"Finish"** click karo

### **Step 3: PowerShell Restart Karo**

1. **Current PowerShell window close karo**
2. **New PowerShell window open karo**
3. **Ye command run karo:**
   ```powershell
   git --version
   ```
4. **Agar version number dikhe** (e.g., `git version 2.43.0`), **✅ Git install ho gaya!**

### **Step 4: Git Configure Karo** (First Time Only)

```powershell
git config --global user.name "Touseef Panjtan"
git config --global user.email "touseefpanjtan52@gmail.com"
```

---

## 📝 **After Git Installation - Push Karo**

Jab Git install ho jaye, phir ye commands run karo:

```powershell
# Project folder mein jao
cd "T:\Cursor Work BY zenith\reporting to govert"

# Git initialize
git init

# Sab files add karo
git add .

# Commit karo
git commit -m "Initial commit - Citizen Report Portal"

# Main branch set karo
git branch -M main

# GitHub repository add karo
git remote add origin https://github.com/touseef78286/citizen-report-portal.git

# Push karo
git push -u origin main
```

---

## 🔐 **Authentication (Push Time)**

Jab `git push` karo, GitHub username aur password puch sakta hai:

- **Username:** `touseef78286`
- **Password:** GitHub password (ya Personal Access Token)

**Agar password kaam na kare:**
1. GitHub → Settings → Developer settings
2. Personal access tokens → Generate new token
3. Token copy karo
4. Password ki jagah token use karo

---

## ✅ **Quick Checklist:**

- [ ] Git download kiya
- [ ] Git install kiya
- [ ] PowerShell restart kiya
- [ ] `git --version` check kiya ✅
- [ ] Git configured (name + email)
- [ ] Code push kiya

---

**Jab Git install ho jaye, mujhe batao! Phir push kar denge! 🚀**

