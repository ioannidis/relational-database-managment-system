-- =======================================================
-- TODO: THA SPASTOUN SE DIKA TOUS ARXEIA
-- =======================================================

-- makes
DROP TABLE IF EXISTS car_makes;

CREATE TABLE car_makes (
  id SERIAL NOT NULL,
  code VARCHAR(60) NOT NULL UNIQUE,
  title VARCHAR(60) NOT NULL,

  PRIMARY KEY (id)
);

INSERT INTO car_makes (code, title) VALUES
('ACURA', 'Acura'),
('ALFA', 'Alfa Romeo'),
('AMC', 'AMC'),
('ASTON', 'Aston Martin'),
('AUDI', 'Audi'),
('AVANTI', 'Avanti'),
('BENTL', 'Bentley'),
('BMW', 'BMW'),
('BUICK', 'Buick'),
('CAD', 'Cadillac'),
('CHEV', 'Chevrolet'),
('CHRY', 'Chrysler'),
('DAEW', 'Daewoo'),
('DAIHAT', 'Daihatsu'),
('DATSUN', 'Datsun'),
('DELOREAN', 'DeLorean'),
('DODGE', 'Dodge'),
('EAGLE', 'Eagle'),
('FER', 'Ferrari'),
('FIAT', 'FIAT'),
('FISK', 'Fisker'),
('FORD', 'Ford'),
('FREIGHT', 'Freightliner'),
('GEO', 'Geo'),
('GMC', 'GMC'),
('HONDA', 'Honda'),
('AMGEN', 'HUMMER'),
('HYUND', 'Hyundai'),
('INFIN', 'Infiniti'),
('ISU', 'Isuzu'),
('JAG', 'Jaguar'),
('JEEP', 'Jeep'),
('KIA', 'Kia'),
('LAM', 'Lamborghini'),
('LAN', 'Lancia'),
('ROV', 'Land Rover'),
('LEXUS', 'Lexus'),
('LINC', 'Lincoln'),
('LOTUS', 'Lotus'),
('MAS', 'Maserati'),
('MAYBACH', 'Maybach'),
('MAZDA', 'Mazda'),
('MCLAREN', 'McLaren'),
('MB', 'Mercedes-Benz'),
('MERC', 'Mercury'),
('MERKUR', 'Merkur'),
('MINI', 'MINI'),
('MIT', 'Mitsubishi'),
('NISSAN', 'Nissan'),
('OLDS', 'Oldsmobile'),
('PEUG', 'Peugeot'),
('PLYM', 'Plymouth'),
('PONT', 'Pontiac'),
('POR', 'Porsche'),
('RAM', 'RAM'),
('REN', 'Renault'),
('RR', 'Rolls-Royce'),
('SAAB', 'Saab'),
('SATURN', 'Saturn'),
('SCION', 'Scion'),
('SMART', 'smart'),
('SRT', 'SRT'),
('STERL', 'Sterling'),
('SUB', 'Subaru'),
('SUZUKI', 'Suzuki'),
('TESLA', 'Tesla'),
('TOYOTA', 'Toyota'),
('TRI', 'Triumph'),
('VOLKS', 'Volkswagen'),
('VOLVO', 'Volvo'),
('YUGO', 'Yugo');

-- models
DROP TABLE IF EXISTS car_models;

CREATE TABLE car_models (
  id SERIAL NOT NULL ,
  make_id INT NOT NULL REFERENCES car_makes(id),
  code VARCHAR(60) NOT NULL ,
  title VARCHAR(60) NOT NULL ,

  PRIMARY KEY (id)
);

  INSERT INTO car_models (make_id, code, title) VALUES
