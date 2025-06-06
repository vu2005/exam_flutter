package com.example.springboot.controller;

import com.example.springboot.Repository.PlaceRepository;
import com.example.springboot.model.Place;
import com.example.springboot.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/places")
@CrossOrigin(origins = "*") // Cho phép gọi từ frontend Flutter
public class PlaceController {

    @Autowired
    private PlaceService placeService;

    @GetMapping("/getAllPlace")
    public List<Place> getAllPlaces() {
        return placeService.getAllPlaces();
    }
}
