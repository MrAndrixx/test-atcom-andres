package com.example.atcom;

import com.example.atcom.model.OdometerReport;
import com.example.atcom.repository.OdometerReportRepository;
import com.example.atcom.service.DistanceService;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

public class DistanceServiceTest {
    @Mock
    private OdometerReportRepository repository;

    @InjectMocks
    private DistanceService service;

    public DistanceServiceTest() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testCalculateDistance() {
        String truckId = "truck1";
        LocalDate date = LocalDate.of(2024, 6, 15);

        OdometerReport report1 = new OdometerReport();
        report1.setDatetime(LocalDateTime.of(2024, 6, 15, 8, 0));
        report1.setOdometerReading(100);

        OdometerReport report2 = new OdometerReport();
        report2.setDatetime(LocalDateTime.of(2024, 6, 15, 12, 0));
        report2.setOdometerReading(150);

        OdometerReport report3 = new OdometerReport();
        report3.setDatetime(LocalDateTime.of(2024, 6, 15, 16, 0));
        report3.setOdometerReading(200);

        when(repository.findByTruckIdAndDatetimeBetween(truckId, date.atStartOfDay(), date.atTime(LocalTime.MAX)))
                .thenReturn(Arrays.asList(report1, report2, report3));

        double distance = service.calculateDistance(truckId, date, null);
        assertEquals(100, distance);
    }
}