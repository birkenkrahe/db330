CREATE TABLE "Lecturer" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL
);

CREATE TABLE "Course" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "title" TEXT NOT NULL,
  "lecturer" INTEGER NOT NULL REFERENCES "Lecturer" ("id") ON DELETE CASCADE
);

CREATE INDEX "idx_course__lecturer" ON "Course" ("lecturer")
