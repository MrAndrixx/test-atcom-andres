package com.example.atcom.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.atcom.model.OdometerReport;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface OdometerReportRepository extends JpaRepository<OdometerReport, Long> {

    List<OdometerReport> findByTruckIdAndDatetimeBetween(String truckId, LocalDateTime start, LocalDateTime end);

    List<OdometerReport> findByDatetimeBetween(LocalDateTime start, LocalDateTime end);
}