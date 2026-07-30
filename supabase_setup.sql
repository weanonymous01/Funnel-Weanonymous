-- ========================================================
-- WE ANONYMOUS FUNNEL - SUPABASE DATABASE SETUP SCRIPT
-- ========================================================
-- Run this script inside the Supabase SQL Editor:
-- Project Dashboard -> SQL Editor -> New Query -> Run

-- 1. Create `leads` Table
CREATE TABLE IF NOT EXISTS public.leads (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    phone TEXT NOT NULL,
    linux_knowledge TEXT NOT NULL CHECK (linux_knowledge IN ('yes', 'no')),
    role TEXT NOT NULL CHECK (role IN ('student', 'professional', 'freelancer', 'exploring')),
    experience TEXT NOT NULL CHECK (experience IN ('0', 'less1', '1to3', '3plus')),
    hacksnip_bootcamp BOOLEAN DEFAULT true,
    newsletter_subscribed BOOLEAN DEFAULT true,
    segment_tag TEXT NOT NULL CHECK (segment_tag IN ('beginner', 'intermediate', 'professional')),
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Indexes for Performance & Queries
CREATE INDEX IF NOT EXISTS idx_leads_email ON public.leads(email);
CREATE INDEX IF NOT EXISTS idx_leads_segment_tag ON public.leads(segment_tag);
CREATE INDEX IF NOT EXISTS idx_leads_created_at ON public.leads(created_at DESC);

-- 3. Enable Row Level Security (RLS)
ALTER TABLE public.leads ENABLE ROW LEVEL SECURITY;

-- 4. Create RLS Policy allowing Anonymous HTML Form submissions (INSERT only)
DROP POLICY IF EXISTS "Allow anonymous lead submission" ON public.leads;
CREATE POLICY "Allow anonymous lead submission" 
ON public.leads 
FOR INSERT 
TO anon 
WITH CHECK (true);

-- 5. Create RLS Policy for Admin Dashboard Access (SELECT)
DROP POLICY IF EXISTS "Allow authenticated read access" ON public.leads;
DROP POLICY IF EXISTS "Allow select access for leads" ON public.leads;
CREATE POLICY "Allow select access for leads" 
ON public.leads 
FOR SELECT 
TO anon, authenticated 
USING (true);

-- 6. Create RLS Policy for Unsubscribe Updates (UPDATE)
DROP POLICY IF EXISTS "Allow anonymous unsubscribe" ON public.leads;
CREATE POLICY "Allow anonymous unsubscribe" 
ON public.leads 
FOR UPDATE 
TO anon, authenticated 
USING (true)
WITH CHECK (true);

-- ========================================================
-- HELPER VIEWS FOR LEAD SEGMENTATION ANALYTICS
-- ========================================================

-- View breakdown by Segment Tag
CREATE OR REPLACE VIEW public.v_lead_segment_counts AS
SELECT 
    segment_tag, 
    COUNT(*) AS total_leads,
    COUNT(CASE WHEN hacksnip_bootcamp THEN 1 END) AS bootcamp_interested,
    COUNT(CASE WHEN newsletter_subscribed THEN 1 END) AS newsletter_subscribers
FROM public.leads
GROUP BY segment_tag;

-- Grant permissions to read view
GRANT SELECT ON public.v_lead_segment_counts TO authenticated;
