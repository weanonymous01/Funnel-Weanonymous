# We Anonymous -- Funnel Landing Page Specification

## Project Overview

This document is a complete step by step build guide for the We Anonymous cybersecurity community landing page and lead capture funnel. Follow each section in order. Do not skip steps.

---

## Brand Identity

**Brand Name:** We Anonymous

**Website:** weanonymous.in

**Niche:** Cybersecurity education, ethical hacking, OSINT, Linux

**Audience:** Indian students and working professionals interested in cybersecurity

**Tone:** Bold, minimal, underground hacker aesthetic -- professional but not corporate

**Social Proof Numbers:**
- 350,000 plus Instagram followers
- 10,000 plus WhatsApp community members

**Color Palette (use these three colors only, no exceptions):**

| Color | Hex | Usage |
|---|---|---|
| Lime | #d5fc47 | CTA buttons, highlights, accents, active states |
| Black | #080808 | Page background, card backgrounds, input backgrounds |
| White | #fefefe | All body text, headings, labels, borders |

**Typography:** Inter (Google Fonts). Fallback: system-ui, sans-serif.

**Font Weights:** 400 for body, 600 for labels, 700 for headings and CTA buttons.

---

## Tech Stack

Build this as a single HTML file. No frameworks. No libraries. No external dependencies except Google Fonts.

- HTML5
- CSS3 inside a single style tag
- Vanilla JavaScript inside a single script tag
- Google Fonts (Inter only)

Output must be one file named `index.html` that works when opened directly in a browser.

---

## Step 1 -- Page Setup

Start the HTML file with the following structure.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>We Anonymous -- Join India's Biggest Cybersecurity Community</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet" />
  <style>
    /* all styles go here */
  </style>
</head>
<body>
  <!-- all content goes here -->
  <script>
    // all javascript goes here
  </script>
</body>
</html>
```

---

## Step 2 -- Global CSS Reset and Base Styles

Inside the style tag, write these base styles first before anything else.

```css
*, *::before, *::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html {
  scroll-behavior: smooth;
}

body {
  background-color: #080808;
  color: #fefefe;
  font-family: 'Inter', system-ui, sans-serif;
  font-size: 16px;
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
}

a {
  color: inherit;
  text-decoration: none;
}

img {
  max-width: 100%;
  display: block;
}

input, select, button, textarea {
  font-family: inherit;
  font-size: inherit;
}
```

---

## Step 3 -- Top Announcement Bar

This is the thin bar at the very top of the page. It has two elements -- a trust message on the left and a join button on the right.

**HTML structure:**

```html
<div class="top-bar">
  <span class="top-bar-text">Your data is safe. No spam, ever.</span>
  <a href="#form" class="top-bar-btn">Join Community</a>
</div>
```

**CSS for top bar:**

```css
.top-bar {
  width: 100%;
  background-color: #080808;
  border-bottom: 1px solid rgba(254, 254, 254, 0.1);
  padding: 10px 24px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  position: sticky;
  top: 0;
  z-index: 100;
}

.top-bar-text {
  font-size: 13px;
  color: rgba(254, 254, 254, 0.6);
  letter-spacing: 0.01em;
}

.top-bar-btn {
  background-color: #fefefe;
  color: #080808;
  font-size: 13px;
  font-weight: 700;
  padding: 7px 18px;
  border-radius: 999px;
  cursor: pointer;
  transition: background-color 0.2s ease;
}

.top-bar-btn:hover {
  background-color: #d5fc47;
}
```

---

## Step 4 -- Hero Section

This is the main above-the-fold section. It contains the badge, headline, subheadline, body copy, and founder attribution. Keep it centered. No images needed.

**HTML structure:**

```html
<section class="hero">
  <span class="badge">Free · WhatsApp Community</span>
  <h1 class="hero-title">We Anonymous</h1>
  <p class="hero-sub">Your unfair advantage in cybersecurity.</p>
  <p class="hero-body">
    Skip the noise. Get the signal. Hacking tools, OSINT techniques,
    and live sessions straight to your WhatsApp.
  </p>
  <div class="founder-tag">
    <div class="founder-avatar">WA</div>
    <div>
      <p class="founder-name">Your Name Here</p>
      <p class="founder-role">Founder, We Anonymous</p>
    </div>
  </div>
