package com.example.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Place {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String imageUrl;
    private double rating;

    // Constructors
    public Place() {}

    public Place(String name, String imageUrl, double rating) {
        this.name = name;
        this.imageUrl = imageUrl;
        this.rating = rating;
    }

    // Getters and Setters
    // ...
}
