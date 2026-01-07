package Java;

import java.util.List;

public class Dish {
    private int id;
    private String name;
    private List<Ingredient> ingredients;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public List<Ingredient> getIngredients() { return ingredients; }
    public void setIngredients(List<Ingredient> ingredients) { this.ingredients = ingredients; }

    public double getDishPrice() {
        if (ingredients == null) {
            return 0;
        }
        double total = 0;
        for (Ingredient ingredient : ingredients) {
            total += ingredient.getPrice();
        }
        return total;
    }
}


