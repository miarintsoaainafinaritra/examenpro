INSERT INTO Dish (id, name, dish_type) VALUES
(1, 'Salade fraîche', 'START'),
(2, 'Poulet grillé', 'MAIN'),
(3, 'Riz aux légumes', 'MAIN'),
(4, 'Gâteau au chocolat', 'DESSERT'),
(5, 'Salade de fruits', 'DESSERT');

INSERT INTO Ingredient (id, name, price, category, id_dish) VALUES
(1, 'Laitue', 800.00, 'VEGETABLE', 1),
(2, 'Tomate', 600.00, 'VEGETABLE', 1),
(3, 'Poulet', 4500.00, 'ANIMAL', 2),
(4, 'Chocolat', 3000.00, 'OTHER', 4),
(5, 'Beurre', 2500.00, 'DAIRY', 4);

SELECT d.*, i.* 
FROM Dish d 
LEFT JOIN Ingredient i ON d.id = i.id_dish 
WHERE d.id = 1;

SELECT DISTINCT d.* 
FROM Dish d 
JOIN Ingredient i ON d.id = i.id_dish 
WHERE i.name LIKE '%eur%';

SELECT i.* 
FROM Ingredient i 
LEFT JOIN Dish d ON i.id_dish = d.id 
WHERE i.category = 'VEGETABLE';

SELECT COUNT(*) 
FROM Ingredient 
WHERE name = 'Laitue';

ALTER TABLE Ingredient 
ADD COLUMN IF NOT EXISTS required_quantity DECIMAL(10,2) DEFAULT NULL;

UPDATE Ingredient SET required_quantity = 1.00 WHERE nom = 'Laitue';
UPDATE Ingredient SET required_quantity = 2.00 WHERE nom = 'Tomate';
UPDATE Ingredient SET required_quantity = 0.50 WHERE nom = 'Poulet';
UPDATE Ingredient SET required_quantity = NULL WHERE nom = 'Chocolat';
UPDATE Ingredient SET required_quantity = NULL WHERE nom = 'Beurre';