(1, 'CL_MODELS', 'CL Models (4)'),
(1, '2.2CL', ' - 2.2CL'),
(1, '2.3CL', ' - 2.3CL'),
(1, '3.0CL', ' - 3.0CL'),
(1, '3.2CL', ' - 3.2CL'),
(1, 'ILX', 'ILX'),
(1, 'INTEG', 'Integra'),
(1, 'LEGEND', 'Legend'),
(1, 'MDX', 'MDX'),
(1, 'NSX', 'NSX'),
(1, 'RDX', 'RDX'),
(1, 'RL_MODELS', 'RL Models (2)'),
(1, '3.5RL', ' - 3.5 RL'),
(1, 'RL', ' - RL'),
(1, 'RSX', 'RSX'),
(1, 'SLX', 'SLX'),
(1, 'TL_MODELS', 'TL Models (3)'),
(1, '2.5TL', ' - 2.5TL'),
(1, '3.2TL', ' - 3.2TL'),
(1, 'TL', ' - TL'),
(1, 'TSX', 'TSX'),
(1, 'VIGOR', 'Vigor'),
(1, 'ZDX', 'ZDX'),
(1, 'ACUOTH', 'Other Acura Models'),
(2, 'ALFA164', '164'),
(2, 'ALFA8C', '8C Competizione'),
(2, 'ALFAGT', 'GTV-6'),
(2, 'MIL', 'Milano'),
(2, 'SPID', 'Spider'),
(2, 'ALFAOTH', 'Other Alfa Romeo Models'),
(3, 'AMCALLIAN', 'Alliance'),
(3, 'CON', 'Concord'),
(3, 'EAGLE', 'Eagle'),
(3, 'AMCENC', 'Encore'),
(3, 'AMCSPIRIT', 'Spirit'),
(3, 'AMCOTH', 'Other AMC Models'),
(4, 'DB7', 'DB7'),
(4, 'DB9', 'DB9'),
(4, 'DBS', 'DBS'),
(4, 'LAGONDA', 'Lagonda'),
(4, 'RAPIDE', 'Rapide'),
(4, 'V12VANT', 'V12 Vantage'),
(4, 'VANTAGE', 'V8 Vantage'),
(4, 'VANQUISH', 'Vanquish'),
(4, 'VIRAGE', 'Virage'),
(4, 'UNAVAILAST', 'Other Aston Martin Models'),
(5, 'AUDI100', '100'),
(5, 'AUDI200', '200'),
(5, '4000', '4000'),
(5, '5000', '5000'),
(5, '80', '80'),
(5, '90', '90'),
(5, 'A3', 'A3'),
(5, 'A4', 'A4'),
(5, 'A5', 'A5'),
(5, 'A6', 'A6'),
(5, 'A7', 'A7'),
(5, 'A8', 'A8'),
(5, 'ALLRDQUA', 'allroad'),
(5, 'AUDICABRI', 'Cabriolet'),
(5, 'AUDICOUPE', 'Coupe'),
(5, 'Q3', 'Q3'),
(5, 'Q5', 'Q5'),
(5, 'Q7', 'Q7'),
(5, 'QUATTR', 'Quattro'),
(5, 'R8', 'R8'),
(5, 'RS4', 'RS 4'),
(5, 'RS5', 'RS 5'),
(5, 'RS6', 'RS 6'),
(5, 'S4', 'S4'),
(5, 'S5', 'S5'),
(5, 'S6', 'S6'),
(5, 'S7', 'S7'),
(5, 'S8', 'S8'),
(5, 'TT', 'TT'),
(5, 'TTRS', 'TT RS'),
(5, 'TTS', 'TTS'),
(5, 'V8', 'V8 Quattro'),
(5, 'AUDOTH', 'Other Audi Models'),
(6, 'CONVERT', 'Convertible'),
(6, 'COUPEAVANT', 'Coupe'),
(6, 'SEDAN', 'Sedan'),
(6, 'UNAVAILAVA', 'Other Avanti Models'),
(7, 'ARNAGE', 'Arnage'),
(7, 'AZURE', 'Azure'),
(7, 'BROOKLANDS', 'Brooklands'),
(7, 'BENCONT', 'Continental'),
(7, 'CORNICHE', 'Corniche'),
(7, 'BENEIGHT', 'Eight'),
(7, 'BENMUL', 'Mulsanne'),
(7, 'BENTURBO', 'Turbo R'),
(7, 'UNAVAILBEN', 'Other Bentley Models'),
(8, '1_SERIES', '1 Series (3)'),
(8, '128I', ' - 128i'),
(8, '135I', ' - 135i'),
(8, '135IS', ' - 135is'),
(8, '3_SERIES', '3 Series (29)'),
(8, '318I', ' - 318i'),
(8, '318IC', ' - 318iC'),
(8, '318IS', ' - 318iS'),
(8, '318TI', ' - 318ti'),
(8, '320I', ' - 320i'),
(8, '323CI', ' - 323ci'),
(8, '323I', ' - 323i'),
(8, '323IS', ' - 323is'),
(8, '323IT', ' - 323iT'),
(8, '325CI', ' - 325Ci'),
(8, '325E', ' - 325e'),
(8, '325ES', ' - 325es'),
(8, '325I', ' - 325i'),
(8, '325IS', ' - 325is'),
(8, '325IX', ' - 325iX'),
(8, '325XI', ' - 325xi'),
(8, '328CI', ' - 328Ci'),
(8, '328I', ' - 328i'),
(8, '328IS', ' - 328iS'),
(8, '328XI', ' - 328xi'),
(8, '330CI', ' - 330Ci'),
(8, '330I', ' - 330i'),
(8, '330XI', ' - 330xi'),
(8, '335D', ' - 335d'),
(8, '335I', ' - 335i'),
(8, '335IS', ' - 335is'),
(8, '335XI', ' - 335xi'),
(8, 'ACTIVE3', ' - ActiveHybrid 3'),
(8, 'BMW325', ' - 325'),
(8, '5_SERIES', '5 Series (19)'),
(8, '524TD', ' - 524td'),
(8, '525I', ' - 525i'),
(8, '525XI', ' - 525xi'),
(8, '528E', ' - 528e'),
(8, '528I', ' - 528i'),
(8, '528IT', ' - 528iT'),
(8, '528XI', ' - 528xi'),
(8, '530I', ' - 530i'),
(8, '530IT', ' - 530iT'),
(8, '530XI', ' - 530xi'),
(8, '533I', ' - 533i'),
(8, '535I', ' - 535i'),
(8, '535IGT', ' - 535i Gran Turismo'),
(8, '535XI', ' - 535xi'),
(8, '540I', ' - 540i'),
(8, '545I', ' - 545i'),
(8, '550I', ' - 550i'),
(8, '550IGT', ' - 550i Gran Turismo'),
(8, 'ACTIVE5', ' - ActiveHybrid 5'),
(8, '6_SERIES', '6 Series (8)'),
(8, '633CSI', ' - 633CSi'),
(8, '635CSI', ' - 635CSi'),
(8, '640I', ' - 640i'),
(8, '640IGC', ' - 640i Gran Coupe'),
(8, '645CI', ' - 645Ci'),
(8, '650I', ' - 650i'),
(8, '650IGC', ' - 650i Gran Coupe'),
(8, 'L6', ' - L6'),
(8, '7_SERIES', '7 Series (15)'),
(8, '733I', ' - 733i'),
(8, '735I', ' - 735i'),
(8, '735IL', ' - 735iL'),
(8, '740I', ' - 740i'),
(8, '740IL', ' - 740iL'),
(8, '740LI', ' - 740Li'),
(8, '745I', ' - 745i'),
(8, '745LI', ' - 745Li'),
(8, '750I', ' - 750i'),
(8, '750IL', ' - 750iL'),
(8, '750LI', ' - 750Li'),
(8, '760I', ' - 760i'),
(8, '760LI', ' - 760Li'),
(8, 'ACTIVE7', ' - ActiveHybrid 7'),
(8, 'ALPINAB7', ' - Alpina B7'),
(8, '8_SERIES', '8 Series (4)'),
(8, '840CI', ' - 840Ci'),
(8, '850CI', ' - 850Ci'),
(8, '850CSI', ' - 850CSi'),
(8, '850I', ' - 850i'),
(8, 'L_SERIES', 'L Series (1)'),
(8, 'L7', ' - L7'),
(8, 'M_SERIES', 'M Series (8)'),
(8, '1SERIESM', ' - 1 Series M'),
(8, 'BMWMCOUPE', ' - M Coupe'),
(8, 'BMWROAD', ' - M Roadster'),
(8, 'M3', ' - M3'),
(8, 'M5', ' - M5'),
(8, 'M6', ' - M6'),
(8, 'X5M', ' - X5 M'),
(8, 'X6M', ' - X6 M'),
(8, 'X_SERIES', 'X Series (5)'),
(8, 'ACTIVEX6', ' - ActiveHybrid X6'),
(8, 'X1', ' - X1'),
(8, 'X3', ' - X3'),
(8, 'X5', ' - X5'),
(8, 'X6', ' - X6'),
(8, 'Z_SERIES', 'Z Series (3)'),
(8, 'Z3', ' - Z3'),
(8, 'Z4', ' - Z4'),
(8, 'Z8', ' - Z8'),
(8, 'BMWOTH', 'Other BMW Models'),
(9, 'CENT', 'Century'),
(9, 'ELEC', 'Electra'),
(9, 'ENCLAVE', 'Enclave'),
(9, 'BUIENC', 'Encore'),
(9, 'LACROSSE', 'LaCrosse'),
(9, 'LESA', 'Le Sabre'),
(9, 'LUCERNE', 'Lucerne'),
(9, 'PARK', 'Park Avenue'),
(9, 'RAINIER', 'Rainier'),
(9, 'REATTA', 'Reatta'),
(9, 'REG', 'Regal'),
(9, 'RENDEZVOUS', 'Rendezvous'),
(9, 'RIV', 'Riviera'),
(9, 'BUICKROAD', 'Roadmaster'),
(9, 'SKYH', 'Skyhawk'),
(9, 'SKYL', 'Skylark'),
(9, 'SOMER', 'Somerset'),
(9, 'TERRAZA', 'Terraza'),
(9, 'BUVERANO', 'Verano'),
(9, 'BUOTH', 'Other Buick Models'),
(10, 'ALLANT', 'Allante'),
(10, 'ATS', 'ATS'),
(10, 'BROUGH', 'Brougham'),
(10, 'CATERA', 'Catera'),
(10, 'CIMA', 'Cimarron'),
(10, 'CTS', 'CTS'),
(10, 'DEV', 'De Ville'),
(10, 'DTS', 'DTS'),
(10, 'ELDO', 'Eldorado'),
(10, 'ESCALA', 'Escalade'),
(10, 'ESCALAESV', 'Escalade ESV'),
(10, 'EXT', 'Escalade EXT'),
(10, 'FLEE', 'Fleetwood'),
(10, 'SEV', 'Seville'),
(10, 'SRX', 'SRX'),
(10, 'STS', 'STS'),
(10, 'XLR', 'XLR'),
(10, 'XTS', 'XTS'),
(10, 'CADOTH', 'Other Cadillac Models'),
(11, 'ASTRO', 'Astro'),
(11, 'AVALNCH', 'Avalanche'),
(11, 'AVEO', 'Aveo'),
(11, 'AVEO5', 'Aveo5'),
(11, 'BERETT', 'Beretta'),
(11, 'BLAZER', 'Blazer'),
(11, 'CAM', 'Camaro'),
(11, 'CAP', 'Caprice'),
(11, 'CHECAPS', 'Captiva Sport'),
(11, 'CAV', 'Cavalier'),
(11, 'CELE', 'Celebrity'),
(11, 'CHEVETTE', 'Chevette'),
(11, 'CITATION', 'Citation'),
(11, 'COBALT', 'Cobalt'),
(11, 'COLORADO', 'Colorado'),
(11, 'CORSI', 'Corsica'),
(11, 'CORV', 'Corvette'),
(11, 'CRUZE', 'Cruze'),
(11, 'ELCAM', 'El Camino'),
(11, 'EQUINOX', 'Equinox'),
(11, 'G15EXP', 'Express Van'),
(11, 'G10', 'G Van'),
(11, 'HHR', 'HHR'),
(11, 'CHEVIMP', 'Impala'),
(11, 'KODC4500', 'Kodiak C4500'),
(11, 'LUMINA', 'Lumina'),
(11, 'LAPV', 'Lumina APV'),
(11, 'LUV', 'LUV'),
(11, 'MALI', 'Malibu'),
(11, 'CHVMETR', 'Metro'),
(11, 'CHEVMONT', 'Monte Carlo'),
(11, 'NOVA', 'Nova'),
(11, 'CHEVPRIZM', 'Prizm'),
(11, 'CHVST', 'S10 Blazer'),
(11, 'S10PICKUP', 'S10 Pickup'),
(11, 'CHEV150', 'Silverado and other C/K1500'),
(11, 'CHEVC25', 'Silverado and other C/K2500'),
(11, 'CH3500PU', 'Silverado and other C/K3500'),
(11, 'SONIC', 'Sonic'),
(11, 'SPARK', 'Spark'),
(11, 'CHEVSPEC', 'Spectrum'),
(11, 'CHSPRINT', 'Sprint'),
(11, 'SSR', 'SSR'),
(11, 'CHEVSUB', 'Suburban'),
(11, 'TAHOE', 'Tahoe'),
(11, 'TRACKE', 'Tracker'),
(11, 'TRAILBLZ', 'TrailBlazer'),
(11, 'TRAILBZEXT', 'TrailBlazer EXT'),
(11, 'TRAVERSE', 'Traverse'),
(11, 'UPLANDER', 'Uplander'),
(11, 'VENTUR', 'Venture'),
(11, 'VOLT', 'Volt'),
(11, 'CHEOTH', 'Other Chevrolet Models'),
(12, 'CHRYS200', '200'),
(12, '300', '300'),
(12, 'CHRY300', '300M'),
(12, 'ASPEN', 'Aspen'),
(12, 'CARAVAN', 'Caravan'),
(12, 'CIRRUS', 'Cirrus'),
(12, 'CONC', 'Concorde'),
(12, 'CHRYCONQ', 'Conquest'),
(12, 'CORDOBA', 'Cordoba'),
(12, 'CROSSFIRE', 'Crossfire'),
(12, 'ECLASS', 'E Class'),
(12, 'FIFTH', 'Fifth Avenue'),
(12, 'CHRYGRANDV', 'Grand Voyager'),
(12, 'IMPE', 'Imperial'),
(12, 'INTREPID', 'Intrepid'),
(12, 'CHRYLAS', 'Laser'),
(12, 'LEBA', 'LeBaron'),
(12, 'LHS', 'LHS'),
(12, 'CHRYNEON', 'Neon'),
(12, 'NY', 'New Yorker'),
(12, 'NEWPORT', 'Newport'),
(12, 'PACIFICA', 'Pacifica'),
(12, 'CHPROWLE', 'Prowler'),
(12, 'PTCRUIS', 'PT Cruiser'),
(12, 'CHRYSEB', 'Sebring'),
(12, 'CHRYTC', 'TC by Maserati'),
(12, 'TANDC', 'Town & Country'),
(12, 'VOYAGER', 'Voyager'),
(12, 'CHOTH', 'Other Chrysler Models'),
(13, 'LANOS', 'Lanos'),
(13, 'LEGANZA', 'Leganza'),
(13, 'NUBIRA', 'Nubira'),
(13, 'DAEOTH', 'Other Daewoo Models'),
(14, 'CHAR', 'Charade'),
(14, 'ROCKY', 'Rocky'),
(14, 'DAIHOTH', 'Other Daihatsu Models'),
(15, 'DAT200SX', '200SX'),
(15, 'DAT210', '210'),
(15, '280Z', '280ZX'),
(15, '300ZX', '300ZX'),
(15, '310', '310'),
(15, '510', '510'),
(15, '720', '720'),
(15, '810', '810'),
(15, 'DATMAX', 'Maxima'),
(15, 'DATPU', 'Pickup'),
(15, 'PUL', 'Pulsar'),
(15, 'DATSENT', 'Sentra'),
(15, 'STAN', 'Stanza'),
(15, 'DATOTH', 'Other Datsun Models'),
(16, 'DMC12', 'DMC-12'),
(17, '400', '400'),
(17, 'DOD600', '600'),
(17, 'ARI', 'Aries'),
(17, 'AVENGR', 'Avenger'),
(17, 'CALIBER', 'Caliber'),
(17, 'DODCARA', 'Caravan'),
(17, 'CHALLENGER', 'Challenger'),
(17, 'DODCHAR', 'Charger'),
(17, 'DODCOLT', 'Colt'),
(17, 'DODCONQ', 'Conquest'),
(17, 'DODDW', 'D/W Truck'),
(17, 'DAKOTA', 'Dakota'),
(17, 'DODDART', 'Dart'),
(17, 'DAY', 'Daytona'),
(17, 'DIPLOMA', 'Diplomat'),
(17, 'DURANG', 'Durango'),
(17, 'DODDYNA', 'Dynasty'),
(17, 'GRANDCARAV', 'Grand Caravan'),
(17, 'INTRE', 'Intrepid'),
(17, 'JOURNEY', 'Journey'),
(17, 'LANCERDODG', 'Lancer'),
(17, 'MAGNUM', 'Magnum'),
(17, 'MIRADA', 'Mirada'),
(17, 'MONACO', 'Monaco'),
(17, 'DODNEON', 'Neon'),
(17, 'NITRO', 'Nitro'),
(17, 'OMNI', 'Omni'),
(17, 'RAIDER', 'Raider'),
(17, 'RAM1504WD', 'Ram 1500 Truck'),
(17, 'RAM25002WD', 'Ram 2500 Truck'),
(17, 'RAM3502WD', 'Ram 3500 Truck'),
(17, 'RAM4500', 'Ram 4500 Truck'),
(17, 'DODD50', 'Ram 50 Truck'),
(17, 'CV', 'RAM C/V'),
(17, 'RAMSRT10', 'Ram SRT-10'),
(17, 'RAMVANV8', 'Ram Van'),
(17, 'RAMWAGON', 'Ram Wagon'),
(17, 'RAMCGR', 'Ramcharger'),
(17, 'RAMPAGE', 'Rampage'),
(17, 'DODSHAD', 'Shadow'),
(17, 'DODSPIR', 'Spirit'),
(17, 'SPRINTER', 'Sprinter'),
(17, 'SRT4', 'SRT-4'),
(17, 'STREGIS', 'St. Regis'),
(17, 'STEAL', 'Stealth'),
(17, 'STRATU', 'Stratus'),
(17, 'VIPER', 'Viper'),
(17, 'DOOTH', 'Other Dodge Models'),
(18, 'EAGLEMED', 'Medallion'),
(18, 'EAGLEPREM', 'Premier'),
(18, 'SUMMIT', 'Summit'),
(18, 'TALON', 'Talon'),
(18, 'VISION', 'Vision'),
(18, 'EAGOTH', 'Other Eagle Models'),
(19, '308GTB', '308 GTB Quattrovalvole'),
(19, '308TBI', '308 GTBI'),
(19, '308GTS', '308 GTS Quattrovalvole'),
(19, '308TSI', '308 GTSI'),
(19, '328GTB', '328 GTB'),
(19, '328GTS', '328 GTS'),
(19, '348GTB', '348 GTB'),
(19, '348GTS', '348 GTS'),
(19, '348SPI', '348 Spider'),
(19, '348TB', '348 TB'),
(19, '348TS', '348 TS'),
(19, '360', '360'),
(19, '456GT', '456 GT'),
(19, '456MGT', '456M GT'),
(19, '458ITALIA', '458 Italia'),
(19, '512BBI', '512 BBi'),
(19, '512M', '512M'),
(19, '512TR', '512TR'),
(19, '550M', '550 Maranello'),
(19, '575M', '575M Maranello'),
(19, '599GTB', '599 GTB Fiorano'),
(19, '599GTO', '599 GTO'),
(19, '612SCAGLIE', '612 Scaglietti'),
(19, 'FERCALIF', 'California'),
(19, 'ENZO', 'Enzo'),
(19, 'F355', 'F355'),
(19, 'F40', 'F40'),
(19, 'F430', 'F430'),
(19, 'F50', 'F50'),
(19, 'FERFF', 'FF'),
(19, 'MOND', 'Mondial'),
(19, 'TEST', 'Testarossa'),
(19, 'UNAVAILFER', 'Other Ferrari Models'),
(20, '2000', '2000 Spider'),
(20, 'FIAT500', '500'),
(20, 'BERTON', 'Bertone X1/9'),
(20, 'BRAVA', 'Brava'),
(20, 'PININ', 'Pininfarina Spider'),
(20, 'STRADA', 'Strada'),
(20, 'FIATX19', 'X1/9'),
(20, 'UNAVAILFIA', 'Other Fiat Models'),
(21, 'KARMA', 'Karma'),
(22, 'AERO', 'Aerostar'),
(22, 'ASPIRE', 'Aspire'),
(22, 'BRON', 'Bronco'),
(22, 'B2', 'Bronco II'),
(22, 'FOCMAX', 'C-MAX'),
(22, 'FORDCLUB', 'Club Wagon'),
(22, 'CONTOUR', 'Contour'),
(22, 'COURIER', 'Courier'),
(22, 'CROWNVIC', 'Crown Victoria'),
(22, 'E150ECON', 'E-150 and Econoline 150'),
(22, 'E250ECON', 'E-250 and Econoline 250'),
(22, 'E350ECON', 'E-350 and Econoline 350'),
(22, 'EDGE', 'Edge'),
(22, 'ESCAPE', 'Escape'),
(22, 'ESCO', 'Escort'),
(22, 'EXCURSION', 'Excursion'),
(22, 'EXP', 'EXP'),
(22, 'EXPEDI', 'Expedition'),
(22, 'EXPEDIEL', 'Expedition EL'),
(22, 'EXPLOR', 'Explorer'),
(22, 'SPORTTRAC', 'Explorer Sport Trac'),
(22, 'F100', 'F100'),
(22, 'F150PICKUP', 'F150'),
(22, 'F250', 'F250'),
(22, 'F350', 'F350'),
(22, 'F450', 'F450'),
(22, 'FAIRM', 'Fairmont'),
(22, 'FESTIV', 'Festiva'),
(22, 'FIESTA', 'Fiesta'),
(22, 'FIVEHUNDRE', 'Five Hundred'),
(22, 'FLEX', 'Flex'),
(22, 'FOCUS', 'Focus'),
(22, 'FREESTAR', 'Freestar'),
(22, 'FREESTYLE', 'Freestyle'),
(22, 'FUSION', 'Fusion'),
(22, 'GRANADA', 'Granada'),
(22, 'GT', 'GT'),
(22, 'LTD', 'LTD'),
(22, 'MUST', 'Mustang'),
(22, 'PROBE', 'Probe'),
(22, 'RANGER', 'Ranger'),
(22, 'TAURUS', 'Taurus'),
(22, 'TAURUSX', 'Taurus X'),
(22, 'TEMPO', 'Tempo'),
(22, 'TBIRD', 'Thunderbird'),
(22, 'TRANSCONN', 'Transit Connect'),
(22, 'WINDST', 'Windstar'),
(22, 'FORDZX2', 'ZX2 Escort'),
(22, 'FOOTH', 'Other Ford Models'),
(23, 'FRESPRINT', 'Sprinter'),
(24, 'GEOMETRO', 'Metro'),
(24, 'GEOPRIZM', 'Prizm'),
(24, 'SPECT', 'Spectrum'),
(24, 'STORM', 'Storm'),
(24, 'GEOTRACK', 'Tracker'),
(24, 'GEOOTH', 'Other Geo Models'),
(25, 'ACADIA', 'Acadia'),
(25, 'CABALLERO', 'Caballero'),
(25, 'CANYON', 'Canyon'),
(25, 'ENVOY', 'Envoy'),
(25, 'ENVOYXL', 'Envoy XL'),
(25, 'ENVOYXUV', 'Envoy XUV'),
(25, 'JIM', 'Jimmy'),
(25, 'RALLYWAG', 'Rally Wagon'),
(25, 'GMCS15', 'S15 Jimmy'),
(25, 'S15', 'S15 Pickup'),
(25, 'SAFARIGMC', 'Safari'),
(25, 'GMCSAVANA', 'Savana'),
(25, '15SIPU4WD', 'Sierra C/K1500'),
(25, 'GMCC25PU', 'Sierra C/K2500'),
(25, 'GMC3500PU', 'Sierra C/K3500'),
(25, 'SONOMA', 'Sonoma'),
(25, 'SUB', 'Suburban'),
(25, 'GMCSYCLON', 'Syclone'),
(25, 'TERRAIN', 'Terrain'),
(25, 'TOPC4500', 'TopKick C4500'),
(25, 'TYPH', 'Typhoon'),
(25, 'GMCVANDUR', 'Vandura'),
(25, 'YUKON', 'Yukon'),
(25, 'YUKONXL', 'Yukon XL'),
(25, 'GMCOTH', 'Other GMC Models'),
(26, 'ACCORD', 'Accord'),
(26, 'CIVIC', 'Civic'),
(26, 'CRV', 'CR-V'),
(26, 'CRZ', 'CR-Z'),
(26, 'CRX', 'CRX'),
(26, 'CROSSTOUR_MODELS', 'Crosstour and Accord Crosstour Models (2)'),
(26, 'CROSSTOUR', ' - Accord Crosstour'),
(26, 'HONCROSS', ' - Crosstour'),
(26, 'HONDELSOL', 'Del Sol'),
(26, 'ELEMENT', 'Element'),
(26, 'FIT', 'Fit'),
(26, 'INSIGHT', 'Insight'),
(26, 'ODYSSEY', 'Odyssey'),
(26, 'PASSPO', 'Passport'),
(26, 'PILOT', 'Pilot'),
(26, 'PRE', 'Prelude'),
(26, 'RIDGELINE', 'Ridgeline'),
(26, 'S2000', 'S2000'),
(26, 'HONOTH', 'Other Honda Models'),
(27, 'HUMMER', 'H1'),
(27, 'H2', 'H2'),
(27, 'H3', 'H3'),
(27, 'H3T', 'H3T'),
(27, 'AMGOTH', 'Other Hummer Models'),
(28, 'ACCENT', 'Accent'),
(28, 'AZERA', 'Azera'),
(28, 'ELANTR', 'Elantra'),
(28, 'HYUELANCPE', 'Elantra Coupe'),
(28, 'ELANTOUR', 'Elantra Touring'),
(28, 'ENTOURAGE', 'Entourage'),
(28, 'EQUUS', 'Equus'),
(28, 'HYUEXCEL', 'Excel'),
(28, 'GENESIS', 'Genesis'),
(28, 'GENESISCPE', 'Genesis Coupe'),
(28, 'SANTAFE', 'Santa Fe'),
(28, 'SCOUPE', 'Scoupe'),
(28, 'SONATA', 'Sonata'),
(28, 'TIBURO', 'Tiburon'),
(28, 'TUCSON', 'Tucson'),
(28, 'VELOSTER', 'Veloster'),
(28, 'VERACRUZ', 'Veracruz'),
(28, 'XG300', 'XG300'),
(28, 'XG350', 'XG350'),
(28, 'HYUOTH', 'Other Hyundai Models'),
(29, 'EX_MODELS', 'EX Models (2)'),
(29, 'EX35', ' - EX35'),
(29, 'EX37', ' - EX37'),
(29, 'FX_MODELS', 'FX Models (4)'),
(29, 'FX35', ' - FX35'),
(29, 'FX37', ' - FX37'),
(29, 'FX45', ' - FX45'),
(29, 'FX50', ' - FX50'),
(29, 'G_MODELS', 'G Models (4)'),
(29, 'G20', ' - G20'),
(29, 'G25', ' - G25'),
(29, 'G35', ' - G35'),
(29, 'G37', ' - G37'),
(29, 'I_MODELS', 'I Models (2)'),
(29, 'I30', ' - I30'),
(29, 'I35', ' - I35'),
(29, 'J_MODELS', 'J Models (1)'),
(29, 'J30', ' - J30'),
(29, 'JX_MODELS', 'JX Models (1)'),
(29, 'JX35', ' - JX35'),
(29, 'M_MODELS', 'M Models (6)'),
(29, 'M30', ' - M30'),
(29, 'M35', ' - M35'),
(29, 'M35HYBRID', ' - M35h'),
(29, 'M37', ' - M37'),
(29, 'M45', ' - M45'),
(29, 'M56', ' - M56'),
(29, 'Q_MODELS', 'Q Models (1)'),
(29, 'Q45', ' - Q45'),
(29, 'QX_MODELS', 'QX Models (2)'),
(29, 'QX4', ' - QX4'),
(29, 'QX56', ' - QX56'),
(29, 'INFOTH', 'Other Infiniti Models'),
(30, 'AMIGO', 'Amigo'),
(30, 'ASCENDER', 'Ascender'),
(30, 'AXIOM', 'Axiom'),
(30, 'HOMBRE', 'Hombre'),
(30, 'I280', 'i-280'),
(30, 'I290', 'i-290'),
(30, 'I350', 'i-350'),
(30, 'I370', 'i-370'),
(30, 'ISUMARK', 'I-Mark'),
(30, 'ISUIMP', 'Impulse'),
(30, 'OASIS', 'Oasis'),
(30, 'ISUPU', 'Pickup'),
(30, 'RODEO', 'Rodeo'),
(30, 'STYLUS', 'Stylus'),
(30, 'TROOP', 'Trooper'),
(30, 'TRP2', 'Trooper II'),
(30, 'VEHICROSS', 'VehiCROSS'),
(30, 'ISUOTH', 'Other Isuzu Models'),
(31, 'STYPE', 'S-Type'),
(31, 'XTYPE', 'X-Type'),
(31, 'XF', 'XF'),
(31, 'XJ_SERIES', 'XJ Series (10)'),
(31, 'JAGXJ12', ' - XJ12'),
(31, 'JAGXJ6', ' - XJ6'),
(31, 'JAGXJR', ' - XJR'),
(31, 'JAGXJRS', ' - XJR-S'),
(31, 'JAGXJS', ' - XJS'),
(31, 'VANDEN', ' - XJ Vanden Plas'),
(31, 'XJ', ' - XJ'),
(31, 'XJ8', ' - XJ8'),
(31, 'XJ8L', ' - XJ8 L'),
(31, 'XJSPORT', ' - XJ Sport'),
(31, 'XK_SERIES', 'XK Series (3)'),
(31, 'JAGXK8', ' - XK8'),
(31, 'XK', ' - XK'),
(31, 'XKR', ' - XKR'),
(31, 'JAGOTH', 'Other Jaguar Models'),
(32, 'CHER', 'Cherokee'),
(32, 'JEEPCJ', 'CJ'),
(32, 'COMANC', 'Comanche'),
(32, 'COMMANDER', 'Commander'),
(32, 'COMPASS', 'Compass'),
(32, 'JEEPGRAND', 'Grand Cherokee'),
(32, 'GRWAG', 'Grand Wagoneer'),
(32, 'LIBERTY', 'Liberty'),
(32, 'PATRIOT', 'Patriot'),
(32, 'JEEPPU', 'Pickup'),
(32, 'SCRAMBLE', 'Scrambler'),
(32, 'WAGONE', 'Wagoneer'),
(32, 'WRANGLER', 'Wrangler'),
(32, 'JEOTH', 'Other Jeep Models'),
(33, 'AMANTI', 'Amanti'),
(33, 'BORREGO', 'Borrego'),
(33, 'FORTE', 'Forte'),
(33, 'FORTEKOUP', 'Forte Koup'),
(33, 'OPTIMA', 'Optima'),
(33, 'RIO', 'Rio'),
(33, 'RIO5', 'Rio5'),
(33, 'RONDO', 'Rondo'),
(33, 'SEDONA', 'Sedona'),
(33, 'SEPHIA', 'Sephia'),
(33, 'SORENTO', 'Sorento'),
(33, 'SOUL', 'Soul'),
(33, 'SPECTRA', 'Spectra'),
(33, 'SPECTRA5', 'Spectra5'),
(33, 'SPORTA', 'Sportage'),
(33, 'KIAOTH', 'Other Kia Models'),
(34, 'AVENT', 'Aventador'),
(34, 'COUNT', 'Countach'),
(34, 'DIABLO', 'Diablo'),
(34, 'GALLARDO', 'Gallardo'),
(34, 'JALPA', 'Jalpa'),
(34, 'LM002', 'LM002'),
(34, 'MURCIELAGO', 'Murcielago'),
(34, 'UNAVAILLAM', 'Other Lamborghini Models'),
(35, 'BETA', 'Beta'),
(35, 'ZAGATO', 'Zagato'),
(35, 'UNAVAILLAN', 'Other Lancia Models'),
(36, 'DEFEND', 'Defender'),
(36, 'DISCOV', 'Discovery'),
(36, 'FRELNDR', 'Freelander'),
(36, 'LR2', 'LR2'),
(36, 'LR3', 'LR3'),
(36, 'LR4', 'LR4'),
(36, 'RANGE', 'Range Rover'),
(36, 'EVOQUE', 'Range Rover Evoque'),
(36, 'RANGESPORT', 'Range Rover Sport'),
(36, 'ROVOTH', 'Other Land Rover Models'),
(37, 'CT_MODELS', 'CT Models (1)'),
(37, 'CT200H', ' - CT 200h'),
(37, 'ES_MODELS', 'ES Models (5)'),
(37, 'ES250', ' - ES 250'),
(37, 'ES300', ' - ES 300'),
(37, 'ES300H', ' - ES 300h'),
(37, 'ES330', ' - ES 330'),
(37, 'ES350', ' - ES 350'),
(37, 'GS_MODELS', 'GS Models (6)'),
(37, 'GS300', ' - GS 300'),
(37, 'GS350', ' - GS 350'),
(37, 'GS400', ' - GS 400'),
(37, 'GS430', ' - GS 430'),
(37, 'GS450H', ' - GS 450h'),
(37, 'GS460', ' - GS 460'),
(37, 'GX_MODELS', 'GX Models (2)'),
(37, 'GX460', ' - GX 460'),
(37, 'GX470', ' - GX 470'),
(37, 'HS_MODELS', 'HS Models (1)'),
(37, 'HS250H', ' - HS 250h'),
(37, 'IS_MODELS', 'IS Models (6)'),
(37, 'IS250', ' - IS 250'),
(37, 'IS250C', ' - IS 250C'),
(37, 'IS300', ' - IS 300'),
(37, 'IS350', ' - IS 350'),
(37, 'IS350C', ' - IS 350C'),
(37, 'ISF', ' - IS F'),
(37, 'LEXLFA', 'LFA'),
(37, 'LS_MODELS', 'LS Models (4)'),
(37, 'LS400', ' - LS 400'),
(37, 'LS430', ' - LS 430'),
(37, 'LS460', ' - LS 460'),
(37, 'LS600H', ' - LS 600h'),
(37, 'LX_MODELS', 'LX Models (3)'),
(37, 'LX450', ' - LX 450'),
(37, 'LX470', ' - LX 470'),
(37, 'LX570', ' - LX 570'),
(37, 'RX_MODELS', 'RX Models (5)'),
(37, 'RX300', ' - RX 300'),
(37, 'RX330', ' - RX 330'),
(37, 'RX350', ' - RX 350'),
(37, 'RX400H', ' - RX 400h'),
(37, 'RX450H', ' - RX 450h'),
(37, 'SC_MODELS', 'SC Models (3)'),
(37, 'SC300', ' - SC 300'),
(37, 'SC400', ' - SC 400'),
(37, 'SC430', ' - SC 430'),
(37, 'LEXOTH', 'Other Lexus Models'),
(38, 'AVIATOR', 'Aviator'),
(38, 'BLKWOOD', 'Blackwood'),
(38, 'CONT', 'Continental'),
(38, 'LSLINCOLN', 'LS'),
(38, 'MARKLT', 'Mark LT'),
(38, 'MARK6', 'Mark VI'),
(38, 'MARK7', 'Mark VII'),
(38, 'MARK8', 'Mark VIII'),
(38, 'MKS', 'MKS'),
(38, 'MKT', 'MKT'),
(38, 'MKX', 'MKX'),
(38, 'MKZ', 'MKZ'),
(38, 'NAVIGA', 'Navigator'),
(38, 'NAVIGAL', 'Navigator L'),
(38, 'LINCTC', 'Town Car'),
(38, 'ZEPHYR', 'Zephyr'),
(38, 'LINOTH', 'Other Lincoln Models'),
(39, 'ELAN', 'Elan'),
(39, 'LOTELISE', 'Elise'),
(39, 'ESPRIT', 'Esprit'),
(39, 'EVORA', 'Evora'),
(39, 'EXIGE', 'Exige'),
(39, 'UNAVAILLOT', 'Other Lotus Models'),
(40, '430', '430'),
(40, 'BITRBO', 'Biturbo'),
(40, 'COUPEMAS', 'Coupe'),
(40, 'GRANSPORT', 'GranSport'),
(40, 'GRANTURISM', 'GranTurismo'),
(40, 'QP', 'Quattroporte'),
(40, 'SPYDER', 'Spyder'),
(40, 'UNAVAILMAS', 'Other Maserati Models'),
(41, '57MAYBACH', '57'),
(41, '62MAYBACH', '62'),
(41, 'UNAVAILMAY', 'Other Maybach Models'),
(42, 'MAZDA323', '323'),
(42, 'MAZDA626', '626'),
(42, '929', '929'),
(42, 'B-SERIES', 'B-Series Pickup'),
(42, 'CX-5', 'CX-5'),
(42, 'CX-7', 'CX-7'),
(42, 'CX-9', 'CX-9'),
(42, 'GLC', 'GLC'),
(42, 'MAZDA2', 'MAZDA2'),
(42, 'MAZDA3', 'MAZDA3'),
(42, 'MAZDA5', 'MAZDA5'),
(42, 'MAZDA6', 'MAZDA6'),
(42, 'MAZDASPD3', 'MAZDASPEED3'),
(42, 'MAZDASPD6', 'MAZDASPEED6'),
(42, 'MIATA', 'Miata MX5'),
(42, 'MILL', 'Millenia'),
(42, 'MPV', 'MPV'),
(42, 'MX3', 'MX3'),
(42, 'MX6', 'MX6'),
(42, 'NAVAJO', 'Navajo'),
(42, 'PROTE', 'Protege'),
(42, 'PROTE5', 'Protege5'),
(42, 'RX7', 'RX-7'),
(42, 'RX8', 'RX-8'),
(42, 'TRIBUTE', 'Tribute'),
(42, 'MAZOTH', 'Other Mazda Models'),
(43, 'MP4', 'MP4-12C'),
(44, '190_CLASS', '190 Class (2)'),
(44, '190D', ' - 190D'),
(44, '190E', ' - 190E'),
(44, '240_CLASS', '240 Class (1)'),
(44, '240D', ' - 240D'),
(44, '300_CLASS_E_CLASS', '300 Class / E Class (6)'),
(44, '300CD', ' - 300CD'),
(44, '300CE', ' - 300CE'),
(44, '300D', ' - 300D'),
(44, '300E', ' - 300E'),
(44, '300TD', ' - 300TD'),
(44, '300TE', ' - 300TE'),
(44, 'C_CLASS', 'C Class (13)'),
(44, 'C220', ' - C220'),
(44, 'C230', ' - C230'),
(44, 'C240', ' - C240'),
(44, 'C250', ' - C250'),
(44, 'C280', ' - C280'),
(44, 'C300', ' - C300'),
(44, 'C320', ' - C320'),
(44, 'C32AMG', ' - C32 AMG'),
(44, 'C350', ' - C350'),
(44, 'C36AMG', ' - C36 AMG'),
(44, 'C43AMG', ' - C43 AMG'),
(44, 'C55AMG', ' - C55 AMG'),
(44, 'C63AMG', ' - C63 AMG'),
(44, 'CL_CLASS', 'CL Class (6)'),
(44, 'CL500', ' - CL500'),
(44, 'CL550', ' - CL550'),
(44, 'CL55AMG', ' - CL55 AMG'),
(44, 'CL600', ' - CL600'),
(44, 'CL63AMG', ' - CL63 AMG'),
(44, 'CL65AMG', ' - CL65 AMG'),
(44, 'CLK_CLASS', 'CLK Class (7)'),
(44, 'CLK320', ' - CLK320'),
(44, 'CLK350', ' - CLK350'),
(44, 'CLK430', ' - CLK430'),
(44, 'CLK500', ' - CLK500'),
(44, 'CLK550', ' - CLK550'),
(44, 'CLK55AMG', ' - CLK55 AMG'),
(44, 'CLK63AMG', ' - CLK63 AMG'),
(44, 'CLS_CLASS', 'CLS Class (4)'),
(44, 'CLS500', ' - CLS500'),
(44, 'CLS550', ' - CLS550'),
(44, 'CLS55AMG', ' - CLS55 AMG'),
(44, 'CLS63AMG', ' - CLS63 AMG'),
(44, 'E_CLASS', 'E Class (18)'),
(44, '260E', ' - 260E'),
(44, '280CE', ' - 280CE'),
(44, '280E', ' - 280E'),
(44, '400E', ' - 400E'),
(44, '500E', ' - 500E'),
(44, 'E300', ' - E300'),
(44, 'E320', ' - E320'),
(44, 'E320BLUE', ' - E320 Bluetec'),
(44, 'E320CDI', ' - E320 CDI'),
(44, 'E350', ' - E350'),
(44, 'E350BLUE', ' - E350 Bluetec'),
(44, 'E400', ' - E400 Hybrid'),
(44, 'E420', ' - E420'),
(44, 'E430', ' - E430'),
(44, 'E500', ' - E500'),
(44, 'E550', ' - E550'),
(44, 'E55AMG', ' - E55 AMG'),
(44, 'E63AMG', ' - E63 AMG'),
(44, 'G_CLASS', 'G Class (4)'),
(44, 'G500', ' - G500'),
(44, 'G550', ' - G550'),
(44, 'G55AMG', ' - G55 AMG'),
(44, 'G63AMG', ' - G63 AMG'),
(44, 'GL_CLASS', 'GL Class (5)'),
(44, 'GL320BLUE', ' - GL320 Bluetec'),
(44, 'GL320CDI', ' - GL320 CDI'),
(44, 'GL350BLUE', ' - GL350 Bluetec'),
(44, 'GL450', ' - GL450'),
(44, 'GL550', ' - GL550'),
(44, 'GLK_CLASS', 'GLK Class (1)'),
(44, 'GLK350', ' - GLK350'),
(44, 'M_CLASS', 'M Class (11)'),
(44, 'ML320', ' - ML320'),
(44, 'ML320BLUE', ' - ML320 Bluetec'),
(44, 'ML320CDI', ' - ML320 CDI'),
(44, 'ML350', ' - ML350'),
(44, 'ML350BLUE', ' - ML350 Bluetec'),
(44, 'ML430', ' - ML430'),
(44, 'ML450HY', ' - ML450 Hybrid'),
(44, 'ML500', ' - ML500'),
(44, 'ML550', ' - ML550'),
(44, 'ML55AMG', ' - ML55 AMG'),
(44, 'ML63AMG', ' - ML63 AMG'),
(44, 'R_CLASS', 'R Class (6)'),
(44, 'R320BLUE', ' - R320 Bluetec'),
(44, 'R320CDI', ' - R320 CDI'),
(44, 'R350', ' - R350'),
(44, 'R350BLUE', ' - R350 Bluetec'),
(44, 'R500', ' - R500'),
(44, 'R63AMG', ' - R63 AMG'),
(44, 'S_CLASS', 'S Class (30)'),
(44, '300SD', ' - 300SD'),
(44, '300SDL', ' - 300SDL'),
(44, '300SE', ' - 300SE'),
(44, '300SEL', ' - 300SEL'),
(44, '350SD', ' - 350SD'),
(44, '350SDL', ' - 350SDL'),
(44, '380SE', ' - 380SE'),
(44, '380SEC', ' - 380SEC'),
(44, '380SEL', ' - 380SEL'),
(44, '400SE', ' - 400SE'),
(44, '400SEL', ' - 400SEL'),
(44, '420SEL', ' - 420SEL'),
(44, '500SEC', ' - 500SEC'),
(44, '500SEL', ' - 500SEL'),
(44, '560SEC', ' - 560SEC'),
(44, '560SEL', ' - 560SEL'),
(44, '600SEC', ' - 600SEC'),
(44, '600SEL', ' - 600SEL'),
(44, 'S320', ' - S320'),
(44, 'S350', ' - S350'),
(44, 'S350BLUE', ' - S350 Bluetec'),
(44, 'S400HY', ' - S400 Hybrid'),
(44, 'S420', ' - S420'),
(44, 'S430', ' - S430'),
(44, 'S500', ' - S500'),
(44, 'S550', ' - S550'),
(44, 'S55AMG', ' - S55 AMG'),
(44, 'S600', ' - S600'),
(44, 'S63AMG', ' - S63 AMG'),
(44, 'S65AMG', ' - S65 AMG'),
(44, 'SL_CLASS', 'SL Class (13)'),
(44, '300SL', ' - 300SL'),
(44, '380SL', ' - 380SL'),
(44, '380SLC', ' - 380SLC'),
(44, '500SL', ' - 500SL'),
(44, '560SL', ' - 560SL'),
(44, '600SL', ' - 600SL'),
(44, 'SL320', ' - SL320'),
(44, 'SL500', ' - SL500'),
(44, 'SL550', ' - SL550'),
(44, 'SL55AMG', ' - SL55 AMG'),
(44, 'SL600', ' - SL600'),
(44, 'SL63AMG', ' - SL63 AMG'),
(44, 'SL65AMG', ' - SL65 AMG'),
(44, 'SLK_CLASS', 'SLK Class (8)'),
(44, 'SLK230', ' - SLK230'),
(44, 'SLK250', ' - SLK250'),
(44, 'SLK280', ' - SLK280'),
(44, 'SLK300', ' - SLK300'),
(44, 'SLK320', ' - SLK320'),
(44, 'SLK32AMG', ' - SLK32 AMG'),
(44, 'SLK350', ' - SLK350'),
(44, 'SLK55AMG', ' - SLK55 AMG'),
(44, 'SLR_CLASS', 'SLR Class (1)'),
(44, 'SLR', ' - SLR'),
(44, 'SLS_CLASS', 'SLS Class (1)'),
(44, 'SLSAMG', ' - SLS AMG'),
(44, 'SPRINTER_CLASS', 'Sprinter Class (1)'),
(44, 'MBSPRINTER', ' - Sprinter'),
(44, 'MBOTH', 'Other Mercedes-Benz Models'),
(45, 'CAPRI', 'Capri'),
(45, 'COUGAR', 'Cougar'),
(45, 'MERCGRAND', 'Grand Marquis'),
(45, 'LYNX', 'Lynx'),
(45, 'MARAUDER', 'Marauder'),
(45, 'MARINER', 'Mariner'),
(45, 'MARQ', 'Marquis'),
(45, 'MILAN', 'Milan'),
(45, 'MONTEGO', 'Montego'),
(45, 'MONTEREY', 'Monterey'),
(45, 'MOUNTA', 'Mountaineer'),
(45, 'MYSTIQ', 'Mystique'),
(45, 'SABLE', 'Sable'),
(45, 'TOPAZ', 'Topaz'),
(45, 'TRACER', 'Tracer'),
(45, 'VILLA', 'Villager'),
(45, 'MERCZEP', 'Zephyr'),
(45, 'MEOTH', 'Other Mercury Models'),
(46, 'SCORP', 'Scorpio'),
(46, 'XR4TI', 'XR4Ti'),
(46, 'MEROTH', 'Other Merkur Models'),
(47, 'COOPRCLUB_MODELS', 'Cooper Clubman Models (2)'),
(47, 'COOPERCLUB', ' - Cooper Clubman'),
(47, 'COOPRCLUBS', ' - Cooper S Clubman'),
(47, 'COOPCOUNTRY_MODELS', 'Cooper Countryman Models (2)'),
(47, 'COUNTRYMAN', ' - Cooper Countryman'),
(47, 'COUNTRYMNS', ' - Cooper S Countryman'),
(47, 'COOPCOUP_MODELS', 'Cooper Coupe Models (2)'),
(47, 'MINICOUPE', ' - Cooper Coupe'),
(47, 'MINISCOUPE', ' - Cooper S Coupe'),
(47, 'COOPER_MODELS', 'Cooper Models (2)'),
(47, 'COOPER', ' - Cooper'),
(47, 'COOPERS', ' - Cooper S'),
(47, 'COOPRROAD_MODELS', 'Cooper Roadster Models (2)'),
(47, 'COOPERROAD', ' - Cooper Roadster'),
(47, 'COOPERSRD', ' - Cooper S Roadster'),
(48, '3000GT', '3000GT'),
(48, 'CORD', 'Cordia'),
(48, 'DIAMAN', 'Diamante'),
(48, 'ECLIP', 'Eclipse'),
(48, 'ENDEAVOR', 'Endeavor'),
(48, 'MITEXP', 'Expo'),
(48, 'GALANT', 'Galant'),
(48, 'MITI', 'i'),
(48, 'LANCERMITS', 'Lancer'),
(48, 'LANCEREVO', 'Lancer Evolution'),
(48, 'MITPU', 'Mighty Max'),
(48, 'MIRAGE', 'Mirage'),
(48, 'MONT', 'Montero'),
(48, 'MONTSPORT', 'Montero Sport'),
(48, 'OUTLANDER', 'Outlander'),
(48, 'OUTLANDSPT', 'Outlander Sport'),
(48, 'PRECIS', 'Precis'),
(48, 'RAIDERMITS', 'Raider'),
(48, 'SIGMA', 'Sigma'),
(48, 'MITSTAR', 'Starion'),
(48, 'TRED', 'Tredia'),
(48, 'MITVAN', 'Van'),
(48, 'MITOTH', 'Other Mitsubishi Models'),
(49, 'NIS200SX', '200SX'),
(49, '240SX', '240SX'),
(49, '300ZXTURBO', '300ZX'),
(49, '350Z', '350Z'),
(49, '370Z', '370Z'),
(49, 'ALTIMA', 'Altima'),
(49, 'PATHARMADA', 'Armada'),
(49, 'AXXESS', 'Axxess'),
(49, 'CUBE', 'Cube'),
(49, 'FRONTI', 'Frontier'),
(49, 'GT-R', 'GT-R'),
(49, 'JUKE', 'Juke'),
(49, 'LEAF', 'Leaf'),
(49, 'MAX', 'Maxima'),
(49, 'MURANO', 'Murano'),
(49, 'MURANOCROS', 'Murano CrossCabriolet'),
(49, 'NV', 'NV'),
(49, 'NX', 'NX'),
(49, 'PATH', 'Pathfinder'),
(49, 'NISPU', 'Pickup'),
(49, 'PULSAR', 'Pulsar'),
(49, 'QUEST', 'Quest'),
(49, 'ROGUE', 'Rogue'),
(49, 'SENTRA', 'Sentra'),
(49, 'STANZA', 'Stanza'),
(49, 'TITAN', 'Titan'),
(49, 'NISVAN', 'Van'),
(49, 'VERSA', 'Versa'),
(49, 'XTERRA', 'Xterra'),
(49, 'NISSOTH', 'Other Nissan Models'),
(50, '88', '88'),
(50, 'ACHIEV', 'Achieva'),
(50, 'ALERO', 'Alero'),
(50, 'AURORA', 'Aurora'),
(50, 'BRAV', 'Bravada'),
(50, 'CUCR', 'Custom Cruiser'),
(50, 'OLDCUS', 'Cutlass'),
(50, 'OLDCALAIS', 'Cutlass Calais'),
(50, 'CIERA', 'Cutlass Ciera'),
(50, 'CSUPR', 'Cutlass Supreme'),
(50, 'OLDSFIR', 'Firenza'),
(50, 'INTRIG', 'Intrigue'),
(50, '98', 'Ninety-Eight'),
(50, 'OMEG', 'Omega'),
(50, 'REGEN', 'Regency'),
(50, 'SILHO', 'Silhouette'),
(50, 'TORO', 'Toronado'),
(50, 'OLDOTH', 'Other Oldsmobile Models'),
(51, '405', '405'),
(51, '504', '504'),
(51, '505', '505'),
(51, '604', '604'),
(51, 'UNAVAILPEU', 'Other Peugeot Models'),
(52, 'ACC', 'Acclaim'),
(52, 'ARROW', 'Arrow'),
(52, 'BREEZE', 'Breeze'),
(52, 'CARAVE', 'Caravelle'),
(52, 'CHAMP', 'Champ'),
(52, 'COLT', 'Colt'),
(52, 'PLYMCONQ', 'Conquest'),
(52, 'GRANFURY', 'Gran Fury'),
(52, 'PLYMGRANV', 'Grand Voyager'),
(52, 'HORI', 'Horizon'),
(52, 'LASER', 'Laser'),
(52, 'NEON', 'Neon'),
(52, 'PROWLE', 'Prowler'),
(52, 'RELI', 'Reliant'),
(52, 'SAPPOROPLY', 'Sapporo'),
(52, 'SCAMP', 'Scamp'),
(52, 'SUNDAN', 'Sundance'),
(52, 'TRAILDUST', 'Trailduster'),
(52, 'VOYA', 'Voyager'),
(52, 'PLYOTH', 'Other Plymouth Models'),
(53, 'T-1000', '1000'),
(53, '6000', '6000'),
(53, 'AZTEK', 'Aztek'),
(53, 'BON', 'Bonneville'),
(53, 'CATALINA', 'Catalina'),
(53, 'FIERO', 'Fiero'),
(53, 'FBIRD', 'Firebird'),
(53, 'G3', 'G3'),
(53, 'G5', 'G5'),
(53, 'G6', 'G6'),
(53, 'G8', 'G8'),
(53, 'GRNDAM', 'Grand Am'),
(53, 'GP', 'Grand Prix'),
(53, 'GTO', 'GTO'),
(53, 'J2000', 'J2000'),
(53, 'LEMANS', 'Le Mans'),
(53, 'MONTANA', 'Montana'),
(53, 'PARISI', 'Parisienne'),
(53, 'PHOENIX', 'Phoenix'),
(53, 'SAFARIPONT', 'Safari'),
(53, 'SOLSTICE', 'Solstice'),
(53, 'SUNBIR', 'Sunbird'),
(53, 'SUNFIR', 'Sunfire'),
(53, 'TORRENT', 'Torrent'),
(53, 'TS', 'Trans Sport'),
(53, 'VIBE', 'Vibe'),
(53, 'PONOTH', 'Other Pontiac Models'),
(54, '911', '911'),
(54, '924', '924'),
(54, '928', '928'),
(54, '944', '944'),
(54, '968', '968'),
(54, 'BOXSTE', 'Boxster'),
(54, 'CARRERAGT', 'Carrera GT'),
(54, 'CAYENNE', 'Cayenne'),
(54, 'CAYMAN', 'Cayman'),
(54, 'PANAMERA', 'Panamera'),
(54, 'POROTH', 'Other Porsche Models'),
(55, 'RAM1504WD', '1500'),
(55, 'RAM25002WD', '2500'),
(55, 'RAM3502WD', '3500'),
(55, 'RAM4500', '4500'),
(56, '18I', '18i'),
(56, 'FU', 'Fuego'),
(56, 'LECAR', 'Le Car'),
(56, 'R18', 'R18'),
(56, 'RENSPORT', 'Sportwagon'),
(56, 'UNAVAILREN', 'Other Renault Models'),
(57, 'CAMAR', 'Camargue'),
(57, 'CORN', 'Corniche'),
(57, 'GHOST', 'Ghost'),
(57, 'PARKWARD', 'Park Ward'),
(57, 'PHANT', 'Phantom'),
(57, 'DAWN', 'Silver Dawn'),
(57, 'SILSERAPH', 'Silver Seraph'),
(57, 'RRSPIR', 'Silver Spirit'),
(57, 'SPUR', 'Silver Spur'),
(57, 'UNAVAILRR', 'Other Rolls-Royce Models'),
(58, '9-2X', '9-2X'),
(58, '9-3', '9-3'),
(58, '9-4X', '9-4X'),
(58, '9-5', '9-5'),
(58, '97X', '9-7X'),
(58, '900', '900'),
(58, '9000', '9000'),
(58, 'SAOTH', 'Other Saab Models'),
(59, 'ASTRA', 'Astra'),
(59, 'AURA', 'Aura'),
(59, 'ION', 'ION'),
(59, 'L_SERIES', 'L Series (3)'),
(59, 'L100', ' - L100'),
(59, 'L200', ' - L200'),
(59, 'L300', ' - L300'),
(59, 'LSSATURN', 'LS'),
(59, 'LW_SERIES', 'LW Series (4)'),
(59, 'LW', ' - LW1'),
(59, 'LW2', ' - LW2'),
(59, 'LW200', ' - LW200'),
(59, 'LW300', ' - LW300'),
(59, 'OUTLOOK', 'Outlook'),
(59, 'RELAY', 'Relay'),
(59, 'SC_SERIES', 'SC Series (2)'),
(59, 'SC1', ' - SC1'),
(59, 'SC2', ' - SC2'),
(59, 'SKY', 'Sky'),
(59, 'SL_SERIES', 'SL Series (3)'),
(59, 'SL', ' - SL'),
(59, 'SL1', ' - SL1'),
(59, 'SL2', ' - SL2'),
(59, 'SW_SERIES', 'SW Series (2)'),
(59, 'SW1', ' - SW1'),
(59, 'SW2', ' - SW2'),
(59, 'VUE', 'Vue'),
(59, 'SATOTH', 'Other Saturn Models'),
(60, 'SCIFRS', 'FR-S'),
(60, 'IQ', 'iQ'),
(60, 'TC', 'tC'),
(60, 'XA', 'xA'),
(60, 'XB', 'xB'),
(60, 'XD', 'xD'),
(61, 'FORTWO', 'fortwo'),
(61, 'SMOTH', 'Other smart Models'),
(62, 'SRTVIPER', 'Viper'),
(63, '825', '825'),
(63, '827', '827'),
(63, 'UNAVAILSTE', 'Other Sterling Models'),
(64, 'BAJA', 'Baja'),
(64, 'BRAT', 'Brat'),
(64, 'SUBBRZ', 'BRZ'),
(64, 'FOREST', 'Forester'),
(64, 'IMPREZ', 'Impreza'),
(64, 'IMPWRX', 'Impreza WRX'),
(64, 'JUSTY', 'Justy'),
(64, 'SUBL', 'L Series'),
(64, 'LEGACY', 'Legacy'),
(64, 'LOYALE', 'Loyale'),
(64, 'SUBOUTBK', 'Outback'),
(64, 'SVX', 'SVX'),
(64, 'B9TRIBECA', 'Tribeca'),
(64, 'XT', 'XT'),
(64, 'XVCRSSTREK', 'XV Crosstrek'),
(64, 'SUBOTH', 'Other Subaru Models'),
(65, 'AERIO', 'Aerio'),
(65, 'EQUATOR', 'Equator'),
(65, 'ESTEEM', 'Esteem'),
(65, 'FORENZA', 'Forenza'),
(65, 'GRANDV', 'Grand Vitara'),
(65, 'KIZASHI', 'Kizashi'),
(65, 'RENO', 'Reno'),
(65, 'SAMUR', 'Samurai'),
(65, 'SIDE', 'Sidekick'),
(65, 'SWIFT', 'Swift'),
(65, 'SX4', 'SX4'),
(65, 'VERONA', 'Verona'),
(65, 'VITARA', 'Vitara'),
(65, 'X90', 'X-90'),
(65, 'XL7', 'XL7'),
(65, 'SUZOTH', 'Other Suzuki Models'),
(66, 'ROADSTER', 'Roadster'),
(67, '4RUN', '4Runner'),
(67, 'AVALON', 'Avalon'),
(67, 'CAMRY', 'Camry'),
(67, 'CELICA', 'Celica'),
(67, 'COROL', 'Corolla'),
(67, 'CORONA', 'Corona'),
(67, 'CRESS', 'Cressida'),
(67, 'ECHO', 'Echo'),
(67, 'FJCRUIS', 'FJ Cruiser'),
(67, 'HIGHLANDER', 'Highlander'),
(67, 'LC', 'Land Cruiser'),
(67, 'MATRIX', 'Matrix'),
(67, 'MR2', 'MR2'),
(67, 'MR2SPYDR', 'MR2 Spyder'),
(67, 'PASEO', 'Paseo'),
(67, 'PICKUP', 'Pickup'),
(67, 'PREVIA', 'Previa'),
(67, 'PRIUS', 'Prius'),
(67, 'PRIUSC', 'Prius C'),
(67, 'PRIUSV', 'Prius V'),
(67, 'RAV4', 'RAV4'),
(67, 'SEQUOIA', 'Sequoia'),
(67, 'SIENNA', 'Sienna'),
(67, 'SOLARA', 'Solara'),
(67, 'STARLET', 'Starlet'),
(67, 'SUPRA', 'Supra'),
(67, 'T100', 'T100'),
(67, 'TACOMA', 'Tacoma'),
(67, 'TERCEL', 'Tercel'),
(67, 'TUNDRA', 'Tundra'),
(67, 'TOYVAN', 'Van'),
(67, 'VENZA', 'Venza'),
(67, 'YARIS', 'Yaris'),
(67, 'TOYOTH', 'Other Toyota Models'),
(68, 'TR7', 'TR7'),
(68, 'TR8', 'TR8'),
(68, 'TRIOTH', 'Other Triumph Models'),
(69, 'BEETLE', 'Beetle'),
(69, 'VOLKSCAB', 'Cabrio'),
(69, 'CAB', 'Cabriolet'),
(69, 'CC', 'CC'),
(69, 'CORR', 'Corrado'),
(69, 'DASHER', 'Dasher'),
(69, 'EOS', 'Eos'),
(69, 'EUROVAN', 'Eurovan'),
(69, 'VOLKSFOX', 'Fox'),
(69, 'GLI', 'GLI'),
(69, 'GOLFR', 'Golf R'),
(69, 'GTI', 'GTI'),
(69, 'GOLFANDRABBITMODELS', 'Golf and Rabbit Models (2)'),
(69, 'GOLF', ' - Golf'),
(69, 'RABBIT', ' - Rabbit'),
(69, 'JET', 'Jetta'),
(69, 'PASS', 'Passat'),
(69, 'PHAETON', 'Phaeton'),
(69, 'RABBITPU', 'Pickup'),
(69, 'QUAN', 'Quantum'),
(69, 'R32', 'R32'),
(69, 'ROUTAN', 'Routan'),
(69, 'SCIR', 'Scirocco'),
(69, 'TIGUAN', 'Tiguan'),
(69, 'TOUAREG', 'Touareg'),
(69, 'VANAG', 'Vanagon'),
(69, 'VWOTH', 'Other Volkswagen Models'),
(70, '240', '240'),
(70, '260', '260'),
(70, '740', '740'),
(70, '760', '760'),
(70, '780', '780'),
(70, '850', '850'),
(70, '940', '940'),
(70, '960', '960'),
(70, 'C30', 'C30'),
(70, 'C70', 'C70'),
(70, 'S40', 'S40'),
(70, 'S60', 'S60'),
(70, 'S70', 'S70'),
(70, 'S80', 'S80'),
(70, 'S90', 'S90'),
(70, 'V40', 'V40'),
(70, 'V50', 'V50'),
(70, 'V70', 'V70'),
(70, 'V90', 'V90'),
(70, 'XC60', 'XC60'),
(70, 'XC', 'XC70'),
(70, 'XC90', 'XC90'),
(70, 'VOLOTH', 'Other Volvo Models'),
(71, 'GV', 'GV'),
(71, 'GVC', 'GVC'),
(71, 'GVL', 'GVL'),
(71, 'GVS', 'GVS'),
(71, 'GVX', 'GVX'),
(71, 'YUOTH', 'Other Yugo Models');

