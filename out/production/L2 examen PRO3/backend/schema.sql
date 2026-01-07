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

ALTER TABLE Ingredient 
ADD COLUMN IF NOT EXISTS required_quantity DECIMAL(10,2) DEFAULT NULL;

UPDATE Ingredient SET required_quantity = 1.00 WHERE nom = 'Laitue';
UPDATE Ingredient SET required_quantity = 2.00 WHERE nom = 'Tomate';
UPDATE Ingredient SET required_quantity = 0.50 WHERE nom = 'Poulet';
UPDATE Ingredient SET required_quantity = NULL WHERE nom = 'Chocolat';
UPDATE Ingredient SET required_quantity = NULL WHERE nom = 'Beurre';