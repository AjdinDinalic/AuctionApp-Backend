CREATE TABLE "countries"(
    "id" INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "name" varchar(100) NOT NULL
);
CREATE TABLE "cities"(
    "id" INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "name" varchar(100) NOT NULL ,
    "country_id" INT NOT NULL ,
    CONSTRAINT "fk_country" FOREIGN KEY ("country_id") REFERENCES "countries" ("id") ON DELETE SET NULL ON UPDATE CASCADE
)