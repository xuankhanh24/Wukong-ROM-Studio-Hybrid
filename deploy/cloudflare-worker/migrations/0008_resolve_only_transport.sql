-- Resolution must not depend on a successful CDN byte-range request.
-- Existing single-use claims keep the default probe behavior.
ALTER TABLE wukong_source_transport_claims
    ADD COLUMN resolve_only INTEGER NOT NULL DEFAULT 0 CHECK (resolve_only IN (0, 1));
