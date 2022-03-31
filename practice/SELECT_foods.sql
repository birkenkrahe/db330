CREATE TABLE "Episode" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL,
  "season" INTEGER
);

CREATE TABLE "Food_type" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL
);

CREATE TABLE "Food" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL,
  "food_type" INTEGER NOT NULL REFERENCES "Food_type" ("id") ON DELETE CASCADE
);

CREATE INDEX "idx_food__food_type" ON "Food" ("food_type");

CREATE TABLE "Foods_episode" (
  "food" INTEGER NOT NULL REFERENCES "Food" ("id") ON DELETE CASCADE,
  "episode" INTEGER NOT NULL REFERENCES "Episode" ("id") ON DELETE CASCADE,
  PRIMARY KEY ("food", "episode")
);

CREATE INDEX "idx_foods_episode__episode" ON "Foods_episode" ("episode")