-- employee
DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
  id SERIAL NOT NULL ,
  role_id INT REFERENCES roles(id),
  first_name VARCHAR(60) NOT NULL ,
  last_name VARCHAR(60) NOT NULL ,
  email VARCHAR(60) NOT NULL UNIQUE ,
  afm INT NOT NULL ,

  PRIMARY KEY (afm)
);

insert into employee (role_id, first_name, last_name, email, afm) values (2, 'Livy', 'Collaton', 'lcollaton0@chicagotribune.com', 85601262);
insert into employee (role_id, first_name, last_name, email, afm) values (1, 'Elroy', 'Kitto', 'ekitto1@toplist.cz', 14304251);
insert into employee (role_id, first_name, last_name, email, afm) values (2, 'Stuart', 'Clack', 'sclack2@bizjournals.com', 55241214);
insert into employee (role_id, first_name, last_name, email, afm) values (2, 'Rikki', 'Murrigan', 'rmurrigan3@google.de', 41235675);
insert into employee (role_id, first_name, last_name, email, afm) values (1, 'Giacobo', 'Tarply', 'gtarply4@intel.com', 50460430);
insert into employee (role_id, first_name, last_name, email, afm) values (2, 'Evita', 'Molesworth', 'emolesworth5@cnet.com', 79524750);
insert into employee (role_id, first_name, last_name, email, afm) values (1, 'Dale', 'Mellor', 'dmellor6@cmu.edu', 53373880);
insert into employee (role_id, first_name, last_name, email, afm) values (1, 'Ronny', 'Dicken', 'rdicken7@admin.ch', 75093387);
insert into employee (role_id, first_name, last_name, email, afm) values (1, 'Friedrick', 'Petrik', 'fpetrik8@reference.com', 16047979);
insert into employee (role_id, first_name, last_name, email, afm) values (1, 'Garrek', 'Nevinson', 'gnevinson9@va.gov', 17983590);
insert into employee (role_id, first_name, last_name, email, afm) values (2, 'Augustine', 'Kennedy', 'akennedya@wikipedia.org', 29928702);
insert into employee (role_id, first_name, last_name, email, afm) values (1, 'Maddie', 'Wisher', 'mwisherb@comcast.net', 39122247);

