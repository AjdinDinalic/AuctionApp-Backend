CREATE TABLE "categories"(
    "id" INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "category" varchar(50) NOT NULL,
    "subcategory" varchar(50) NOT NULL
)