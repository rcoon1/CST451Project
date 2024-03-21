package com.DPE.service;

import java.util.List;

import com.DPE.Model.Cart_items;

public interface CartItemService {
    public String addProductToCart(int productId, int buyerId);
    public List<Cart_items> cartProducts(int buyerId);
    public String removeProductFromCartById(int productId,  int buyerId);
    public String deleteProductFromCartById(int productId,  int buyerId);
}
