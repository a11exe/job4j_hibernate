MERGE INTO USERS (id, name, login, email, phone, password, role) KEY(id)
VALUES (1, 'admin', 'admin', 'admin@mail.com', '+7 930 223333', 'admin', 'ADMIN');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (1, 'LADA (ВАЗ)');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (2, 'Audi');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (3, 'BMW');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (4, 'Cadillac');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (5, 'Chevrolet');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (6, 'Citroen');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (7, 'Daewoo');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (8, 'Dodge');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (9, 'Ford');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (10, 'Honda');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (11, 'Hyundai');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (12, 'Infiniti');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (13, 'Jeep');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (14, 'Kia');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (15, 'Land Rover');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (16, 'Lexus');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (17, 'MINI');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (18, 'Mazda');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (19, 'Mercedes-Benz');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (20, 'Mitsubishi');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (21, 'Nissan');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (22, 'Opel');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (23, 'Peugeot');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (24, 'Porsche');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (25, 'Renault');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (26, 'Skoda');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (27, 'SsangYong');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (28, 'Subaru');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (29, 'Suzuki');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (30, 'Toyota');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (31, 'Volkswagen');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (32, 'Volvo');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (33, 'ГАЗ');

MERGE INTO BRANDS (id, name) KEY(id)
VALUES (34, 'УАЗ');

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1, '1111 Ока', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (2, '2101', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (3, '2102', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (4, '2103', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (5, '2104', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (6, '2105', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (7, '2106', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (8, '2107', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (9, '2108', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (10, '2109', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (11, '21099', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (12, '2110', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (13, '2111', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (14, '2112', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (15, '2113', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (16, '2114', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (17, '2115', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (18, '2120 Надежда', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (19, '2123', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (20, '2129', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (21, '2131 (4x4)', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (22, '2328', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (23, '2329', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (24, 'EL Lada', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (25, 'Kalina', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (26, 'Largus', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (27, 'Priora', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (28, 'Revolution', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (29, 'Vesta', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (30, 'XRAY', 1);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (31, '100', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (32, '200', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (33, '50', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (34, '80', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (35, '90', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (36, '920', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (37, 'A1', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (38, 'A2', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (39, 'A3', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (40, 'A4', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (41, 'A4 allroad', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (42, 'A6', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (43, 'A6 allroad', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (44, 'A8', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (45, 'Cabriolet', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (46, 'Coupe', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (47, 'e-tron', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (48, 'e-tron Sportback', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (49, 'NSU RO 80', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (50, 'Q3', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (51, 'Q3 Sportback', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (52, 'Q7', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (53, 'Q8', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (54, 'Quattro', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (55, 'R8', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (56, 'R8 LMP', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (57, 'S2', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (58, 'S3', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (59, 'S4', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (60, 'S5', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (61, 'S6', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (62, 'S7', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (63, 'S8', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (64, 'SQ2', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (65, 'SQ5', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (66, 'SQ7', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (67, 'SQ8', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (68, 'TT', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (69, 'TT RS', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (70, 'Typ R', 2);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (71, '02 (E10)', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (72, '1M', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (73, '2 серия', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (74, '2 серия Active Tourer', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (75, '2 серия Grand Tourer', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (76, '2000 C/CS', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (77, '3/15', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (78, '315', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (79, '3200', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (80, '321', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (81, '326', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (82, '327', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (83, '340', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (84, '4 серия', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (85, '5 серия', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (86, '501', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (87, '502', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (88, '503', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (89, '507', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (90, '6 серия', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (91, '600', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (92, '7 серия', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (93, '700', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (94, '8 серия', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (95, 'E3', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (96, 'E9', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (97, 'i3', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (98, 'i8', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (99, 'M2', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (100, 'M3', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (101, 'M4', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (102, 'M5', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (103, 'M6', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (104, 'M8', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (105, 'New Class', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (106, 'X2', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (107, 'X3', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (108, 'X3 M', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (109, 'X4', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (110, 'X4 M', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (111, 'X5', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (112, 'X5 M', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (113, 'X6', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (114, 'X6 M', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (115, 'X7', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (116, 'Z1', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (117, 'Z3', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (118, 'Z3 M', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (119, 'Z4 M', 3);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (120, 'Allante', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (121, 'ATS', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (122, 'ATS-V', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (123, 'BLS', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (124, 'Brougham', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (125, 'Catera', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (126, 'CT4', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (127, 'CT4-V', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (128, 'CT5', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (129, 'CT5-V', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (130, 'CT6', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (131, 'CTS', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (132, 'CTS-V', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (133, 'DeVille', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (134, 'DTS', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (135, 'Eldorado', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (136, 'ELR', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (137, 'Escalade', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (138, 'Fleetwood', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (139, 'LSE', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (140, 'Series 62', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (141, 'Sixty Special', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (142, 'STS', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (143, 'XLR', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (144, 'XT4', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (145, 'XT5', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (146, 'XT6', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (147, 'XTS', 4);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (148, 'Alero', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (149, 'Astra', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (150, 'Astro', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (151, 'Avalanche', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (152, 'Aveo', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (153, 'Bel Air', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (154, 'Blazer', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (155, 'Blazer K5', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (156, 'C-10', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (157, 'C/K', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (158, 'Camaro', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (159, 'Caprice', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (160, 'Captiva', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (161, 'Cavalier', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (162, 'Celebrity', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (163, 'Celta', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (164, 'Chevelle', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (165, 'Chevette', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (166, 'Citation', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (167, 'Classic', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (168, 'Cobalt', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (169, 'Colorado', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (170, 'Corsa', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (171, 'Corsica', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (172, 'Corvair', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (173, 'Corvette', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (174, 'Cruze', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (175, 'Cruze (HR)', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (176, 'El Camino', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (177, 'Equinox', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (178, 'Evanda', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (179, 'Express', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (180, 'Fleetmaster', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (181, 'HHR', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (182, 'Impala', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (183, 'Kalos', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (184, 'Lacetti', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (185, 'Lanos', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (186, 'Lumina', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (187, 'Lumina APV', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (188, 'Master', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (189, 'Matiz', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (190, 'Metro', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (191, 'Monte Carlo', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (192, 'MW', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (193, 'Niva', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (194, 'Nubira', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (195, 'Omega', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (196, 'Orlando', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (197, 'Prizm', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (198, 'Rezzo', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (199, 'S-10 Pickup', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (200, 'Silverado', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (201, 'Sonic', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (202, 'Spark', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (203, 'Special DeLuxe', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (204, 'SS', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (205, 'SSR', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (206, 'Starcraft', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (207, 'Suburban', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (208, 'Tacuma', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (209, 'Tahoe', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (210, 'Tavera', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (211, 'Tracker', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (212, 'TrailBlazer', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (213, 'Trans Sport', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (214, 'Uplander', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (215, 'Van', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (216, 'Vectra', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (217, 'Venture', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (218, 'Viva', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (219, 'Volt', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (220, 'Zafira', 5);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (221, '2 CV', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (222, 'AX', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (223, 'Berlingo', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (224, 'BX', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (225, 'C-Crosser', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (226, 'C-Elysee', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (227, 'C-Quatre', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (228, 'C-Triomphe', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (229, 'C-ZERO', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (230, 'C1', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (231, 'C2', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (232, 'C3', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (233, 'C3 Aircross', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (234, 'C4', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (235, 'C4 Aircross', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (236, 'C5 Aircross', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (237, 'C8', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (238, 'CX', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (239, 'DS', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (240, 'DS3', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (241, 'DS4', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (242, 'DS5', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (243, 'Dyane', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (244, 'E-Mehari', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (245, 'Evasion', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (246, 'GS', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (247, 'Jumpy', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (248, 'LN', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (249, 'Nemo', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (250, 'Saxo', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (251, 'SM', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (252, 'SpaceTourer', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (253, 'Traction Avant', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (254, 'Xantia', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (255, 'XM', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (256, 'Xsara', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (257, 'Xsara Picasso', 6);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (258, 'Alpheon', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (259, 'Arcadia', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (260, 'Chairman', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (261, 'Damas', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (262, 'Espero', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (263, 'Evanda', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (264, 'G2X', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (265, 'Gentra', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (266, 'Kalos', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (267, 'Korando', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (268, 'Lacetti', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (269, 'Lacetti Premiere', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (270, 'Leganza', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (271, 'LeMans', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (272, 'Magnus', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (273, 'Matiz', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (274, 'Matiz Creative', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (275, 'Nexia', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (276, 'Nubira', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (277, 'Prince', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (278, 'Racer', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (279, 'Rezzo', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (280, 'Royale', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (281, 'Sens', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (282, 'Tacuma', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (283, 'Tico', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (284, 'Tosca', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (285, 'Winstorm', 7);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (286, '600', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (287, 'Aries', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (288, 'Avenger', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (289, 'Caliber', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (290, 'Caravan', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (291, 'Challenger', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (292, 'Charger', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (293, 'Charger Daytona', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (294, 'Custom Royal', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (295, 'Dakota', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (296, 'Dart', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (297, 'Daytona', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (298, 'Diplomat', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (299, 'Durango', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (300, 'Dynasty', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (301, 'Intrepid', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (302, 'Journey', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (303, 'Lancer', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (304, 'Magnum', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (305, 'Mayfair', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (306, 'Monaco', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (307, 'Neon', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (308, 'Nitro', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (309, 'Omni', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (310, 'Raider', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (311, 'RAM', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (312, 'Ramcharger', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (313, 'Shadow', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (314, 'Spirit', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (315, 'Stealth', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (316, 'Stratus', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (317, 'Viper', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (318, 'WC series', 8);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (319, 'Aerostar', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (320, 'Aspire', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (321, 'B-MAX', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (322, 'Bronco', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (323, 'Bronco-II', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (324, 'C-MAX', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (325, 'Capri', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (326, 'Consul', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (327, 'Contour', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (328, 'Cortina', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (329, 'Cougar', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (330, 'Crown Victoria', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (331, 'Econoline', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (332, 'EcoSport', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (333, 'Edge', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (334, 'Escape', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (335, 'Escort', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (336, 'Escort (North America)', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (337, 'Excursion', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (338, 'Expedition', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (339, 'Explorer', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (340, 'Explorer Sport Trac', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (341, 'Fairlane', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (342, 'Fairmont', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (343, 'Falcon', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (344, 'Festiva', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (345, 'Fiesta', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (346, 'Fiesta ST', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (347, 'Focus', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (348, 'Focus (North America)', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (349, 'Freestar', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (350, 'Freestyle', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (351, 'Fusion', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (352, 'Fusion (North America)', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (353, 'Galaxy', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (354, 'GPA', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (355, 'Granada', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (356, 'Granada (North America)', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (357, 'GT40', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (358, 'Ikon', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (359, 'Ixion', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (360, 'KA', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (361, 'Kuga', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (362, 'Laser', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (363, 'LTD Crown Victoria', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (364, 'Mainline', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (365, 'Maverick', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (366, 'Model A', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (367, 'Mondeo ST', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (368, 'Mustang Mach-E', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (369, 'Probe', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (370, 'Puma', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (371, 'Ranchero', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (372, 'Ranger', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (373, 'Ranger (North America)', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (374, 'Scorpio', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (375, 'Sierra', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (376, 'Spectron', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (377, 'Taunus', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (378, 'Taurus', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (379, 'Taurus X', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (380, 'Tempo', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (381, 'Territory', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (382, 'Thunderbird', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (383, 'Torino', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (384, 'Tourneo Connect', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (385, 'Windstar', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (386, 'Zephyr', 9);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (387, '145', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (388, 'Accord', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (389, 'Acty', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (390, 'Airwave', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (391, 'Ascot', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (392, 'Ascot Innova', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (393, 'Ballade', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (394, 'Beat', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (395, 'Brio', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (396, 'Capa', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (397, 'City', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (398, 'Civic', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (399, 'Civic Ferio', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (400, 'CR-V', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (401, 'CR-X', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (402, 'CR-Z', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (403, 'Crossroad', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (404, 'Crosstour', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (405, 'Domani', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (406, 'Edix', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (407, 'Element', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (408, 'Elysion', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (409, 'FCX Clarity', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (410, 'Fit', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (411, 'Fit Aria', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (412, 'Freed', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (413, 'Grace', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (414, 'Horizon', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (415, 'HR-V', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (416, 'Insight', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (417, 'Inspire', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (418, 'Integra', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (419, 'Integra SJ', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (420, 'Jazz', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (421, 'Lagreat', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (422, 'Legend', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (423, 'Life', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (424, 'Logo', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (425, 'MDX', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (426, 'Mobilio', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (427, 'Mobilio Spike', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (428, 'N-One', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (429, 'N-WGN', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (430, 'N360', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (431, 'NSX', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (432, 'Odyssey', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (433, 'Odyssey (North America)', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (434, 'Partner', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (435, 'Passport', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (436, 'Pilot', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (437, 'Prelude', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (438, 'Quint', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (439, 'Rafaga', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (440, 'Ridgeline', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (441, 'S-MX', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (442, 'S2000', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (443, 'S500', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (444, 'S600', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (445, 'S660', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (446, 'Saber', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (447, 'Shuttle', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (448, 'Stepwgn', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (449, 'Stream', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (450, 'Street', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (451, 'ThatS', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (452, 'Today', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (453, 'Torneo', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (454, 'Vamos', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (455, 'Vezel', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (456, 'Vigor', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (457, 'Z', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (458, 'Zest', 10);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (459, 'Accent', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (460, 'Aslan', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (461, 'Atos', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (462, 'Avante', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (463, 'Azera', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (464, 'Centennial', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (465, 'Click', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (466, 'Coupe', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (467, 'Creta', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (468, 'Dynasty', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (469, 'Elantra', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (470, 'Entourage', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (471, 'EON', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (472, 'Equus', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (473, 'Excel', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (474, 'Galloper', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (475, 'Genesis', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (476, 'Genesis Coupe', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (477, 'Grace', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (478, 'Grand Starex', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (479, 'Grandeur', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (480, 'H-1', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (481, 'H200', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (482, 'i10', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (483, 'i20', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (484, 'i30', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (485, 'i30 N', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (486, 'IONIQ', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (487, 'ix20', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (488, 'ix35', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (489, 'ix55', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (490, 'Kona', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (491, 'Lantra', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (492, 'Lavita', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (493, 'Marcia', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (494, 'Matrix', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (495, 'Maxcruz', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (496, 'Palisade', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (497, 'Pony', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (498, 'Santa Fe', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (499, 'Santamo', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (500, 'Scoupe', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (501, 'Solaris', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (502, 'Sonata', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (503, 'Starex', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (504, 'Stellar', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (505, 'Terracan', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (506, 'Tiburon', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (507, 'Trajet', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (508, 'Tucson', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (509, 'Tuscani', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (510, 'Veloster', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (511, 'Venue', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (512, 'Veracruz', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (513, 'Verna', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (514, 'XG', 11);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (515, 'EX', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (516, 'FX', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (517, 'G', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (518, 'I', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (519, 'J', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (520, 'JX', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (521, 'M', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (522, 'Q', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (523, 'Q30', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (524, 'Q40', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (525, 'Q50', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (526, 'Q60', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (527, 'Q70', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (528, 'QX30', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (529, 'QX4', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (530, 'QX50', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (531, 'QX56', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (532, 'QX60', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (533, 'QX70', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (534, 'QX80', 12);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (535, 'Cherokee', 13);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (536, 'CJ', 13);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (537, 'Commander', 13);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (538, 'Compass', 13);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (539, 'Gladiator', 13);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (540, 'Grand Cherokee', 13);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (541, 'Grand Wagoneer', 13);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (542, 'Wrangler', 13);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (543, 'Avella', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (544, 'Borrego', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (545, 'Cadenza', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (546, 'Capital', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (547, 'Carens', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (548, 'Carnival', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (549, 'Carstar', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (550, 'Ceed', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (551, 'Ceed GT', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (552, 'Clarus', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (553, 'Concord', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (554, 'Elan', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (555, 'Enterprise', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (556, 'Forte', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (557, 'Joice', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (558, 'K3', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (559, 'K5', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (560, 'K7', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (561, 'K9', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (562, 'K900', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (563, 'Lotze', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (564, 'Magentis', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (565, 'Mentor', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (566, 'Mohave', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (567, 'Morning', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (568, 'Niro', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (569, 'Opirus', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (570, 'Optima', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (571, 'Picanto', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (572, 'Potentia', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (573, 'Pregio', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (574, 'Pride', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (575, 'Proceed', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (576, 'Quanlima', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (577, 'Quoris', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (578, 'Ray', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (579, 'Retona', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (580, 'Rio', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (581, 'Sedona', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (582, 'Seltos', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (583, 'Sephia', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (584, 'Shuma', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (585, 'Sorento', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (586, 'Soul', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (587, 'Soul EV', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (588, 'Sportage', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (589, 'Stinger', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (590, 'Stonic', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (591, 'Telluride', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (592, 'Towner', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (593, 'Venga', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (594, 'Visto', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (595, 'X-Trek', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (596, 'XCeed', 14);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (597, 'Defender', 15);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (598, 'Discovery', 15);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (599, 'Discovery Sport', 15);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (600, 'Range Rover', 15);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (601, 'Range Rover Evoque', 15);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (602, 'CT', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (603, 'ES', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (604, 'GS', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (605, 'GS F', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (606, 'HS', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (607, 'IS', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (608, 'IS F', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (609, 'LFA', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (610, 'LS', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (611, 'LX', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (612, 'NX', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (613, 'RC', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (614, 'RC F', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (615, 'SC', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (616, 'UX', 16);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (617, 'Cabrio', 17);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (618, 'Clubman', 17);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (619, 'Countryman', 17);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (620, 'Coupe', 17);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (621, 'Hatch', 17);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (622, 'Paceman', 17);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (623, 'Roadster', 17);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (624, '1000', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (625, '121', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (626, '1300', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (627, '2', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (628, '3', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (629, '3 MPS', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (630, '5', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (631, '6', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (632, '6 MPS', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (633, '626', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (634, '818', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (635, '929', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (636, 'Atenza', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (637, 'Autozam AZ-3', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (638, 'AZ-1', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (639, 'AZ-Offroad', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (640, 'AZ-Wagon', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (641, 'B-series', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (642, 'Biante', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (643, 'Bongo', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (644, 'Bongo Friendee', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (645, 'Capella', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (646, 'Carol', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (647, 'Chantez', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (648, 'Cosmo', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (649, 'Cronos', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (650, 'CX-3', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (651, 'CX-30', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (652, 'CX-5', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (653, 'CX-7', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (654, 'CX-8', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (655, 'CX-9', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (656, 'Demio', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (657, 'Efini MS-6', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (658, 'Eunos 100', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (659, 'Flair', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (660, 'Flair Crossover', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (661, 'Laputa', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (662, 'Luce', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (663, 'Millenia', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (664, 'MPV', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (665, 'MX-3', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (666, 'MX-5', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (667, 'MX-6', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (668, 'Navajo', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (669, 'Persona', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (670, 'Premacy', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (671, 'Proceed', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (672, 'Proceed Levante', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (673, 'R360', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (674, 'Revue', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (675, 'Roadster', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (676, 'RX-7', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (677, 'RX-8', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (678, 'Scrum', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (679, 'Sentia', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (680, 'Spiano', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (681, 'Tribute', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (682, 'Verisa', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (683, 'Xedos 6', 18);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (684, '190 (W201)', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (685, 'A-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (686, 'C-Класс', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (687, 'C-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (688, 'CL-Класс', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (689, 'CL-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (690, 'CLA AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (691, 'CLK-Класс', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (692, 'CLK-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (693, 'CLS AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (694, 'E-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (695, 'G-Класс', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (696, 'G-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (697, 'GL-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (698, 'GLA AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (699, 'GLC', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (700, 'GLC AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (701, 'GLC Coupe AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (702, 'GLE AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (703, 'GLE Coupe AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (704, 'GLS', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (705, 'GLS AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (706, 'M-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (707, 'R-Класс', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (708, 'R-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (709, 'S-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (710, 'SL-Класс', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (711, 'SL-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (712, 'SLC AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (713, 'SLK-Класс AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (714, 'SLS AMG', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (715, 'V-Класс', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (716, 'Vaneo', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (717, 'Viano', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (718, 'Vito', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (719, 'W100', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (720, 'W105', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (721, 'W108', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (722, 'W110', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (723, 'W111', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (724, 'W114', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (725, 'W115', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (726, 'W120', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (727, 'W121', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (728, 'W123', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (729, 'W124', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (730, 'W128', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (731, 'W136', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (732, 'W142', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (733, 'W186', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (734, 'W188', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (735, 'W189', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (736, 'W191', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (737, 'W29', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (738, 'X-Класс', 19);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (739, '3000 GT', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (740, 'Airtrek', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (741, 'Aspire', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (742, 'ASX', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (743, 'Attrage', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (744, 'Bravo', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (745, 'Carisma', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (746, 'Celeste', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (747, 'Challenger', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (748, 'Chariot', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (749, 'Colt', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (750, 'Cordia', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (751, 'Debonair', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (752, 'Delica', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (753, 'Delica D:2', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (754, 'Dignity', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (755, 'Dingo', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (756, 'Dion', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (757, 'Eclipse', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (758, 'Eclipse Cross', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (759, 'Endeavor', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (760, 'Eterna', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (761, 'Freeca', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (762, 'FTO', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (763, 'Galant', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (764, 'Galant Fortis', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (765, 'Grandis', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (766, 'GTO', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (767, 'i', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (768, 'i-MiEV', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (769, 'Jeep J', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (770, 'L300', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (771, 'L400', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (772, 'Lancer', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (773, 'Lancer Cargo', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (774, 'Libero', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (775, 'Minica', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (776, 'Minicab', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (777, 'Mirage', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (778, 'Montero', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (779, 'Montero Sport', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (780, 'Pajero', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (781, 'Pajero iO', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (782, 'Proudia', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (783, 'Raider', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (784, 'RVR', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (785, 'Sapporo', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (786, 'Savrin', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (787, 'Sigma', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (788, 'Space Gear', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (789, 'Strada', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (790, 'Toppo', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (791, 'Town Box', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (792, 'Triton', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (793, 'Xpander', 20);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (794, '100NX', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (795, '180SX', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (796, '200SX', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (797, '240SX', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (798, '280ZX', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (799, '300ZX', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (800, '350Z', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (801, '370Z', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (802, 'AD', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (803, 'Almera', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (804, 'Almera Classic', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (805, 'Armada', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (806, 'Auster', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (807, 'Avenir', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (808, 'Bassara', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (809, 'BE-1', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (810, 'Bluebird', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (811, 'Bluebird Maxima', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (812, 'Cedric', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (813, 'Cefiro', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (814, 'Cherry', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (815, 'Cima', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (816, 'Clipper Rio', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (817, 'Cube', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (818, 'Datsun', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (819, 'Dayz', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (820, 'Dayz Roox', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (821, 'Elgrand', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (822, 'Exa', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (823, 'Expert', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (824, 'Fairlady Z', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (825, 'Fuga', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (826, 'Gloria', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (827, 'GT-R', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (828, 'Homy', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (829, 'Hypermini', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (830, 'Juke', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (831, 'Juke Nismo', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (832, 'Kix', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (833, 'Lafesta', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (834, 'Langley', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (835, 'Largo', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (836, 'Latio', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (837, 'Laurel', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (838, 'Leaf', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (839, 'Leopard', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (840, 'Liberta Villa', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (841, 'Livina', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (842, 'Lucino', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (843, 'March', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (844, 'Maxima', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (845, 'Micra', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (846, 'Mistral', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (847, 'Moco', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (848, 'Murano', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (849, 'Navara (Frontier)', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (850, 'NP300', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (851, 'NV100 Clipper', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (852, 'NV350 Caravan', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (853, 'Pao', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (854, 'Pathfinder', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (855, 'Patrol', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (856, 'Pino', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (857, 'Pixo', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (858, 'Prairie', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (859, 'Presage', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (860, 'Presea', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (861, 'President', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (862, 'Primastar', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (863, 'Primera', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (864, 'Pulsar', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (865, 'Qashqai', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (866, 'Qashqai+2', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (867, 'Quest', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (868, 'Rnessa', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (869, 'Rasheen', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (870, 'Rogue', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (871, 'Roox', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (872, 'Safari', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (873, 'Sentra', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (874, 'Serena', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (875, 'Silvia', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (876, 'Skyline', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (877, 'Skyline Crossover', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (878, 'Stanza', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (879, 'Sunny', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (880, 'Teana', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (881, 'Terra', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (882, 'Terrano', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (883, 'Terrano Regulus', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (884, 'Tino', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (885, 'Titan', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (886, 'Urvan', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (887, 'Vanette', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (888, 'Versa', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (889, 'Wingroad', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (890, 'X-Trail', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (891, 'Xterra', 21);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (892, 'Adam', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (893, 'Admiral', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (894, 'Agila', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (895, 'Ampera', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (896, 'Antara', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (897, 'Ascona', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (898, 'Astra', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (899, 'Astra OPC', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (900, 'Campo', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (901, 'Cascada', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (902, 'Combo', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (903, 'Commodore', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (904, 'Corsa', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (905, 'Corsa OPC', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (906, 'Crossland X', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (907, 'Frontera', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (908, 'Grandland X', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (909, 'Insignia', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (910, 'Insignia OPC', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (911, 'Kapitan', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (912, 'Karl', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (913, 'Manta', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (914, 'Meriva', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (915, 'Meriva OPC', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (916, 'Monterey', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (917, 'Monza', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (918, 'Olympia', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (919, 'Omega', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (920, 'P4', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (921, 'Rekord', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (922, 'Senator', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (923, 'Signum', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (924, 'Sintra', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (925, 'Speedster', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (926, 'Super Six', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (927, 'Vectra', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (928, 'Vectra OPC', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (929, 'Vivaro', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (930, 'Zafira', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (931, 'Zafira Life', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (932, 'Zafira OPC', 22);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (933, '1007', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (934, '104', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (935, '106', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (936, '107', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (937, '108', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (938, '2008', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (939, '201', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (940, '202', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (941, '203', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (942, '204', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (943, '205', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (944, '205 GTi', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (945, '207', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (946, '208', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (947, '208 GTi', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (948, '301', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (949, '304', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (950, '305', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (951, '306', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (952, '307', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (953, '308', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (954, '308 GTi', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (955, '4007', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (956, '4008', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (957, '402', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (958, '403', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (959, '404', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (960, '405', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (961, '406', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (962, '407', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (963, '408', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (964, '5008', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (965, '504', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (966, '505', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (967, '508', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (968, '604', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (969, '605', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (970, '607', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (971, '806', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (972, '807', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (973, 'Bipper', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (974, 'Expert', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (975, 'iOn', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (976, 'Partner', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (977, 'RCZ', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (978, 'Rifter', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (979, 'Traveller', 23);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (980, '356', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (981, '718 Spyder', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (982, '911 GT2', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (983, '911 GT3', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (984, '914', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (985, '918 Spyder', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (986, '928', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (987, '944', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (988, '959', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (989, '968', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (990, 'Boxster', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (991, 'Carrera GT', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (992, 'Cayman', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (993, 'Cayman GT4', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (994, 'Panamera', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (995, 'Taycan', 24);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (996, '10', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (997, '11', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (998, '12', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (999, '14', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1000, '15', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1001, '16', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1002, '17', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1003, '18', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1004, '19', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1005, '20', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1006, '21', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1007, '25', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1008, '30', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1009, '4', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1010, '4CV', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1011, '5', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1012, '6', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1013, '8', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1014, '9', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1015, 'Alaskan', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1016, 'Arkana', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1017, 'Avantime', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1018, 'Captur', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1019, 'Caravelle', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1020, 'Clio', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1021, 'Clio RS', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1022, 'Dokker', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1023, 'Duster', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1024, 'Espace', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1025, 'Floride', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1026, 'Fluence', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1027, 'Fregate', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1028, 'Fuego', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1029, 'Kadjar', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1030, 'Kangoo', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1031, 'Kaptur', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1032, 'Koleos', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1033, 'KWID', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1034, 'Laguna', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1035, 'Latitude', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1036, 'Lodgy', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1037, 'Logan', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1038, 'Megane', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1039, 'Megane RS', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1040, 'Rodeo', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1041, 'Safrane', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1042, 'Sandero', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1043, 'Sandero RS', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1044, 'Sport Spider', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1045, 'Talisman', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1046, 'Trafic', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1047, 'Twingo', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1048, 'Twizy', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1049, 'Vel Satis', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1050, 'Wind', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1051, 'ZOE', 25);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1052, '100 Series', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1053, 'Citigo', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1054, 'Fabia', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1055, 'Fabia RS', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1056, 'Felicia', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1057, 'Forman', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1058, 'Kamiq', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1059, 'Karoq', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1060, 'Kodiaq', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1061, 'Kodiaq RS', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1062, 'Octavia RS', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1063, 'Rapid', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1064, 'Roomster', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1065, 'Scala', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1066, 'Superb', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1067, 'Yeti', 26);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1068, 'Actyon', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1069, 'Actyon Sports', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1070, 'Istana', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1071, 'Kallista', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1072, 'Korando', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1073, 'Korando Family', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1074, 'Musso', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1075, 'Nomad', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1076, 'Rexton', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1077, 'Rodius', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1078, 'Stavic', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1079, 'Tivoli', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1080, 'XLV', 27);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1081, '1000', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1082, '360', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1083, 'Alcyone', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1084, 'Ascent', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1085, 'Baja', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1086, 'Bighorn', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1087, 'Bistro', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1088, 'Brat', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1089, 'BRZ', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1090, 'Dex', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1091, 'Dias Wagon', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1092, 'Exiga', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1093, 'Forester', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1094, 'Impreza', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1095, 'Impreza WRX', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1096, 'Legacy', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1097, 'Legacy Lancaster', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1098, 'Levorg', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1099, 'Libero', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1100, 'Lucra', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1101, 'Outback', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1102, 'Pleo', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1103, 'R1', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1104, 'R2', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1105, 'Rex', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1106, 'Sambar', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1107, 'Stella', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1108, 'SVX', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1109, 'Traviq', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1110, 'Trezia', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1111, 'Tribeca', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1112, 'Vivio', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1113, 'WRX', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1114, 'WRX STi', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1115, 'XV', 28);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1116, 'Aerio', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1117, 'Alto', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1118, 'Alto Lapin', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1119, 'Baleno', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1120, 'Cappuccino', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1121, 'Cara', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1122, 'Carry', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1123, 'Celerio', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1124, 'Cervo', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1125, 'Cultus', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1126, 'Equator', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1127, 'Ertiga', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1128, 'Escudo', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1129, 'Esteem', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1130, 'Every', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1131, 'Forenza', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1132, 'Grand Vitara', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1133, 'Hustler', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1134, 'Ignis', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1135, 'Jimny', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1136, 'Kei', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1137, 'Kizashi', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1138, 'Landy', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1139, 'Liana', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1140, 'MR Wagon', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1141, 'Reno', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1142, 'Samurai', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1143, 'Sidekick', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1144, 'Solio', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1145, 'Spacia', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1146, 'Splash', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1147, 'Swift', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1148, 'SX4', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1149, 'Twin', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1150, 'Verona', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1151, 'Vitara', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1152, 'Wagon R', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1153, 'Wagon R+', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1154, 'X-90', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1155, 'XL7', 29);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1156, '2000GT', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1157, '4Runner', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1158, 'Allex', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1159, 'Allion', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1160, 'Alphard', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1161, 'Altezza', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1162, 'Aqua', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1163, 'Aristo', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1164, 'Aurion', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1165, 'Auris', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1166, 'Avalon', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1167, 'Avanza', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1168, 'Avensis', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1169, 'Avensis Verso', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1170, 'bB', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1171, 'Belta', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1172, 'Blade', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1173, 'Blizzard', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1174, 'Brevis', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1175, 'C-HR', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1176, 'Caldina', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1177, 'Cami', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1178, 'Camry', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1179, 'Camry Solara', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1180, 'Carina E', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1181, 'Celica', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1182, 'Celsior', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1183, 'Century', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1184, 'Chaser', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1185, 'Classic', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1186, 'Comfort', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1187, 'COMS', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1188, 'Corolla', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1189, 'Corolla II', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1190, 'Corona EXiV', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1191, 'Cressida', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1192, 'Cresta', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1193, 'Crown', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1194, 'Crown Majesta', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1195, 'Cynos', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1196, 'Duet', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1197, 'Echo', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1198, 'Esquire', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1199, 'Estima', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1200, 'Etios', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1201, 'FJ Cruiser', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1202, 'FunCargo', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1203, 'Gaia', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1204, 'Grand HiAce', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1205, 'GT86', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1206, 'Harrier', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1207, 'HiAce', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1208, 'Highlander', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1209, 'Hilux', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1210, 'Hilux Surf', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1211, 'Ipsum', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1212, 'iQ', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1213, 'ISis', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1214, 'Ist', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1215, 'Kluger', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1216, 'Land Cruiser', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1217, 'Land Cruiser Prado', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1218, 'Mark X', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1219, 'Mega Cruiser', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1220, 'Model F', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1221, 'MR2', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1222, 'Nadia', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1223, 'Noah', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1224, 'Opa', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1225, 'Origin', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1226, 'Paseo', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1227, 'Passo', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1228, 'Passo Sette', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1229, 'Pixis Epoch', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1230, 'Porte', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1231, 'Premio', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1232, 'Previa', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1233, 'Prius', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1234, 'Prius Alpha', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1235, 'Probox', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1236, 'Progres', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1237, 'Pronard', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1238, 'Publica', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1239, 'Ractis', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1240, 'Raize', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1241, 'Raum', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1242, 'RAV4', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1243, 'Regius', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1244, 'RegiusAce', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1245, 'Rush', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1246, 'Sai', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1247, 'Scepter', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1248, 'Sequoia', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1249, 'Sera', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1250, 'Sienna', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1251, 'Sienta', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1252, 'Soarer', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1253, 'Soluna', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1254, 'Spade', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1255, 'Sparky', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1256, 'Sports 800', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1257, 'Sprinter Carib', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1258, 'Succeed', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1259, 'Supra', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1260, 'Tacoma', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1261, 'Tank', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1262, 'Tercel', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1263, 'Touring HiAce', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1264, 'Urban Cruiser', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1265, 'Vellfire', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1266, 'Venza', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1267, 'Verossa', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1268, 'Verso', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1269, 'Verso-S', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1270, 'Vios', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1271, 'Vista', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1272, 'Vitz', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1273, 'Voltz', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1274, 'Voxy', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1275, 'WiLL', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1276, 'WiLL Cypha', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1277, 'Wish', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1278, 'Yaris', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1279, 'Yaris Verso', 30);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1280, '181', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1281, 'Amarok', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1282, 'Arteon', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1283, 'Atlas', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1284, 'Beetle', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1285, 'Bora', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1286, 'Caddy', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1287, 'California', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1288, 'Caravelle', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1289, 'Corrado', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1290, 'Derby', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1291, 'Eos', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1292, 'EuroVan', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1293, 'Fox', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1294, 'Gol', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1295, 'Golf', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1296, 'Golf Country', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1297, 'Golf Plus', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1298, 'Golf R', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1299, 'Iltis', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1300, 'Jetta', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1301, 'K70', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1302, 'Karmann-Ghia', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1303, 'Lupo', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1304, 'Lupo GTI', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1305, 'Parati', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1306, 'Passat', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1307, 'Passat (North America)', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1308, 'Pointer', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1309, 'Polo', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1310, 'Polo GTI', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1311, 'Routan', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1312, 'Santana', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1313, 'Scirocco', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1314, 'Scirocco R', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1315, 'T-Cross', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1316, 'T-Roc', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1317, 'Taro', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1318, 'Teramont', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1319, 'Tiguan', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1320, 'Touareg', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1321, 'Touran', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1322, 'Transporter', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1323, 'Type 1', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1324, 'Vento', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1325, 'XL1', 31);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1326, '120 Series', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1327, '240 Series', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1328, '460', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1329, '480', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1330, '66', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1331, '740', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1332, '760', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1333, '780', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1334, '850', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1335, '940', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1336, '960', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1337, 'C30', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1338, 'C70', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1339, 'Laplander', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1340, 'P1800', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1341, 'P1900', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1342, 'S40', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1343, 'S60', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1344, 'S60 Cross Country', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1345, 'S80', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1346, 'S90', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1347, 'V40', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1348, 'V40 Cross Country', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1349, 'V60', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1350, 'V60 Cross Country', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1351, 'V90', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1352, 'V90 Cross Country', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1353, 'XC60', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1354, 'XC70', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1355, 'XC90', 32);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1356, '12 ЗИМ', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1357, '21 «Волга»', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1358, '61', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1359, '64', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1360, '67', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1361, '69', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1362, 'Volga Siber', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1363, 'М-20 «Победа»', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1364, 'М1', 33);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1365, '3151', 34);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1366, '3153', 34);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1367, '3159', 34);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1368, '3160', 34);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1369, '3162 Simbir', 34);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1370, 'Hunter', 34);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1371, 'Patriot', 34);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1372, 'Pickup', 34);

MERGE INTO MODELS (id, name, brand_id) KEY(id)
VALUES (1373, 'Астеро', 34);
