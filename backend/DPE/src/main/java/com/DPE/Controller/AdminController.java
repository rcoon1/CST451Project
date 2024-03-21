package com.DPE.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.DPE.Model.Product;
import com.DPE.service.ProductService;

@RestController
@RequestMapping("/admin")
@CrossOrigin
public class AdminController {
    @Autowired
    private ProductService productService;

    @PostMapping("/addProduct/{sellerId}")
    public ResponseEntity<String> addNewProduct(@RequestBody Product product, @PathVariable int sellerId){
        return new ResponseEntity<String>(productService.addNewProduct(product, sellerId), HttpStatus.CREATED);
    }

    @GetMapping("/allProduct")
    public ResponseEntity<?> getAllProduct(){
        return ResponseEntity.ok(productService.getAllProduct());
    }
    @GetMapping("/getAllProductBySeller/{sellerId}")
    public ResponseEntity<?> getAllProductBySeller( @PathVariable int sellerId){
        return ResponseEntity.ok(productService.getAllProductBySeller(sellerId));
    }

    @DeleteMapping("/deleteProduct/{productId}/{sellerId}")
    public ResponseEntity<String> deleteProduct(@PathVariable int productId, @PathVariable int sellerId){
        return new ResponseEntity<>(productService.deleteProduct(productId,sellerId), HttpStatus.ACCEPTED);
    }

    @GetMapping("/product/{productId}/{sellerId}")
    public ResponseEntity<Product> getProductById(@PathVariable int productId, @PathVariable int sellerId){
        return new ResponseEntity<Product>(productService.getProductById(productId ,sellerId), HttpStatus.OK);
    }

    @PutMapping("/updateProduct/{id}")
    public ResponseEntity<String> updateProduct(@PathVariable int id, int sellerId, @RequestBody Product product){
        return new ResponseEntity<String>(productService.updateProduct(id, sellerId, product), HttpStatus.ACCEPTED);
    }

}
