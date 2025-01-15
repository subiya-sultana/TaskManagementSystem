CREATE TABLE "tasks" (
  "Sno" SERIAL PRIMARY KEY,
  "task-name" VARCHAR(200) NOT NULL,
  "task-desc" TEXT NOT NULL,
  "due-date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  "priority" INTEGER DEFAULT 4,
  "timestamp" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  "user-id" INTEGER NOT NULL
);

INSERT INTO "tasks" ("Sno", "task-name", "task-desc", "due-date", "priority", "timestamp", "user-id") VALUES
(1, 'Complete the Project Report', 'prepare PPT, write project report, add screenshots of the website', '2025-01-12 18:29:00', 4, '2025-01-12 11:59:09', 1),
(2, 'Host OrganizeU on Render', 'host this application on render', '2025-01-12 18:29:00', 1, '2025-01-12 11:59:53', 1);

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "email" VARCHAR(50) NOT NULL,
  "username" VARCHAR(50) NOT NULL,
  "password" VARCHAR(255) NOT NULL,
  "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

INSERT INTO "users" ("id", "email", "username", "password", "created_at") VALUES
(1, 'admin@gmail.com', 'admin', '$2y$10$BGNMIJ.AClGYKWGHgetJpOeqz7tyean1V9b9bS23RH1HVesywxUf2', '2025-01-12 17:27:31');

ALTER TABLE "tasks"
  ADD CONSTRAINT "test" FOREIGN KEY ("user-id") REFERENCES "users" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
