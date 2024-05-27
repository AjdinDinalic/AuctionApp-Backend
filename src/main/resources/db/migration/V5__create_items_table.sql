CREATE TABLE "items" (
    "id" INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "category_id" INT NOT NULL ,
    "seller_id" INT NOT NULL ,
    "item_status_id" INT NOT NULL ,
    "title" varchar(100) NOT NULL ,
    "description" text NOT NULL ,
    "starting_price" FLOAT NOT NULL ,
    "buyout_price" FLOAT,
    "created_date" date,
    "finish_date" date,
    CONSTRAINT "fk_seller" FOREIGN KEY ("seller_id") REFERENCES "users" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "fk_category" FOREIGN KEY ("category_id") REFERENCES "categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "fk_status" FOREIGN KEY ("item_status_id") REFERENCES "item_status" ("id") ON DELETE SET NULL ON UPDATE CASCADE
)