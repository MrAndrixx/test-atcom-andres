package com.example.atcom.model;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name="odometers")
public class OdometerReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String truckId;
    private LocalDateTime datetime;
    private double odometerReading;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTruckId() {
        return truckId;
    }

    public void setTruckId(String truckId) {
        this.truckId = truckId;
    }

    public LocalDateTime getDatetime() {
        return datetime;
    }

    public void setDatetime(LocalDateTime datetime) {
        this.datetime = datetime;
    }

    public double getOdometerReading() {
        return odometerReading;
    }

    public void setOdometerReading(double odometerReading) {
        this.odometerReading = odometerReading;
    }
}