-- roles
DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
  id SERIAL NOT NULL ,
  title VARCHAR(40) NOT NULL ,

  PRIMARY KEY (id)
);

insert into roles (title) values ('salesman');
insert into roles (title) values ('technician');

-- customers
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  id SERIAL NOT NULL ,
  first_name VARCHAR(60) NOT NULL ,
  last_name VARCHAR(60) NOT NULL ,
  afm BIGINT NOT NULL ,
  email VARCHAR(60) NOT NULL UNIQUE ,
  phone VARCHAR(10) NOT NULL UNIQUE ,

  PRIMARY KEY (afm)
);

insert into customers (first_name, last_name, afm, email, phone) values ('Angela', 'Ganiford', 61333630, 'aganiford0@tamu.edu', '4392350904');
insert into customers (first_name, last_name, afm, email, phone) values ('Leigh', 'Easman', 10004451, 'leasman1@mail.ru', '7217568412');
insert into customers (first_name, last_name, afm, email, phone) values ('Jean', 'Durman', 93128927, 'jdurman2@marketwatch.com', '3398264533');
insert into customers (first_name, last_name, afm, email, phone) values ('Jackqueline', 'Hedau', 28209578, 'jhedau3@ca.gov', '3924735687');
insert into customers (first_name, last_name, afm, email, phone) values ('Tiena', 'Beecheno', 48472091, 'tbeecheno4@discuz.net', '1683804922');
insert into customers (first_name, last_name, afm, email, phone) values ('Briggs', 'Fulleylove', 71550163, 'bfulleylove5@ebay.co.uk', '7266951797');
insert into customers (first_name, last_name, afm, email, phone) values ('Alva', 'Goodrich', 61934773, 'agoodrich6@nbcnews.com', '2903368570');
insert into customers (first_name, last_name, afm, email, phone) values ('Penny', 'Maynard', 21707919, 'pmaynard7@ox.ac.uk', '2565425070');
insert into customers (first_name, last_name, afm, email, phone) values ('Fara', 'McConachie', 52970865, 'fmcconachie8@princeton.edu', '3537719440');
insert into customers (first_name, last_name, afm, email, phone) values ('Emmey', 'Hatfull', 77193431, 'ehatfull9@myspace.com', '1438834556');
insert into customers (first_name, last_name, afm, email, phone) values ('Rosalinde', 'Letham', 36568316, 'rlethama@uiuc.edu', '7184842687');
insert into customers (first_name, last_name, afm, email, phone) values ('Burk', 'Whyberd', 96253405, 'bwhyberdb@51.la', '6244617866');
insert into customers (first_name, last_name, afm, email, phone) values ('Hermine', 'Danskine', 27609728, 'hdanskinec@slashdot.org', '1171229677');
insert into customers (first_name, last_name, afm, email, phone) values ('Cassius', 'Ivanusyev', 26970733, 'civanusyevd@army.mil', '9035207841');
insert into customers (first_name, last_name, afm, email, phone) values ('Herby', 'Flatley', 37817870, 'hflatleye@loc.gov', '7163178495');
insert into customers (first_name, last_name, afm, email, phone) values ('Margaretha', 'Mc Queen', 30365914, 'mmcqueenf@photobucket.com', '9069281414');
insert into customers (first_name, last_name, afm, email, phone) values ('Kimbra', 'Foulgham', 81015928, 'kfoulghamg@constantcontact.com', '4647755452');
insert into customers (first_name, last_name, afm, email, phone) values ('Gery', 'Giurio', 45501886, 'ggiurioh@123-reg.co.uk', '8446821453');
insert into customers (first_name, last_name, afm, email, phone) values ('Joly', 'Dowgill', 15162710, 'jdowgilli@foxnews.com', '2214263719');
insert into customers (first_name, last_name, afm, email, phone) values ('Charisse', 'Mussetti', 49980307, 'cmussettij@blinklist.com', '4318321377');
insert into customers (first_name, last_name, afm, email, phone) values ('Meade', 'Beardon', 77746963, 'mbeardonk@telegraph.co.uk', '3159439722');
insert into customers (first_name, last_name, afm, email, phone) values ('Pryce', 'Hawarden', 30151543, 'phawardenl@bing.com', '4084483887');
insert into customers (first_name, last_name, afm, email, phone) values ('Danice', 'Bach', 85695567, 'dbachm@about.me', '7598987226');
insert into customers (first_name, last_name, afm, email, phone) values ('Marc', 'Scarlan', 71047799, 'mscarlann@tmall.com', '9678522801');
insert into customers (first_name, last_name, afm, email, phone) values ('Genevra', 'Inkpen', 66789268, 'ginkpeno@freewebs.com', '8788112819');
insert into customers (first_name, last_name, afm, email, phone) values ('Neel', 'Horley', 25316280, 'nhorleyp@theatlantic.com', '5612387792');
insert into customers (first_name, last_name, afm, email, phone) values ('Byrann', 'Pallatina', 78025003, 'bpallatinaq@cisco.com', '7505434444');
insert into customers (first_name, last_name, afm, email, phone) values ('Guilbert', 'Mobberley', 88629242, 'gmobberleyr@nytimes.com', '6955386956');
insert into customers (first_name, last_name, afm, email, phone) values ('Katusha', 'Le Floch', 20198730, 'kleflochs@yandex.ru', '8269905208');
insert into customers (first_name, last_name, afm, email, phone) values ('Gaylor', 'Stilly', 56984688, 'gstillyt@guardian.co.uk', '8501168585');
insert into customers (first_name, last_name, afm, email, phone) values ('Basia', 'Riping', 39137393, 'bripingu@java.com', '3737699487');
insert into customers (first_name, last_name, afm, email, phone) values ('Selestina', 'Hurdis', 25691325, 'shurdisv@blog.com', '5028967339');
insert into customers (first_name, last_name, afm, email, phone) values ('Zechariah', 'Willden', 52278222, 'zwilldenw@mtv.com', '6653610641');
insert into customers (first_name, last_name, afm, email, phone) values ('Desiree', 'Rookledge', 21814833, 'drookledgex@posterous.com', '6929777044');
insert into customers (first_name, last_name, afm, email, phone) values ('Serene', 'Islip', 72048054, 'sislipy@hud.gov', '9064542949');
insert into customers (first_name, last_name, afm, email, phone) values ('Luis', 'Rutigliano', 24189008, 'lrutiglianoz@dedecms.com', '6261762793');
insert into customers (first_name, last_name, afm, email, phone) values ('Melany', 'Keitley', 76954758, 'mkeitley10@macromedia.com', '8118185089');
insert into customers (first_name, last_name, afm, email, phone) values ('Elfrida', 'Banbury', 42836434, 'ebanbury11@tuttocitta.it', '6125399997');
insert into customers (first_name, last_name, afm, email, phone) values ('Cozmo', 'Brookhouse', 73920896, 'cbrookhouse12@barnesandnoble.com', '7871597202');
insert into customers (first_name, last_name, afm, email, phone) values ('Sari', 'Kears', 80311803, 'skears13@geocities.com', '4785291427');
insert into customers (first_name, last_name, afm, email, phone) values ('Chaunce', 'Wandrack', 20165149, 'cwandrack14@parallels.com', '9378394095');
insert into customers (first_name, last_name, afm, email, phone) values ('Gennie', 'Whye', 45609147, 'gwhye15@imdb.com', '5994868325');
insert into customers (first_name, last_name, afm, email, phone) values ('Iolanthe', 'Sephton', 46676659, 'isephton16@cbsnews.com', '4102432420');
insert into customers (first_name, last_name, afm, email, phone) values ('Timothea', 'Carlsen', 91068421, 'tcarlsen17@desdev.cn', '3634142371');
insert into customers (first_name, last_name, afm, email, phone) values ('Shoshana', 'Tomkins', 59547356, 'stomkins18@etsy.com', '3598532308');
insert into customers (first_name, last_name, afm, email, phone) values ('Zedekiah', 'Tracey', 88005237, 'ztracey19@statcounter.com', '5203160189');
insert into customers (first_name, last_name, afm, email, phone) values ('Averil', 'Tuft', 42558959, 'atuft1a@bloomberg.com', '3861573051');
insert into customers (first_name, last_name, afm, email, phone) values ('Conney', 'Worrell', 48875936, 'cworrell1b@jiathis.com', '4679955623');
insert into customers (first_name, last_name, afm, email, phone) values ('Cristin', 'Feak', 35335003, 'cfeak1c@hud.gov', '3103960054');
insert into customers (first_name, last_name, afm, email, phone) values ('Cordey', 'Dyneley', 12446070, 'cdyneley1d@timesonline.co.uk', '5657532967');
insert into customers (first_name, last_name, afm, email, phone) values ('Hussein', 'Pury', 25014474, 'hpury1e@google.ca', '8065737702');
insert into customers (first_name, last_name, afm, email, phone) values ('Darb', 'Van Geffen', 84686871, 'dvangeffen1f@ft.com', '5012372490');
insert into customers (first_name, last_name, afm, email, phone) values ('Fee', 'Grisard', 83757595, 'fgrisard1g@dagondesign.com', '2773993762');
insert into customers (first_name, last_name, afm, email, phone) values ('Claire', 'Wrout', 37614068, 'cwrout1h@reddit.com', '1535046879');
insert into customers (first_name, last_name, afm, email, phone) values ('Timmi', 'Sugar', 49624598, 'tsugar1i@4shared.com', '2413726272');
insert into customers (first_name, last_name, afm, email, phone) values ('Darline', 'Lepper', 28543141, 'dlepper1j@mlb.com', '1325485559');
insert into customers (first_name, last_name, afm, email, phone) values ('Anjela', 'Vidineev', 99279003, 'avidineev1k@fema.gov', '6446327821');
insert into customers (first_name, last_name, afm, email, phone) values ('Kent', 'Muscat', 76537521, 'kmuscat1l@ucoz.ru', '1491897644');
insert into customers (first_name, last_name, afm, email, phone) values ('Valentine', 'McKennan', 89375038, 'vmckennan1m@uiuc.edu', '2432602321');
insert into customers (first_name, last_name, afm, email, phone) values ('Darda', 'Hub', 23700932, 'dhub1n@amazon.de', '4326823602');
insert into customers (first_name, last_name, afm, email, phone) values ('Livvy', 'Shute', 27502051, 'lshute1o@reddit.com', '5549363111');
insert into customers (first_name, last_name, afm, email, phone) values ('Saba', 'Fearick', 22555822, 'sfearick1p@jalbum.net', '3585232349');
insert into customers (first_name, last_name, afm, email, phone) values ('Grissel', 'Mulles', 94098465, 'gmulles1q@telegraph.co.uk', '1699100100');
insert into customers (first_name, last_name, afm, email, phone) values ('Sarajane', 'Stanbridge', 74627235, 'sstanbridge1r@fema.gov', '3382002971');
insert into customers (first_name, last_name, afm, email, phone) values ('Barnard', 'Cuttle', 85170044, 'bcuttle1s@lycos.com', '4774115011');
insert into customers (first_name, last_name, afm, email, phone) values ('Lion', 'Glenton', 77845492, 'lglenton1t@columbia.edu', '1905365059');
insert into customers (first_name, last_name, afm, email, phone) values ('Devonne', 'Charer', 93507680, 'dcharer1u@intel.com', '7948320856');
insert into customers (first_name, last_name, afm, email, phone) values ('La verne', 'O''Hoey', 40208412, 'lohoey1v@cam.ac.uk', '4918739624');
insert into customers (first_name, last_name, afm, email, phone) values ('Milly', 'Marcham', 22526705, 'mmarcham1w@reddit.com', '1583419093');
insert into customers (first_name, last_name, afm, email, phone) values ('Raviv', 'Pullen', 93002192, 'rpullen1x@cam.ac.uk', '2669193847');
insert into customers (first_name, last_name, afm, email, phone) values ('Izzy', 'Almack', 98403161, 'ialmack1y@amazonaws.com', '8318947009');
insert into customers (first_name, last_name, afm, email, phone) values ('Guendolen', 'Philipeaux', 17999165, 'gphilipeaux1z@walmart.com', '5571446156');
insert into customers (first_name, last_name, afm, email, phone) values ('Derrek', 'Geffinger', 67513630, 'dgeffinger20@patch.com', '9298737646');
insert into customers (first_name, last_name, afm, email, phone) values ('Kincaid', 'Chipps', 94696454, 'kchipps21@bandcamp.com', '4992015010');
insert into customers (first_name, last_name, afm, email, phone) values ('Arch', 'Schrinel', 12178732, 'aschrinel22@epa.gov', '1598313292');
insert into customers (first_name, last_name, afm, email, phone) values ('Mandie', 'Zealy', 78783762, 'mzealy23@google.com', '4906680481');
insert into customers (first_name, last_name, afm, email, phone) values ('Bord', 'Luce', 49973980, 'bluce24@rambler.ru', '4926001718');
insert into customers (first_name, last_name, afm, email, phone) values ('Chickie', 'Gulc', 50470439, 'cgulc25@youtube.com', '8774648209');
insert into customers (first_name, last_name, afm, email, phone) values ('Sula', 'Jurries', 39496641, 'sjurries26@gmpg.org', '2822295366');
insert into customers (first_name, last_name, afm, email, phone) values ('Debera', 'Rawsthorne', 66361803, 'drawsthorne27@yellowbook.com', '5778624978');
insert into customers (first_name, last_name, afm, email, phone) values ('Renado', 'Durrett', 58129363, 'rdurrett28@vkontakte.ru', '7802714359');
insert into customers (first_name, last_name, afm, email, phone) values ('Gail', 'Breache', 23275655, 'gbreache29@marriott.com', '4887463793');
insert into customers (first_name, last_name, afm, email, phone) values ('Glendon', 'Saipy', 15505686, 'gsaipy2a@pagesperso-orange.fr', '7208299805');
insert into customers (first_name, last_name, afm, email, phone) values ('Filide', 'Barizeret', 11804623, 'fbarizeret2b@twitpic.com', '8976411902');
insert into customers (first_name, last_name, afm, email, phone) values ('Addie', 'Openshaw', 96427477, 'aopenshaw2c@wikia.com', '4202030595');
insert into customers (first_name, last_name, afm, email, phone) values ('Clea', 'Onion', 34396336, 'conion2d@usda.gov', '7955106813');
insert into customers (first_name, last_name, afm, email, phone) values ('Birch', 'Codeman', 12312715, 'bcodeman2e@github.io', '2155648850');
insert into customers (first_name, last_name, afm, email, phone) values ('Starla', 'Siley', 61619852, 'ssiley2f@google.de', '6231590776');
insert into customers (first_name, last_name, afm, email, phone) values ('Vikki', 'O''Fogerty', 59061543, 'vofogerty2g@businesswire.com', '5911343130');
insert into customers (first_name, last_name, afm, email, phone) values ('Justin', 'Nugent', 20521780, 'jnugent2h@naver.com', '9352777162');
insert into customers (first_name, last_name, afm, email, phone) values ('Adeline', 'Galbreth', 74120960, 'agalbreth2i@lulu.com', '9629229720');
insert into customers (first_name, last_name, afm, email, phone) values ('Penny', 'Sikora', 65049883, 'psikora2j@skype.com', '8078850817');
insert into customers (first_name, last_name, afm, email, phone) values ('Aldus', 'Maseyk', 21757427, 'amaseyk2k@dmoz.org', '8217976765');
insert into customers (first_name, last_name, afm, email, phone) values ('Lissi', 'Saunter', 49377527, 'lsaunter2l@hibu.com', '5171823212');
insert into customers (first_name, last_name, afm, email, phone) values ('Forrest', 'Duthie', 52256534, 'fduthie2m@dyndns.org', '7029381108');
insert into customers (first_name, last_name, afm, email, phone) values ('Hatty', 'Kimmins', 87176931, 'hkimmins2n@japanpost.jp', '7067733411');
insert into customers (first_name, last_name, afm, email, phone) values ('Viv', 'Prandini', 63691647, 'vprandini2o@noaa.gov', '6995265122');
insert into customers (first_name, last_name, afm, email, phone) values ('Joann', 'Rodenborch', 66881466, 'jrodenborch2p@blogger.com', '2091785117');
insert into customers (first_name, last_name, afm, email, phone) values ('Nerte', 'Lortz', 72829793, 'nlortz2q@npr.org', '6688726543');
insert into customers (first_name, last_name, afm, email, phone) values ('Field', 'Coggon', 90201041, 'fcoggon2r@huffingtonpost.com', '5455628751');
insert into customers (first_name, last_name, afm, email, phone) values ('Danya', 'Knibb', 62679754, 'dknibb2s@plala.or.jp', '5102110204');
insert into customers (first_name, last_name, afm, email, phone) values ('Ahmed', 'Gress', 69850336, 'agress2t@tripadvisor.com', '5021751555');
insert into customers (first_name, last_name, afm, email, phone) values ('Delcina', 'Latan', 92663188, 'dlatan2u@linkedin.com', '7863463703');
insert into customers (first_name, last_name, afm, email, phone) values ('Carolyne', 'Zannotelli', 48524633, 'czannotelli2v@uiuc.edu', '5278096041');
insert into customers (first_name, last_name, afm, email, phone) values ('Cookie', 'Saleway', 42141880, 'csaleway2w@bloglovin.com', '3276848359');
insert into customers (first_name, last_name, afm, email, phone) values ('Jedediah', 'Wombwell', 53393255, 'jwombwell2x@mail.ru', '5923994794');
insert into customers (first_name, last_name, afm, email, phone) values ('Rossy', 'Gullen', 13918196, 'rgullen2y@zdnet.com', '9152927742');
insert into customers (first_name, last_name, afm, email, phone) values ('Wenonah', 'Leman', 70505173, 'wleman2z@shinystat.com', '8957495303');
insert into customers (first_name, last_name, afm, email, phone) values ('Rufus', 'Ferran', 52765294, 'rferran30@msn.com', '4032673582');
insert into customers (first_name, last_name, afm, email, phone) values ('Modesty', 'Teodori', 17234885, 'mteodori31@reverbnation.com', '5413222632');
insert into customers (first_name, last_name, afm, email, phone) values ('Karolina', 'Galgey', 60337612, 'kgalgey32@disqus.com', '7303653918');
insert into customers (first_name, last_name, afm, email, phone) values ('Moyra', 'Barles', 33904981, 'mbarles33@mozilla.com', '7129001783');
insert into customers (first_name, last_name, afm, email, phone) values ('Parnell', 'Baggally', 92804602, 'pbaggally34@jiathis.com', '8396541970');
insert into customers (first_name, last_name, afm, email, phone) values ('Pincas', 'Schwieso', 83674543, 'pschwieso35@senate.gov', '9056098186');
insert into customers (first_name, last_name, afm, email, phone) values ('Shawnee', 'Taunton', 61171125, 'staunton36@issuu.com', '9045280200');
insert into customers (first_name, last_name, afm, email, phone) values ('Hollie', 'Test', 84595840, 'htest37@biblegateway.com', '9223886930');
insert into customers (first_name, last_name, afm, email, phone) values ('Freddie', 'Pioch', 13927211, 'fpioch38@seesaa.net', '8497814370');
insert into customers (first_name, last_name, afm, email, phone) values ('Wyatt', 'Worham', 24684854, 'wworham39@time.com', '8743623456');
insert into customers (first_name, last_name, afm, email, phone) values ('Gilles', 'Baselio', 65917335, 'gbaselio3a@homestead.com', '5782118976');
insert into customers (first_name, last_name, afm, email, phone) values ('Vivianna', 'Reynolds', 55633509, 'vreynolds3b@phpbb.com', '5832238851');
insert into customers (first_name, last_name, afm, email, phone) values ('Vallie', 'Pridgeon', 87879454, 'vpridgeon3c@biglobe.ne.jp', '4459487464');
insert into customers (first_name, last_name, afm, email, phone) values ('Yardley', 'Byard', 73936696, 'ybyard3d@washingtonpost.com', '9933786526');
insert into customers (first_name, last_name, afm, email, phone) values ('Malorie', 'Bysshe', 90877284, 'mbysshe3e@washingtonpost.com', '4167968057');
insert into customers (first_name, last_name, afm, email, phone) values ('Si', 'Wagenen', 20087512, 'swagenen3f@dot.gov', '8419218831');
insert into customers (first_name, last_name, afm, email, phone) values ('Jacqueline', 'Birchenhead', 94615275, 'jbirchenhead3g@topsy.com', '4064386396');
insert into customers (first_name, last_name, afm, email, phone) values ('Jonathon', 'Matthewson', 44154461, 'jmatthewson3h@smugmug.com', '8328734767');
insert into customers (first_name, last_name, afm, email, phone) values ('Ashlen', 'Seeviour', 46252241, 'aseeviour3i@wunderground.com', '9572854577');
insert into customers (first_name, last_name, afm, email, phone) values ('Cristine', 'Sibson', 26693614, 'csibson3j@clickbank.net', '1824534603');
insert into customers (first_name, last_name, afm, email, phone) values ('Brianna', 'Dow', 70828960, 'bdow3k@cbsnews.com', '2073352740');
insert into customers (first_name, last_name, afm, email, phone) values ('Bartlet', 'Eddowis', 76758211, 'beddowis3l@ezinearticles.com', '9396693229');
insert into customers (first_name, last_name, afm, email, phone) values ('Ingaberg', 'Hobden', 34203887, 'ihobden3m@goodreads.com', '2557453511');
insert into customers (first_name, last_name, afm, email, phone) values ('Antonia', 'Kesten', 24393277, 'akesten3n@apache.org', '7126824393');
insert into customers (first_name, last_name, afm, email, phone) values ('De', 'Beevers', 17856230, 'dbeevers3o@amazon.co.uk', '5256789305');
insert into customers (first_name, last_name, afm, email, phone) values ('Rutter', 'Stirrip', 32553872, 'rstirrip3p@live.com', '6381195286');
insert into customers (first_name, last_name, afm, email, phone) values ('Barbe', 'Sherebrook', 95290933, 'bsherebrook3q@china.com.cn', '1574699096');
insert into customers (first_name, last_name, afm, email, phone) values ('Albina', 'Collett', 70967372, 'acollett3r@bluehost.com', '1757662363');
insert into customers (first_name, last_name, afm, email, phone) values ('Cecilia', 'Parkyns', 44341023, 'cparkyns3s@amazon.com', '9487087851');
insert into customers (first_name, last_name, afm, email, phone) values ('Sashenka', 'Sebring', 58607133, 'ssebring3t@trellian.com', '8133214922');
insert into customers (first_name, last_name, afm, email, phone) values ('Shelli', 'Briereton', 52312844, 'sbriereton3u@hc360.com', '5744410688');
insert into customers (first_name, last_name, afm, email, phone) values ('Madelon', 'O''Shee', 58083344, 'moshee3v@cisco.com', '7389038671');
insert into customers (first_name, last_name, afm, email, phone) values ('Martha', 'Rickis', 74191764, 'mrickis3w@cafepress.com', '1189868270');
insert into customers (first_name, last_name, afm, email, phone) values ('Oliver', 'Perocci', 60737316, 'operocci3x@ucla.edu', '6888515663');
insert into customers (first_name, last_name, afm, email, phone) values ('Jobye', 'Hellcat', 87952992, 'jhellcat3y@house.gov', '6355279900');
insert into customers (first_name, last_name, afm, email, phone) values ('Sophronia', 'Judron', 13615938, 'sjudron3z@wp.com', '3851186544');
insert into customers (first_name, last_name, afm, email, phone) values ('Stephen', 'Shelsher', 73451525, 'sshelsher40@usnews.com', '5846367860');
insert into customers (first_name, last_name, afm, email, phone) values ('Ephraim', 'Haggas', 87246564, 'ehaggas41@npr.org', '6867861627');
insert into customers (first_name, last_name, afm, email, phone) values ('Monika', 'Rontsch', 13625284, 'mrontsch42@gravatar.com', '6006149254');
insert into customers (first_name, last_name, afm, email, phone) values ('Gabriela', 'Cumo', 39475919, 'gcumo43@samsung.com', '8533598794');
insert into customers (first_name, last_name, afm, email, phone) values ('Daisey', 'Bosward', 88844600, 'dbosward44@cbslocal.com', '1354309213');
insert into customers (first_name, last_name, afm, email, phone) values ('Conny', 'Odcroft', 66418020, 'codcroft45@youtu.be', '9972293709');
insert into customers (first_name, last_name, afm, email, phone) values ('Tyrone', 'Silverton', 29841167, 'tsilverton46@tripadvisor.com', '7801718651');
insert into customers (first_name, last_name, afm, email, phone) values ('Isac', 'Bleasdale', 76922841, 'ibleasdale47@gravatar.com', '8414702173');
insert into customers (first_name, last_name, afm, email, phone) values ('Philip', 'Thies', 12406273, 'pthies48@zdnet.com', '4766016293');
insert into customers (first_name, last_name, afm, email, phone) values ('Joanie', 'Cass', 56482586, 'jcass49@newsvine.com', '9302717651');
insert into customers (first_name, last_name, afm, email, phone) values ('Farris', 'Cankett', 92830824, 'fcankett4a@bbc.co.uk', '7813318503');
insert into customers (first_name, last_name, afm, email, phone) values ('Obadias', 'Bruffell', 55922039, 'obruffell4b@pen.io', '6981314903');
insert into customers (first_name, last_name, afm, email, phone) values ('Lynnell', 'Kobierski', 64672437, 'lkobierski4c@t.co', '8191721314');
insert into customers (first_name, last_name, afm, email, phone) values ('Madalyn', 'Vannar', 90587829, 'mvannar4d@wufoo.com', '2497304741');
insert into customers (first_name, last_name, afm, email, phone) values ('Stephanus', 'Boatman', 78456690, 'sboatman4e@wikispaces.com', '6682966695');
insert into customers (first_name, last_name, afm, email, phone) values ('Eleonore', 'Wanless', 26725942, 'ewanless4f@cafepress.com', '4228225970');
insert into customers (first_name, last_name, afm, email, phone) values ('Lesley', 'Hartell', 28076112, 'lhartell4g@squarespace.com', '2934695095');
insert into customers (first_name, last_name, afm, email, phone) values ('Meara', 'Riddall', 43268208, 'mriddall4h@squidoo.com', '8919684367');
insert into customers (first_name, last_name, afm, email, phone) values ('Frans', 'Restieaux', 29583253, 'frestieaux4i@flavors.me', '2965208682');
insert into customers (first_name, last_name, afm, email, phone) values ('Kimberly', 'Benjamin', 58597722, 'kbenjamin4j@nps.gov', '9788844554');
insert into customers (first_name, last_name, afm, email, phone) values ('Vonnie', 'Rickaert', 29868167, 'vrickaert4k@usda.gov', '4045640325');
insert into customers (first_name, last_name, afm, email, phone) values ('Elianora', 'McGebenay', 37694232, 'emcgebenay4l@hubpages.com', '3513635761');
insert into customers (first_name, last_name, afm, email, phone) values ('Jourdan', 'Braga', 76434785, 'jbraga4m@wisc.edu', '4056081704');
insert into customers (first_name, last_name, afm, email, phone) values ('Livia', 'Nyles', 96443428, 'lnyles4n@marketwatch.com', '1049203483');
insert into customers (first_name, last_name, afm, email, phone) values ('Lorie', 'Parmley', 94061873, 'lparmley4o@rakuten.co.jp', '8126499098');
insert into customers (first_name, last_name, afm, email, phone) values ('Olivie', 'Mityukov', 47809388, 'omityukov4p@wisc.edu', '5663809742');
insert into customers (first_name, last_name, afm, email, phone) values ('Bank', 'Chiplin', 21449327, 'bchiplin4q@nba.com', '6085596510');
insert into customers (first_name, last_name, afm, email, phone) values ('Rodina', 'Ghidoni', 90619321, 'rghidoni4r@skype.com', '1816620230');
insert into customers (first_name, last_name, afm, email, phone) values ('Cora', 'Derry', 99245259, 'cderry4s@imgur.com', '4458807768');
insert into customers (first_name, last_name, afm, email, phone) values ('Adrien', 'Linnard', 80033414, 'alinnard4t@nba.com', '3661032972');
insert into customers (first_name, last_name, afm, email, phone) values ('Grethel', 'Gilsthorpe', 38636704, 'ggilsthorpe4u@friendfeed.com', '4501793912');
insert into customers (first_name, last_name, afm, email, phone) values ('Caro', 'Hearthfield', 10494745, 'chearthfield4v@photobucket.com', '2325494960');
insert into customers (first_name, last_name, afm, email, phone) values ('Phyllis', 'Human', 53828436, 'phuman4w@tuttocitta.it', '3607411788');
insert into customers (first_name, last_name, afm, email, phone) values ('Corny', 'Cossam', 94817737, 'ccossam4x@macromedia.com', '7389400904');
insert into customers (first_name, last_name, afm, email, phone) values ('Carolina', 'Stoodley', 50435910, 'cstoodley4y@bing.com', '9224309337');
insert into customers (first_name, last_name, afm, email, phone) values ('Vally', 'Layton', 45290555, 'vlayton4z@i2i.jp', '5252289786');
insert into customers (first_name, last_name, afm, email, phone) values ('Margaretta', 'Ganiclef', 88684860, 'mganiclef50@geocities.com', '4804999271');
insert into customers (first_name, last_name, afm, email, phone) values ('Dalli', 'Cardinale', 87432145, 'dcardinale51@gmpg.org', '1777879085');
insert into customers (first_name, last_name, afm, email, phone) values ('Alfonse', 'Kanzler', 70273916, 'akanzler52@geocities.com', '1481950597');
insert into customers (first_name, last_name, afm, email, phone) values ('Chance', 'Schultheiss', 52714598, 'cschultheiss53@facebook.com', '1119459274');
insert into customers (first_name, last_name, afm, email, phone) values ('Wilton', 'Dissman', 10732837, 'wdissman54@diigo.com', '1305114612');
insert into customers (first_name, last_name, afm, email, phone) values ('Aloysius', 'Chadwin', 78284288, 'achadwin55@house.gov', '1093135146');
insert into customers (first_name, last_name, afm, email, phone) values ('Josefina', 'Tams', 39963076, 'jtams56@wix.com', '3354095221');
insert into customers (first_name, last_name, afm, email, phone) values ('Tait', 'Druhan', 86927213, 'tdruhan57@eventbrite.com', '6685977258');
insert into customers (first_name, last_name, afm, email, phone) values ('Stephenie', 'Cuolahan', 86543060, 'scuolahan58@zimbio.com', '8103532492');
insert into customers (first_name, last_name, afm, email, phone) values ('Pietra', 'Landers', 31350635, 'planders59@apple.com', '4315973421');
insert into customers (first_name, last_name, afm, email, phone) values ('Penn', 'Florez', 75865553, 'pflorez5a@123-reg.co.uk', '8767606818');
insert into customers (first_name, last_name, afm, email, phone) values ('Mata', 'Golland', 76409090, 'mgolland5b@cargocollective.com', '4985687252');
insert into customers (first_name, last_name, afm, email, phone) values ('Abner', 'Osbaldeston', 75348713, 'aosbaldeston5c@youtu.be', '1011011168');
insert into customers (first_name, last_name, afm, email, phone) values ('Emmy', 'Fray', 35409668, 'efray5d@msn.com', '9148383079');
insert into customers (first_name, last_name, afm, email, phone) values ('Waiter', 'Jolliss', 14067861, 'wjolliss5e@chicagotribune.com', '8304781538');
insert into customers (first_name, last_name, afm, email, phone) values ('Lisabeth', 'Vasyunin', 12556819, 'lvasyunin5f@mapquest.com', '1842230322');
insert into customers (first_name, last_name, afm, email, phone) values ('Felicity', 'Herity', 98333310, 'fherity5g@twitpic.com', '8308813405');
insert into customers (first_name, last_name, afm, email, phone) values ('Irv', 'Sutty', 94514532, 'isutty5h@theglobeandmail.com', '8492102467');
insert into customers (first_name, last_name, afm, email, phone) values ('Tara', 'Orrett', 97910554, 'torrett5i@wisc.edu', '4358231109');
insert into customers (first_name, last_name, afm, email, phone) values ('Celia', 'Oleksiak', 19925780, 'coleksiak5j@w3.org', '3524281901');
insert into customers (first_name, last_name, afm, email, phone) values ('Morley', 'Bloomfield', 17617926, 'mbloomfield5k@state.tx.us', '3716333103');
insert into customers (first_name, last_name, afm, email, phone) values ('Klara', 'Slemming', 54843263, 'kslemming5l@xrea.com', '2523744771');
insert into customers (first_name, last_name, afm, email, phone) values ('Valerie', 'Gley', 85084953, 'vgley5m@mashable.com', '8125402039');
insert into customers (first_name, last_name, afm, email, phone) values ('Gordon', 'Sheriff', 23613176, 'gsheriff5n@infoseek.co.jp', '4729315421');
insert into customers (first_name, last_name, afm, email, phone) values ('Leia', 'Klempke', 41238491, 'lklempke5o@technorati.com', '6428040285');
insert into customers (first_name, last_name, afm, email, phone) values ('Garold', 'Island', 98999590, 'gisland5p@vk.com', '9689635736');
insert into customers (first_name, last_name, afm, email, phone) values ('Wanids', 'Spollen', 43377841, 'wspollen5q@xinhuanet.com', '7149439661');
insert into customers (first_name, last_name, afm, email, phone) values ('Stillmann', 'Miroy', 17649958, 'smiroy5r@webeden.co.uk', '2881807767');
insert into customers (first_name, last_name, afm, email, phone) values ('Waldon', 'Peck', 72289021, 'wpeck5s@ihg.com', '4617786415');
insert into customers (first_name, last_name, afm, email, phone) values ('Zahara', 'Peizer', 29226869, 'zpeizer5t@harvard.edu', '1009351984');
insert into customers (first_name, last_name, afm, email, phone) values ('Mohandis', 'Davsley', 79075137, 'mdavsley5u@slashdot.org', '7333466045');
insert into customers (first_name, last_name, afm, email, phone) values ('Cordelia', 'Pruvost', 56425155, 'cpruvost5v@php.net', '7686927991');
insert into customers (first_name, last_name, afm, email, phone) values ('Kerianne', 'Bowerman', 97794267, 'kbowerman5w@nba.com', '6458917729');
insert into customers (first_name, last_name, afm, email, phone) values ('Rolf', 'Teather', 81359559, 'rteather5x@jigsy.com', '7533377472');
insert into customers (first_name, last_name, afm, email, phone) values ('Loria', 'Buffin', 16758758, 'lbuffin5y@mapy.cz', '5205925387');
insert into customers (first_name, last_name, afm, email, phone) values ('Georgiana', 'O''Longain', 43493572, 'golongain5z@stumbleupon.com', '8735976655');
insert into customers (first_name, last_name, afm, email, phone) values ('Esta', 'Guillart', 29192792, 'eguillart60@seattletimes.com', '5384059993');
insert into customers (first_name, last_name, afm, email, phone) values ('Annmarie', 'Kellaway', 67034056, 'akellaway61@ezinearticles.com', '1766581300');
insert into customers (first_name, last_name, afm, email, phone) values ('Dunstan', 'Josovitz', 21307338, 'djosovitz62@msn.com', '1064125100');
insert into customers (first_name, last_name, afm, email, phone) values ('Justin', 'Blampied', 31285812, 'jblampied63@nasa.gov', '1146778654');
insert into customers (first_name, last_name, afm, email, phone) values ('Tiff', 'Ughetti', 71263787, 'tughetti64@nba.com', '4241988074');
insert into customers (first_name, last_name, afm, email, phone) values ('Gilda', 'McGettrick', 37731274, 'gmcgettrick65@state.tx.us', '5267061003');
insert into customers (first_name, last_name, afm, email, phone) values ('Luce', 'Dunton', 69201075, 'ldunton66@smugmug.com', '9272146222');
insert into customers (first_name, last_name, afm, email, phone) values ('Madelon', 'Cattini', 12783217, 'mcattini67@upenn.edu', '1273540376');
insert into customers (first_name, last_name, afm, email, phone) values ('Friederike', 'Doul', 15999676, 'fdoul68@alibaba.com', '1265155146');
insert into customers (first_name, last_name, afm, email, phone) values ('Shelby', 'MacAnulty', 19466217, 'smacanulty69@printfriendly.com', '5627533411');
insert into customers (first_name, last_name, afm, email, phone) values ('Massimo', 'Eustes', 45887787, 'meustes6a@washington.edu', '6677692064');
insert into customers (first_name, last_name, afm, email, phone) values ('Elfrieda', 'Redsall', 12497847, 'eredsall6b@dedecms.com', '4647751783');
insert into customers (first_name, last_name, afm, email, phone) values ('Carr', 'Shepstone', 25002793, 'cshepstone6c@eventbrite.com', '6213581111');
insert into customers (first_name, last_name, afm, email, phone) values ('Irene', 'Cordner', 31762764, 'icordner6d@hibu.com', '1113129551');
insert into customers (first_name, last_name, afm, email, phone) values ('Rozalin', 'Petkov', 33111878, 'rpetkov6e@accuweather.com', '7141251651');
insert into customers (first_name, last_name, afm, email, phone) values ('Rodrigo', 'Matveiko', 49440690, 'rmatveiko6f@unc.edu', '8833065749');
insert into customers (first_name, last_name, afm, email, phone) values ('Emmett', 'Elham', 99407021, 'eelham6g@oracle.com', '4219826096');
insert into customers (first_name, last_name, afm, email, phone) values ('Marje', 'McKaile', 34880407, 'mmckaile6h@tiny.cc', '5112784209');
insert into customers (first_name, last_name, afm, email, phone) values ('Gweneth', 'Boodell', 44419217, 'gboodell6i@scientificamerican.com', '4783883871');
insert into customers (first_name, last_name, afm, email, phone) values ('Whit', 'Robroe', 73721555, 'wrobroe6j@4shared.com', '5546538789');
insert into customers (first_name, last_name, afm, email, phone) values ('Constantia', 'Roubay', 31000098, 'croubay6k@cbc.ca', '3762486686');
insert into customers (first_name, last_name, afm, email, phone) values ('Bree', 'Santi', 71971134, 'bsanti6l@studiopress.com', '2931224459');
insert into customers (first_name, last_name, afm, email, phone) values ('Lindy', 'Defrain', 24256635, 'ldefrain6m@techcrunch.com', '7859031646');
insert into customers (first_name, last_name, afm, email, phone) values ('Brynne', 'Pott', 89492159, 'bpott6n@businesswire.com', '3314453238');
insert into customers (first_name, last_name, afm, email, phone) values ('Chancey', 'Swalough', 54589800, 'cswalough6o@nih.gov', '8748500500');
insert into customers (first_name, last_name, afm, email, phone) values ('Brunhilda', 'Waud', 86693951, 'bwaud6p@youku.com', '8074106258');
insert into customers (first_name, last_name, afm, email, phone) values ('Alexandre', 'Flipek', 70075533, 'aflipek6q@rambler.ru', '3493383297');
insert into customers (first_name, last_name, afm, email, phone) values ('Huntley', 'Shawl', 42199909, 'hshawl6r@studiopress.com', '5873864417');
insert into customers (first_name, last_name, afm, email, phone) values ('Bessy', 'Lamblot', 58265294, 'blamblot6s@aboutads.info', '1116942841');
insert into customers (first_name, last_name, afm, email, phone) values ('Dinah', 'Wynn', 49238354, 'dwynn6t@google.ru', '2512995598');
insert into customers (first_name, last_name, afm, email, phone) values ('Glennie', 'Coburn', 53298653, 'gcoburn6u@guardian.co.uk', '5855216739');
insert into customers (first_name, last_name, afm, email, phone) values ('Ronnie', 'Roscoe', 26776500, 'rroscoe6v@yolasite.com', '7275616805');
insert into customers (first_name, last_name, afm, email, phone) values ('Raymund', 'Weben', 86611731, 'rweben6w@canalblog.com', '1569889286');
insert into customers (first_name, last_name, afm, email, phone) values ('Archibold', 'Ghelerdini', 17571532, 'aghelerdini6x@mysql.com', '1765739314');
insert into customers (first_name, last_name, afm, email, phone) values ('Dode', 'Wickes', 71422663, 'dwickes6y@cdc.gov', '8403694926');
insert into customers (first_name, last_name, afm, email, phone) values ('Myles', 'Crauford', 17966337, 'mcrauford6z@google.com', '4185221207');
insert into customers (first_name, last_name, afm, email, phone) values ('Andros', 'Kryszka', 66405654, 'akryszka70@mayoclinic.com', '8928626241');
insert into customers (first_name, last_name, afm, email, phone) values ('Vanny', 'Reichert', 26656937, 'vreichert71@dion.ne.jp', '8075039197');
insert into customers (first_name, last_name, afm, email, phone) values ('Cchaddie', 'Lanchester', 12105058, 'clanchester72@topsy.com', '4767637212');
insert into customers (first_name, last_name, afm, email, phone) values ('Nikos', 'Dumberrill', 15026798, 'ndumberrill73@spiegel.de', '2325323116');
insert into customers (first_name, last_name, afm, email, phone) values ('Ellerey', 'Bengal', 84950553, 'ebengal74@wiley.com', '2502971934');
insert into customers (first_name, last_name, afm, email, phone) values ('Seamus', 'Ricketts', 50689477, 'sricketts75@com.com', '8702356136');
insert into customers (first_name, last_name, afm, email, phone) values ('Marcy', 'de Lloyd', 20627308, 'mdelloyd76@wix.com', '3643677884');
insert into customers (first_name, last_name, afm, email, phone) values ('Nadiya', 'Matisoff', 26045670, 'nmatisoff77@yandex.ru', '2162306905');
insert into customers (first_name, last_name, afm, email, phone) values ('Grannie', 'Troke', 68145155, 'gtroke78@xinhuanet.com', '8966635495');
insert into customers (first_name, last_name, afm, email, phone) values ('Douglass', 'Foan', 51394972, 'dfoan79@qq.com', '9784251488');
insert into customers (first_name, last_name, afm, email, phone) values ('Saundra', 'Pipworth', 40340630, 'spipworth7a@google.com', '9865658971');
insert into customers (first_name, last_name, afm, email, phone) values ('Katharyn', 'Daenen', 29278406, 'kdaenen7b@jiathis.com', '4147982430');
insert into customers (first_name, last_name, afm, email, phone) values ('Douglas', 'Mary', 22800321, 'dmary7c@cmu.edu', '6863488785');
insert into customers (first_name, last_name, afm, email, phone) values ('Lazar', 'Stollery', 30059753, 'lstollery7d@ed.gov', '9911989840');
insert into customers (first_name, last_name, afm, email, phone) values ('Stearn', 'Hurche', 55764886, 'shurche7e@uiuc.edu', '4666246551');
insert into customers (first_name, last_name, afm, email, phone) values ('Wilhelm', 'Overnell', 27411310, 'wovernell7f@tumblr.com', '8803901679');
insert into customers (first_name, last_name, afm, email, phone) values ('Tamarah', 'Rusk', 66310235, 'trusk7g@phpbb.com', '2273549479');
insert into customers (first_name, last_name, afm, email, phone) values ('Briny', 'Boshers', 48340617, 'bboshers7h@wikimedia.org', '1727104555');
insert into customers (first_name, last_name, afm, email, phone) values ('Marchall', 'Flatley', 16004661, 'mflatley7i@gnu.org', '5253439772');
insert into customers (first_name, last_name, afm, email, phone) values ('Sollie', 'Ivashechkin', 65329702, 'sivashechkin7j@jiathis.com', '2799534609');
insert into customers (first_name, last_name, afm, email, phone) values ('Paolina', 'Davys', 72071195, 'pdavys7k@ft.com', '3847169023');
insert into customers (first_name, last_name, afm, email, phone) values ('Cort', 'Burnet', 25366977, 'cburnet7l@artisteer.com', '1576293516');
insert into customers (first_name, last_name, afm, email, phone) values ('Darya', 'Roos', 34035494, 'droos7m@fda.gov', '7399933201');
insert into customers (first_name, last_name, afm, email, phone) values ('Dionysus', 'Larver', 92603488, 'dlarver7n@csmonitor.com', '4341112649');
insert into customers (first_name, last_name, afm, email, phone) values ('Natal', 'Burel', 26422927, 'nburel7o@taobao.com', '5263589266');
insert into customers (first_name, last_name, afm, email, phone) values ('Nobe', 'Conneely', 66565715, 'nconneely7p@chronoengine.com', '1118135555');
insert into customers (first_name, last_name, afm, email, phone) values ('Nelly', 'Caruth', 72544856, 'ncaruth7q@tuttocitta.it', '9868549585');
insert into customers (first_name, last_name, afm, email, phone) values ('Bobbee', 'Etheridge', 57771710, 'betheridge7r@live.com', '2977797855');
insert into customers (first_name, last_name, afm, email, phone) values ('Gladys', 'Dibson', 81465246, 'gdibson7s@cbc.ca', '6388926476');
insert into customers (first_name, last_name, afm, email, phone) values ('Mario', 'Fursey', 48188019, 'mfursey7t@webs.com', '7169718842');
insert into customers (first_name, last_name, afm, email, phone) values ('Maddi', 'Faircliff', 15126087, 'mfaircliff7u@springer.com', '9381539944');
insert into customers (first_name, last_name, afm, email, phone) values ('Jonathon', 'Bernardez', 44915742, 'jbernardez7v@mapy.cz', '6347650931');
insert into customers (first_name, last_name, afm, email, phone) values ('Roderic', 'Powney', 84111574, 'rpowney7w@devhub.com', '5181057801');
insert into customers (first_name, last_name, afm, email, phone) values ('Tiebout', 'MacIver', 17181192, 'tmaciver7x@domainmarket.com', '7093515196');
insert into customers (first_name, last_name, afm, email, phone) values ('Dehlia', 'Lothlorien', 52447846, 'dlothlorien7y@quantcast.com', '2415506675');
insert into customers (first_name, last_name, afm, email, phone) values ('Maryjane', 'Delacour', 30696065, 'mdelacour7z@miibeian.gov.cn', '8245915213');
insert into customers (first_name, last_name, afm, email, phone) values ('Isidore', 'Benardette', 36960580, 'ibenardette80@hud.gov', '4083686410');
insert into customers (first_name, last_name, afm, email, phone) values ('Damon', 'Hagyard', 30886727, 'dhagyard81@nsw.gov.au', '8193368272');
insert into customers (first_name, last_name, afm, email, phone) values ('Nappie', 'Milham', 51556065, 'nmilham82@ucsd.edu', '1666427400');
insert into customers (first_name, last_name, afm, email, phone) values ('Stanleigh', 'Greveson', 14983036, 'sgreveson83@myspace.com', '2277437261');
insert into customers (first_name, last_name, afm, email, phone) values ('Arney', 'Soane', 93476831, 'asoane84@cbsnews.com', '6606943418');
insert into customers (first_name, last_name, afm, email, phone) values ('Willdon', 'Beddoes', 27448715, 'wbeddoes85@storify.com', '6238964134');
insert into customers (first_name, last_name, afm, email, phone) values ('El', 'McMenamie', 60779813, 'emcmenamie86@cdbaby.com', '7315762091');
insert into customers (first_name, last_name, afm, email, phone) values ('Adella', 'Onyon', 91134454, 'aonyon87@canalblog.com', '2827356788');
insert into customers (first_name, last_name, afm, email, phone) values ('Barbabra', 'Kimbley', 78971443, 'bkimbley88@plala.or.jp', '1361046875');
insert into customers (first_name, last_name, afm, email, phone) values ('Fredrick', 'Trymme', 99076294, 'ftrymme89@fda.gov', '2981785994');
insert into customers (first_name, last_name, afm, email, phone) values ('Corey', 'Bercevelo', 21468518, 'cbercevelo8a@army.mil', '3942830891');
insert into customers (first_name, last_name, afm, email, phone) values ('Alard', 'Botte', 89143769, 'abotte8b@merriam-webster.com', '7628663670');
insert into customers (first_name, last_name, afm, email, phone) values ('Livvie', 'Leverich', 37576041, 'lleverich8c@dot.gov', '6643950482');
insert into customers (first_name, last_name, afm, email, phone) values ('Allard', 'Blind', 27204504, 'ablind8d@statcounter.com', '9618901158');
insert into customers (first_name, last_name, afm, email, phone) values ('Brigida', 'Jouannot', 31849587, 'bjouannot8e@goodreads.com', '8559226222');
insert into customers (first_name, last_name, afm, email, phone) values ('Amye', 'Keedwell', 16889101, 'akeedwell8f@alexa.com', '8528250562');
insert into customers (first_name, last_name, afm, email, phone) values ('Kara-lynn', 'Longea', 17430248, 'klongea8g@amazon.co.jp', '1898102384');
insert into customers (first_name, last_name, afm, email, phone) values ('Nesta', 'Corbridge', 22875745, 'ncorbridge8h@ameblo.jp', '2275408234');
insert into customers (first_name, last_name, afm, email, phone) values ('Corilla', 'Skill', 24122494, 'cskill8i@cisco.com', '6693829505');
insert into customers (first_name, last_name, afm, email, phone) values ('Ely', 'Purchase', 74351612, 'epurchase8j@foxnews.com', '2414024542');
insert into customers (first_name, last_name, afm, email, phone) values ('Falkner', 'Valero', 86440986, 'fvalero8k@ucoz.com', '8233502837');
insert into customers (first_name, last_name, afm, email, phone) values ('Jacquelyn', 'Plenderleith', 17845019, 'jplenderleith8l@weibo.com', '6914700845');
insert into customers (first_name, last_name, afm, email, phone) values ('Oralie', 'Lampe', 63557213, 'olampe8m@github.com', '1542506277');
insert into customers (first_name, last_name, afm, email, phone) values ('Riannon', 'Spanswick', 21798795, 'rspanswick8n@cdc.gov', '1909565607');
insert into customers (first_name, last_name, afm, email, phone) values ('Nevil', 'Sprionghall', 38435403, 'nsprionghall8o@yandex.ru', '3033840603');
insert into customers (first_name, last_name, afm, email, phone) values ('Austine', 'Farren', 87957170, 'afarren8p@ebay.com', '7206249178');
insert into customers (first_name, last_name, afm, email, phone) values ('Merrie', 'Thorwarth', 42468410, 'mthorwarth8q@irs.gov', '2982272916');
insert into customers (first_name, last_name, afm, email, phone) values ('Quent', 'Nelligan', 46896095, 'qnelligan8r@house.gov', '3378553531');
insert into customers (first_name, last_name, afm, email, phone) values ('Cicily', 'Bineham', 99412359, 'cbineham8s@jimdo.com', '9102603970');
insert into customers (first_name, last_name, afm, email, phone) values ('Bibbye', 'Torvey', 99419312, 'btorvey8t@vinaora.com', '9108192836');
insert into customers (first_name, last_name, afm, email, phone) values ('Charles', 'Heinrich', 68190490, 'cheinrich8u@hao123.com', '2107402926');
insert into customers (first_name, last_name, afm, email, phone) values ('Serene', 'Pringer', 95189651, 'springer8v@hugedomains.com', '4788446077');
insert into customers (first_name, last_name, afm, email, phone) values ('Irvine', 'Hamshaw', 25732848, 'ihamshaw8w@cisco.com', '5261336656');
insert into customers (first_name, last_name, afm, email, phone) values ('Dasie', 'Skeene', 29126064, 'dskeene8x@amazon.co.jp', '3909501857');
insert into customers (first_name, last_name, afm, email, phone) values ('Bo', 'McAneny', 10368099, 'bmcaneny8y@cbsnews.com', '9836555882');
insert into customers (first_name, last_name, afm, email, phone) values ('Frankie', 'Ewbanke', 75639588, 'fewbanke8z@narod.ru', '6931951743');
insert into customers (first_name, last_name, afm, email, phone) values ('Rhianna', 'Bollini', 13909508, 'rbollini90@google.ca', '7215253788');
insert into customers (first_name, last_name, afm, email, phone) values ('Sansone', 'Payne', 11056144, 'spayne91@ehow.com', '5701148825');
insert into customers (first_name, last_name, afm, email, phone) values ('Asia', 'Landsman', 35964582, 'alandsman92@who.int', '4757762332');
insert into customers (first_name, last_name, afm, email, phone) values ('Berton', 'Scotti', 70486316, 'bscotti93@alexa.com', '3506934856');
insert into customers (first_name, last_name, afm, email, phone) values ('Buck', 'Scedall', 24579583, 'bscedall94@bravesites.com', '5538220203');
insert into customers (first_name, last_name, afm, email, phone) values ('Kristoffer', 'Cleare', 93070299, 'kcleare95@prlog.org', '2988435501');
insert into customers (first_name, last_name, afm, email, phone) values ('Felecia', 'Ashe', 86929394, 'fashe96@dedecms.com', '3391821703');
insert into customers (first_name, last_name, afm, email, phone) values ('Hermine', 'Espine', 76986521, 'hespine97@wix.com', '1952209536');
insert into customers (first_name, last_name, afm, email, phone) values ('Dione', 'Lordon', 27384754, 'dlordon98@imdb.com', '1621562838');
insert into customers (first_name, last_name, afm, email, phone) values ('Elsi', 'Mott', 40782805, 'emott99@pcworld.com', '6022396268');
insert into customers (first_name, last_name, afm, email, phone) values ('Leila', 'Drayton', 69984930, 'ldrayton9a@mysql.com', '7847923774');
insert into customers (first_name, last_name, afm, email, phone) values ('Jose', 'Mieville', 41586438, 'jmieville9b@123-reg.co.uk', '4061319975');
insert into customers (first_name, last_name, afm, email, phone) values ('Tarah', 'Boteman', 36707298, 'tboteman9c@cafepress.com', '9373982509');
insert into customers (first_name, last_name, afm, email, phone) values ('Jennee', 'Antecki', 84793963, 'jantecki9d@biblegateway.com', '4218946477');
insert into customers (first_name, last_name, afm, email, phone) values ('Catie', 'Dowse', 30901517, 'cdowse9e@cloudflare.com', '1963506580');
insert into customers (first_name, last_name, afm, email, phone) values ('Shannen', 'Karlowicz', 23963684, 'skarlowicz9f@redcross.org', '4004686970');
insert into customers (first_name, last_name, afm, email, phone) values ('Cassondra', 'Dunderdale', 53792806, 'cdunderdale9g@google.it', '2848694021');
insert into customers (first_name, last_name, afm, email, phone) values ('Hillard', 'Simkin', 32897334, 'hsimkin9h@oakley.com', '1912445533');
insert into customers (first_name, last_name, afm, email, phone) values ('Piper', 'Clifton', 99065196, 'pclifton9i@facebook.com', '7344687634');
insert into customers (first_name, last_name, afm, email, phone) values ('Louis', 'Leneham', 44353279, 'lleneham9j@google.de', '6664700787');
insert into customers (first_name, last_name, afm, email, phone) values ('Jaine', 'Lackham', 78167564, 'jlackham9k@hao123.com', '5169313647');
insert into customers (first_name, last_name, afm, email, phone) values ('Emmey', 'Evers', 19165232, 'eevers9l@bizjournals.com', '7349790849');
insert into customers (first_name, last_name, afm, email, phone) values ('Halsy', 'Butland', 22656039, 'hbutland9m@redcross.org', '6359957574');
insert into customers (first_name, last_name, afm, email, phone) values ('Myrwyn', 'Cracie', 74480550, 'mcracie9n@ehow.com', '4833650264');
insert into customers (first_name, last_name, afm, email, phone) values ('Maurene', 'Morecomb', 96842398, 'mmorecomb9o@e-recht24.de', '6934204388');
insert into customers (first_name, last_name, afm, email, phone) values ('Lebbie', 'Vasyanin', 67789925, 'lvasyanin9p@umich.edu', '2815189865');
insert into customers (first_name, last_name, afm, email, phone) values ('Neille', 'Knightsbridge', 58226219, 'nknightsbridge9q@domainmarket.com', '6739253311');
insert into customers (first_name, last_name, afm, email, phone) values ('Kev', 'Snaden', 93954624, 'ksnaden9r@mac.com', '1379720702');
insert into customers (first_name, last_name, afm, email, phone) values ('Brewster', 'Bautiste', 65492779, 'bbautiste9s@altervista.org', '8228723046');
insert into customers (first_name, last_name, afm, email, phone) values ('Mycah', 'Copp', 73770672, 'mcopp9t@answers.com', '5706964182');
insert into customers (first_name, last_name, afm, email, phone) values ('Tammie', 'Malec', 32569975, 'tmalec9u@deliciousdays.com', '3636599191');
insert into customers (first_name, last_name, afm, email, phone) values ('Cathy', 'Reedy', 73505966, 'creedy9v@linkedin.com', '6936331315');
insert into customers (first_name, last_name, afm, email, phone) values ('Carlita', 'Buxcey', 89466299, 'cbuxcey9w@live.com', '4486262848');
insert into customers (first_name, last_name, afm, email, phone) values ('Constancia', 'Risdale', 24471750, 'crisdale9x@msu.edu', '2945130098');
insert into customers (first_name, last_name, afm, email, phone) values ('Patsy', 'Billingsly', 48521245, 'pbillingsly9y@washington.edu', '4801819873');
insert into customers (first_name, last_name, afm, email, phone) values ('Tammy', 'Hearsey', 38629088, 'thearsey9z@state.gov', '4844512579');
insert into customers (first_name, last_name, afm, email, phone) values ('Gerti', 'Drieu', 73937067, 'gdrieua0@123-reg.co.uk', '4396596535');
insert into customers (first_name, last_name, afm, email, phone) values ('Edgar', 'Prydden', 16231889, 'epryddena1@biblegateway.com', '9388529282');
insert into customers (first_name, last_name, afm, email, phone) values ('Theresa', 'Kubec', 97166601, 'tkubeca2@domainmarket.com', '2973816436');
insert into customers (first_name, last_name, afm, email, phone) values ('Sherwin', 'Redd', 19346657, 'sredda3@unesco.org', '1836873452');
insert into customers (first_name, last_name, afm, email, phone) values ('Wilie', 'Langlais', 52384467, 'wlanglaisa4@who.int', '5074150491');
insert into customers (first_name, last_name, afm, email, phone) values ('Micki', 'Swin', 73395923, 'mswina5@sciencedaily.com', '2117751326');
insert into customers (first_name, last_name, afm, email, phone) values ('Una', 'Hoys', 15663929, 'uhoysa6@walmart.com', '6149898368');
insert into customers (first_name, last_name, afm, email, phone) values ('Rowe', 'Lafuente', 65664820, 'rlafuentea7@si.edu', '8904460161');
insert into customers (first_name, last_name, afm, email, phone) values ('Cassy', 'Dunniom', 31949528, 'cdunnioma8@usa.gov', '9629178235');
insert into customers (first_name, last_name, afm, email, phone) values ('Phillie', 'Tippetts', 41090503, 'ptippettsa9@g.co', '3559732068');
insert into customers (first_name, last_name, afm, email, phone) values ('Meredith', 'Behan', 56319863, 'mbehanaa@icq.com', '7515845770');
insert into customers (first_name, last_name, afm, email, phone) values ('Blancha', 'Andric', 20695447, 'bandricab@sitemeter.com', '3566286555');
insert into customers (first_name, last_name, afm, email, phone) values ('Yetty', 'Ehrat', 93459431, 'yehratac@illinois.edu', '4626051136');
insert into customers (first_name, last_name, afm, email, phone) values ('Larine', 'Scarrott', 75217958, 'lscarrottad@imageshack.us', '5871808470');
insert into customers (first_name, last_name, afm, email, phone) values ('Aura', 'Merrilees', 53473683, 'amerrileesae@blogger.com', '9485897208');
insert into customers (first_name, last_name, afm, email, phone) values ('Portia', 'Gatchel', 28240974, 'pgatchelaf@google.fr', '2809921519');
insert into customers (first_name, last_name, afm, email, phone) values ('Trevor', 'Reasun', 14212900, 'treasunag@canalblog.com', '1788226722');
insert into customers (first_name, last_name, afm, email, phone) values ('Giuditta', 'Hurnell', 43736050, 'ghurnellah@phpbb.com', '1446422296');
insert into customers (first_name, last_name, afm, email, phone) values ('Ludovika', 'Paterno', 11024696, 'lpaternoai@merriam-webster.com', '8882164322');
insert into customers (first_name, last_name, afm, email, phone) values ('Daron', 'Cardus', 29897165, 'dcardusaj@theglobeandmail.com', '9428583572');
insert into customers (first_name, last_name, afm, email, phone) values ('Willow', 'Nelmes', 89808279, 'wnelmesak@va.gov', '8323109604');
insert into customers (first_name, last_name, afm, email, phone) values ('Aristotle', 'Murty', 86487149, 'amurtyal@myspace.com', '2406479506');
insert into customers (first_name, last_name, afm, email, phone) values ('Mohandas', 'Godbold', 58040034, 'mgodboldam@ox.ac.uk', '9001364065');
insert into customers (first_name, last_name, afm, email, phone) values ('Bertie', 'Heathorn', 27666463, 'bheathornan@artisteer.com', '3047832408');
insert into customers (first_name, last_name, afm, email, phone) values ('Lynn', 'Simpkin', 11883566, 'lsimpkinao@github.com', '7284181244');
insert into customers (first_name, last_name, afm, email, phone) values ('Germayne', 'Jerok', 95265610, 'gjerokap@bloglines.com', '7692386450');
insert into customers (first_name, last_name, afm, email, phone) values ('Sydel', 'Kenrack', 89651062, 'skenrackaq@tiny.cc', '7031758366');
insert into customers (first_name, last_name, afm, email, phone) values ('Erroll', 'Decker', 47406317, 'edeckerar@discuz.net', '9729176270');
insert into customers (first_name, last_name, afm, email, phone) values ('Olivier', 'Tremeer', 86772968, 'otremeeras@skyrock.com', '2385128549');
insert into customers (first_name, last_name, afm, email, phone) values ('Cass', 'Hannabuss', 68167178, 'channabussat@4shared.com', '3484411993');
insert into customers (first_name, last_name, afm, email, phone) values ('Roseanna', 'Craddock', 23420334, 'rcraddockau@salon.com', '6708415755');
insert into customers (first_name, last_name, afm, email, phone) values ('Witty', 'Drinkhill', 94628159, 'wdrinkhillav@digg.com', '6009811000');
insert into customers (first_name, last_name, afm, email, phone) values ('Gilda', 'Van den Oord', 93903920, 'gvandenoordaw@list-manage.com', '4616996989');
insert into customers (first_name, last_name, afm, email, phone) values ('Free', 'O''Flynn', 59851033, 'foflynnax@jalbum.net', '1256208596');
insert into customers (first_name, last_name, afm, email, phone) values ('Lay', 'Brigden', 77868655, 'lbrigdenay@nydailynews.com', '6876175177');
insert into customers (first_name, last_name, afm, email, phone) values ('Beverie', 'Matkin', 23395244, 'bmatkinaz@hhs.gov', '8406448464');
insert into customers (first_name, last_name, afm, email, phone) values ('Audie', 'MacGilfoyle', 78819155, 'amacgilfoyleb0@amazon.co.jp', '4308054901');
insert into customers (first_name, last_name, afm, email, phone) values ('Dame', 'Cossem', 98639703, 'dcossemb1@flickr.com', '1106156955');
insert into customers (first_name, last_name, afm, email, phone) values ('Sue', 'Isacoff', 27482832, 'sisacoffb2@ask.com', '1165976726');
insert into customers (first_name, last_name, afm, email, phone) values ('Gracie', 'Baskeyfield', 90379603, 'gbaskeyfieldb3@plala.or.jp', '6215114798');
insert into customers (first_name, last_name, afm, email, phone) values ('Kendre', 'Ostrich', 56847366, 'kostrichb4@archive.org', '1069611262');
insert into customers (first_name, last_name, afm, email, phone) values ('Winfred', 'Trevers', 90255936, 'wtreversb5@unblog.fr', '7287392708');
insert into customers (first_name, last_name, afm, email, phone) values ('Karylin', 'Lohde', 97602075, 'klohdeb6@sourceforge.net', '4274688596');
insert into customers (first_name, last_name, afm, email, phone) values ('Kassi', 'Smidmoor', 19128763, 'ksmidmoorb7@salon.com', '1634298791');
insert into customers (first_name, last_name, afm, email, phone) values ('Alfred', 'Rookesby', 84028454, 'arookesbyb8@printfriendly.com', '1515088026');
insert into customers (first_name, last_name, afm, email, phone) values ('Othelia', 'Ilyunin', 28212729, 'oilyuninb9@noaa.gov', '1183113006');
insert into customers (first_name, last_name, afm, email, phone) values ('Fitz', 'Nolton', 14704088, 'fnoltonba@baidu.com', '7458120523');
insert into customers (first_name, last_name, afm, email, phone) values ('Emelda', 'Reggiani', 49281733, 'ereggianibb@marketwatch.com', '6299456084');
insert into customers (first_name, last_name, afm, email, phone) values ('Rory', 'Guirard', 55067564, 'rguirardbc@omniture.com', '4392153116');
insert into customers (first_name, last_name, afm, email, phone) values ('Bartel', 'Ruxton', 19022073, 'bruxtonbd@simplemachines.org', '3733281308');
insert into customers (first_name, last_name, afm, email, phone) values ('Mirna', 'Pancost', 36187998, 'mpancostbe@joomla.org', '1293019229');
insert into customers (first_name, last_name, afm, email, phone) values ('Camala', 'Oswal', 76915724, 'coswalbf@ameblo.jp', '6912978984');
insert into customers (first_name, last_name, afm, email, phone) values ('Kirby', 'd''Arcy', 85386980, 'kdarcybg@ibm.com', '5027628199');
insert into customers (first_name, last_name, afm, email, phone) values ('Jermain', 'Pittwood', 85372025, 'jpittwoodbh@jiathis.com', '2053844176');
insert into customers (first_name, last_name, afm, email, phone) values ('Monte', 'Kegan', 71215689, 'mkeganbi@about.me', '9524103779');
insert into customers (first_name, last_name, afm, email, phone) values ('Minnie', 'Tessington', 82449373, 'mtessingtonbj@dell.com', '2034840718');
insert into customers (first_name, last_name, afm, email, phone) values ('Dorolice', 'Cammack', 15791033, 'dcammackbk@xinhuanet.com', '7954236927');
insert into customers (first_name, last_name, afm, email, phone) values ('Kim', 'Wegner', 37593321, 'kwegnerbl@upenn.edu', '2981780755');
insert into customers (first_name, last_name, afm, email, phone) values ('Ambrosio', 'Scarlin', 78443030, 'ascarlinbm@howstuffworks.com', '1403928266');
insert into customers (first_name, last_name, afm, email, phone) values ('Dev', 'Long', 66084267, 'dlongbn@digg.com', '1974181498');
insert into customers (first_name, last_name, afm, email, phone) values ('Pierce', 'Fullom', 60944185, 'pfullombo@ning.com', '4471380867');
insert into customers (first_name, last_name, afm, email, phone) values ('Iseabal', 'Devereu', 38291720, 'idevereubp@live.com', '8976675338');
insert into customers (first_name, last_name, afm, email, phone) values ('Rabbi', 'Feldbau', 41186965, 'rfeldbaubq@wikipedia.org', '3723142171');
insert into customers (first_name, last_name, afm, email, phone) values ('Dillie', 'Hallmark', 96333693, 'dhallmarkbr@nifty.com', '3046212851');
insert into customers (first_name, last_name, afm, email, phone) values ('Brittni', 'Thyng', 48994464, 'bthyngbs@amazon.co.jp', '8797827358');
insert into customers (first_name, last_name, afm, email, phone) values ('Lory', 'Bentame', 77867161, 'lbentamebt@arstechnica.com', '7811115330');
insert into customers (first_name, last_name, afm, email, phone) values ('Huntlee', 'Ivankin', 94044608, 'hivankinbu@blogspot.com', '1463820423');
insert into customers (first_name, last_name, afm, email, phone) values ('Herbert', 'Ghiron', 77370632, 'hghironbv@google.fr', '9409092067');
insert into customers (first_name, last_name, afm, email, phone) values ('Bert', 'Galliard', 99154390, 'bgalliardbw@elegantthemes.com', '4363235150');
insert into customers (first_name, last_name, afm, email, phone) values ('Calhoun', 'McLemon', 17330849, 'cmclemonbx@livejournal.com', '1414013872');
insert into customers (first_name, last_name, afm, email, phone) values ('Gilbertina', 'Oag', 53529901, 'goagby@un.org', '6191246911');
insert into customers (first_name, last_name, afm, email, phone) values ('Buck', 'Tarquinio', 12865550, 'btarquiniobz@umich.edu', '7245298965');
insert into customers (first_name, last_name, afm, email, phone) values ('Josefa', 'Mollison', 76610326, 'jmollisonc0@oakley.com', '4243273147');
insert into customers (first_name, last_name, afm, email, phone) values ('Cornall', 'Quipp', 93473447, 'cquippc1@instagram.com', '6932719704');
insert into customers (first_name, last_name, afm, email, phone) values ('Arri', 'Bernard', 84693395, 'abernardc2@engadget.com', '7863917895');
insert into customers (first_name, last_name, afm, email, phone) values ('Sara-ann', 'Rooney', 18977175, 'srooneyc3@studiopress.com', '7682151534');
insert into customers (first_name, last_name, afm, email, phone) values ('Arielle', 'Puddin', 80796569, 'apuddinc4@dropbox.com', '8241087774');
insert into customers (first_name, last_name, afm, email, phone) values ('Carlos', 'Leathart', 24889103, 'cleathartc5@virginia.edu', '8282533385');
insert into customers (first_name, last_name, afm, email, phone) values ('Prudence', 'Ouldcott', 31651931, 'pouldcottc6@google.pl', '7638707407');
insert into customers (first_name, last_name, afm, email, phone) values ('Halsey', 'McVanamy', 35708988, 'hmcvanamyc7@cam.ac.uk', '6085512221');
insert into customers (first_name, last_name, afm, email, phone) values ('Guthrie', 'Mangham', 29204016, 'gmanghamc8@unblog.fr', '2105285360');
insert into customers (first_name, last_name, afm, email, phone) values ('Erwin', 'Braffington', 91476709, 'ebraffingtonc9@hc360.com', '7597767984');
insert into customers (first_name, last_name, afm, email, phone) values ('Rowen', 'Edworthy', 93467690, 'redworthyca@techcrunch.com', '2082318531');
insert into customers (first_name, last_name, afm, email, phone) values ('Joel', 'Kalf', 51072021, 'jkalfcb@comcast.net', '5873804295');
insert into customers (first_name, last_name, afm, email, phone) values ('Skipper', 'Ascroft', 67570834, 'sascroftcc@arstechnica.com', '1926774779');
insert into customers (first_name, last_name, afm, email, phone) values ('Kent', 'Iohananof', 56598631, 'kiohananofcd@is.gd', '4924189052');
insert into customers (first_name, last_name, afm, email, phone) values ('Maryjane', 'McGlynn', 53079457, 'mmcglynnce@vimeo.com', '6338500706');
insert into customers (first_name, last_name, afm, email, phone) values ('Roi', 'Luppitt', 42836590, 'rluppittcf@parallels.com', '7794267940');
insert into customers (first_name, last_name, afm, email, phone) values ('Shela', 'Martonfi', 14406164, 'smartonficg@intel.com', '8868466207');
insert into customers (first_name, last_name, afm, email, phone) values ('Beck', 'Junkin', 23056925, 'bjunkinch@hubpages.com', '1626301894');
insert into customers (first_name, last_name, afm, email, phone) values ('Gilburt', 'Paggitt', 75568572, 'gpaggittci@japanpost.jp', '3208847365');
insert into customers (first_name, last_name, afm, email, phone) values ('Ermina', 'Ungerecht', 69741163, 'eungerechtcj@pcworld.com', '2093695688');
insert into customers (first_name, last_name, afm, email, phone) values ('Olag', 'Priter', 47545979, 'opriterck@google.com.hk', '4844468356');
insert into customers (first_name, last_name, afm, email, phone) values ('Dietrich', 'Apark', 59975939, 'daparkcl@cbc.ca', '1279636581');
insert into customers (first_name, last_name, afm, email, phone) values ('Chery', 'Stearndale', 95378109, 'cstearndalecm@angelfire.com', '1666229325');
insert into customers (first_name, last_name, afm, email, phone) values ('Yasmeen', 'Benthall', 14078152, 'ybenthallcn@redcross.org', '2049663300');
insert into customers (first_name, last_name, afm, email, phone) values ('Fayette', 'Gush', 63539397, 'fgushco@auda.org.au', '4491059218');
insert into customers (first_name, last_name, afm, email, phone) values ('Jeri', 'De la Feld', 62483389, 'jdelafeldcp@psu.edu', '9193113910');
insert into customers (first_name, last_name, afm, email, phone) values ('Maximilian', 'Bage', 46083674, 'mbagecq@ow.ly', '9163020006');
insert into customers (first_name, last_name, afm, email, phone) values ('Jehu', 'Punton', 88338513, 'jpuntoncr@reverbnation.com', '4419361029');
insert into customers (first_name, last_name, afm, email, phone) values ('Gerald', 'Spottiswood', 94710409, 'gspottiswoodcs@si.edu', '2229450734');
insert into customers (first_name, last_name, afm, email, phone) values ('Lora', 'Ringwood', 34393972, 'lringwoodct@netscape.com', '3564587450');
insert into customers (first_name, last_name, afm, email, phone) values ('Reuven', 'Craske', 66880490, 'rcraskecu@pen.io', '2045308605');
insert into customers (first_name, last_name, afm, email, phone) values ('Norby', 'Galer', 54286340, 'ngalercv@ucla.edu', '4302579633');
insert into customers (first_name, last_name, afm, email, phone) values ('Crysta', 'Going', 44540369, 'cgoingcw@t.co', '7892528029');
insert into customers (first_name, last_name, afm, email, phone) values ('Amelie', 'Shailer', 40794387, 'ashailercx@aol.com', '5729352238');
insert into customers (first_name, last_name, afm, email, phone) values ('Toiboid', 'Wakley', 89396837, 'twakleycy@paypal.com', '1616225198');
insert into customers (first_name, last_name, afm, email, phone) values ('Orelie', 'Blaxill', 39464154, 'oblaxillcz@newsvine.com', '3861230580');
insert into customers (first_name, last_name, afm, email, phone) values ('Drugi', 'Heaford', 11525951, 'dheafordd0@mediafire.com', '6808394174');
insert into customers (first_name, last_name, afm, email, phone) values ('Norris', 'Bruckman', 86967919, 'nbruckmand1@newyorker.com', '8066677898');
insert into customers (first_name, last_name, afm, email, phone) values ('Kerrin', 'Deabill', 91082152, 'kdeabilld2@cloudflare.com', '9154195689');
insert into customers (first_name, last_name, afm, email, phone) values ('Olympie', 'Kiddell', 43979748, 'okiddelld3@goodreads.com', '3195568292');
insert into customers (first_name, last_name, afm, email, phone) values ('Tyson', 'Buttwell', 21316482, 'tbuttwelld4@bigcartel.com', '2109259626');
insert into customers (first_name, last_name, afm, email, phone) values ('Maudie', 'Bentall', 70484837, 'mbentalld5@youtu.be', '3576650376');
insert into customers (first_name, last_name, afm, email, phone) values ('Ira', 'Shearsby', 58489770, 'ishearsbyd6@so-net.ne.jp', '7085473897');
insert into customers (first_name, last_name, afm, email, phone) values ('Cherey', 'Grgic', 81892680, 'cgrgicd7@liveinternet.ru', '1678759170');
insert into customers (first_name, last_name, afm, email, phone) values ('Tove', 'Tinto', 77536345, 'ttintod8@adobe.com', '1846206745');
insert into customers (first_name, last_name, afm, email, phone) values ('Fancy', 'Bernadzki', 33458280, 'fbernadzkid9@state.tx.us', '1732693682');
insert into customers (first_name, last_name, afm, email, phone) values ('Morry', 'Collyer', 61357425, 'mcollyerda@latimes.com', '4908904179');
insert into customers (first_name, last_name, afm, email, phone) values ('Fredrika', 'Dickenson', 26692799, 'fdickensondb@ning.com', '3635784142');
insert into customers (first_name, last_name, afm, email, phone) values ('Roger', 'Girkins', 69616579, 'rgirkinsdc@mtv.com', '5168434739');
insert into customers (first_name, last_name, afm, email, phone) values ('Drew', 'Hawkswood', 85323402, 'dhawkswooddd@cbsnews.com', '7086437053');
insert into customers (first_name, last_name, afm, email, phone) values ('Cirillo', 'Forsythe', 59548136, 'cforsythede@livejournal.com', '7625626480');
insert into customers (first_name, last_name, afm, email, phone) values ('Analiese', 'Morrow', 45647586, 'amorrowdf@netvibes.com', '9147305041');
insert into customers (first_name, last_name, afm, email, phone) values ('Tallie', 'Alyoshin', 19010516, 'talyoshindg@quantcast.com', '9776491147');
insert into customers (first_name, last_name, afm, email, phone) values ('Antonino', 'Wilkisson', 11856678, 'awilkissondh@clickbank.net', '7923203522');
insert into customers (first_name, last_name, afm, email, phone) values ('Humfrey', 'Redley', 42580813, 'hredleydi@taobao.com', '2113285112');
insert into customers (first_name, last_name, afm, email, phone) values ('Deena', 'Catterson', 94586793, 'dcattersondj@si.edu', '5671243331');
insert into customers (first_name, last_name, afm, email, phone) values ('Skipp', 'Cropton', 43075591, 'scroptondk@princeton.edu', '6365460576');
insert into customers (first_name, last_name, afm, email, phone) values ('Darrin', 'Chisolm', 68711469, 'dchisolmdl@washington.edu', '3523808215');
insert into customers (first_name, last_name, afm, email, phone) values ('Krissie', 'Marcam', 49985913, 'kmarcamdm@is.gd', '8137714031');
insert into customers (first_name, last_name, afm, email, phone) values ('Christen', 'Domel', 66043223, 'cdomeldn@lulu.com', '6376939172');
insert into customers (first_name, last_name, afm, email, phone) values ('Bruno', 'Perone', 50120704, 'bperonedo@nationalgeographic.com', '8473228333');
insert into customers (first_name, last_name, afm, email, phone) values ('Gunar', 'Hebbard', 87803675, 'ghebbarddp@fotki.com', '4561657832');
insert into customers (first_name, last_name, afm, email, phone) values ('Darbee', 'Clother', 72839037, 'dclotherdq@t-online.de', '3088552657');
insert into customers (first_name, last_name, afm, email, phone) values ('Issiah', 'Magauran', 16656312, 'imagaurandr@earthlink.net', '2056696367');
insert into customers (first_name, last_name, afm, email, phone) values ('Fabio', 'Jeandillou', 43226962, 'fjeandillouds@odnoklassniki.ru', '2428834573');
insert into customers (first_name, last_name, afm, email, phone) values ('Gilberta', 'McAdam', 32933743, 'gmcadamdt@house.gov', '9526083412');
insert into customers (first_name, last_name, afm, email, phone) values ('Obed', 'Conradie', 61524414, 'oconradiedu@meetup.com', '6387216925');
insert into customers (first_name, last_name, afm, email, phone) values ('Delainey', 'Hedin', 96092712, 'dhedindv@blogspot.com', '8697033828');


