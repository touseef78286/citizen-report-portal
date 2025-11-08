# 🔧 Git Installation Guide

## ⚠️ **Problem:**
Git command recognize nahi ho raha hai. Git install karna hoga.

---

## 🚀 **Solution 1: Git for Windows Install Karo** (Recommended)

### **Step 1: Download Git**

1. **Website open karo:**
   - https://git-scm.com/download/win
   - Ya directly: https://github.com/git-for-windows/git/releases/latest

2. **Download button click karo:**
   - File name: `Git-2.43.0-64-bit.exe` (ya latest version)
   - File size: ~50 MB
   - Download ho jayega

### **Step 2: Install Git**

1. **Downloaded file ko run karo** (double-click)
2. **Installation wizard open hoga:**
   - "Next" click karo
   - Default settings theek hain
   - "Next" click karte raho
   - **Important:** "Git from the command line and also from 3rd-party software" select karo
   - "Next" → "Install"
3. **Installation complete hone tak wait karo** (2-3 minutes)
4. **"Finish" click karo**

### **Step 3: Verify Installation**

1. **PowerShell ya Command Prompt open karo** (NEW window)
2. **Ye command run karo:**
   ```powershell
   git --version
   ```
3. **Agar version number dikhe** (e.g., `git version 2.43.0`), **Git install ho gaya hai!** ✅

### **Step 4: Git Configure Karo** (First Time)

```powershell
# Your name
git config --global user.name "Your Name"

# Your email
git config --global user.email "your.email@example.com"
```

**Example:**
```powershell
git config --global user.name "Touseef Panjtan"
git config --global user.email "touseefpanjtan52@gmail.com"
```

---

## 🖥️ **Solution 2: GitHub Desktop Use Karo** (Easier)

Agar Git install karna mushkil lag raha hai, **GitHub Desktop** use karo:

### **Step 1: Download GitHub Desktop**

1. **Website:** https://desktop.github.com
2. **"Download for Windows"** click karo
3. **Install karo**

### **Step 2: GitHub Desktop se Push Karo**

1. **GitHub Desktop open karo**
2. **"Sign in to GitHub.com"** click karo
3. **GitHub account se login karo**
4. **"File" → "Add Local Repository"**
5. **Project folder select karo:**
   - `T:\Cursor Work BY zenith\reporting to govert`
6. **"Publish repository"** click karo
7. **Repository name:** `citizen-report-portal`
8. **"Publish"** click karo
9. ✅ **Done! Code GitHub par push ho jayega!**

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

## 🔐 **Authentication (First Time Push)**

Jab `git push` karo, GitHub username aur password puch sakta hai:

### **Option 1: Username + Password**
- Username: `touseef78286`
- Password: GitHub password

### **Option 2: Personal Access Token** (Recommended)

Agar password kaam na kare, **Personal Access Token** use karo:

1. **GitHub** → **Settings** → **Developer settings**
2. **Personal access tokens** → **Tokens (classic)**
3. **"Generate new token"** → **"Generate new token (classic)"**
4. **Note:** `Git Push Token`
5. **Expiration:** 90 days (ya unlimited)
6. **Scopes:** `repo` check karo
7. **"Generate token"** click karo
8. **Token copy karo** (sirf ek baar dikhega!)
9. **Password ki jagah token paste karo** jab push karo

---

## ✅ **Quick Checklist:**

- [ ] Git download kiya
- [ ] Git install kiya
- [ ] PowerShell restart kiya
- [ ] `git --version` check kiya (version dikh raha hai)
- [ ] Git configured (name aur email)
- [ ] GitHub repository bana liya
- [ ] Code push kiya

---

## 🆘 **Troubleshooting:**

### **"git is not recognized" (After Installation):**
- PowerShell **restart** karo (close karo aur phir open karo)
- Ya **Command Prompt** try karo
- Ya **Git Bash** use karo (Git ke saath install hota hai)

### **"Permission denied" (Push Time):**
- GitHub username/password check karo
- Personal Access Token use karo
- Repository URL sahi hai ya nahi check karo

### **"Repository not found":**
- GitHub par repository bana liya hai ya nahi check karo
- Repository name sahi hai ya nahi verify karo
- Repository public hai ya private check karo

---

## 📚 **Resources:**

- **Git Download:** https://git-scm.com/download/win
- **GitHub Desktop:** https://desktop.github.com
- **Git Documentation:** https://git-scm.com/doc
- **GitHub Help:** https://docs.github.com

---

**Good luck! 🚀**

Jab Git install ho jaye, mujhe batao, phir push kar denge! 😊

