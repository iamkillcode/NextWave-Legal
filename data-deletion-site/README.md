# NextWave Music Sim - Account Deletion Policy Site

This folder contains the account deletion policy webpage required by Google Play Console for the Data Safety section.

## 🌐 Deployment Options

### Option 1: GitHub Pages (Recommended - Free)

1. **Create a new repository** on GitHub:
   - Repository name: `NextWave-Account-Deletion` (or similar)
   - Set to Public

2. **Upload the `index.html` file**:
   ```bash
   cd data-deletion-site
   git init
   git add index.html
   git commit -m "Add account deletion policy page"
   git branch -M main
   git remote add origin https://github.com/iamkillcode/NextWave-Account-Deletion.git
   git push -u origin main
   ```

3. **Enable GitHub Pages**:
   - Go to repository Settings > Pages
   - Source: Deploy from branch `main`
   - Folder: `/ (root)`
   - Save

4. **Your URL will be**:
   ```
   https://iamkillcode.github.io/NextWave-Account-Deletion/
   ```

### Option 2: Add to Existing NextWave-Legal Repository

If you already have the `NextWave-Legal` repository hosting your privacy policy:

1. **Copy `index.html` to a new folder**:
   ```bash
   # In NextWave-Legal repo
   mkdir account-deletion-site
   cp /path/to/data-deletion-site/index.html account-deletion-site/
   git add account-deletion-site/
   git commit -m "Add account deletion policy page"
   git push
   ```

2. **Your URL will be**:
   ```
   https://iamkillcode.github.io/NextWave-Legal/account-deletion-site/
   ```

### Option 3: Netlify (Free Alternative)

1. Create account at [netlify.com](https://netlify.com)
2. Drag and drop the `data-deletion-site` folder
3. Get instant URL like: `https://nextwave-deletion.netlify.app`

### Option 4: Vercel (Free Alternative)

1. Create account at [vercel.com](https://vercel.com)
2. Import repository or upload folder
3. Get instant URL like: `https://nextwave-deletion.vercel.app`

## 📝 Google Play Console Configuration

Once deployed, use this information in the Play Console:

### Account Creation Section:
✅ **Username and password** (Email/Password authentication)
✅ **OAuth** (Google Sign-In)

### Data Deletion Section:
**Delete account URL:** `https://iamkillcode.github.io/NextWave-Account-Deletion/`
(Replace with your actual deployed URL)

## 🔧 Customization

If you need to update the policy:

1. Edit `index.html`
2. Update the "Last Updated" date at the bottom
3. Redeploy to your hosting service

## 📋 What This Page Includes

✅ In-app deletion instructions (primary method)
✅ Manual deletion request process via Discord
✅ Comprehensive list of deleted data
✅ Data retention policy (90-day anonymization)
✅ Processing timeline (7 business days)
✅ Data export instructions
✅ FAQ section
✅ Contact information
✅ GDPR/CCPA compliance statements

## 🎨 Design

The page features:
- Dark theme matching NextWave's game aesthetic
- Mobile-responsive design
- Clear visual hierarchy with color-coded sections
- Professional glassmorphism styling
- Accessible typography and contrast

## 📞 Support Links

All links in the page point to:
- Discord: https://discord.gg/2weVx8HZ6
- Privacy Policy: https://iamkillcode.github.io/NextWave-Legal/privacy-policy-site/
- Terms of Service: https://iamkillcode.github.io/NextWave-Legal/terms-of-service-site/

## 🚀 Quick Deploy to GitHub Pages

```bash
# From the root of NextWave-Music-Sim
cd data-deletion-site

# Initialize git if not already
git init

# Add and commit
git add .
git commit -m "Initial commit - Account deletion policy"

# Create new repo on GitHub first, then:
git remote add origin https://github.com/iamkillcode/NextWave-Account-Deletion.git
git branch -M main
git push -u origin main

# Enable GitHub Pages in repository settings
# URL will be: https://iamkillcode.github.io/NextWave-Account-Deletion/
```

## ✅ Verification Checklist

After deploying, verify:
- [ ] Page loads correctly on mobile and desktop
- [ ] All links work (Discord, Privacy Policy, Terms)
- [ ] Text is readable and professional
- [ ] URL is publicly accessible (not behind login)
- [ ] Page meets Google Play requirements
- [ ] Last updated date is current

## 📱 Testing

Test the page before submitting to Google:
1. Open the URL on your phone
2. Verify mobile responsiveness
3. Click all links to ensure they work
4. Check page loads in < 3 seconds
5. Verify HTTPS is enabled (automatic with GitHub Pages)
