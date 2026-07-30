# We Anonymous - Funnel Landing Page & Lead Engine

A high-converting, single-page lead capture funnel for **We Anonymous** (India's premier cybersecurity community). Built strictly with HTML5, CSS3, vanilla JavaScript, Google Fonts (Inter), and integrated with **Supabase Database** and **Email Automation System**.

---

## 🎨 Brand Design System
- **Lime (`#d5fc47`)**: Primary CTA buttons, accents, segment tags, active highlights.
- **Black (`#080808` / `#111111`)**: Dark mode canvas background and card surfaces.
- **White (`#fefefe`)**: Clean typography, high-contrast headings, and borders.
- **Typography**: Inter (Google Fonts).

---

## ⚡ Features & Funnel Architecture

1. **Top Announcement Bar**: Fixed banner featuring privacy promise and smooth-scroll navigation link.
2. **Hero Section**: Eyebrow badge, bold main headline, subheadline, and founder branding tag.
3. **Smart Lead Capture Form (`#form`)**:
   - Fields: Name, Email, Country (IN detected), Phone prefix (`+91`), Radio toggle for Linux knowledge, Role selector, Experience selector.
   - Dual Opt-in Checkboxes: HackSnip 7-Day Bootcamp & We Anonymous Weekly Updates.
   - Live Social Proof Avatar Stack (`10,000+ members joined`).
4. **Segmentation Engine**:
   - `beginner`: Linux `No` + `Student` or `Exploring`.
   - `intermediate`: Linux `Yes` + `Student` or `Exploring`.
   - `professional`: `Working Professional` or `Freelancer`.
5. **Database Integration (Supabase)**: Asynchronously persists all submitted leads directly into Supabase.
6. **Email Automation Engine**: Triggers automated welcome email sequence payloads based on lead segment tag.
7. **Local Backup**: Saves leads to browser `localStorage` as a fallback.

---

## 🚀 How to Set Up & Deploy

### Step 1: Configure Supabase Database
1. Go to your [Supabase Dashboard](https://supabase.com).
2. Open the **SQL Editor** -> **New Query**.
3. Copy and paste the contents of [`supabase_setup.sql`](file:///c:/Users/adars/Downloads/Funnel-Weanonymous/supabase_setup.sql) and click **Run**.
4. Go to **Project Settings** -> **API**.
5. Copy your **Project URL** and **anon / public key**.

### Step 2: Configure `index.html`
Open [`index.html`](file:///c:/Users/adars/Downloads/Funnel-Weanonymous/index.html) and locate the `<script>` configuration section near the bottom:

```javascript
const SUPABASE_CONFIG = {
  url: 'https://YOUR_PROJECT_ID.supabase.co',
  anonKey: 'YOUR_SUPABASE_ANON_KEY'
};

const EMAIL_CONFIG = {
  endpoint: 'https://api.resend.com/emails', // Or your webhook endpoint
  apiKey: 're_123456789'
};

const WHATSAPP_CONFIG = {
  groupUrl: 'https://chat.whatsapp.com/YOUR_COMMUNITY_LINK'
};
```

### Step 3: Run & Test Locally
You can test `index.html` by opening it directly in any web browser, or running a local server:

```bash
npx serve .
```

---

## 📧 Email Automation Integration

The landing page includes an extensible email automation handler (`triggerEmailAutomation`). You can connect it to:
- **Resend / Brevo**: Direct API dispatch.
- **Make.com / n8n / Webhooks**: Relay lead JSON payloads to any CRM or email list service.
- **Supabase Database Webhooks**: Trigger an Edge Function on new row insertion into the `leads` table.

---

## 📁 File Directory
- [`index.html`](file:///c:/Users/adars/Downloads/Funnel-Weanonymous/index.html): Complete funnel landing page file.
- [`supabase_setup.sql`](file:///c:/Users/adars/Downloads/Funnel-Weanonymous/supabase_setup.sql): SQL script for Supabase database table, RLS policies, and indexes.
- [`we-anonymous-funnel-info.md`](file:///c:/Users/adars/Downloads/Funnel-Weanonymous/we-anonymous-funnel-info.md): Original specification reference document.
