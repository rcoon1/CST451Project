package com.DPE.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DPE.Model.Product;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    public List<Product> findBySellerId(Integer userId);
}
