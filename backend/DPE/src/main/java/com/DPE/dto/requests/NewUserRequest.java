package com.DPE.dto.requests;

import lombok.Getter;

@Getter
public class NewUserRequest {
    private String firstName;
    private String lastName;
    private String userName;
    private String password;
    private String email;
    private String phoneNumber;
    private String city;
    private String state;
    private String zipcode;
    private String street;
    private Boolean isAdmin;

}
