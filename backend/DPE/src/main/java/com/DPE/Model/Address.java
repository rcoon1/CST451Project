package com.DPE.Model;

import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String city;
    private String state;
    private String zipcode;
    private String street;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
}
