CREATE TABLE IF NOT EXISTS "user" (
  "id"                 SERIAL PRIMARY KEY,
  "name_first"         TEXT,  -- the legal first name, i.e. would appear on DL
  "name_last"          TEXT,
  "email_personal"     TEXT,  -- email that persists after job change
  "email_professional" TEXT   -- email that changes with job change
);

CREATE TABLE IF NOT EXISTS "event" (
  "id"            SERIAL PRIMARY KEY,
  "event_name"    TEXT NOT NULL,
  "start_date"    DATE NOT NULL,
  "end_date"      DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS "class" (
    "id"            SERIAL PRIMARY KEY,
    "school"        TEXT NOT NULL,
    "grade_level"   TEXT,
    "course_name"   TEXT NOT NULL,
    "n_students"    INTEGER
);

CREATE TABLE IF NOT EXISTS "implementation" (
    "id"            SERIAL PRIMARY KEY,
    "class_id"      INTEGER NOT NULL,
    "start_date"    DATE NOT NULL,
    "end_date"      DATE NOT NULL,
    CONSTRAINT "fk_class" FOREIGN KEY ("class_id") REFERENCES "class"
);

CREATE TABLE IF NOT EXISTS "enrollment" (
  "id"          SERIAL PRIMARY KEY,
  "event_id"    INTEGER,
  "user_id"     INTEGER,
  "role"        TEXT,
  "is_enrolled" BOOLEAN NOT NULL DEFAULT TRUE,
  CONSTRAINT "fk_event" FOREIGN KEY ("event_id") REFERENCES "event",
  CONSTRAINT "fk_user"  FOREIGN KEY ("user_id")  REFERENCES "user"
);

CREATE TABLE IF NOT EXISTS "attendance" (
    "id" SERIAL PRIMARY KEY,
    "event_id" INT NOT NULL,
    "user_id" INT NOT NULL,
    "date" DATE NOT NULL,
    "attendance_value" TEXT,
    CONSTRAINT "fk_event" FOREIGN KEY ("event_id") REFERENCES "event" ("id"),
    CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO er1c456;