</section>
```

**CSS for hero:**

```css
.hero {
  max-width: 640px;
  margin: 0 auto;
  padding: 80px 24px 60px;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 20px;
}

.badge {
  display: inline-block;
  border: 1px solid rgba(254, 254, 254, 0.25);
  border-radius: 999px;
  padding: 6px 18px;
  font-size: 13px;
  font-weight: 600;
  color: rgba(254, 254, 254, 0.7);
  letter-spacing: 0.03em;
}

.hero-title {
  font-size: clamp(48px, 10vw, 80px);
  font-weight: 700;
  line-height: 1.05;
  letter-spacing: -0.03em;
  color: #fefefe;
}

.hero-sub {
  font-size: clamp(18px, 4vw, 24px);
  font-weight: 700;
  color: #d5fc47;
  letter-spacing: -0.01em;
}

.hero-body {
  font-size: 15px;
  color: rgba(254, 254, 254, 0.6);
  max-width: 480px;
  line-height: 1.7;
}

.founder-tag {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-top: 8px;
}

.founder-avatar {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background-color: #d5fc47;
  color: #080808;
  font-size: 12px;
  font-weight: 700;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.founder-name {
  font-size: 14px;
  font-weight: 600;
  color: #fefefe;
  text-align: left;
}

.founder-role {
  font-size: 12px;
  color: rgba(254, 254, 254, 0.5);
  text-align: left;
}
```

---

## Step 5 -- Lead Capture Form

This is the most important section. The form collects all lead data and applies segmentation tags via JavaScript. Give the form section an id of "form" so the top bar button scrolls to it.

**HTML structure:**

```html
<section class="form-section" id="form">
  <div class="form-card">

    <input type="text" id="name" placeholder="Your name" class="form-input" required />
    <input type="email" id="email" placeholder="Email address" class="form-input" required />

    <div class="form-input country-field">
      <span class="country-flag">IN</span>
      <span class="country-name">India (detected)</span>
      <span class="country-change">Change</span>
    </div>

    <div class="phone-row">
      <div class="phone-prefix">IN +91</div>
      <input type="tel" id="phone" placeholder="Phone number" class="form-input phone-input" required />
    </div>

    <div class="toggle-row">
      <span class="toggle-label">Do you know Linux?</span>
      <label class="toggle-option">
        <input type="radio" name="linux" value="yes" /> Yes
      </label>
      <label class="toggle-option">
        <input type="radio" name="linux" value="no" checked /> No
      </label>
    </div>

    <select id="role" class="form-input form-select" required>
      <option value="" disabled selected>What describes you the best</option>
      <option value="student">Student</option>
      <option value="professional">Working Professional</option>
      <option value="freelancer">Freelancer</option>
      <option value="exploring">Just Exploring</option>
    </select>

    <select id="experience" class="form-input form-select" required>
      <option value="" disabled selected>How many years in cybersecurity?</option>
      <option value="0">0 years</option>
      <option value="less1">Less than 1 year</option>
      <option value="1to3">1 to 3 years</option>
      <option value="3plus">3 plus years</option>
    </select>

    <label class="checkbox-row">
      <input type="checkbox" id="hacksnip" checked />
      <span>I also want to join the <strong>HackSnip 7-Day Bootcamp</strong> for free</span>
    </label>

    <label class="checkbox-row">
      <input type="checkbox" id="newsletter" checked />
      <span>Subscribe me to We Anonymous weekly updates</span>
    </label>

    <div class="social-proof">
      <div class="avatar-stack">
        <div class="sp-avatar">A</div>
        <div class="sp-avatar">R</div>
        <div class="sp-avatar">K</div>
        <div class="sp-avatar">S</div>
      </div>
      <span class="sp-text">10,000 plus members joined</span>
    </div>

    <button type="button" class="cta-btn" onclick="handleSubmit()">
      Get Instant Access
    </button>

    <p class="form-trust">Your data is safe. No spam, ever.</p>

    <div id="tag-result" class="tag-result" style="display:none;"></div>

  </div>
</section>
```

**CSS for form:**

```css
.form-section {
  max-width: 540px;
  margin: 0 auto;
  padding: 20px 24px 60px;
}

.form-card {
  display: flex;
  flex-direction: column;
  gap: 14px;
}

.form-input {
  width: 100%;
  background-color: #111111;
  border: 1px solid rgba(254, 254, 254, 0.12);
  border-radius: 10px;
  padding: 16px 18px;
  color: #fefefe;
  font-size: 15px;
  outline: none;
  transition: border-color 0.2s ease;
  appearance: none;
  -webkit-appearance: none;
}

.form-input::placeholder {
  color: rgba(254, 254, 254, 0.3);
}

.form-input:focus {
  border-color: #d5fc47;
}

.form-select {
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='8' viewBox='0 0 12 8'%3E%3Cpath d='M1 1l5 5 5-5' stroke='%23fefefe' stroke-width='1.5' fill='none' stroke-linecap='round'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right 18px center;
  padding-right: 48px;
  cursor: pointer;
}

.form-select option {
  background-color: #111111;
  color: #fefefe;
}

.country-field {
  display: flex;
  align-items: center;
  gap: 10px;
  cursor: default;
}

.country-flag {
  font-size: 13px;
  font-weight: 600;
  color: rgba(254, 254, 254, 0.5);
}

.country-name {
  flex: 1;
  font-size: 15px;
  color: #fefefe;
}

.country-change {
  font-size: 13px;
  color: rgba(254, 254, 254, 0.4);
  cursor: pointer;
}

.phone-row {
  display: flex;
  gap: 10px;
  align-items: stretch;
}

.phone-prefix {
  background-color: #111111;
  border: 1px solid rgba(254, 254, 254, 0.12);
  border-radius: 10px;
  padding: 16px 14px;
  font-size: 14px;
  font-weight: 600;
  color: rgba(254, 254, 254, 0.6);
  white-space: nowrap;
  display: flex;
  align-items: center;
}

.phone-input {
  flex: 1;
}

.toggle-row {
  display: flex;
  align-items: center;
  gap: 16px;
  padding: 14px 18px;
  background-color: #111111;
  border: 1px solid rgba(254, 254, 254, 0.12);
  border-radius: 10px;
}

.toggle-label {
  font-size: 14px;
  color: rgba(254, 254, 254, 0.7);
  flex: 1;
}

.toggle-option {
  display: flex;
  align-items: center;
  gap: 6px;
  font-size: 14px;
  color: #fefefe;
  cursor: pointer;
}

.toggle-option input[type="radio"] {
  accent-color: #d5fc47;
  width: 16px;
  height: 16px;
  cursor: pointer;
}

.checkbox-row {
  display: flex;
  align-items: flex-start;
  gap: 12px;
  cursor: pointer;
  font-size: 14px;
  color: rgba(254, 254, 254, 0.7);
  line-height: 1.5;
}

.checkbox-row input[type="checkbox"] {
  accent-color: #d5fc47;
  width: 18px;
  height: 18px;
  margin-top: 2px;
  flex-shrink: 0;
  cursor: pointer;
}

.checkbox-row strong {
  color: #d5fc47;
  font-weight: 600;
}

.social-proof {
  display: flex;
  align-items: center;
  gap: 12px;
  justify-content: center;
  padding: 8px 0;
}

.avatar-stack {
  display: flex;
}

.sp-avatar {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background-color: #d5fc47;
  color: #080808;
  font-size: 11px;
  font-weight: 700;
  display: flex;
  align-items: center;
  justify-content: center;
  border: 2px solid #080808;
  margin-left: -8px;
}

.sp-avatar:first-child {
  margin-left: 0;
}

.sp-text {
  font-size: 13px;
  color: rgba(254, 254, 254, 0.6);
}

.cta-btn {
  width: 100%;
  background-color: #d5fc47;
  color: #080808;
  font-size: 16px;
  font-weight: 700;
  padding: 18px 24px;
  border-radius: 999px;
  border: none;
  cursor: pointer;
  transition: opacity 0.2s ease, transform 0.1s ease;
  letter-spacing: 0.01em;
}

.cta-btn:hover {
  opacity: 0.9;
}

.cta-btn:active {
  transform: scale(0.98);
}

.form-trust {
  font-size: 12px;
  color: rgba(254, 254, 254, 0.35);
  text-align: center;
}

.tag-result {
  background-color: #111111;
  border: 1px solid #d5fc47;
  border-radius: 10px;
  padding: 16px 18px;
  font-size: 14px;
  color: #d5fc47;
  font-weight: 600;
  text-align: center;
}
```

---

## Step 6 -- Benefits Section

Four cards in a 2x2 grid showing what the user gets when they join.

**HTML structure:**

```html
<section class="benefits">
  <h2 class="benefits-title">What You'll Get</h2>
  <div class="benefits-grid">

    <div class="benefit-card">
      <div class="benefit-icon">01</div>
      <h3 class="benefit-name">Daily Hacking Tips</h3>
      <p class="benefit-desc">Real techniques, not textbook theory</p>
    </div>

    <div class="benefit-card">
      <div class="benefit-icon">02</div>
      <h3 class="benefit-name">Curated Tools</h3>
      <p class="benefit-desc">Handpicked hacking tools and resources</p>
    </div>

    <div class="benefit-card">
      <div class="benefit-icon">03</div>
      <h3 class="benefit-name">Live Session Invites</h3>
      <p class="benefit-desc">Weekend CTF and bootcamp sessions</p>
    </div>

    <div class="benefit-card">
      <div class="benefit-icon">04</div>
      <h3 class="benefit-name">Free Resources</h3>
      <p class="benefit-desc">Roadmaps, cheatsheets, and lab guides</p>
    </div>

  </div>
</section>
```

**CSS for benefits:**

```css
.benefits {
  max-width: 640px;
  margin: 0 auto;
  padding: 60px 24px;
  text-align: center;
}

.benefits-title {
  font-size: clamp(28px, 6vw, 40px);
  font-weight: 700;
  letter-spacing: -0.02em;
  color: #fefefe;
  margin-bottom: 40px;
}

.benefits-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 16px;
}

