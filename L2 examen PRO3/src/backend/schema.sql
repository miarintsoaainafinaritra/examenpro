CREATE TYPE dish_type_enum AS ENUM ('START', 'MAIN', 'DESSERT');
CREATE TYPE category_enum AS ENUM ('VEGETABLE', 'ANIMAL', 'MARINE', 'DAIRY', 'OTHER');

CREATE TABLE Dish (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    dish_type dish_type_enum
);

CREATE TABLE Ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price NUMERIC,
    category category_enum,
    id_dish INT,
    FOREIGN KEY (id_dish) REFERENCES Dish(id)
);

