package dto;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

    private ArrayList<Product> listOfProducts = new ArrayList<Product>();

    public ProductRepository() {
        Product phone = new Product("P1234", "iphone 6s", 800000);
        phone.setDescription("4.7-inch, 1334x750 Renina HD dispaly, 8-megapixel iSight Camera");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Apple");
        phone.setUnitsInStock(1000);
        phone.setCondition("New");

        Product notebook = new Product("P1235", "LG PS 그램", 1500000);
        notebook.setDescription("13.3-inch, IPS LED dispaly, 5rd Generation Intel Core processors");
        notebook.setCategory("Notebook");
        notebook.setUnitsInStock(1000);
        notebook.setCondition("Refurbished");

        Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
        tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, octa-Core processor");
        tablet.setCategory("Tablet");
        tablet.setManufacturer("Samsung");
        tablet.setUnitsInStock(1000);
        tablet.setCondition("Old");

        listOfProducts.add(phone);
        listOfProducts.add(notebook);
        listOfProducts.add(tablet);
    }

    public ArrayList<Product> getAllProducts() {
        return listOfProducts;
    }
}
