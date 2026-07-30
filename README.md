# We Anonymous - Funnel Landing Page & Lead Engine

A high-converting, single-page lead capture funnel for We Anonymous (India's premier cybersecurity community). Built strictly with HTML5, CSS3, vanilla JavaScript, Google Fonts (Inter), and integrated with Supabase Database and an Email Automation Handler.

---

## Brand Design System

- **Lime (`#d5fc47`)**: Primary CTA buttons, active accents, selection highlights.
- **Black (`#080808` / `#111111`)**: Dark canvas background and card surfaces.
- **White (`#fefefe`)**: Clean typography, high-contrast headings, and borders.
- **Typography**: Inter (Google Fonts).

---

## Funnel Features & Architecture

1. **Top Announcement Bar**: Fixed banner featuring privacy statement and smooth-scroll navigation link.
2. **Hero Section**: Eyebrow badge ("Free · Cybersecurity Community"), title ("We Anonymous"), subheadline ("Connect with people like you."), value proposition, and community member photo avatars.
3. **Smart Lead Capture Form (`#form`)**:
   - Fields: Name, Email, Country detection indicator (`IN`), Phone prefix (`+91`), Linux knowledge radio toggle, Role selector, Experience selector.
   - Dual Opt-in Checkboxes: HackSnip 7-Day Bootcamp & We Anonymous Weekly Updates.
   - Social Proof Stack: Authentic member avatars with live member count.
4. **Segmentation Engine**:
   - `beginner`: Linux `No` + `Student` or `Exploring`.
   - `intermediate`: Linux `Yes` + `Student` or `Exploring`.
   - `professional`: `Working Professional` or `Freelancer`.
5. **Database Integration**: Asynchronously persists submitted lead payloads to Supabase Database (`public.leads`).
6. **WhatsApp Auto Redirection**: Changes CTA state to "Redirecting to WhatsApp..." on click and sends the user directly to the community group link (`https://chat.whatsapp.com/HSpSgCon0LSKbtT1ptEjzI`).
7. **Local Storage Fallback**: Saves lead payloads to browser `localStorage` as a fallback mechanism.

---

## Security Architecture & Best Practices

1. **Public vs. Private Credentials**:
   - Only the Supabase Project URL (`https://hgasrrhsfvyswinkfvhg.supabase.co`) and **Publishable Key** (`sb_publishable_BzxL4H4Mx-Csc3fph_iiNw_UiVpLUk-`) are exposed client-side.
   - The Supabase Secret Key (`sb_secret_...`) is **never** included in frontend code.

2. **Row Level Security (RLS)**:
   - The `public.leads` table has RLS enabled.
   - Anonymous web users (`anon`) are granted **INSERT** permission ONLY.
   - Anonymous users have **NO SELECT, UPDATE, or DELETE** privileges. This prevents unauthorized web scraping or data dumps of lead information.

3. **Input Validation**:
   - Client-side validation enforces required field completion and regex email format verification prior to database dispatch.

---

## Setup and Deployment Guide

### Database Setup (Supabase)
Run the queries in `supabase_setup.sql` in the Supabase SQL Editor:
1. Creates the `leads` table and performance indexes on `email`, `segment_tag`, and `created_at`.
2. Enables Row Level Security (RLS) with explicit insert policies.
3. Creates the `v_lead_segment_counts` analytics view.

### Local Development
To test locally, serve `index.html` via any static file server:

```bash
npx serve .
```

### Production Deployment
Deploy `index.html` and the `Elements/` asset folder (`Elements/p1.png`, `Elements/p2.png`, `Elements/p3.png`, `Elements/p4.png`) to your hosting provider (Vercel, Netlify, Cloudflare Pages) and configure your custom domain `join.weanonymous.in`.

---

## File Directory

- `index.html`: Complete single-page funnel application file.
- `Elements/`: Directory containing member photo assets (`p1.png`, `p2.png`, `p3.png`, `p4.png`).
- `supabase_setup.sql`: Idempotent SQL setup script for Supabase tables, indexes, and RLS policies.
- `README.md`: System documentation and security guide.
- `we-anonymous-funnel-info.md`: Original specification reference document.
