-- Create media_registrations table
CREATE TABLE IF NOT EXISTS media_registrations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL,
  mobile TEXT NOT NULL,
  media_house TEXT NOT NULL,
  platform_type TEXT NOT NULL,
  role TEXT NOT NULL,
  coverage_focus TEXT NOT NULL,
  portfolio_links TEXT,
  additional_notes TEXT,
  form_source TEXT DEFAULT 'media_modal',
  submitted_at TIMESTAMP WITH TIME ZONE,
  user_agent TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable RLS on media_registrations table
ALTER TABLE media_registrations ENABLE ROW LEVEL SECURITY;

-- Create RLS policy to allow anonymous inserts (for form submissions)
CREATE POLICY "Allow anonymous inserts to media_registrations" ON media_registrations
  FOR INSERT
  WITH CHECK (TRUE);

-- Create RLS policy to allow authenticated users to read their own submissions
CREATE POLICY "Allow authenticated users to read media_registrations" ON media_registrations
  FOR SELECT
  USING (auth.role() = 'authenticated');

-- Create an index on email for better query performance
CREATE INDEX idx_media_registrations_email ON media_registrations(email);

-- Create an index on created_at for sorting recent submissions
CREATE INDEX idx_media_registrations_created_at ON media_registrations(created_at DESC);
