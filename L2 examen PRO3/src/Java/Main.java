package Java;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        testDishPrice();
    }

    public static void testDishPrice() {
        Dish dish = new Dish();
        dish.setName("Test Cake");

        Ingredient i1 = new Ingredient();
        i1.setName("Flour");
        i1.setPrice(500.0);
        i1.setCategory(CategoryEnum.OTHER);

        Ingredient i2 = new Ingredient();
        i2.setName("Sugar");
        i2.setPrice(200.0);
        i2.setCategory(CategoryEnum.OTHER);

        List<Ingredient> ingredients = new ArrayList<>();
        ingredients.add(i1);
        ingredients.add(i2);

        dish.setIngredients(ingredients);

        double expectedPrice = 700.0;
        double actualPrice = dish.getDishPrice();

        if (Math.abs(expectedPrice - actualPrice) < 0.001) {
            System.out.println("[OK] " + actualPrice);
        } else {
            System.out.println("[FAIL] " + actualPrice);
        }
    }
}