.benefit-card {
  background-color: #111111;
  border: 1px solid rgba(254, 254, 254, 0.08);
  border-radius: 16px;
  padding: 28px 24px;
  text-align: left;
  transition: border-color 0.2s ease;
}

.benefit-card:hover {
  border-color: rgba(213, 252, 71, 0.3);
}

.benefit-icon {
  font-size: 11px;
  font-weight: 700;
  color: #d5fc47;
  letter-spacing: 0.08em;
  margin-bottom: 16px;
}

.benefit-name {
  font-size: 15px;
  font-weight: 700;
  color: #fefefe;
  margin-bottom: 8px;
  line-height: 1.3;
}

.benefit-desc {
  font-size: 13px;
  color: rgba(254, 254, 254, 0.5);
  line-height: 1.6;
}
```

---

## Step 7 -- Footer

Simple, minimal, centered footer.

**HTML structure:**

```html
<footer class="footer">
  <p class="footer-privacy">We respect your privacy. No spam, ever.</p>
  <p class="footer-copy">We Anonymous 2026</p>
</footer>
```

**CSS for footer:**

```css
.footer {
  border-top: 1px solid rgba(254, 254, 254, 0.08);
  padding: 40px 24px;
  text-align: center;
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.footer-privacy {
  font-size: 13px;
  color: rgba(254, 254, 254, 0.5);
}

.footer-copy {
  font-size: 12px;
  color: rgba(254, 254, 254, 0.25);
}
```

---

## Step 8 -- Segmentation JavaScript

This is the core logic. It reads the form answers, assigns a segment tag, stores the full data object, and shows the tag on screen.

**Three segment tags:**

| Condition | Tag Assigned |
|---|---|
| Linux No + Student or Exploring | beginner |
| Linux Yes + Student or Exploring | intermediate |
| Professional or Freelancer (any Linux answer) | professional |

**JavaScript:**

```javascript
function handleSubmit() {

  const name = document.getElementById('name').value.trim();
  const email = document.getElementById('email').value.trim();
  const phone = document.getElementById('phone').value.trim();
  const linux = document.querySelector('input[name="linux"]:checked')?.value;
  const role = document.getElementById('role').value;
  const experience = document.getElementById('experience').value;
  const hacksnip = document.getElementById('hacksnip').checked;
  const newsletter = document.getElementById('newsletter').checked;

  if (!name || !email || !phone || !linux || !role || !experience) {
    alert('Please fill in all fields before continuing.');
    return;
  }

  let tag = '';

  if (role === 'professional' || role === 'freelancer') {
    tag = 'professional';
  } else if (linux === 'yes') {
    tag = 'intermediate';
  } else {
    tag = 'beginner';
  }

  const leadData = {
    name,
    email,
    phone,
    linux,
    role,
    experience,
    hacksnip,
    newsletter,
    tag,
    timestamp: new Date().toISOString()
  };

  localStorage.setItem('wa_lead_' + Date.now(), JSON.stringify(leadData));

  console.log('We Anonymous Lead Captured:', leadData);

  const tagMessages = {
    beginner: 'You have been added to the Beginner path. Check your WhatsApp shortly.',
    intermediate: 'You have been added to the Intermediate path. Check your WhatsApp shortly.',
    professional: 'You have been added to the Professional path. Check your WhatsApp shortly.'
  };

  const resultBox = document.getElementById('tag-result');
  resultBox.style.display = 'block';
  resultBox.textContent = tagMessages[tag];

  document.querySelector('.cta-btn').textContent = 'Access Granted';
  document.querySelector('.cta-btn').style.opacity = '0.5';
  document.querySelector('.cta-btn').style.cursor = 'default';
  document.querySelector('.cta-btn').onclick = null;

  resultBox.scrollIntoView({ behavior: 'smooth', block: 'center' });
}
```

---

## Step 9 -- Mobile Responsiveness

Add this at the bottom of your CSS, after all other styles.

```css
@media (max-width: 480px) {

  .top-bar {
    padding: 10px 16px;
  }

  .top-bar-text {
    font-size: 11px;
  }

  .hero {
    padding: 60px 16px 40px;
  }

  .form-section {
    padding: 20px 16px 60px;
  }

  .benefits {
    padding: 40px 16px;
  }

  .benefits-grid {
    grid-template-columns: 1fr 1fr;
    gap: 12px;
  }

  .benefit-card {
    padding: 20px 16px;
  }

  .phone-row {
    flex-direction: row;
  }

}
```

---

## Step 10 -- Final Assembly Order

Assemble all sections inside the body tag in this exact order:

1. Top announcement bar
2. Hero section
3. Form section (id="form")
4. Benefits section
5. Footer
6. Script tag with JavaScript at the very bottom before closing body tag

---

## What to Connect Next

Once the HTML file is working, connect these in order:

1. **Brevo or Mailchimp** -- connect form submission to trigger the right email sequence based on the tag value (beginner, intermediate, professional)
2. **WhatsApp invite link** -- after form submit, redirect or show the correct WhatsApp community join link
3. **Google Sheets or Airtable** -- pipe the lead JSON to a sheet using a free webhook via Make or n8n for a lead database
4. **HackSnip landing page** -- build a separate page for people who checked the HackSnip bootcamp checkbox and route them there after joining the community

---

## Notes

- Replace "Your Name Here" in the founder tag with your actual name before deploying
- Replace the avatar initials in the social proof row with real ones or leave as placeholders
- The localStorage data is for local testing only -- in production connect to a real backend or form service like Brevo, Mailchimp, or Formspark
- Test the form on mobile before deploying -- check that all inputs are tappable and the CTA button is full width
- The tag result message appears below the CTA on submit -- you can later replace this with a redirect to a thank you page
