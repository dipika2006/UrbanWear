# 👥 Team Workflow Guide for Clothing Store Management System

This guide explains how the team can collaborate safely on GitHub.

---

## 1️⃣ Cloning the Repository
Each team member should clone the repo to their local machine:

```bash
git clone https://github.com/dipika2006/Clothing-Store-Management-System.git
cd Clothing-Store-Management-System
```

- `git clone` → downloads the repo
- `cd ...` → enters the project folder

---

## 2️⃣ Creating Branches
Work should **not be done directly on `main`**. Each member creates a branch for their task:

```bash
git checkout -b feature/frontend  # For Dipika
git checkout -b feature/backend   # For Punam
git checkout -b feature/service   # For Eshu
git checkout -b feature/database  # For Asmi
git checkout -b feature/auth      # For Grishma
```

- Branches allow everyone to work independently.

---

## 3️⃣ Making Changes Locally
Team members work on their assigned parts:

- Frontend → JSP, CSS, JS (Dipika)
- Backend → Servlets (Punam)
- Service Layer → Business logic (Eshu)
- Database & Model → SQL, Java model classes (Asmi)
- Authentication & Testing → Session, security, report (Grishma)

After changes, stage and commit:

```bash
git add .
git commit -m "Describe your changes"
```

---

## 4️⃣ Pushing Branches to GitHub
After committing locally, push the branch:

```bash
git push origin feature/frontend  # example
```

- Makes your work visible on GitHub.

---

## 5️⃣ Merging Changes into Main
1. Open a **Pull Request (PR)** on GitHub for the branch.
2. Review code, fix any issues.
3. Merge into `main`.

> Only merged code updates `main`, keeping it stable.

---

## 6️⃣ Staying Updated
Always pull the latest `main` before starting work:

```bash
git pull origin main
```

- Prevents conflicts with other team members.
- Keep your branch up-to-date with the latest changes.

---

## 7️⃣ Tips & Best Practices
- Communicate: who is working on what.
- Commit frequently with meaningful messages.
- Avoid working directly on `main`.
- Clean up `.idea/`, `.iml`, and temporary files using `.gitignore`.

---

**💡 Analogy:**
- `main` = finished project (master copy)
- Branches = personal workspace for tasks
- Pull Request = request to merge your changes into the master copy

