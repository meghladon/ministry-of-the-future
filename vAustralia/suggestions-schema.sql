-- ============================================================
-- MINISTRY OF THE FUTURE — SUGGESTIONS TABLE
-- ============================================================
-- Run this in your Supabase SQL editor (same project as vAustralia).
-- It adds one new table for the roadmap suggestion form on the
-- Ministry of the Future website to write into.
--
-- This is INDEPENDENT of the vAustralia voting tables. You can run
-- it any time without touching anything else.
-- ============================================================

create table if not exists suggestions (
  id          uuid primary key default gen_random_uuid(),
  text        text not null check (length(text) >= 10),
  created_at  timestamptz not null default now()
);

create index if not exists suggestions_created_idx on suggestions(created_at desc);

-- ----- ROW LEVEL SECURITY -----
-- Anyone can submit a suggestion (anonymous, no auth required).
-- Only you (via the Supabase dashboard) can read them.
alter table suggestions enable row level security;

drop policy if exists "suggestions_insert" on suggestions;
drop policy if exists "suggestions_read"   on suggestions;

-- Anonymous browsers can write a suggestion
create policy "suggestions_insert" on suggestions for insert with check (true);

-- Anonymous browsers CANNOT read suggestions back.
-- Deliberately no read policy — keeps suggestions private to you.
-- You read them via the Supabase Table Editor in the dashboard.

-- ============================================================
-- HOW TO READ SUGGESTIONS
-- ============================================================
-- Option A: Supabase dashboard → Table Editor → suggestions
-- Option B: Run this in the SQL editor any time:
--
--   select id, text, created_at from suggestions order by created_at desc;
--
-- Option C: When you've read and actioned a suggestion, delete it:
--
--   delete from suggestions where id = '...';
-- ============================================================
