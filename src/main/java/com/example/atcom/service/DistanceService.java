package com.example.atcom.service;

import com.example.atcom.model.OdometerReport;
import com.example.atcom.repository.OdometerReportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

@Service
public class DistanceService {
    @Autowired
    private OdometerReportRepository repository;

    public synchronized double calculateDistance(String truckId, LocalDate startDate, LocalDate endDate) {
        LocalDateTime startOfDay = startDate.atStartOfDay();
        LocalDateTime endOfDay = endDate != null ? endDate.atTime(LocalTime.MAX) : startDate.atTime(LocalTime.MAX);

        List<OdometerReport> reports;
        if(truckId != null){
            reports = repository.findByTruckIdAndDatetimeBetween(truckId, startOfDay, endOfDay);
        }else{
            reports = repository.findByDatetimeBetween(startOfDay, endOfDay);
        }
        reports.sort((r1, r2) -> r1.getDatetime().compareTo(r2.getDatetime()));

        double distance = 0;
        for (int i = 1; i < reports.size(); i++) {
            distance += reports.get(i).getOdometerReading() - reports.get(i - 1).getOdometerReading();
        }
        return distance;
    }

    public synchronized OdometerReport registerOdometer(String truckId, LocalDateTime datetime, double odometerReading) {
        OdometerReport report = new OdometerReport();
        report.setTruckId(truckId);
        report.setDatetime(datetime);
        report.setOdometerReading(odometerReading);

        return repository.save(report);
    }
}