// CartItem.java (Place this in the appropriate package, e.g., com.growsmart.entity)
package com.growsmart.entity;

import java.util.List;

import javax.servlet.http.HttpSession;

public class CartUtils {
    public static int getCartSize(HttpSession session) {
        List<Integer> cart = (List<Integer>) session.getAttribute("cart");
        return (cart != null) ? cart.size() : 0;
    }
}
