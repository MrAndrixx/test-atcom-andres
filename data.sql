-- Camión 0
SET @base_time = NOW();
SET @base_reading = 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (0, 0, @base_time, 10);
SET @increment = (19 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (1, 0, TIMESTAMPADD(MINUTE, @increment, @base_time), 19);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 19;
SET @increment = (24 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (2, 0, TIMESTAMPADD(MINUTE, @increment, @base_time), 24);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 24;
SET @increment = (31 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (3, 0, TIMESTAMPADD(MINUTE, @increment, @base_time), 31);

-- Camión 1
SET @base_time = NOW();
SET @base_reading = 50;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (4, 1, @base_time, 50);
SET @increment = (55 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (5, 1, TIMESTAMPADD(MINUTE, @increment, @base_time), 55);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 55;
SET @increment = (65 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (6, 1, TIMESTAMPADD(MINUTE, @increment, @base_time), 65);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 65;
SET @increment = (80 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (7, 1, TIMESTAMPADD(MINUTE, @increment, @base_time), 80);

-- Camión 2
SET @base_time = NOW();
SET @base_reading = 100;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (8, 2, @base_time, 100);
SET @increment = (110 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (9, 2, TIMESTAMPADD(MINUTE, @increment, @base_time), 110);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 110;
SET @increment = (130 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (10, 2, TIMESTAMPADD(MINUTE, @increment, @base_time), 130);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 130;
SET @increment = (150 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (11, 2, TIMESTAMPADD(MINUTE, @increment, @base_time), 150);

-- Camión 3
SET @base_time = NOW();
SET @base_reading = 200;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (12, 3, @base_time, 200);
SET @increment = (210 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (13, 3, TIMESTAMPADD(MINUTE, @increment, @base_time), 210);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 210;
SET @increment = (230 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (14, 3, TIMESTAMPADD(MINUTE, @increment, @base_time), 230);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 230;
SET @increment = (260 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (15, 3, TIMESTAMPADD(MINUTE, @increment, @base_time), 260);

-- Camión 4
SET @base_time = NOW();
SET @base_reading = 300;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (16, 4, @base_time, 300);
SET @increment = (320 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (17, 4, TIMESTAMPADD(MINUTE, @increment, @base_time), 320);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 320;
SET @increment = (350 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (18, 4, TIMESTAMPADD(MINUTE, @increment, @base_time), 350);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 350;
SET @increment = (390 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (19, 4, TIMESTAMPADD(MINUTE, @increment, @base_time), 390);

-- Camión 5
SET @base_time = NOW();
SET @base_reading = 400;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (20, 5, @base_time, 400);
SET @increment = (420 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (21, 5, TIMESTAMPADD(MINUTE, @increment, @base_time), 420);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 420;
SET @increment = (450 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (22, 5, TIMESTAMPADD(MINUTE, @increment, @base_time), 450);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 450;
SET @increment = (490 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (23, 5, TIMESTAMPADD(MINUTE, @increment, @base_time), 490);

-- Camión 6
SET @base_time = NOW();
SET @base_reading = 500;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (24, 6, @base_time, 500);
SET @increment = (520 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (25, 6, TIMESTAMPADD(MINUTE, @increment, @base_time), 520);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 520;
SET @increment = (550 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (26, 6, TIMESTAMPADD(MINUTE, @increment, @base_time), 550);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 550;
SET @increment = (590 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (27, 6, TIMESTAMPADD(MINUTE, @increment, @base_time), 590);

-- Camión 7
SET @base_time = NOW();
SET @base_reading = 600;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (28, 7, @base_time, 600);
SET @increment = (620 -@base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (29, 7, TIMESTAMPADD(MINUTE, @increment, @base_time), 620);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 620;
SET @increment = (650 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (30, 7, TIMESTAMPADD(MINUTE, @increment, @base_time), 650);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 650;
SET @increment = (690 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (31, 7, TIMESTAMPADD(MINUTE, @increment, @base_time), 690);

-- Camión 8
SET @base_time = NOW();
SET @base_reading = 700;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (32, 8, @base_time, 700);
SET @increment = (720 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (33, 8, TIMESTAMPADD(MINUTE, @increment, @base_time), 720);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 720;
SET @increment = (750 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (34, 8, TIMESTAMPADD(MINUTE, @increment, @base_time), 750);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 750;
SET @increment = (790 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (35, 8, TIMESTAMPADD(MINUTE, @increment, @base_time), 790);

-- Camión 9
SET @base_time = NOW();
SET @base_reading = 800;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (36, 9, @base_time, 800);
SET @increment = (820 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (37, 9, TIMESTAMPADD(MINUTE, @increment, @base_time), 820);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 820;
SET @increment = (850 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (38, 9, TIMESTAMPADD(MINUTE, @increment, @base_time), 850);
SET @base_time = TIMESTAMPADD(MINUTE, @increment, @base_time);
SET @base_reading = 850;
SET @increment = (890 - @base_reading) * 10;
INSERT INTO odometers (id, truck_id, datetime, odometer_reading) VALUES (39, 9, TIMESTAMPADD(MINUTE, @increment, @base_time), 890);