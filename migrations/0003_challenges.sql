CREATE TABLE IF NOT EXISTS challenges (
  code TEXT PRIMARY KEY,
  run_id TEXT NOT NULL UNIQUE REFERENCES runs(id),
  challenger_name TEXT NOT NULL,
  created_at INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS challenges_run_id ON challenges(run_id);