-- service history
DROP TABLE IF EXISTS service_history;

CREATE TABLE service_history (
  id SERIAL NOT NULL ,
  car_id INT NOT NULL ,
  tech_id INT NOT NULL ,
  cost FLOAT NOT NULL ,
  start_date DATE NOT NULL ,
  end_date DATE,

  PRIMARY KEY (id)
);


-- sales history
DROP TABLE IF EXISTS sales_history;

CREATE TABLE sales_history (
  id serial NOT NULL ,
  salesman_id int NOT NULL ,
  car_id int NOT NULL ,
  price FLOAT NOT NULL ,
  date DATE,

  PRIMARY KEY (id)
);

-- plate number type
CREATE TYPE PLATE_NUM AS (
  plate_char CHAR(3),
  plate_number SMALLINT);

-- car condintion
CREATE TYPE CAR_CONDITION AS ENUM ('new', 'used');


-- car warehouse
DROP TABLE IF EXISTS car_warehouse;

CREATE TABLE car_warehouse (
  id serial NOT NULL ,
  owner_id INT,
  plate PLATE_NUM,
  make_id INT NOT NULL REFERENCES car_makes(id),
  model_id INT NOT NULL REFERENCES car_models(id),
  manufacturing_date DATE,
  condition CAR_CONDITION NOT NULL

);
