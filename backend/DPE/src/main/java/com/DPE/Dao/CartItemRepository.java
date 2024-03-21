package com.DPE.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DPE.Model.Cart_items;

public interface CartItemRepository extends JpaRepository<Cart_items, Integer> {
    Cart_items findByProductIdAndBuyerId(Integer product_id, Integer buyer_id);

}
