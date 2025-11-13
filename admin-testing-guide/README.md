# Admin Testing Guide Webpage

This directory contains the HTML webpage for the Play Store Admin Testing Guide.

## 📋 Overview

The webpage provides a professional, mobile-responsive guide for Play Store reviewers to test NextWave Music Sim's admin functions.

## 🌐 Live URL

After deployment, the guide will be accessible at:
```
https://iamkillcode.github.io/NextWave-Music-Sim/admin-testing-guide/
```

## 🚀 Deployment Instructions

### Option 1: GitHub Pages (Recommended)

1. **Commit and push the changes:**
```bash
cd /home/artemis/Codebase/NextWave-Music-Sim
git add admin-testing-guide/
git commit -m "Add Play Store Admin Testing Guide webpage"
git push origin main
```

2. **Enable GitHub Pages:**
   - Go to GitHub repository: https://github.com/iamkillcode/NextWave-Music-Sim
   - Click "Settings" → "Pages"
   - Under "Source", select "Deploy from a branch"
   - Select branch: `main`
   - Select folder: `/ (root)`
   - Click "Save"

3. **Access the page:**
   - Wait 1-2 minutes for deployment
   - Visit: `https://iamkillcode.github.io/NextWave-Music-Sim/admin-testing-guide/`

### Option 2: Deploy to Separate Repo (Alternative)

If you want a cleaner URL like `https://iamkillcode.github.io/admin-testing-guide/`:

1. **Create new repository:**
```bash
cd /tmp
mkdir admin-testing-guide
cd admin-testing-guide
git init
cp /home/artemis/Codebase/NextWave-Music-Sim/admin-testing-guide/index.html .
git add index.html
git commit -m "Initial commit: Admin Testing Guide"
```

2. **Push to GitHub:**
```bash
# Create repo on GitHub first: https://github.com/new
git remote add origin https://github.com/iamkillcode/admin-testing-guide.git
git branch -M main
git push -u origin main
```

3. **Enable GitHub Pages** (same as Option 1)

### Option 3: Firebase Hosting

Deploy alongside your app:

1. **Update firebase.json:**
```json
{
  "hosting": {
    "public": "build/web",
    "ignore": ["firebase.json", "**/.*", "**/node_modules/**"],
    "rewrites": [
      {
        "source": "/admin-guide",
        "destination": "/admin-testing-guide/index.html"
      }
    ]
  }
}
```

2. **Copy file to build:**
```bash
mkdir -p build/web/admin-testing-guide
cp admin-testing-guide/index.html build/web/admin-testing-guide/
firebase deploy --only hosting
```

## 📱 Features

- **Responsive Design:** Works on desktop, tablet, and mobile
- **Dark Theme:** Matches NextWave's game aesthetic
- **Glassmorphism Effects:** Modern, professional appearance
- **Interactive Elements:** Hover effects, color-coded sections
- **Easy Navigation:** Clear section headers and jump links
- **Copy-Friendly:** Code snippets formatted for easy copying

## 🎨 Customization

To update the webpage:

1. Edit `admin-testing-guide/index.html`
2. Styles are embedded in `<style>` tag in `<head>`
3. Content is in semantic HTML sections
4. Test locally by opening in browser:
   ```bash
   open admin-testing-guide/index.html
   # or
   firefox admin-testing-guide/index.html
   ```

## 📧 Sharing with Play Store

When submitting to Google Play Console:

1. **In "App Content" section:**
   - Add the live URL in "Additional information"

2. **In "Store Listing" section:**
   - Include link in "Full description" (optional)

3. **In "App Access" section:**
   - Paste the URL in "Instructions for accessing this app"
   - Include admin credentials

Example text for Play Console:
```
Admin Testing Guide: https://iamkillcode.github.io/NextWave-Music-Sim/admin-testing-guide/

Admin Credentials:
Email: playstore.admin@nextwavemusic.com
Password: PlayStore2025

Please review the guide for detailed testing instructions.
```

## 🔧 Maintenance

- Update credentials in both `index.html` and `PLAYSTORE_ADMIN_TESTING_GUIDE.md` when changed
- Keep feature descriptions in sync with actual app functionality
- Test all links before sharing with reviewers
- Update version info if significant changes are made to admin features

## 📝 Local Testing Server (Optional)

For development, you can run a local server:

```bash
# Python 3
cd admin-testing-guide
python -m http.server 8000

# Then visit: http://localhost:8000
```

## ✅ Pre-Deployment Checklist

- [ ] Verify all credentials are correct
- [ ] Test page on mobile device
- [ ] Check all links work
- [ ] Verify color contrast for accessibility
- [ ] Test in multiple browsers (Chrome, Firefox, Safari)
- [ ] Ensure no sensitive production data is exposed
- [ ] Spell-check all content
- [ ] Validate HTML (https://validator.w3.org/)

---

**Last Updated:** November 13, 2025
**Contact:** manueloppong14@gmail.com
