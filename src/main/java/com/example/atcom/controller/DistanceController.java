package com.example.atcom.controller;

import com.example.atcom.model.OdometerReport;
import com.example.atcom.service.DistanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@RestController
public class DistanceController {
    @Autowired
    private DistanceService service;

    @GetMapping("/distance")
    public ResponseEntity<String> getDistance(@RequestParam String startDate, @BindParam String endDate, @BindParam String truckId) {
        LocalDate localStartDate = LocalDate.parse(startDate);
        LocalDate localEndDate = endDate != null ? LocalDate.parse(endDate) : null;
        double distance = service.calculateDistance(truckId, localStartDate, localEndDate);

        if(truckId != null){
            return ResponseEntity.ok("distancia total recorrida por el camion (" + truckId + "): " + distance);
        }else{
            return ResponseEntity.ok("distancia total recorrida por los camiones: " + distance);
        }
    }

    @PostMapping("/distance")
    public ResponseEntity<String> postDistance(@RequestParam String truckId, @RequestParam String date, @RequestParam double odometerReading) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");
        LocalDateTime dateTime = LocalDateTime.parse(date, formatter);

        OdometerReport report = service.registerOdometer(truckId, dateTime, odometerReading);
        return ResponseEntity.ok("Odómetro guardado con éxito");
    }
}