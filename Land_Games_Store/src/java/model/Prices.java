/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Lex Zedrick Lorenzo
 */
public class Prices {
    private Map<String, Integer> price = new HashMap<>();
    private Map<String, String> image = new HashMap<>();
    
    public void setter()
    {
        priceSetter();
        imageSetter();
    }
    
    public void priceSetter()
    {
        price.put("Overwatch", 100);
        price.put("Valorant", 50);
    }
    
    public void imageSetter()
    {
        image.put("Overwatch", "https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg");
        image.put("Valorant", "https://m.media-amazon.com/images/M/MV5BNmNhM2NjMTgtNmIyZC00ZmVjLTk4YWItZmZjNGY2NThiNDhkXkEyXkFqcGdeQXVyODU4MDU1NjU@._V1_.jpg");
    }
    
    public Map<String, String> imageGetter()
    {
        return image;
    }
    
    public Map<String, Integer> priceGetter()
    {
        return price;
    }
}
