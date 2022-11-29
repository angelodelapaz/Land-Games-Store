/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Lex Zedrick Lorenzo
 */
public class Storing {
    
    private List<String> cartList = new ArrayList();
    
    public void setter(String content, String quantity)
    {
        cartList.add(content);
        cartList.add(quantity);
    }
    
    public List<String> getter()
    {
        return cartList;
    }
}
