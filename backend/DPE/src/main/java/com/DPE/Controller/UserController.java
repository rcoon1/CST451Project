package com.DPE.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import com.DPE.dto.requests.NewUserRequest;
import com.DPE.service.UserService;

@RestController
@PreAuthorize("hasRole('ROLE_USER')")
@RequestMapping("/api/v1")
@CrossOrigin
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/signup")
    public ResponseEntity<String> createNewAccount(@RequestBody NewUserRequest newUserRequest){
        return new ResponseEntity<>(userService.createNewAccount(newUserRequest), HttpStatus.CREATED);
    }
}
