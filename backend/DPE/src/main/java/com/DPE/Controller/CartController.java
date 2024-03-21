package com.DPE.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.DPE.Dao.CartItemRepository;
import com.DPE.Model.Cart_items;
import com.DPE.service.CartItemService;

import java.util.List;

@RestController
@RequestMapping("/api/v1/user")
@CrossOrigin
public class CartController {
    @Autowired
    private CartItemService cartItemService;
    @Autowired
    private CartItemRepository cartItemRepository;

    @PostMapping("/addProductToCart/{productId}/{buyerId}")
    public ResponseEntity<String> addProductToCart(@PathVariable int  productId, @PathVariable int buyerId){
        return new ResponseEntity<>(cartItemService.addProductToCart(productId, buyerId), HttpStatus.CREATED);
    }

    @GetMapping("/cart_products/{buyerId}")
    public ResponseEntity<List<Cart_items>> cartProducts(@PathVariable int buyerId){
        return new ResponseEntity<>(cartItemService.cartProducts(buyerId), HttpStatus.OK);
    }

    @DeleteMapping("/removeProductFromCartById/{productId}/{buyerId}")
    public ResponseEntity<String> removeProductFromCartById(@PathVariable int productId, @PathVariable int buyerId){
        return new ResponseEntity<>(cartItemService.removeProductFromCartById(productId, buyerId), HttpStatus.ACCEPTED);
    }

    @DeleteMapping("/deleteProductFromCartById/{productId}/{buyerId}")
    public ResponseEntity<String> deleteProductFromCartById(@PathVariable int productId,@PathVariable int buyerId){
        return new ResponseEntity<>(cartItemService.deleteProductFromCartById(productId, buyerId), HttpStatus.ACCEPTED);
    }


    @PostMapping("/demoRemove/{productId}/{buyerId}")
    public Cart_items remove(@PathVariable int productId,@PathVariable int buyerId){
        Cart_items cart_itemsList = cartItemRepository.findByProductIdAndBuyerId(productId,buyerId);
        System.out.println(cart_itemsList);
        return cart_itemsList;
    }


}
