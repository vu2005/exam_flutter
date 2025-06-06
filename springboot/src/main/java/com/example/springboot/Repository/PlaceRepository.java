package com.example.springboot.Repository;


import com.example.springboot.model.Place;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlaceRepository extends JpaRepository<Place, Long> {}
