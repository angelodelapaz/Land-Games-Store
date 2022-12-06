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
        price.put("Minecraft", 200);
        price.put("GTA V", 150);
        price.put("Fortnite", 300);
        price.put("Learning Factory", 300);
        price.put("Space Haste 2", 350);
        price.put("Wild Earth - Africa", 400);
        price.put("Soccer Story", 450);
        price.put("Fire Commander", 500);
    }
    
    public void imageSetter()
    {
        image.put("Overwatch", "https://assets-prd.ignimgs.com/2022/06/23/overwatch-2-button-fin-1656022954568.jpg");
        image.put("Valorant", "https://m.media-amazon.com/images/M/MV5BNmNhM2NjMTgtNmIyZC00ZmVjLTk4YWItZmZjNGY2NThiNDhkXkEyXkFqcGdeQXVyODU4MDU1NjU@._V1_.jpg");
        image.put("Minecraft", "https://assets-prd.ignimgs.com/2021/12/14/minecraft-1639513933156.jpg");
        image.put("GTA V", "https://hips.hearstapps.com/digitalspyuk.cdnds.net/13/14/gaming-gta5-cover.jpeg");
        image.put("Fortnite", "https://assets1.ignimgs.com/2018/03/06/fortnite---button-1520296499714.jpg");
        image.put("Learning Factory", "https://cdn1.epicgames.com/spt-assets/404ba51e87854be9a9c78dd9463a6183/learning-factory-11zgy.jpg");
        image.put("Space Haste 2", "https://cdn1.epicgames.com/spt-assets/74e00ede2ee448f8a05367edfe381c1b/sapce-haste-2-8f4kh.png");
        image.put("Wild Earth - Africa", "https://cdn1.epicgames.com/spt-assets/35fc4fe5ae3b447395ed440ea01de788/wild-earth--africa-1w3k2.png");
        image.put("Soccer Story", "https://cdn1.epicgames.com/spt-assets/189273af0926444ba7f920d410215696/download-soccer-story-offer-19zsd.jpg");
        image.put("Fire Commander", "https://cdn1.epicgames.com/spt-assets/e72c116d0bfa48348d08dc9fc78b1a4a/download-fire-commander-offer-1w7lt.jpg");
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
