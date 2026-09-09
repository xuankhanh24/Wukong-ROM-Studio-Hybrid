ALTER TABLE wukong_telegram_users
    ADD COLUMN concurrent_job_limit INTEGER NOT NULL DEFAULT 1
    CHECK (concurrent_job_limit BETWEEN 1 AND 20);

CREATE INDEX IF NOT EXISTS wukong_jobs_owner_active_idx
    ON wukong_jobs(owner_channel, owner_subject, status);

CREATE TRIGGER IF NOT EXISTS wukong_job_user_concurrency_guard
BEFORE INSERT ON wukong_jobs
WHEN NEW.owner_channel = 'telegram'
 AND COALESCE((
     SELECT value FROM wukong_control_plane_metadata WHERE key = 'd1_migration_mode'
 ), '') <> 'migration'
 AND EXISTS (
     SELECT 1
     FROM wukong_telegram_users AS user
     WHERE user.subject = NEW.owner_subject
       AND user.role = 'user'
       AND (
           SELECT COUNT(*)
           FROM wukong_jobs AS job
           WHERE job.owner_channel = 'telegram'
             AND job.owner_subject = NEW.owner_subject
             AND job.status NOT IN ('succeeded', 'failed', 'cancelled')
       ) >= user.concurrent_job_limit
 )
BEGIN
    SELECT RAISE(ABORT, 'user_build_concurrency_limit');
END;
