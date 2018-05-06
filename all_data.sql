-- =======================================================
-- TODO: THA SPASTOUN SE DIKA TOUS ARXEIA
-- =======================================================

-- roles
DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
  id SERIAL NOT NULL ,
  title VARCHAR(40) NOT NULL ,

  PRIMARY KEY (id)
);

insert into roles (title) values ('salesman');
insert into roles (title) values ('technician');

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
  afm INT NOT NULL UNIQUE ,

  PRIMARY KEY (id)
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

-- customers
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  id SERIAL NOT NULL ,
  first_name VARCHAR(60) NOT NULL ,
  last_name VARCHAR(60) NOT NULL ,
  afm INT NOT NULL UNIQUE,
  email VARCHAR(60) NOT NULL UNIQUE ,
  phone VARCHAR(10) NOT NULL UNIQUE ,

  PRIMARY KEY (id)
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

-- plate number type
CREATE TYPE PLATE_NUM AS (
  plate_char CHAR(3),
  plate_number NUMERIC(4,0));

-- car condintion
CREATE TYPE CAR_CONDITION AS ENUM ('new', 'used');


-- car warehouse
DROP TABLE IF EXISTS car_warehouse;

CREATE TABLE car_warehouse (
  id SERIAL NOT NULL ,
  owner_id INT REFERENCES customers(id),
  plate PLATE_NUM UNIQUE,
  make_id INT NOT NULL REFERENCES car_makes(id),
  model_id INT NOT NULL REFERENCES car_models(id),
  manufacturing_date NUMERIC(4,0),
  condition CAR_CONDITION NOT NULL,

  PRIMARY KEY (id)
);

DELETE FROM car_warehouse;

insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (37, ROW('LTS', '6048'), 44, 70, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (117, ROW('GFD', '0377'), 40, 44, 1989, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 14, 67, 1997, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (151, ROW('TJJ', '3335'), 2, 42, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (117, ROW('ZGS', '8376'), 18, 22, 2013, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 10, 56, 2005, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (237, ROW('IMN', '9488'), 32, 5, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (265, ROW('XPK', '6870'), 13, 9, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 28, 33, 1992, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (337, ROW('DXE', '1904'), 11, 67, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (217, ROW('RNF', '4991'), 54, 29, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (195, ROW('GXC', '1487'), 65, 48, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 16, 52, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (143, ROW('HQX', '5954'), 40, 7, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (29, ROW('VTQ', '3773'), 7, 49, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (261, ROW('DTH', '2011'), 31, 44, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (219, ROW('CRN', '5188'), 37, 10, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 3, 11, 2006, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 61, 47, 2006, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (406, ROW('KII', '7893'), 10, 53, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 36, 70, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 11, 2, 1992, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 43, 67, 2005, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (62, ROW('EOB', '6043'), 28, 2, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (371, ROW('MIB', '4753'), 60, 37, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (233, ROW('PXV', '6813'), 15, 1, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 54, 8, 2006, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 16, 67, 1998, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (207, ROW('VWU', '0912'), 68, 31, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (85, ROW('BSR', '3258'), 10, 49, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 27, 44, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (108, ROW('EMJ', '6536'), 40, 17, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 39, 51, 2003, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (253, ROW('NSX', '6420'), 20, 46, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (208, ROW('PSM', '3667'), 30, 8, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 27, 42, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 23, 59, 2005, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 33, 17, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (326, ROW('ANX', '7648'), 71, 5, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (213, ROW('KFY', '0596'), 19, 44, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 65, 12, 1993, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (269, ROW('BJK', '3969'), 57, 57, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 20, 40, 1967, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (246, ROW('XCB', '0916'), 16, 12, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (251, ROW('SWX', '0144'), 58, 44, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (340, ROW('XWV', '9116'), 49, 11, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (271, ROW('PLL', '6697'), 29, 8, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 48, 64, 2003, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (140, ROW('PGQ', '9770'), 9, 10, 1986, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (280, ROW('HZN', '1833'), 48, 45, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (172, ROW('LRQ', '4197'), 46, 49, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (349, ROW('XTD', '6467'), 44, 22, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 28, 9, 2002, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (132, ROW('RJM', '5153'), 46, 19, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (264, ROW('PJV', '3446'), 2, 59, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (307, ROW('URY', '9698'), 28, 34, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (296, ROW('DGU', '4213'), 41, 65, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (168, ROW('PPQ', '4836'), 27, 58, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (390, ROW('YOB', '7838'), 46, 41, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 42, 11, 1990, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (300, ROW('PAP', '3679'), 18, 44, 1991, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 22, 10, 2013, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (195, ROW('AXP', '0263'), 10, 40, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 56, 8, 1994, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 8, 44, 2007, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 64, 54, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (307, ROW('QFO', '8058'), 6, 42, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (341, ROW('GJB', '0678'), 55, 1, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (182, ROW('KFW', '7279'), 70, 8, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (487, ROW('VHY', '7436'), 6, 67, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 35, 52, 1996, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (424, ROW('YSI', '6149'), 71, 36, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (202, ROW('IBB', '2325'), 18, 5, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (322, ROW('DEX', '0727'), 54, 26, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 65, 8, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (26, ROW('KEP', '4992'), 38, 22, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 22, 49, 1985, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 23, 1, 1998, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (295, ROW('DOV', '8904'), 27, 44, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (496, ROW('FVI', '6976'), 68, 63, 1991, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (412, ROW('BTK', '5807'), 55, 69, 1980, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (310, ROW('GZN', '9430'), 52, 65, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (214, ROW('TKL', '7378'), 66, 17, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (442, ROW('VPF', '6967'), 7, 58, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 11, 32, 2002, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (421, ROW('IAO', '5394'), 20, 37, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (487, ROW('HPN', '8060'), 6, 10, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 472, ROW('VXA', '8677'), 56, 9, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 207, ROW('GMV', '6096'), 53, 54, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 36, 59, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 20, 33, 1997, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 340, ROW('BUG', '3766'), 45, 15, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 495, ROW('VTD', '4608'), 30, 34, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 32, 12, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 344, ROW('BZK', '6149'), 47, 20, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 70, 44, 2007, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 343, ROW('ZBH', '0932'), 47, 44, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 58, 44, 1986, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 9, 44, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 416, ROW('RBA', '5360'), 39, 11, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 26, ROW('UGM', '7331'), 21, 44, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 475, ROW('MQM', '6358'), 18, 8, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 96, ROW('XEI', '2383'), 40, 49, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 369, ROW('FGG', '5001'), 35, 41, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 192, ROW('IFB', '4375'), 61, 47, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 51, 37, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 26, 17, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 213, ROW('BCG', '0971'), 71, 44, 1973, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 370, ROW('UZF', '8018'), 64, 49, 1991, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 190, ROW('KJG', '5524'), 42, 57, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 426, ROW('YUA', '3965'), 61, 29, 1987, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 156, ROW('ZIZ', '2668'), 15, 50, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 248, ROW('SLY', '1564'), 9, 8, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 215, ROW('HER', '7075'), 27, 52, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 68, 11, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 47, ROW('CTA', '9707'), 61, 25, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 434, ROW('UDI', '8999'), 6, 17, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 101, ROW('VCK', '9703'), 69, 44, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( null, null, 55, 44, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 105, ROW('EGP', '1313'), 10, 37, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 412, ROW('OON', '4321'), 23, 2, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 485, ROW('OTU', '1302'), 69, 26, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 415, ROW('NUG', '8667'), 57, 25, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 242, ROW('NHQ', '1418'), 6, 69, 1990, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 102, ROW('TKS', '8508'), 52, 6, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values ( 353, ROW('GNL', '4362'), 36, 53, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (54, ROW('MYS', '7706'), 50, 44, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (58, ROW('KWR', '5554'), 21, 17, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 46, 28, 2006, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (462, ROW('UZX', '5426'), 25, 4, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (188, ROW('UHV', '0126'), 55, 44, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (102, ROW('XBB', '1746'), 65, 42, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (230, ROW('KIG', '6751'), 25, 44, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 7, 22, 1976, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 41, 8, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (488, ROW('RAC', '9519'), 17, 9, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (254, ROW('FSN', '7636'), 66, 30, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 4, 38, 1988, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 5, 36, 1992, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 40, 45, 1988, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 44, 25, 1990, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 9, 11, 1992, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 53, 57, 1990, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (431, ROW('QMY', '4981'), 18, 11, 1986, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (237, ROW('BUC', '8666'), 43, 44, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (464, ROW('HKK', '2851'), 71, 58, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (296, ROW('WTC', '5238'), 29, 44, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (346, ROW('UYX', '1386'), 14, 22, 1989, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (417, ROW('GQY', '4923'), 25, 44, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (250, ROW('NGV', '2527'), 38, 6, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 55, 8, 2011, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (299, ROW('TTC', '5966'), 36, 44, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 29, 32, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (261, ROW('XFS', '1986'), 23, 67, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (211, ROW('IIL', '3634'), 6, 26, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (287, ROW('OBT', '3012'), 26, 40, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 32, 22, 1992, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (87, ROW('JXG', '3231'), 2, 10, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (331, ROW('TMU', '7939'), 28, 11, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (290, ROW('SLU', '9032'), 22, 28, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (243, ROW('RTF', '0088'), 57, 49, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (402, ROW('BPY', '3943'), 42, 22, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (294, ROW('IES', '2946'), 52, 67, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 10, 4, 1995, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (210, ROW('YAQ', '4865'), 38, 67, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (71, ROW('LQE', '6397'), 24, 6, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (154, ROW('ETC', '4084'), 52, 30, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (253, ROW('HUA', '8649'), 25, 17, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (345, ROW('HJL', '3257'), 7, 44, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (35, ROW('SPH', '5206'), 19, 5, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (447, ROW('GXQ', '8990'), 40, 49, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 17, 67, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (428, ROW('QLD', '9328'), 6, 26, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 46, 50, 2002, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 45, 5, 1967, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (228, ROW('ZTG', '6821'), 63, 11, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (128, ROW('XZR', '1880'), 11, 44, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (244, ROW('XTS', '3352'), 32, 42, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (451, ROW('JSH', '3504'), 71, 11, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (462, ROW('UZW', '3813'), 27, 25, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (480, ROW('CJT', '6903'), 65, 19, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (402, ROW('MJQ', '9342'), 60, 49, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 65, 5, 1987, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 31, 8, 1994, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (132, ROW('HMZ', '9910'), 31, 25, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 46, 42, 1995, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 47, 8, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 2, 36, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (127, ROW('UDE', '5915'), 5, 52, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (88, ROW('VPZ', '3820'), 19, 59, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (310, ROW('HSY', '7118'), 61, 19, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (135, ROW('EKJ', '9533'), 9, 10, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (335, ROW('QKZ', '2857'), 2, 22, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (469, ROW('DFQ', '5803'), 35, 10, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (98, ROW('ALD', '5322'), 55, 44, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 32, 11, 2006, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (431, ROW('HSN', '6553'), 20, 19, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 63, 3, 1995, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 66, 8, 2005, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 13, 39, 2006, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (250, ROW('XOP', '2193'), 53, 8, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (452, ROW('KZZ', '1441'), 24, 8, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (433, ROW('TFJ', '9918'), 13, 15, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (406, ROW('FDW', '8154'), 29, 49, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (402, ROW('LKN', '8597'), 37, 49, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (71, ROW('SCI', '8118'), 6, 59, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (441, ROW('KGE', '3385'), 13, 5, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 16, 15, 1999, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (439, ROW('DKW', '4384'), 28, 42, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (156, ROW('BQD', '3094'), 47, 32, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (187, ROW('UYF', '4733'), 66, 44, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (205, ROW('GUV', '4860'), 28, 8, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (463, ROW('KCW', '0197'), 46, 8, 1987, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (389, ROW('GZD', '6516'), 7, 8, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (63, ROW('NJY', '2226'), 53, 42, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (432, ROW('WKB', '8416'), 62, 45, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (172, ROW('YSR', '4400'), 20, 1, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (348, ROW('PMX', '7243'), 32, 70, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (368, ROW('YOF', '4624'), 23, 8, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (273, ROW('RCM', '1114'), 47, 44, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (458, ROW('ZWY', '5230'), 29, 10, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (455, ROW('ZGY', '0793'), 50, 38, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (12, ROW('QRU', '0643'), 44, 26, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 12, 8, 1988, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (225, ROW('IML', '1800'), 46, 37, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 16, 22, 2004, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (65, ROW('GAW', '8854'), 67, 42, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (96, ROW('LOV', '2626'), 30, 70, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 5, 41, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (358, ROW('XKK', '1765'), 22, 25, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (79, ROW('RGK', '2840'), 63, 29, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (246, ROW('PGR', '0155'), 16, 59, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (166, ROW('WXT', '4326'), 9, 5, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 68, 28, 2002, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (9, ROW('LYL', '5802'), 51, 37, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (453, ROW('QVW', '8832'), 31, 61, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (486, ROW('ERV', '4251'), 2, 11, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 10, 67, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (381, ROW('DMS', '5288'), 47, 44, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (220, ROW('HZY', '3906'), 8, 36, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 25, 44, 1996, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (304, ROW('XNE', '6786'), 25, 36, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (144, ROW('CKA', '6142'), 44, 64, 1984, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (88, ROW('RNN', '4736'), 10, 54, 1990, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (481, ROW('DWA', '3195'), 16, 8, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (251, ROW('EPQ', '6962'), 41, 17, 1990, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (358, ROW('JTW', '5177'), 4, 22, 1990, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (128, ROW('WGW', '2883'), 14, 8, 1990, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (432, ROW('ZOC', '4645'), 50, 59, 1987, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (219, ROW('YAO', '5222'), 51, 10, 1986, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (361, ROW('ZOJ', '1212'), 41, 15, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (312, ROW('PNE', '0505'), 18, 1, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 20, 17, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (43, ROW('WXE', '6314'), 44, 70, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (452, ROW('XVN', '0651'), 53, 59, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 39, 47, 2007, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (76, ROW('NPX', '7511'), 44, 4, 1991, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 40, 42, 1997, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 30, 30, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (192, ROW('LRP', '6895'), 35, 29, 1990, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (499, ROW('EEJ', '4980'), 61, 26, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (361, ROW('YYR', '0908'), 53, 38, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (309, ROW('UNG', '4564'), 20, 8, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (55, ROW('STS', '6021'), 26, 8, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (180, ROW('MMF', '2367'), 33, 10, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 10, 38, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 41, 15, 1989, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (370, ROW('KXL', '7036'), 39, 30, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 30, 20, 1994, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (353, ROW('CKY', '3271'), 58, 39, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (57, ROW('IPE', '2281'), 53, 36, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (50, ROW('UOK', '3870'), 45, 70, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (370, ROW('CZB', '7816'), 5, 29, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (53, ROW('FNL', '2412'), 22, 26, 1991, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (297, ROW('JDZ', '1264'), 64, 17, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 58, 25, 1997, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (221, ROW('MYS', '3750'), 62, 37, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (427, ROW('URH', '0897'), 44, 12, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (378, ROW('CGL', '8066'), 67, 22, 1972, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 67, 42, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (142, ROW('JWJ', '2120'), 68, 52, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (162, ROW('EBT', '6883'), 39, 48, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 51, 58, 2004, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (313, ROW('DER', '9197'), 7, 49, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (3, ROW('AAP', '4195'), 41, 9, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (165, ROW('TVD', '4103'), 23, 25, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (166, ROW('BKM', '7636'), 71, 53, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (153, ROW('GHA', '4407'), 18, 42, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (288, ROW('HUI', '6857'), 6, 44, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 65, 50, 1995, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (316, ROW('MSP', '9625'), 44, 25, 1990, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (277, ROW('OPZ', '1791'), 23, 44, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 57, 9, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 62, 57, 1987, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 12, 22, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (353, ROW('EMX', '0733'), 16, 31, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (113, ROW('LBL', '4338'), 57, 51, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 14, 70, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (16, ROW('MUI', '8453'), 16, 11, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 42, 28, 1996, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (117, ROW('WWK', '9526'), 63, 52, 1987, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (327, ROW('GLF', '0102'), 62, 12, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 54, 31, 1990, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 54, 54, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 52, 40, 2004, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 31, 8, 2007, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 11, 12, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (142, ROW('LTQ', '5389'), 21, 64, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (443, ROW('FQH', '4838'), 14, 22, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (92, ROW('JSV', '1953'), 49, 29, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 27, 22, 2007, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (442, ROW('FLQ', '6687'), 62, 10, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 11, 44, 1995, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (414, ROW('BKD', '7193'), 28, 8, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (116, ROW('TYV', '5149'), 18, 10, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (435, ROW('FBD', '1433'), 31, 22, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (302, ROW('UUX', '0098'), 58, 8, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 25, 22, 2011, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (452, ROW('XTO', '6194'), 28, 44, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 70, 12, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (403, ROW('JCX', '4009'), 65, 62, 1989, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (211, ROW('VRM', '3420'), 55, 49, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (418, ROW('BGB', '3366'), 49, 56, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (33, ROW('GPZ', '3632'), 54, 11, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (419, ROW('YLE', '2364'), 67, 22, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 34, 44, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (213, ROW('QOL', '0716'), 52, 48, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 60, 38, 2007, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (472, ROW('FWA', '2106'), 29, 44, 1987, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (163, ROW('VCO', '8267'), 17, 22, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (321, ROW('DYH', '0900'), 20, 17, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (300, ROW('COL', '6343'), 71, 44, 1979, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 8, 48, 1988, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (462, ROW('UHK', '1086'), 66, 30, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (237, ROW('ZDW', '6297'), 2, 60, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (214, ROW('BCG', '2155'), 55, 51, 1989, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 65, 31, 1993, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 37, 22, 1999, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (114, ROW('UNO', '8742'), 50, 17, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (409, ROW('BQF', '8882'), 41, 44, 1969, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (20, ROW('LOO', '1609'), 67, 44, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 21, 44, 2011, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (7, ROW('ZKA', '2639'), 8, 44, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (237, ROW('YKM', '8305'), 29, 12, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (13, ROW('SAL', '7974'), 17, 37, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (316, ROW('LOJ', '1349'), 56, 8, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (90, ROW('NIO', '7932'), 68, 8, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (484, ROW('NOE', '8528'), 12, 69, 1965, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (263, ROW('NXJ', '9781'), 61, 45, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 62, 47, 2011, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (355, ROW('PJW', '7837'), 57, 48, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 38, 45, 1986, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (180, ROW('JPR', '2796'), 10, 44, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (222, ROW('NMZ', '1172'), 56, 54, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (307, ROW('STM', '3352'), 27, 25, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (115, ROW('OJX', '4832'), 39, 44, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (39, ROW('QBB', '0189'), 26, 10, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (257, ROW('YZJ', '2834'), 47, 8, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (306, ROW('JCX', '7919'), 19, 37, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (108, ROW('PMD', '3773'), 42, 8, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (446, ROW('XIM', '2533'), 58, 33, 2004, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (238, ROW('CPF', '2152'), 40, 17, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (454, ROW('UKU', '1660'), 20, 5, 2013, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (331, ROW('QYJ', '0724'), 45, 30, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (480, ROW('MRT', '1763'), 54, 67, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 10, 30, 2003, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (337, ROW('JRM', '8910'), 62, 44, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 7, 19, 1984, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (494, ROW('WQH', '8312'), 28, 38, 1984, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 22, 1, 2005, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 41, 48, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 38, 8, 2011, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (418, ROW('SOK', '4361'), 37, 8, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 54, 29, 2001, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (470, ROW('ZNN', '9426'), 63, 8, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (135, ROW('PZS', '3015'), 2, 67, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 51, 8, 1997, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (194, ROW('GCZ', '9909'), 28, 12, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (396, ROW('CUA', '7026'), 19, 12, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (206, ROW('FHT', '9320'), 57, 59, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (118, ROW('AQK', '8052'), 58, 48, 2011, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (105, ROW('YYE', '6740'), 47, 59, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 37, 34, 1999, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (470, ROW('MBC', '9028'), 20, 36, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 16, 13, 1986, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (61, ROW('FNJ', '1893'), 53, 57, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (240, ROW('WUP', '9708'), 47, 22, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (309, ROW('WSB', '6211'), 29, 9, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (301, ROW('PGT', '1227'), 17, 67, 1979, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 11, 8, 1992, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 41, 15, 2001, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (75, ROW('BAX', '3438'), 21, 52, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (256, ROW('EXK', '7702'), 46, 70, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (299, ROW('QAV', '4608'), 38, 50, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 12, 9, 1988, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (387, ROW('THQ', '2083'), 46, 65, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 60, 57, 2006, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (150, ROW('ROU', '6190'), 57, 53, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (235, ROW('PBX', '8078'), 34, 44, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (290, ROW('MRQ', '3763'), 70, 12, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (229, ROW('NTT', '9702'), 44, 19, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (39, ROW('RHZ', '7361'), 32, 64, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (432, ROW('VRG', '5194'), 36, 18, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (249, ROW('EHN', '5272'), 11, 17, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 55, 53, 2006, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (348, ROW('EQS', '9144'), 32, 44, 1984, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (302, ROW('JJX', '7724'), 24, 9, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 70, 9, 2004, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (112, ROW('CKH', '7202'), 22, 25, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 14, 25, 2003, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (388, ROW('HNJ', '2135'), 28, 59, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (459, ROW('TOJ', '9703'), 70, 5, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (200, ROW('CJH', '4256'), 10, 44, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (401, ROW('GDQ', '0787'), 34, 45, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 34, 50, 1989, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (45, ROW('MUO', '5164'), 32, 12, 1968, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (46, ROW('YBU', '9569'), 4, 58, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 26, 5, 1996, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 21, 53, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 52, 17, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 40, 44, 2000, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (413, ROW('UER', '3525'), 38, 33, 2013, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (7, ROW('ZKK', '5880'), 7, 37, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (83, ROW('GDZ', '7451'), 22, 5, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (354, ROW('LCD', '8163'), 58, 9, 1986, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (374, ROW('OMG', '3363'), 38, 8, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (322, ROW('TFP', '0091'), 31, 32, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (282, ROW('TRX', '2756'), 54, 11, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (273, ROW('MOH', '7164'), 17, 64, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (267, ROW('BIL', '1138'), 4, 22, 2001, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (51, ROW('IRX', '7915'), 59, 44, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (257, ROW('YHE', '1090'), 8, 8, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 40, 65, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (334, ROW('TPL', '4587'), 2, 69, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (436, ROW('DOQ', '0049'), 33, 44, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (253, ROW('RVX', '6510'), 33, 12, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (418, ROW('YMZ', '5507'), 64, 38, 1998, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (274, ROW('BAQ', '0767'), 53, 44, 2008, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (168, ROW('WLG', '4992'), 64, 12, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 5, 53, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (53, ROW('BJQ', '2549'), 31, 44, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 18, 4, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (257, ROW('TVF', '2262'), 2, 50, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (76, ROW('PKU', '6017'), 17, 44, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (371, ROW('DCY', '6257'), 26, 65, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (146, ROW('PRI', '2129'), 47, 12, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (445, ROW('FZF', '8664'), 59, 44, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 42, 69, 2012, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (420, ROW('YZV', '5846'), 38, 67, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 70, 44, 2008, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (486, ROW('DAW', '6975'), 48, 1, 2009, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (429, ROW('WIN', '0373'), 56, 47, 2002, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 67, 53, 1985, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (497, ROW('LVV', '4790'), 43, 48, 1993, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 24, 8, 2004, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (156, ROW('DJF', '3133'), 47, 34, 1999, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 58, 37, 1999, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (477, ROW('IRG', '0038'), 58, 44, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (67, ROW('KSX', '1373'), 45, 22, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 43, 47, 2002, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 52, 37, 2003, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 57, 28, 2011, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 4, 69, 2010, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (43, ROW('XWJ', '1642'), 61, 22, 1996, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (470, ROW('EXT', '2741'), 51, 44, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (385, ROW('JPR', '3592'), 70, 52, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (267, ROW('ERQ', '1452'), 41, 31, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (259, ROW('FGE', '2178'), 26, 8, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 58, 44, 2001, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 58, 20, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (447, ROW('GTK', '5071'), 50, 19, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 34, 8, 1966, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (145, ROW('YFY', '8152'), 14, 45, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (390, ROW('SEC', '6736'), 56, 60, 2003, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 18, 32, 2007, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 6, 47, 1992, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (30, ROW('BZJ', '4230'), 36, 55, 1995, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (466, ROW('LGM', '3536'), 25, 65, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (375, ROW('XHB', '4858'), 20, 17, 2006, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (111, ROW('ISK', '1259'), 39, 35, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (299, ROW('DLI', '1387'), 34, 3, 1997, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 54, 48, 2009, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (222, ROW('QCM', '3740'), 9, 37, 1994, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 59, 47, 2004, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 61, 2, 2011, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 31, 17, 1994, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (323, ROW('EBR', '1553'), 28, 2, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 42, 37, 2004, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (157, ROW('AJT', '6691'), 43, 51, 1986, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (48, ROW('UAS', '6296'), 40, 8, 2000, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (469, ROW('ALW', '2649'), 8, 69, 2010, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (null, null, 62, 65, 2011, 'new');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (483, ROW('HSK', '3484'), 66, 49, 2012, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (55, ROW('VDV', '7433'), 53, 67, 2007, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (312, ROW('LLK', '9125'), 64, 44, 1985, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (205, ROW('UBT', '3125'), 58, 7, 1992, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (396, ROW('CSF', '3718'), 21, 22, 1989, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (231, ROW('SJT', '2791'), 31, 12, 2005, 'used');
insert into car_warehouse (owner_id, plate, make_id, model_id, manufacturing_date, condition) values (274, ROW('CJH', '0317'), 36, 59, 1998, 'used');


DELETE FROM service_history;

-- service history
DROP TABLE IF EXISTS service_history;

CREATE TABLE service_history (
  id SERIAL NOT NULL ,
  car_id INT NOT NULL REFERENCES car_warehouse(id),
  tech_id INT NOT NULL REFERENCES employee(id),
  cost FLOAT NOT NULL ,
  start_date DATE NOT NULL ,
  end_date DATE,

  PRIMARY KEY (id)
);

insert into service_history (car_id, tech_id, cost, start_date, end_date) values (283, 1, '722.64', '2016-01-01 05:13:38', '2016-02-27 05:13:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (83, 1, '240.56', '2016-05-19 02:09:22', '2016-05-24 02:09:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (215, 1, '620.40', '2016-11-20 16:33:03', '2017-01-14 16:33:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (56, 1, '214.59', '2017-07-12 06:26:21', '2017-07-17 06:26:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (15, 1, '583.84', '2017-11-13 01:10:02', '2017-12-31 01:10:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (129, 1, '922.51', '2015-06-01 17:39:38', '2015-06-01 17:39:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (309, 1, '401.65', '2018-02-15 03:17:57', '2018-03-27 03:17:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (35, 1, '391.66', '2017-08-15 01:16:29', '2017-09-29 01:16:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (357, 1, '266.83', '2016-04-23 18:37:50', '2016-06-13 18:37:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (498, 1, '739.14', '2018-04-15 18:14:13', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (271, 1, '498.41', '2016-08-16 22:17:09', '2016-09-02 22:17:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (497, 1, '73.70', '2015-08-15 23:51:49', '2015-10-10 23:51:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (333, 1, '351.54', '2016-01-27 23:17:14', '2016-03-09 23:17:14');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (275, 1, '673.01', '2016-11-07 10:20:52', '2016-12-18 10:20:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (377, 1, '969.52', '2017-02-18 16:45:53', '2017-03-12 16:45:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (335, 1, '221.75', '2017-09-24 04:32:24', '2017-11-05 04:32:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (336, 1, '977.70', '2017-04-28 08:54:52', '2017-06-08 08:54:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (147, 1, '430.61', '2017-03-01 04:36:16', '2017-04-26 04:36:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (290, 1, '250.37', '2017-07-16 16:32:30', '2017-08-09 16:32:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (333, 1, '321.70', '2017-02-05 09:28:02', '2017-03-20 09:28:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (408, 1, '622.56', '2016-04-30 09:04:38', '2016-05-26 09:04:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (433, 1, '490.34', '2015-08-07 08:27:54', '2015-09-19 08:27:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (341, 1, '579.46', '2016-07-21 04:03:53', '2016-07-21 04:03:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (229, 1, '63.08', '2016-03-10 05:31:29', '2016-05-06 05:31:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (264, 1, '304.19', '2015-06-05 16:44:28', '2015-07-23 16:44:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (408, 1, '599.34', '2015-10-09 15:00:50', '2015-10-11 15:00:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (248, 1, '502.70', '2015-09-01 10:37:40', '2015-09-13 10:37:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (160, 1, '437.60', '2018-04-22 11:42:40', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (453, 1, '618.59', '2016-05-31 21:07:17', '2016-06-16 21:07:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (150, 1, '775.99', '2017-04-30 12:43:40', '2017-06-04 12:43:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (247, 1, '109.37', '2016-01-12 05:11:22', '2016-01-31 05:11:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (328, 1, '401.66', '2016-01-08 19:16:40', '2016-01-21 19:16:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (383, 1, '212.45', '2015-05-27 12:26:10', '2015-07-11 12:26:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (186, 1, '918.32', '2017-08-29 18:37:08', '2017-10-12 18:37:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (309, 1, '679.07', '2017-05-11 01:13:08', '2017-06-25 01:13:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (98, 1, '715.84', '2016-02-04 12:42:01', '2016-03-02 12:42:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (101, 1, '283.00', '2017-10-21 08:41:05', '2017-12-12 08:41:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (355, 1, '567.53', '2016-09-01 23:23:09', '2016-09-21 23:23:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (119, 1, '184.20', '2017-06-23 05:05:41', '2017-07-13 05:05:41');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (377, 1, '180.03', '2016-09-20 15:37:44', '2016-11-04 15:37:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (436, 1, '150.82', '2018-01-06 11:17:16', '2018-01-15 11:17:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (177, 1, '733.85', '2016-02-14 20:42:45', '2016-03-28 20:42:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (75, 1, '892.40', '2017-06-25 00:15:05', '2017-07-17 00:15:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (429, 1, '42.00', '2015-05-19 23:45:12', '2015-07-03 23:45:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (238, 1, '89.45', '2016-04-06 09:42:09', '2016-06-05 09:42:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (297, 1, '328.04', '2015-06-25 05:11:14', '2015-07-19 05:11:14');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (387, 1, '691.38', '2018-04-04 23:14:40', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (318, 1, '154.00', '2017-02-07 08:08:36', '2017-03-12 08:08:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (498, 1, '448.39', '2015-12-31 11:23:14', '2016-01-16 11:23:14');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (118, 1, '129.52', '2018-04-02 21:52:31', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (16, 1, '155.65', '2016-01-23 18:20:10', '2016-03-22 18:20:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (499, 1, '433.00', '2015-09-18 10:32:15', '2015-09-18 10:32:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (245, 1, '629.64', '2016-08-14 20:59:39', '2016-09-05 20:59:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (484, 1, '941.63', '2017-02-01 15:33:44', '2017-03-20 15:33:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (382, 1, '671.41', '2015-12-01 10:59:29', '2015-12-16 10:59:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (103, 1, '766.09', '2015-12-12 20:09:08', '2016-01-13 20:09:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (240, 1, '386.44', '2015-07-07 23:53:49', '2015-07-21 23:53:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (228, 1, '689.44', '2017-02-05 08:44:02', '2017-02-21 08:44:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (368, 1, '120.89', '2016-11-20 11:33:14', '2016-12-22 11:33:14');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (495, 1, '106.10', '2016-01-14 12:23:35', '2016-03-02 12:23:35');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (186, 1, '49.11', '2015-10-31 20:32:51', '2015-12-10 20:32:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (436, 1, '34.83', '2017-03-26 11:00:03', '2017-04-24 11:00:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (465, 1, '422.46', '2016-05-03 08:02:50', '2016-05-22 08:02:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (405, 1, '702.93', '2018-04-12 08:35:48', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (352, 1, '259.29', '2016-12-26 03:53:57', '2017-02-13 03:53:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (264, 1, '905.80', '2015-05-03 06:47:01', '2015-05-20 06:47:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (94, 1, '908.33', '2016-08-05 07:08:12', '2016-08-18 07:08:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (331, 1, '311.62', '2016-12-03 12:59:07', '2017-01-26 12:59:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (287, 1, '618.75', '2017-11-02 18:49:32', '2017-12-06 18:49:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (179, 1, '908.98', '2018-04-26 09:54:02', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (222, 1, '519.46', '2016-01-28 02:26:31', '2016-02-19 02:26:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (223, 1, '567.93', '2016-02-09 02:23:25', '2016-02-28 02:23:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (442, 1, '507.15', '2016-03-30 07:16:58', '2016-05-01 07:16:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values ( 448, 1, '225.81', '2018-03-14 20:52:54', '2018-03-22 20:52:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values ( 121, 1, '372.34', '2015-11-24 02:14:05', '2015-12-30 02:14:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values ( 148, 1, '108.28', '2017-11-01 02:37:39', '2017-11-23 02:37:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values ( 212, 1, '676.53', '2018-01-05 19:29:44', '2018-02-17 19:29:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (172, 1, '837.72', '2017-03-19 01:39:51', '2017-03-30 01:39:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (426, 1, '639.58', '2017-12-22 09:14:38', '2017-12-29 09:14:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (330, 1, '889.31', '2016-07-20 09:44:38', '2016-07-20 09:44:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (494, 1, '252.38', '2016-02-15 08:24:20', '2016-03-28 08:24:20');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (210, 1, '113.88', '2015-04-26 14:10:49', '2015-05-19 14:10:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (253, 1, '311.34', '2015-10-31 11:41:31', '2015-11-11 11:41:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (204, 1, '836.15', '2017-07-14 08:49:30', '2017-07-17 08:49:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (444, 1, '787.62', '2017-03-12 21:59:12', '2017-03-15 21:59:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (229, 1, '690.41', '2015-12-02 15:58:16', '2015-12-28 15:58:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (194, 1, '469.68', '2015-05-22 17:26:49', '2015-07-18 17:26:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (453, 1, '537.90', '2017-04-04 10:05:06', '2017-05-06 10:05:06');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (261, 1, '576.07', '2017-08-23 10:20:25', '2017-10-10 10:20:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (395, 1, '522.40', '2016-06-21 21:11:48', '2016-07-25 21:11:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (226, 1, '951.98', '2016-02-28 00:54:39', '2016-03-10 00:54:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (381, 1, '881.59', '2016-06-29 22:53:27', '2016-06-29 22:53:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (495, 1, '565.16', '2016-02-21 09:32:54', '2016-03-26 09:32:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (363, 1, '228.26', '2016-10-07 00:49:17', '2016-12-05 00:49:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (436, 1, '216.57', '2018-01-04 00:16:26', '2018-03-01 00:16:26');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (151, 1, '395.47', '2017-10-31 22:00:39', '2017-12-08 22:00:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (342, 1, '643.01', '2017-10-17 02:50:55', '2017-11-30 02:50:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (182, 1, '259.34', '2016-07-31 05:26:21', '2016-08-24 05:26:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (466, 1, '270.12', '2016-06-16 21:27:19', '2016-07-30 21:27:19');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (131, 1, '320.77', '2017-04-02 11:46:46', '2017-05-19 11:46:46');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (405, 1, '307.54', '2016-10-15 11:27:49', '2016-12-08 11:27:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (157, 1, '401.62', '2016-03-09 20:42:43', '2016-04-29 20:42:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (472, 1, '97.77', '2017-03-19 08:12:10', '2017-04-17 08:12:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (164, 1, '812.98', '2015-06-26 11:12:49', '2015-08-12 11:12:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (478, 1, '306.15', '2015-10-21 14:18:23', '2015-11-07 14:18:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (445, 1, '73.64', '2015-12-17 18:34:54', '2016-02-09 18:34:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (179, 1, '602.88', '2015-09-10 23:36:41', '2015-09-11 23:36:41');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (361, 3, '152.55', '2015-04-25 22:12:22', '2015-04-25 22:12:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (10, 3, '423.92', '2017-09-14 23:22:47', '2017-09-14 23:22:47');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (253, 3, '973.92', '2017-03-20 01:05:23', '2017-04-02 01:05:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (360, 3, '443.35', '2017-11-22 13:38:25', '2017-12-11 13:38:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (181, 3, '745.51', '2017-02-10 04:36:00', '2017-03-01 04:36:00');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (435, 3, '335.21', '2017-03-18 11:21:04', '2017-03-26 11:21:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (17, 3, '125.62', '2015-09-27 08:36:41', '2015-11-17 08:36:41');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (414, 3, '142.68', '2017-11-01 19:56:40', '2017-12-19 19:56:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (178, 3, '35.51', '2016-04-07 02:27:44', '2016-05-14 02:27:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (132, 3, '765.38', '2015-05-22 11:32:08', '2015-06-14 11:32:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (222, 3, '659.51', '2017-04-15 12:55:23', '2017-05-20 12:55:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (303, 3, '118.84', '2017-11-05 13:01:57', '2017-11-17 13:01:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (408, 3, '485.07', '2018-03-16 00:12:48', '2018-03-19 00:12:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (30, 3, '101.51', '2017-06-17 08:36:31', '2017-08-10 08:36:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (298, 3, '979.25', '2015-09-29 07:09:00', '2015-10-07 07:09:00');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (452, 3, '23.42', '2017-11-14 06:58:10', '2017-12-05 06:58:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (87, 3, '665.02', '2016-10-03 09:48:24', '2016-11-27 09:48:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (310, 3, '992.74', '2017-05-31 06:25:15', '2017-06-10 06:25:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (124, 3, '63.15', '2016-10-03 11:38:27', '2016-11-20 11:38:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (89, 3, '337.50', '2016-03-02 17:46:19', '2016-04-20 17:46:19');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (366, 3, '318.85', '2016-05-19 12:01:44', '2016-05-20 12:01:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (498, 3, '863.50', '2016-01-17 22:07:55', '2016-02-21 22:07:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (114, 3, '842.36', '2016-01-25 05:21:37', '2016-03-04 05:21:37');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (429, 3, '942.53', '2017-11-16 05:36:05', '2018-01-05 05:36:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (417, 3, '785.52', '2017-05-26 23:35:48', '2017-07-01 23:35:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (424, 3, '489.69', '2015-10-11 05:28:45', '2015-11-03 05:28:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (337, 3, '112.10', '2015-11-01 12:23:17', '2015-12-09 12:23:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (382, 3, '410.86', '2015-10-08 17:38:17', '2015-11-07 17:38:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (399, 3, '433.33', '2018-02-14 22:15:27', '2018-03-17 22:15:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (151, 3, '639.57', '2017-10-27 07:46:41', '2017-12-14 07:46:41');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (126, 3, '642.91', '2017-03-25 10:00:12', '2017-04-13 10:00:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (382, 3, '910.39', '2016-12-30 01:35:08', '2017-02-18 01:35:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (126, 3, '832.25', '2017-02-27 23:11:08', '2017-03-25 23:11:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (271, 3, '531.47', '2017-09-25 20:36:45', '2017-11-04 20:36:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (177, 3, '507.01', '2015-09-26 17:43:37', '2015-09-30 17:43:37');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (310, 3, '992.84', '2017-01-22 02:01:25', '2017-03-04 02:01:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (117, 3, '813.97', '2016-06-12 02:31:37', '2016-06-23 02:31:37');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (366, 3, '928.21', '2015-06-19 06:06:07', '2015-08-09 06:06:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (418, 3, '993.01', '2017-08-03 02:16:47', '2017-08-08 02:16:47');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (124, 3, '153.34', '2017-03-13 23:50:58', '2017-05-10 23:50:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (290, 3, '160.78', '2018-04-15 18:10:28', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (349, 3, '685.38', '2017-06-28 14:15:09', '2017-07-26 14:15:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (428, 3, '317.22', '2018-04-13 22:08:34', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (403, 3, '213.44', '2015-11-04 18:34:22', '2015-11-09 18:34:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (206, 3, '906.59', '2015-09-16 10:46:46', '2015-11-09 10:46:46');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (316, 3, '479.98', '2017-06-23 06:25:36', '2017-06-30 06:25:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (286, 3, '180.26', '2017-10-04 16:33:11', '2017-10-18 16:33:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (224, 3, '278.57', '2015-06-11 22:55:16', '2015-07-14 22:55:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (410, 3, '469.21', '2015-11-04 14:09:26', '2015-11-06 14:09:26');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (407, 3, '612.78', '2017-01-23 02:20:18', '2017-02-09 02:20:18');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (180, 3, '380.65', '2015-09-23 20:24:03', '2015-11-08 20:24:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (10, 3, '353.12', '2015-05-20 20:07:16', '2015-07-05 20:07:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (480, 3, '375.46', '2017-10-16 06:21:14', '2017-11-08 06:21:14');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (123, 3, '692.79', '2017-01-30 05:50:44', '2017-03-23 05:50:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (315, 3, '564.76', '2017-01-25 09:06:32', '2017-03-16 09:06:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (51, 3, '931.95', '2015-05-30 00:32:35', '2015-06-28 00:32:35');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (133, 3, '322.36', '2017-10-15 04:22:25', '2017-11-15 04:22:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (20, 3, '814.63', '2017-05-03 07:29:18', '2017-05-24 07:29:18');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (82, 3, '632.67', '2018-01-07 15:12:46', '2018-01-22 15:12:46');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (395, 3, '540.80', '2016-12-08 14:46:15', '2016-12-15 14:46:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (274, 3, '288.57', '2017-09-02 17:53:21', '2017-09-11 17:53:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (7, 3, '674.58', '2017-06-06 07:46:53', '2017-07-23 07:46:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (228, 3, '821.67', '2016-05-22 20:23:30', '2016-07-11 20:23:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (382, 3, '675.49', '2015-07-15 13:32:11', '2015-08-13 13:32:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (475, 3, '864.25', '2016-09-20 01:21:44', '2016-11-13 01:21:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (253, 3, '461.41', '2015-08-01 21:35:19', '2015-08-29 21:35:19');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (153, 3, '482.33', '2016-06-28 11:06:43', '2016-08-15 11:06:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (14, 3, '855.22', '2016-07-31 06:06:08', '2016-08-27 06:06:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (101, 3, '61.50', '2017-03-28 07:33:03', '2017-05-20 07:33:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (2, 3, '385.94', '2017-05-15 03:00:08', '2017-06-01 03:00:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (170, 3, '648.36', '2016-10-15 10:03:15', '2016-12-08 10:03:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (64, 3, '266.73', '2016-01-14 10:52:19', '2016-03-13 10:52:19');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (389, 3, '267.82', '2015-07-09 09:46:33', '2015-07-29 09:46:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (318, 3, '381.54', '2017-08-14 02:56:03', '2017-09-25 02:56:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (146, 3, '119.86', '2017-11-18 15:15:19', '2017-11-22 15:15:19');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (90, 3, '502.39', '2017-10-13 21:42:53', '2017-12-10 21:42:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (245, 3, '840.03', '2015-08-03 07:27:03', '2015-08-11 07:27:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (161, 3, '911.69', '2017-03-18 16:37:40', '2017-04-02 16:37:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (192, 3, '412.83', '2017-07-01 08:23:57', '2017-07-15 08:23:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (94, 3, '795.43', '2017-10-20 14:11:24', '2017-10-23 14:11:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (106, 3, '166.96', '2016-12-23 00:50:54', '2016-12-25 00:50:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (427, 3, '787.40', '2016-10-30 19:29:11', '2016-11-01 19:29:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (492, 3, '349.29', '2016-04-06 01:33:43', '2016-06-04 01:33:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (94, 3, '999.48', '2017-12-22 21:01:04', '2018-01-25 21:01:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (204, 3, '914.40', '2016-10-04 01:50:32', '2016-11-20 01:50:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (258, 3, '543.41', '2017-12-29 12:34:22', '2018-01-27 12:34:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (345, 3, '373.75', '2017-01-20 00:08:15', '2017-02-07 00:08:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (96, 3, '774.63', '2018-02-04 15:18:38', '2018-03-20 15:18:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (352, 3, '161.44', '2015-08-29 06:33:48', '2015-09-29 06:33:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (286, 3, '659.27', '2016-01-11 12:06:13', '2016-02-21 12:06:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (40, 3, '991.44', '2017-02-02 01:17:42', '2017-03-24 01:17:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (325, 3, '474.17', '2016-06-05 09:41:33', '2016-07-26 09:41:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (287, 3, '253.95', '2015-05-21 15:05:35', '2015-07-01 15:05:35');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (292, 3, '404.19', '2015-11-05 18:32:55', '2015-11-06 18:32:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (109, 3, '40.03', '2018-01-04 18:36:25', '2018-01-19 18:36:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (385, 3, '931.96', '2015-08-18 22:32:04', '2015-08-30 22:32:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (212, 3, '325.00', '2017-03-20 04:53:39', '2017-04-29 04:53:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (408, 3, '313.91', '2015-05-11 04:49:43', '2015-06-21 04:49:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (390, 3, '964.34', '2015-12-18 13:24:01', '2016-01-21 13:24:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (426, 3, '463.92', '2016-05-23 09:03:30', '2016-07-07 09:03:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (459, 3, '704.68', '2016-09-24 21:22:30', '2016-11-06 21:22:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (213, 3, '643.96', '2015-08-10 04:18:27', '2015-08-18 04:18:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (496, 3, '642.00', '2018-04-11 20:25:02', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (147, 3, '864.78', '2015-04-24 06:41:24', '2015-05-27 06:41:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (325, 3, '636.42', '2016-05-13 07:22:09', '2016-06-25 07:22:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (58, 3, '370.92', '2015-06-28 23:09:49', '2015-07-29 23:09:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (428, 3, '575.29', '2018-01-27 15:26:48', '2018-03-17 15:26:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (457, 3, '721.69', '2016-11-21 23:39:54', '2016-12-19 23:39:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (161, 3, '660.78', '2017-12-04 15:39:59', '2018-01-03 15:39:59');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (153, 3, '131.74', '2015-09-09 14:52:13', '2015-10-22 14:52:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (255, 3, '703.51', '2018-01-06 19:38:40', '2018-01-25 19:38:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (172, 3, '166.04', '2017-12-05 23:13:28', '2018-02-03 23:13:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (84, 3, '22.82', '2017-07-07 06:24:33', '2017-08-11 06:24:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (49, 3, '591.09', '2016-12-19 14:37:40', '2017-01-21 14:37:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (362, 3, '249.84', '2016-09-15 18:28:56', '2016-09-20 18:28:56');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (377, 3, '396.65', '2016-04-21 07:25:54', '2016-05-10 07:25:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (153, 3, '252.01', '2016-11-08 05:49:07', '2016-12-16 05:49:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (191, 3, '373.92', '2017-07-19 03:02:25', '2017-08-05 03:02:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (149, 3, '791.58', '2016-06-07 16:51:40', '2016-07-16 16:51:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (46, 4, '332.60', '2015-12-30 14:42:27', '2016-01-10 14:42:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (427, 4, '748.16', '2017-06-16 12:47:01', '2017-08-07 12:47:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (191, 4, '328.53', '2017-07-20 18:20:03', '2017-07-28 18:20:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (344, 4, '689.57', '2016-08-21 23:41:03', '2016-09-19 23:41:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (444, 4, '847.59', '2016-07-07 13:42:05', '2016-08-24 13:42:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (256, 4, '495.96', '2017-11-26 08:02:31', '2017-12-11 08:02:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (84, 4, '531.77', '2016-05-15 17:34:13', '2016-05-23 17:34:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (17, 4, '641.86', '2016-03-05 02:00:02', '2016-03-10 02:00:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (252, 4, '469.92', '2017-02-14 18:05:02', '2017-04-15 18:05:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (183, 4, '316.44', '2017-12-28 03:10:24', '2018-01-26 03:10:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (426, 4, '849.76', '2017-09-25 13:24:40', '2017-10-19 13:24:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (151, 4, '658.57', '2017-01-28 06:56:16', '2017-02-15 06:56:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (148, 4, '120.30', '2016-09-06 19:46:57', '2016-09-20 19:46:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (145, 4, '708.38', '2015-08-11 06:49:12', '2015-09-15 06:49:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (285, 4, '757.47', '2017-01-14 00:01:54', '2017-01-27 00:01:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (55, 4, '148.77', '2017-10-19 19:13:42', '2017-11-24 19:13:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (439, 4, '468.83', '2016-10-06 03:48:39', '2016-11-29 03:48:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (183, 4, '976.11', '2017-11-20 22:55:46', '2017-12-31 22:55:46');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (49, 4, '99.02', '2017-08-03 23:40:24', '2017-09-07 23:40:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (442, 4, '563.06', '2018-04-03 01:12:51', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (93, 4, '824.90', '2017-12-25 03:28:44', '2018-02-20 03:28:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (359, 4, '494.52', '2017-08-20 04:08:06', '2017-09-25 04:08:06');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (316, 4, '304.18', '2017-08-10 16:15:22', '2017-08-15 16:15:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (387, 4, '633.55', '2015-04-24 15:23:43', '2015-05-08 15:23:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (17, 4, '797.48', '2015-08-20 22:30:32', '2015-09-16 22:30:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (428, 4, '617.04', '2016-10-22 02:58:12', '2016-11-27 02:58:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (102, 4, '464.90', '2016-11-13 10:05:36', '2016-11-19 10:05:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (96, 4, '199.51', '2015-08-15 11:22:08', '2015-08-29 11:22:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (322, 4, '741.58', '2017-12-06 13:33:02', '2017-12-21 13:33:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (55, 4, '704.12', '2016-07-11 19:33:33', '2016-07-19 19:33:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (210, 4, '381.88', '2016-04-01 09:42:31', '2016-04-26 09:42:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (330, 4, '356.57', '2018-01-09 20:06:56', '2018-03-06 20:06:56');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (248, 4, '542.57', '2016-12-09 23:54:38', '2016-12-16 23:54:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (352, 4, '907.06', '2016-07-21 17:30:30', '2016-07-23 17:30:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (498, 4, '653.96', '2018-03-06 19:24:01', '2018-03-08 19:24:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (240, 4, '197.60', '2018-01-29 05:28:52', '2018-03-18 05:28:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (482, 4, '197.95', '2016-10-13 06:28:26', '2016-10-21 06:28:26');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (71, 4, '201.78', '2017-09-11 12:32:51', '2017-10-29 12:32:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (435, 4, '80.56', '2016-03-27 08:20:58', '2016-04-17 08:20:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (39, 4, '463.46', '2015-08-23 08:59:15', '2015-09-08 08:59:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (453, 4, '777.54', '2017-03-27 03:15:35', '2017-03-30 03:15:35');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (488, 4, '161.40', '2017-05-08 03:41:47', '2017-07-06 03:41:47');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (407, 4, '712.21', '2015-08-15 02:33:22', '2015-09-17 02:33:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (115, 4, '24.08', '2018-03-03 15:24:12', '2018-03-24 15:24:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (64, 4, '656.09', '2016-04-09 19:38:52', '2016-04-11 19:38:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (342, 4, '178.93', '2017-02-26 23:27:21', '2017-02-27 23:27:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (400, 4, '175.50', '2016-06-16 06:47:30', '2016-07-12 06:47:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (30, 4, '606.48', '2016-03-11 19:34:50', '2016-03-25 19:34:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (124, 4, '920.63', '2017-10-04 17:11:06', '2017-10-30 17:11:06');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (217, 4, '783.43', '2015-09-23 20:04:33', '2015-10-28 20:04:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (320, 4, '249.05', '2017-12-19 14:44:49', '2017-12-30 14:44:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (202, 4, '669.72', '2016-12-03 07:06:55', '2016-12-08 07:06:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (459, 4, '262.77', '2017-12-12 23:58:48', '2018-01-19 23:58:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (178, 4, '605.83', '2017-04-04 07:37:47', '2017-05-18 07:37:47');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (300, 4, '802.46', '2015-09-03 16:02:42', '2015-09-18 16:02:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (224, 4, '86.65', '2016-02-13 05:00:53', '2016-04-10 05:00:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (481, 4, '812.85', '2017-05-15 16:19:57', '2017-07-08 16:19:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (459, 4, '262.39', '2015-08-21 23:45:46', '2015-10-05 23:45:46');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (328, 4, '317.73', '2017-12-01 19:44:33', '2017-12-30 19:44:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (331, 4, '376.18', '2016-08-19 05:58:53', '2016-10-15 05:58:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (35, 4, '840.58', '2017-06-25 11:31:28', '2017-07-02 11:31:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (191, 4, '279.00', '2016-12-23 00:04:10', '2017-01-03 00:04:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (228, 4, '38.48', '2017-01-01 01:43:01', '2017-01-07 01:43:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (366, 4, '54.49', '2017-06-13 00:12:17', '2017-07-17 00:12:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (466, 4, '780.86', '2016-01-27 10:32:56', '2016-03-09 10:32:56');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (111, 4, '503.26', '2017-02-11 00:41:31', '2017-02-24 00:41:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (388, 4, '323.43', '2015-06-30 14:27:53', '2015-08-03 14:27:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (407, 4, '478.50', '2016-05-06 03:58:32', '2016-07-03 03:58:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (399, 4, '477.57', '2017-10-17 19:15:03', '2017-10-29 19:15:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (62, 4, '235.59', '2017-11-26 07:35:17', '2017-12-31 07:35:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (32, 4, '240.43', '2016-01-16 01:33:04', '2016-01-28 01:33:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (258, 4, '461.21', '2015-09-04 09:58:00', '2015-09-08 09:58:00');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (361, 4, '276.43', '2015-11-03 00:26:12', '2015-12-12 00:26:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (397, 4, '866.85', '2016-10-30 01:52:08', '2016-11-20 01:52:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (84, 4, '724.34', '2017-05-23 11:54:13', '2017-05-27 11:54:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (479, 4, '195.50', '2017-07-23 09:43:09', '2017-09-15 09:43:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (46, 4, '793.45', '2016-06-11 14:31:13', '2016-07-25 14:31:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (5, 4, '381.40', '2016-02-18 21:54:18', '2016-02-29 21:54:18');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (122, 4, '501.07', '2015-09-22 22:52:34', '2015-10-12 22:52:34');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (313, 4, '284.23', '2015-05-22 02:56:23', '2015-05-28 02:56:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (234, 4, '529.17', '2016-02-25 03:47:23', '2016-03-22 03:47:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (328, 4, '172.32', '2017-02-20 12:40:52', '2017-04-19 12:40:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (204, 4, '157.57', '2016-06-07 14:46:00', '2016-06-10 14:46:00');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (103, 4, '708.31', '2015-10-30 16:42:52', '2015-11-05 16:42:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (366, 4, '590.47', '2017-05-05 00:25:20', '2017-05-07 00:25:20');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (315, 4, '304.86', '2016-03-04 04:12:41', '2016-04-06 04:12:41');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (90, 4, '605.98', '2016-02-18 22:41:31', '2016-03-25 22:41:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (474, 4, '663.35', '2017-01-15 19:37:59', '2017-02-04 19:37:59');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (342, 4, '66.49', '2016-11-02 13:28:09', '2016-12-28 13:28:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (202, 4, '35.05', '2018-02-05 17:57:02', '2018-02-19 17:57:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (234, 4, '420.67', '2016-03-04 18:19:06', '2016-04-18 18:19:06');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (110, 4, '142.43', '2015-06-24 17:17:37', '2015-07-24 17:17:37');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (344, 4, '490.04', '2016-05-22 23:53:42', '2016-07-13 23:53:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (457, 4, '444.52', '2016-12-05 19:31:39', '2017-01-01 19:31:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (121, 4, '30.27', '2016-03-06 10:52:11', '2016-04-15 10:52:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (167, 4, '309.20', '2016-01-28 15:42:28', '2016-03-14 15:42:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (15, 4, '123.04', '2016-07-21 04:30:05', '2016-08-01 04:30:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (362, 4, '114.78', '2016-04-20 09:49:23', '2016-05-31 09:49:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (145, 4, '307.24', '2016-04-01 20:40:55', '2016-04-10 20:40:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (206, 4, '291.08', '2017-05-07 03:54:25', '2017-06-13 03:54:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (110, 4, '304.67', '2017-01-15 15:26:12', '2017-03-07 15:26:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (342, 4, '880.39', '2017-03-11 15:51:09', '2017-04-08 15:51:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (317, 4, '766.84', '2016-01-14 22:24:23', '2016-01-21 22:24:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (217, 4, '79.46', '2018-02-15 10:18:30', '2018-02-25 10:18:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (361, 4, '33.40', '2015-07-23 05:41:48', '2015-07-24 05:41:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (394, 4, '944.24', '2015-07-31 09:15:54', '2015-09-23 09:15:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (345, 6, '611.69', '2015-04-27 08:51:43', '2015-05-16 08:51:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (105, 6, '72.15', '2016-05-15 04:51:51', '2016-06-08 04:51:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (357, 6, '402.90', '2016-01-17 15:22:23', '2016-03-13 15:22:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (174, 6, '992.98', '2015-09-04 07:44:16', '2015-10-30 07:44:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (439, 6, '949.10', '2017-11-11 14:35:04', '2017-12-17 14:35:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (145, 6, '717.85', '2018-02-14 02:08:39', '2018-03-23 02:08:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (198, 6, '397.21', '2018-04-08 11:37:43', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (465, 6, '773.19', '2017-11-02 06:51:01', '2017-12-25 06:51:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (32, 6, '314.91', '2016-02-03 09:01:28', '2016-02-19 09:01:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (119, 6, '380.78', '2015-07-20 14:21:04', '2015-08-08 14:21:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (393, 6, '438.29', '2017-04-13 16:07:40', '2017-06-11 16:07:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (4, 6, '788.57', '2016-01-04 19:49:07', '2016-03-03 19:49:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (106, 6, '96.45', '2016-08-11 18:11:08', '2016-10-02 18:11:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (171, 6, '228.07', '2015-08-28 03:24:53', '2015-09-06 03:24:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (359, 6, '451.24', '2017-08-27 10:48:51', '2017-09-29 10:48:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (427, 6, '918.02', '2016-10-02 17:17:10', '2016-10-07 17:17:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (182, 6, '995.40', '2015-09-15 13:38:44', '2015-09-30 13:38:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (83, 6, '840.85', '2018-02-17 00:13:17', '2018-03-26 00:13:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (77, 6, '645.46', '2016-06-24 10:20:07', '2016-06-27 10:20:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (282, 6, '186.36', '2016-02-02 04:22:28', '2016-02-12 04:22:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (414, 6, '803.60', '2017-10-05 04:40:30', '2017-11-21 04:40:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (285, 6, '345.33', '2016-01-13 10:41:55', '2016-03-12 10:41:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (170, 6, '855.92', '2016-12-29 16:33:54', '2017-01-24 16:33:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (256, 6, '631.61', '2015-05-14 01:15:16', '2015-05-15 01:15:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (361, 6, '378.19', '2016-05-29 14:00:53', '2016-06-10 14:00:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (77, 6, '267.68', '2016-04-25 19:16:48', '2016-05-26 19:16:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (232, 6, '215.98', '2017-11-03 15:33:14', '2017-12-16 15:33:14');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (17, 6, '137.31', '2017-11-30 02:45:52', '2017-12-12 02:45:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (217, 6, '501.63', '2016-08-23 20:03:29', '2016-10-05 20:03:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (214, 6, '435.00', '2017-06-30 09:02:31', '2017-07-19 09:02:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (172, 6, '963.94', '2015-05-11 07:54:25', '2015-07-06 07:54:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (178, 6, '722.11', '2015-07-01 06:24:29', '2015-07-07 06:24:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (499, 6, '686.48', '2017-01-17 05:10:05', '2017-02-10 05:10:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (345, 6, '665.86', '2018-01-12 22:47:13', '2018-01-24 22:47:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (408, 6, '690.45', '2017-04-04 17:39:09', '2017-04-08 17:39:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (276, 6, '334.80', '2016-12-01 16:28:52', '2017-01-25 16:28:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (163, 6, '604.76', '2016-01-10 05:07:06', '2016-02-20 05:07:06');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (316, 6, '637.17', '2015-11-29 11:43:46', '2016-01-13 11:43:46');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (191, 6, '453.08', '2018-03-25 13:11:14', '2018-05-19 13:11:14');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (237, 6, '203.82', '2017-05-22 22:12:36', '2017-06-22 22:12:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (440, 6, '439.38', '2015-05-04 03:09:45', '2015-07-01 03:09:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (202, 6, '713.68', '2016-09-11 23:22:17', '2016-10-02 23:22:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (333, 6, '362.44', '2015-07-19 00:50:42', '2015-08-14 00:50:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (357, 6, '262.05', '2017-09-08 19:00:25', '2017-09-12 19:00:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (112, 6, '206.01', '2017-07-30 07:48:36', '2017-08-16 07:48:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (10, 6, '895.14', '2015-05-17 04:40:05', '2015-06-28 04:40:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (195, 6, '608.77', '2017-05-30 07:22:13', '2017-06-05 07:22:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (292, 6, '94.88', '2016-10-03 04:23:32', '2016-10-28 04:23:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (146, 6, '943.77', '2016-03-12 19:03:50', '2016-04-23 19:03:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (265, 6, '356.91', '2017-08-19 05:04:30', '2017-08-30 05:04:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (191, 6, '584.98', '2017-06-09 22:54:58', '2017-07-31 22:54:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (377, 6, '629.33', '2017-01-02 17:50:36', '2017-02-15 17:50:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (17, 6, '913.27', '2015-04-27 11:45:15', '2015-05-25 11:45:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (322, 6, '688.21', '2016-01-08 23:26:14', '2016-02-21 23:26:14');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (134, 6, '119.43', '2016-06-23 10:28:07', '2016-07-31 10:28:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (148, 6, '453.77', '2017-04-01 01:48:07', '2017-05-09 01:48:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (46, 6, '539.27', '2017-08-16 05:46:15', '2017-08-23 05:46:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (400, 6, '405.55', '2017-03-16 22:16:36', '2017-05-02 22:16:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (400, 6, '996.59', '2017-09-10 03:14:15', '2017-10-01 03:14:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (313, 6, '293.48', '2015-05-26 08:14:32', '2015-06-07 08:14:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (423, 6, '687.64', '2016-08-13 08:39:44', '2016-09-03 08:39:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (472, 6, '632.35', '2017-02-18 15:02:57', '2017-03-20 15:02:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (397, 6, '156.35', '2018-04-06 09:52:29', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (234, 6, '936.46', '2016-05-17 05:21:31', '2016-06-22 05:21:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (220, 6, '130.61', '2016-10-01 16:26:44', '2016-10-25 16:26:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (215, 6, '95.17', '2016-11-19 07:00:42', '2016-12-10 07:00:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (146, 6, '818.28', '2017-12-22 03:21:00', '2018-01-24 03:21:00');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (415, 6, '290.20', '2016-12-31 12:20:04', '2017-02-02 12:20:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (73, 6, '284.77', '2016-02-08 22:57:52', '2016-03-27 22:57:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (374, 6, '153.93', '2017-05-14 23:16:41', '2017-07-12 23:16:41');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (249, 6, '664.20', '2015-10-21 08:53:58', '2015-10-31 08:53:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (275, 6, '731.31', '2017-11-17 02:59:40', '2017-12-18 02:59:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (104, 6, '283.95', '2016-04-15 00:27:30', '2016-05-30 00:27:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (442, 6, '887.88', '2015-07-05 03:42:54', '2015-07-28 03:42:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (191, 6, '81.99', '2017-09-27 19:32:36', '2017-10-20 19:32:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (47, 6, '315.04', '2015-05-30 00:35:25', '2015-07-11 00:35:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (423, 6, '330.52', '2016-08-17 23:36:10', '2016-10-07 23:36:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (445, 6, '665.71', '2016-12-22 23:22:21', '2017-01-04 23:22:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (96, 6, '125.60', '2018-04-15 12:31:01', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (290, 6, '251.35', '2017-02-10 19:17:42', '2017-03-29 19:17:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (186, 6, '624.91', '2017-09-03 05:49:24', '2017-09-16 05:49:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (274, 6, '391.18', '2015-06-08 16:11:45', '2015-06-24 16:11:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (25, 6, '253.48', '2015-12-12 03:21:06', '2016-01-16 03:21:06');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (354, 6, '682.49', '2015-05-10 18:55:59', '2015-05-16 18:55:59');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (206, 6, '985.76', '2016-04-26 03:39:52', '2016-06-18 03:39:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (244, 6, '236.36', '2016-04-24 07:50:37', '2016-05-12 07:50:37');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (469, 6, '957.10', '2017-10-05 22:46:37', '2017-10-10 22:46:37');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (7, 6, '118.56', '2015-10-07 10:28:08', '2015-11-02 10:28:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (310, 6, '108.90', '2015-09-06 05:05:09', '2015-09-25 05:05:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (379, 6, '622.15', '2016-02-22 02:32:13', '2016-03-12 02:32:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (32, 6, '67.70', '2015-10-28 04:15:40', '2015-12-18 04:15:40');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (192, 6, '139.50', '2016-11-07 12:08:46', '2016-12-02 12:08:46');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (253, 6, '725.29', '2016-09-30 07:45:00', '2016-11-08 07:45:00');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (69, 6, '174.74', '2016-05-14 04:09:19', '2016-06-06 04:09:19');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (182, 6, '284.66', '2016-10-17 05:25:42', '2016-12-05 05:25:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (271, 6, '623.54', '2016-07-06 10:47:15', '2016-07-25 10:47:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (350, 6, '553.32', '2015-09-13 22:57:32', '2015-09-30 22:57:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (357, 6, '363.93', '2017-10-09 04:00:01', '2017-11-18 04:00:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (212, 6, '465.71', '2015-06-28 23:21:13', '2015-07-29 23:21:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (238, 6, '151.80', '2018-02-14 00:39:30', '2018-02-27 00:39:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (290, 6, '797.17', '2016-06-29 13:14:52', '2016-07-19 13:14:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (315, 6, '393.70', '2016-12-09 03:58:42', '2016-12-19 03:58:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (361, 6, '307.44', '2016-03-11 12:10:53', '2016-04-16 12:10:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (431, 6, '955.78', '2017-06-27 14:16:23', '2017-07-03 14:16:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (469, 6, '766.93', '2015-06-30 17:57:36', '2015-07-06 17:57:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (168, 6, '395.38', '2017-01-03 02:27:32', '2017-02-06 02:27:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (180, 6, '290.60', '2016-11-19 20:13:00', '2016-12-06 20:13:00');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (494, 6, '266.16', '2016-08-10 15:11:29', '2016-08-28 15:11:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (198, 11, '669.01', '2016-07-18 16:29:54', '2016-09-05 16:29:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (263, 11, '514.70', '2017-10-11 23:32:57', '2017-10-15 23:32:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (298, 11, '446.70', '2015-09-21 19:44:49', '2015-11-05 19:44:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (115, 11, '581.50', '2017-05-30 22:12:32', '2017-07-23 22:12:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (418, 11, '505.23', '2017-01-08 15:25:20', '2017-01-28 15:25:20');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (181, 11, '66.18', '2016-09-07 21:04:17', '2016-09-10 21:04:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (298, 11, '975.22', '2016-06-16 10:17:21', '2016-08-11 10:17:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (134, 11, '546.05', '2015-10-25 00:13:32', '2015-12-12 00:13:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (459, 11, '415.45', '2017-02-20 04:27:05', '2017-03-17 04:27:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (115, 11, '310.24', '2015-11-07 09:41:07', '2015-12-16 09:41:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (415, 11, '201.65', '2015-05-27 07:10:11', '2015-07-12 07:10:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (148, 11, '399.00', '2017-05-15 11:07:27', '2017-07-06 11:07:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (68, 11, '735.67', '2016-07-02 16:06:44', '2016-08-18 16:06:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (214, 11, '108.76', '2017-09-30 19:37:24', '2017-10-18 19:37:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (484, 11, '879.77', '2015-07-15 04:25:55', '2015-08-08 04:25:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (450, 11, '995.87', '2018-04-07 00:17:57', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (387, 11, '991.55', '2018-04-17 06:22:53', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (49, 11, '653.38', '2016-01-22 12:09:44', '2016-02-04 12:09:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (498, 11, '801.14', '2017-12-09 16:49:28', '2018-01-14 16:49:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (93, 11, '670.29', '2017-06-01 19:37:15', '2017-06-23 19:37:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (436, 11, '937.45', '2016-06-17 07:21:21', '2016-07-13 07:21:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (479, 11, '494.79', '2016-10-15 23:04:09', '2016-10-15 23:04:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (219, 11, '814.84', '2015-11-23 03:09:41', '2015-11-23 03:09:41');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (206, 11, '746.06', '2016-11-23 04:54:15', '2017-01-05 04:54:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (499, 11, '254.51', '2017-06-22 06:24:58', '2017-07-11 06:24:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (90, 11, '438.05', '2017-04-07 10:43:11', '2017-05-02 10:43:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (124, 11, '710.40', '2016-08-10 21:00:05', '2016-08-19 21:00:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (437, 11, '889.41', '2015-11-24 20:23:39', '2015-12-03 20:23:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (465, 11, '894.70', '2016-09-18 19:12:04', '2016-11-04 19:12:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (203, 11, '401.02', '2017-05-20 02:03:15', '2017-05-29 02:03:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (50, 11, '535.26', '2017-02-07 19:55:38', '2017-02-13 19:55:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (16, 11, '157.37', '2016-10-07 13:31:27', '2016-12-04 13:31:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (356, 11, '363.84', '2017-05-22 13:16:04', '2017-07-09 13:16:04');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (349, 11, '77.95', '2016-04-22 12:11:52', '2016-05-03 12:11:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (50, 11, '533.30', '2015-12-17 00:29:33', '2016-01-22 00:29:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (213, 11, '507.09', '2017-10-23 04:25:55', '2017-12-08 04:25:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (73, 11, '888.55', '2016-11-09 17:10:30', '2016-11-25 17:10:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (402, 11, '487.27', '2016-08-29 02:44:13', '2016-09-15 02:44:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (317, 11, '257.44', '2015-12-15 12:03:18', '2015-12-18 12:03:18');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (344, 11, '559.94', '2017-07-29 11:50:20', '2017-09-05 11:50:20');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (8, 11, '953.34', '2017-05-29 10:26:01', '2017-06-13 10:26:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (24, 11, '819.03', '2015-09-24 17:57:49', '2015-11-23 17:57:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (93, 11, '89.06', '2015-10-02 17:48:09', '2015-10-28 17:48:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (219, 11, '283.13', '2016-08-10 09:34:15', '2016-08-26 09:34:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (241, 11, '409.82', '2016-08-25 10:23:49', '2016-08-25 10:23:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (278, 11, '139.73', '2017-01-18 11:41:31', '2017-03-05 11:41:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (181, 11, '264.90', '2016-04-27 14:49:56', '2016-06-01 14:49:56');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (133, 11, '747.02', '2018-01-10 03:49:43', '2018-01-28 03:49:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (172, 11, '659.66', '2016-05-15 06:06:17', '2016-06-22 06:06:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (287, 11, '167.86', '2015-07-07 14:18:36', '2015-08-20 14:18:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (326, 11, '461.14', '2016-07-12 16:16:32', '2016-08-09 16:16:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (428, 11, '454.32', '2015-09-04 08:03:54', '2015-09-10 08:03:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (253, 11, '871.04', '2016-09-04 14:22:29', '2016-10-17 14:22:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (400, 11, '786.22', '2015-10-06 14:38:58', '2015-10-13 14:38:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (390, 11, '961.29', '2017-11-09 12:43:17', '2017-12-16 12:43:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (126, 11, '338.02', '2015-04-28 23:32:58', '2015-06-27 23:32:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (114, 11, '187.82', '2016-08-10 07:52:58', '2016-08-26 07:52:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (278, 11, '332.33', '2017-05-31 22:10:17', '2017-06-27 22:10:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (103, 11, '913.53', '2017-09-25 13:13:15', '2017-10-28 13:13:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (263, 11, '760.05', '2017-06-12 19:53:35', '2017-06-18 19:53:35');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (39, 11, '361.59', '2015-06-14 02:04:13', '2015-08-11 02:04:13');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (482, 11, '505.94', '2015-09-28 17:48:03', '2015-10-11 17:48:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (70, 11, '138.49', '2015-10-16 15:32:16', '2015-10-30 15:32:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (96, 11, '685.54', '2018-04-20 04:29:10', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (469, 11, '326.79', '2017-07-26 11:11:22', '2017-08-13 11:11:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (15, 11, '33.37', '2015-08-16 14:33:29', '2015-10-02 14:33:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (496, 11, '688.00', '2017-01-18 11:08:30', '2017-03-05 11:08:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (323, 11, '602.34', '2016-02-29 03:04:05', '2016-04-20 03:04:05');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (149, 11, '644.82', '2017-11-23 22:54:42', '2018-01-02 22:54:42');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (80, 11, '83.21', '2017-07-21 22:20:47', '2017-09-04 22:20:47');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (286, 11, '93.01', '2017-08-18 08:39:34', '2017-10-01 08:39:34');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (427, 11, '934.88', '2017-11-20 08:29:45', '2018-01-16 08:29:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (388, 11, '400.66', '2015-09-30 01:02:29', '2015-11-03 01:02:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (253, 11, '910.41', '2015-09-13 15:58:12', '2015-11-10 15:58:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (172, 11, '524.05', '2015-11-15 12:27:50', '2016-01-12 12:27:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (46, 11, '449.81', '2016-05-17 19:31:39', '2016-05-30 19:31:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (55, 11, '198.56', '2016-10-05 02:48:27', '2016-10-14 02:48:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (279, 11, '286.31', '2015-08-28 05:14:28', '2015-09-19 05:14:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (226, 11, '886.92', '2018-04-01 07:36:15', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (280, 11, '582.86', '2017-11-17 04:24:49', '2018-01-16 04:24:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (400, 11, '143.73', '2017-01-06 05:44:30', '2017-03-01 05:44:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (269, 11, '736.67', '2016-02-25 23:55:16', '2016-04-14 23:55:16');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (11, 11, '427.67', '2017-05-23 05:36:11', '2017-07-01 05:36:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (282, 11, '583.24', '2017-05-13 04:30:11', '2017-05-31 04:30:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (102, 11, '332.32', '2015-12-18 08:10:21', '2016-01-13 08:10:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (427, 11, '362.61', '2018-04-11 04:03:37', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (191, 11, '354.16', '2018-01-09 23:51:47', '2018-01-31 23:51:47');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (159, 11, '984.62', '2015-06-28 09:00:30', '2015-08-20 09:00:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (223, 11, '203.55', '2017-09-15 12:33:55', '2017-10-08 12:33:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (157, 11, '483.36', '2017-01-01 06:31:20', '2017-01-05 06:31:20');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (429, 11, '93.75', '2015-12-13 13:16:45', '2015-12-16 13:16:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (217, 11, '904.30', '2016-05-03 23:55:46', '2016-05-26 23:55:46');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (403, 11, '134.37', '2017-07-15 04:08:31', '2017-07-15 04:08:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (249, 11, '20.23', '2017-11-26 19:32:02', '2017-12-25 19:32:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (226, 11, '184.89', '2017-12-14 02:07:10', '2018-01-17 02:07:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (252, 11, '446.16', '2017-06-17 07:05:33', '2017-08-11 07:05:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (459, 11, '707.37', '2018-04-14 20:51:27', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (315, 11, '633.30', '2015-08-20 17:01:02', '2015-09-29 17:01:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (481, 11, '833.68', '2015-12-20 03:06:34', '2015-12-25 03:06:34');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (160, 11, '970.62', '2015-06-09 11:12:35', '2015-08-06 11:12:35');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (445, 11, '186.19', '2017-02-14 04:24:38', '2017-02-21 04:24:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (243, 11, '224.28', '2016-11-20 01:05:15', '2016-12-11 01:05:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (366, 11, '967.10', '2017-10-31 21:11:22', '2017-11-02 21:11:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (101, 11, '386.84', '2015-06-08 07:01:12', '2015-06-12 07:01:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (71, 11, '660.73', '2016-03-09 11:39:10', '2016-04-02 11:39:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (364, 11, '447.69', '2016-08-17 02:39:48', '2016-09-10 02:39:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (394, 11, '993.67', '2017-10-16 14:57:07', '2017-12-08 14:57:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (147, 11, '820.18', '2017-10-31 12:50:26', '2017-12-10 12:50:26');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (265, 11, '539.63', '2015-12-01 09:09:43', '2015-12-09 09:09:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (51, 11, '724.47', '2017-05-05 11:25:33', '2017-07-01 11:25:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (271, 11, '201.93', '2016-04-09 19:17:51', '2016-05-03 19:17:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (237, 3, '736.88', '2016-04-27 15:31:44', '2016-06-23 15:31:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (150, 3, '387.11', '2016-11-17 17:04:52', '2016-11-21 17:04:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (388, 3, '978.11', '2017-12-06 00:36:53', '2018-01-10 00:36:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (220, 3, '99.17', '2017-05-05 03:17:15', '2017-05-16 03:17:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (177, 3, '880.72', '2015-12-23 04:12:25', '2016-02-05 04:12:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (183, 3, '459.13', '2017-08-23 01:35:54', '2017-09-11 01:35:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (1, 3, '344.57', '2017-11-08 21:08:10', '2018-01-05 21:08:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (231, 3, '233.76', '2017-12-14 07:40:50', '2017-12-31 07:40:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (212, 3, '231.60', '2015-09-17 18:46:50', '2015-10-07 18:46:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (465, 3, '704.32', '2017-09-25 23:18:52', '2017-09-25 23:18:52');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (145, 3, '899.60', '2017-01-08 16:43:36', '2017-03-03 16:43:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (58, 3, '686.03', '2017-08-19 15:17:18', '2017-10-13 15:17:18');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (206, 3, '809.57', '2016-07-15 08:33:53', '2016-09-02 08:33:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (286, 3, '359.26', '2015-10-19 12:50:32', '2015-12-15 12:50:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (265, 3, '284.93', '2017-07-09 14:38:32', '2017-08-28 14:38:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (216, 3, '51.15', '2017-04-27 21:19:12', '2017-05-13 21:19:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (362, 3, '426.48', '2017-04-25 06:30:38', '2017-06-08 06:30:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (393, 3, '933.27', '2016-01-31 15:11:11', '2016-02-17 15:11:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (69, 3, '234.52', '2015-05-30 13:23:15', '2015-06-30 13:23:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (431, 3, '494.36', '2017-06-20 07:58:43', '2017-08-18 07:58:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (263, 3, '647.68', '2017-12-31 06:12:28', '2018-02-15 06:12:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (132, 3, '511.50', '2015-10-23 05:17:50', '2015-11-05 05:17:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (17, 3, '547.13', '2015-08-25 00:01:12', '2015-09-18 00:01:12');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (203, 3, '299.57', '2017-03-28 01:18:01', '2017-05-23 01:18:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (127, 3, '106.37', '2016-03-09 17:07:27', '2016-03-16 17:07:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (474, 3, '734.36', '2015-05-19 02:32:59', '2015-05-26 02:32:59');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (288, 3, '400.05', '2016-06-30 23:18:47', '2016-08-09 23:18:47');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (7, 3, '226.17', '2017-06-25 22:25:48', '2017-08-06 22:25:48');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (163, 3, '315.72', '2017-01-24 13:10:17', '2017-03-25 13:10:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (7, 3, '168.95', '2016-01-04 05:11:36', '2016-01-15 05:11:36');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (17, 3, '78.72', '2016-04-24 02:59:23', '2016-05-25 02:59:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (231, 3, '629.21', '2017-12-02 01:33:51', '2017-12-19 01:33:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (424, 3, '851.60', '2018-04-17 20:43:05', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (151, 3, '362.53', '2015-11-01 01:23:17', '2015-12-16 01:23:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (8, 3, '927.08', '2017-07-08 06:12:24', '2017-09-05 06:12:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (381, 3, '840.71', '2017-09-28 03:08:22', '2017-11-22 03:08:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (16, 3, '297.37', '2017-04-05 20:47:08', '2017-04-08 20:47:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (439, 3, '975.51', '2015-11-01 06:52:56', '2015-12-27 06:52:56');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (355, 3, '954.74', '2018-04-07 10:00:28', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (309, 3, '449.36', '2017-10-01 14:12:55', '2017-10-22 14:12:55');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (203, 3, '721.64', '2017-12-15 21:16:07', '2018-02-09 21:16:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (348, 3, '802.05', '2017-02-05 03:09:26', '2017-03-20 03:09:26');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (382, 3, '890.12', '2018-01-02 06:37:11', '2018-02-17 06:37:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (445, 3, '911.06', '2016-02-22 10:57:25', '2016-04-13 10:57:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (194, 3, '304.75', '2017-12-05 04:23:24', '2017-12-22 04:23:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (206, 3, '685.98', '2015-10-31 23:48:17', '2015-11-11 23:48:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (426, 3, '577.12', '2018-03-14 10:22:29', '2018-03-20 10:22:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (400, 3, '53.52', '2016-09-24 00:35:28', '2016-10-03 00:35:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (58, 4, '791.76', '2017-11-22 02:41:58', '2018-01-08 02:41:58');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (318, 4, '151.09', '2017-04-10 22:58:29', '2017-05-17 22:58:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (428, 4, '795.31', '2015-06-29 05:52:35', '2015-08-17 05:52:35');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (494, 4, '666.28', '2017-12-18 22:16:44', '2018-02-12 22:16:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (412, 4, '69.90', '2015-11-18 06:14:53', '2016-01-14 06:14:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (216, 4, '364.72', '2017-10-25 02:58:34', '2017-10-25 02:58:34');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (455, 4, '475.64', '2017-06-14 07:46:23', '2017-07-15 07:46:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (273, 4, '844.34', '2016-11-24 04:01:27', '2017-01-09 04:01:27');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (355, 4, '141.44', '2017-01-07 18:36:38', '2017-02-25 18:36:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (484, 4, '119.99', '2017-09-19 00:48:56', '2017-11-11 00:48:56');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (271, 4, '472.10', '2018-02-03 04:19:37', '2018-02-11 04:19:37');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (210, 4, '730.91', '2017-10-05 15:23:51', '2017-10-20 15:23:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (289, 4, '164.81', '2015-09-06 06:23:57', '2015-10-29 06:23:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (231, 4, '954.42', '2017-05-07 00:04:54', '2017-05-29 00:04:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (424, 4, '171.98', '2017-10-31 10:34:08', '2017-10-31 10:34:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (468, 4, '185.82', '2017-04-22 15:27:03', '2017-05-06 15:27:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (404, 4, '637.83', '2018-04-29 05:50:11', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (488, 4, '248.31', '2016-09-28 20:00:26', '2016-11-08 20:00:26');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (10, 4, '692.61', '2016-02-11 17:19:07', '2016-02-15 17:19:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (50, 4, '809.72', '2018-03-27 18:58:10', '2018-03-30 18:58:10');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (286, 4, '753.22', '2017-02-20 03:09:31', '2017-04-17 03:09:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (389, 4, '475.93', '2017-04-19 03:28:21', '2017-05-18 03:28:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (20, 4, '923.77', '2016-08-21 19:29:49', '2016-09-16 19:29:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (293, 4, '68.17', '2016-01-04 05:50:29', '2016-02-02 05:50:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (332, 4, '444.13', '2015-05-03 13:00:32', '2015-06-11 13:00:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (80, 4, '566.11', '2016-02-26 12:18:56', '2016-04-23 12:18:56');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (246, 4, '889.60', '2016-08-25 18:52:25', '2016-09-30 18:52:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (74, 4, '940.60', '2017-05-24 19:56:35', '2017-07-14 19:56:35');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (7, 4, '401.29', '2017-11-13 04:44:51', '2017-11-26 04:44:51');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (346, 4, '863.73', '2016-03-06 17:32:09', '2016-04-03 17:32:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (247, 4, '72.21', '2017-04-12 15:07:50', '2017-04-19 15:07:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (345, 4, '153.56', '2015-06-29 00:26:57', '2015-07-18 00:26:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (159, 4, '772.61', '2016-06-13 06:04:06', '2016-07-25 06:04:06');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (77, 4, '569.07', '2017-05-27 22:54:54', '2017-06-29 22:54:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (52, 4, '960.88', '2015-05-14 16:11:09', '2015-06-23 16:11:09');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (119, 4, '585.68', '2016-08-09 18:03:53', '2016-09-02 18:03:53');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (71, 4, '598.89', '2016-02-09 16:46:59', '2016-02-23 16:46:59');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (117, 4, '166.65', '2017-09-04 07:12:59', '2017-10-28 07:12:59');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (55, 4, '421.48', '2017-04-22 17:07:25', '2017-04-27 17:07:25');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (121, 4, '186.00', '2015-04-26 02:51:02', '2015-05-26 02:51:02');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (30, 4, '812.48', '2017-07-01 13:07:08', '2017-07-24 13:07:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (80, 4, '25.63', '2016-08-07 04:33:21', '2016-08-10 04:33:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (25, 4, '457.32', '2015-09-08 01:03:01', '2015-09-08 01:03:01');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (2, 4, '206.57', '2017-10-28 04:33:49', '2017-11-23 04:33:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (90, 4, '33.80', '2016-12-07 21:22:54', '2017-01-12 21:22:54');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (101, 4, '432.70', '2015-09-09 16:23:23', '2015-10-29 16:23:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (210, 1, '200.45', '2017-07-24 04:39:15', '2017-09-03 04:39:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (453, 1, '712.07', '2017-01-27 19:14:20', '2017-02-15 19:14:20');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (248, 1, '53.21', '2017-12-17 09:30:38', '2018-02-08 09:30:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (459, 1, '587.18', '2017-06-10 13:01:28', '2017-06-22 13:01:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (51, 1, '87.30', '2015-07-26 13:38:18', '2015-09-07 13:38:18');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (229, 1, '523.61', '2016-03-25 22:35:33', '2016-04-11 22:35:33');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (302, 1, '934.55', '2017-09-23 15:32:32', '2017-10-03 15:32:32');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (401, 1, '38.37', '2017-05-05 13:16:45', '2017-05-29 13:16:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (423, 1, '298.10', '2017-12-12 17:26:49', '2018-01-11 17:26:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (157, 1, '843.81', '2016-12-30 19:02:23', '2017-02-03 19:02:23');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (491, 1, '867.71', '2015-11-30 12:51:22', '2015-12-11 12:51:22');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (138, 1, '636.78', '2015-11-26 01:00:24', '2015-12-20 01:00:24');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (256, 1, '291.28', '2017-02-13 05:43:43', '2017-03-01 05:43:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (237, 1, '167.81', '2017-11-23 04:42:57', '2017-12-06 04:42:57');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (333, 1, '447.48', '2015-11-21 00:22:11', '2015-12-31 00:22:11');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (385, 1, '858.24', '2017-10-24 21:13:43', '2017-12-05 21:13:43');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (318, 1, '740.03', '2018-03-07 11:16:00', '2018-03-16 11:16:00');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (207, 1, '350.61', '2015-11-30 10:27:03', '2015-12-28 10:27:03');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (32, 1, '734.84', '2017-11-21 15:02:44', '2017-12-17 15:02:44');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (106, 1, '977.24', '2015-07-21 17:05:26', '2015-08-07 17:05:26');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (236, 1, '358.77', '2015-07-12 12:49:56', '2015-07-16 12:49:56');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (465, 1, '986.27', '2018-01-08 22:51:15', '2018-02-01 22:51:15');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (248, 6, '757.47', '2015-12-31 17:24:38', '2016-01-21 17:24:38');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (222, 6, '985.40', '2016-10-16 18:57:39', '2016-10-31 18:57:39');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (276, 6, '494.27', '2018-04-05 06:09:39', null);
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (220, 6, '286.08', '2016-12-24 02:41:50', '2017-01-08 02:41:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (445, 6, '607.11', '2016-10-20 14:27:17', '2016-12-11 14:27:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (118, 6, '109.61', '2017-10-10 11:48:08', '2017-10-30 11:48:08');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (182, 6, '553.28', '2015-09-13 18:48:49', '2015-11-01 18:48:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (346, 6, '446.67', '2016-02-21 08:15:17', '2016-03-12 08:15:17');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (104, 6, '359.53', '2016-05-17 18:47:31', '2016-07-07 18:47:31');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (283, 11, '690.81', '2017-09-11 19:37:29', '2017-09-28 19:37:29');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (149, 11, '348.39', '2018-02-06 15:49:07', '2018-03-03 15:49:07');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (212, 11, '119.25', '2016-12-26 21:39:50', '2017-01-14 21:39:50');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (331, 11, '850.09', '2017-11-08 15:47:49', '2017-12-18 15:47:49');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (128, 11, '254.41', '2016-11-12 08:36:30', '2016-12-13 08:36:30');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (265, 11, '885.25', '2016-04-01 08:39:45', '2016-05-10 08:39:45');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (403, 11, '805.78', '2018-01-12 16:00:28', '2018-02-13 16:00:28');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (401, 11, '156.10', '2016-10-16 20:36:21', '2016-12-09 20:36:21');
insert into service_history (car_id, tech_id, cost, start_date, end_date) values (172, 11, '642.67', '2017-09-18 20:45:11', '2017-10-15 20:45:11');


DELETE FROM sales_history;
-- sales history
CREATE TYPE SALES_ACTION AS ENUM ('buy', 'sale');

DROP TABLE IF EXISTS sales_history;

CREATE TABLE sales_history (
  id serial NOT NULL ,
  salesman_id int NOT NULL REFERENCES employee(id),
  car_id int NOT NULL REFERENCES car_warehouse(id),
  price FLOAT NOT NULL ,
  action SALES_ACTION NOT NULL ,
  date DATE,

  PRIMARY KEY (id)
);

insert into sales_history (salesman_id, car_id, action, price, date) values (2, 117, 'sale', '24691.88', '2013-02-24 21:15:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 302, 'buy', '11822.05', '2013-06-10 20:19:42');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 445, 'buy', '59856.25', '2010-10-06 10:40:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 228, 'sale', '9139.66', '2016-04-26 21:40:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 246, 'sale', '43174.00', '2016-03-26 15:52:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 246, 'buy', '27240.94', '2013-12-10 10:45:17');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 188, 'sale', '33350.54', '2016-04-22 09:33:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 326, 'buy', '23080.77', '2012-12-12 17:44:39');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 111, 'buy', '11905.01', '2018-04-01 08:06:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 426, 'buy', '86789.09', '2014-11-25 14:25:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 353, 'sale', '73895.44', '2012-11-17 20:02:02');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 219, 'sale', '12591.29', '2018-04-17 18:41:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 412, 'sale', '68256.32', '2009-05-15 19:44:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 151, 'sale', '42507.57', '2013-02-08 01:11:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 346, 'sale', '34490.82', '2017-04-20 07:29:20');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 267, 'sale', '43020.27', '2015-02-20 10:40:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 323, 'sale', '21351.24', '2009-08-20 20:34:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 113, 'sale', '30213.36', '2009-07-24 15:48:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 370, 'sale', '19479.44', '2014-09-19 15:04:16');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 439, 'sale', '39435.79', '2009-12-07 22:13:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 299, 'sale', '55311.73', '2009-06-26 22:21:39');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 453, 'sale', '99825.89', '2013-10-15 07:34:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 115, 'sale', '42621.62', '2016-05-12 23:36:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 246, 'sale', '80668.30', '2017-04-16 08:47:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 428, 'sale', '83870.48', '2012-08-18 10:35:05');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 341, 'sale', '31217.59', '2016-04-30 10:38:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 307, 'buy', '62786.95', '2017-11-29 05:51:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 431, 'sale', '38465.08', '2014-01-08 20:40:10');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 307, 'buy', '37697.93', '2014-11-26 16:25:26');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 304, 'sale', '62368.93', '2014-11-06 07:01:02');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 343, 'buy', '26561.09', '2014-09-23 21:08:42');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 371, 'sale', '36756.03', '2013-09-13 11:35:05');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 469, 'sale', '51913.08', '2015-02-11 19:48:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 207, 'buy', '76052.98', '2015-02-01 05:18:59');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 115, 'sale', '62229.51', '2012-07-03 06:40:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 71, 'sale', '49410.49', '2016-07-24 14:46:43');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 427, 'sale', '47838.17', '2014-02-11 16:26:41');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 288, 'buy', '85064.04', '2013-06-16 11:55:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 335, 'buy', '49332.39', '2010-02-02 08:04:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 117, 'sale', '81242.43', '2016-11-13 12:25:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 487, 'buy', '87946.50', '2016-03-27 19:45:05');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 219, 'buy', '72366.12', '2017-05-04 00:03:45');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 13, 'sale', '89372.27', '2015-09-16 11:26:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 96, 'sale', '48872.06', '2010-11-19 22:16:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 499, 'sale', '78465.70', '2016-06-06 00:25:45');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 166, 'sale', '76366.22', '2008-11-12 10:53:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 13, 'buy', '37150.51', '2009-01-05 23:17:13');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 225, 'sale', '77166.66', '2017-04-27 17:10:33');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 316, 'sale', '83600.64', '2015-11-17 06:03:23');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 340, 'sale', '11034.09', '2017-08-11 18:59:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 195, 'buy', '51936.58', '2015-07-31 16:04:23');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 442, 'buy', '84033.87', '2011-12-14 22:04:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 43, 'sale', '84240.05', '2013-10-09 21:04:55');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 30, 'sale', '16225.25', '2009-01-13 08:30:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 208, 'sale', '71560.33', '2014-03-15 02:25:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 90, 'sale', '11504.03', '2016-12-03 23:57:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 39, 'sale', '33119.83', '2008-08-19 18:41:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 486, 'sale', '86798.46', '2010-05-16 14:11:45');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 253, 'sale', '83367.78', '2015-02-04 06:11:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 166, 'sale', '38675.54', '2013-04-02 14:01:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 30, 'sale', '32546.14', '2016-08-27 02:00:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 420, 'sale', '35351.94', '2017-08-05 05:11:07');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 142, 'sale', '44802.10', '2013-12-15 23:20:21');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 140, 'sale', '57478.14', '2009-07-12 10:21:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 442, 'buy', '15087.75', '2015-11-25 11:26:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 470, 'buy', '44323.05', '2010-11-30 06:30:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 484, 'sale', '16177.29', '2011-01-19 19:54:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 217, 'buy', '48304.05', '2010-08-27 16:21:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 483, 'sale', '42616.57', '2012-09-14 07:39:45');
insert into sales_history (salesman_id, car_id, action, price, date) values (2, 412, 'sale', '33709.67', '2017-02-02 17:33:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 225, 'sale', '79160.39', '2016-09-27 23:16:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 13, 'sale', '78747.15', '2017-01-09 23:28:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 371, 'sale', '90217.45', '2017-05-12 11:21:48');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 442, 'buy', '88305.16', '2009-05-05 19:57:54');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 486, 'sale', '79347.56', '2016-05-03 00:30:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 418, 'sale', '70990.68', '2015-07-04 20:35:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 261, 'buy', '9318.34', '2012-05-01 05:50:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 105, 'sale', '74008.08', '2014-10-25 09:09:02');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 105, 'sale', '69008.62', '2014-02-08 06:02:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 51, 'buy', '71386.91', '2014-05-31 21:18:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 207, 'sale', '26699.62', '2016-04-07 06:31:55');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 354, 'sale', '71344.30', '2017-08-16 15:48:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 274, 'sale', '44636.67', '2009-12-05 18:55:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 257, 'sale', '15444.28', '2011-03-19 23:26:22');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 57, 'buy', '17181.34', '2016-01-09 10:27:19');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 135, 'buy', '36096.32', '2011-08-31 11:35:57');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 172, 'buy', '16532.12', '2018-03-25 14:24:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 280, 'sale', '19800.20', '2016-04-11 16:31:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 428, 'sale', '67552.54', '2011-02-21 19:38:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 153, 'sale', '9321.32', '2015-11-10 16:28:20');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 361, 'sale', '74069.46', '2014-11-09 06:59:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 334, 'sale', '30360.88', '2012-03-18 15:50:17');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 429, 'buy', '67691.13', '2013-10-10 05:35:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 257, 'sale', '74471.13', '2017-02-20 23:05:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 206, 'sale', '16851.35', '2016-09-21 06:49:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 443, 'sale', '16394.98', '2010-12-11 05:29:20');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 253, 'sale', '19138.18', '2010-09-15 11:09:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 300, 'sale', '48896.67', '2014-03-04 06:49:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 105, 'sale', '96517.61', '2009-02-07 04:05:45');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 433, 'sale', '79805.61', '2009-07-28 21:12:16');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 211, 'sale', '69565.64', '2010-01-03 08:42:38');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 271, 'sale', '86527.16', '2017-09-13 16:03:55');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 370, 'sale', '62265.58', '2010-12-16 14:39:45');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 413, 'buy', '53110.70', '2012-01-19 19:59:02');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 20, 'sale', '52309.84', '2016-08-24 12:18:56');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 387, 'buy', '80120.75', '2011-10-11 18:35:32');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 445, 'buy', '91839.08', '2014-07-26 07:34:28');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 108, 'sale', '14457.22', '2008-08-09 04:20:11');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 431, 'sale', '69706.70', '2014-01-15 08:20:10');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 300, 'sale', '77085.74', '2009-09-06 14:41:40');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 132, 'buy', '47406.30', '2011-09-01 02:59:00');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 219, 'buy', '31153.84', '2009-06-15 14:59:27');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 451, 'buy', '77444.17', '2016-11-29 21:00:21');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 297, 'sale', '19526.34', '2012-06-08 09:36:48');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 156, 'buy', '98494.75', '2013-12-12 03:42:34');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 156, 'sale', '87302.70', '2009-11-15 16:53:14');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 259, 'sale', '41865.60', '2011-08-21 19:18:15');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 370, 'buy', '82927.02', '2015-08-22 03:05:14');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 470, 'buy', '99137.15', '2016-02-23 20:46:46');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 310, 'sale', '9664.19', '2009-09-11 09:03:50');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 146, 'sale', '28297.05', '2008-11-24 12:57:04');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 321, 'sale', '45285.18', '2017-08-24 21:18:40');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 432, 'buy', '86288.07', '2012-01-17 19:48:03');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 114, 'buy', '80978.72', '2013-04-28 23:45:48');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 205, 'buy', '93144.18', '2010-03-11 22:43:08');
insert into sales_history (salesman_id, car_id, action, price, date) values ( 5, 238, 'sale', '48917.29', '2011-08-10 19:18:45');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 222, 'sale', '75340.48', '2008-06-13 18:22:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 312, 'sale', '74508.29', '2011-03-10 21:48:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 250, 'sale', '20911.76', '2013-11-02 17:38:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 39, 'sale', '24527.00', '2009-04-01 15:32:41');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 495, 'sale', '80449.73', '2008-09-01 23:41:19');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 459, 'sale', '50240.41', '2016-02-14 05:32:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 442, 'buy', '92472.79', '2016-09-16 02:44:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 213, 'buy', '82296.59', '2014-06-21 01:39:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 455, 'sale', '57685.79', '2015-06-21 17:10:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 165, 'buy', '31048.72', '2015-07-11 22:57:28');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 257, 'sale', '65974.12', '2017-10-30 23:40:24');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 426, 'buy', '89914.29', '2015-01-08 09:55:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 51, 'buy', '75701.53', '2008-08-09 09:14:17');
insert into sales_history (salesman_id, car_id, action, price, date) values (5, 257, 'sale', '76201.51', '2015-01-29 18:16:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 61, 'sale', '14347.92', '2017-07-23 07:54:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 375, 'sale', '65389.67', '2011-07-31 03:57:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 205, 'sale', '56090.43', '2015-03-06 00:50:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 207, 'sale', '31670.12', '2010-10-31 01:20:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 135, 'buy', '59855.56', '2009-06-20 15:46:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 296, 'sale', '14477.24', '2014-11-26 20:12:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 349, 'sale', '65058.72', '2009-03-13 12:41:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 280, 'buy', '75922.33', '2016-11-12 05:27:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 323, 'buy', '91175.24', '2016-07-28 21:40:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 102, 'sale', '27678.50', '2011-11-30 03:23:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 418, 'sale', '12002.85', '2013-04-02 05:10:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 67, 'sale', '49339.56', '2016-05-01 19:16:21');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 287, 'sale', '43415.44', '2014-10-17 14:20:38');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 145, 'sale', '14377.58', '2011-09-16 17:09:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 337, 'buy', '50395.93', '2016-12-26 08:26:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 353, 'buy', '76944.57', '2017-10-15 03:52:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 287, 'sale', '78895.31', '2015-08-05 09:27:26');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 205, 'sale', '54437.40', '2009-08-20 13:55:06');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 312, 'buy', '68514.41', '2015-04-29 20:08:28');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 497, 'buy', '9109.01', '2011-07-28 10:10:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 340, 'sale', '40590.98', '2017-11-06 12:28:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 337, 'sale', '27972.74', '2011-04-02 15:23:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 96, 'sale', '31628.41', '2010-12-03 21:38:08');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 307, 'buy', '62294.53', '2012-10-25 08:38:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 132, 'sale', '17487.13', '2009-04-26 06:03:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 51, 'sale', '58021.17', '2014-10-09 13:19:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 50, 'sale', '54684.58', '2015-09-20 11:52:06');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 390, 'buy', '40809.76', '2008-06-26 19:18:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 39, 'sale', '18453.75', '2009-10-09 06:39:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 452, 'sale', '61459.44', '2015-08-23 15:10:38');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 79, 'sale', '42256.35', '2011-09-22 20:25:08');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 117, 'sale', '94403.61', '2008-09-05 21:32:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 371, 'buy', '20326.47', '2013-12-04 23:13:08');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 323, 'buy', '83779.00', '2015-10-12 16:58:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 429, 'buy', '99422.61', '2009-02-22 16:40:07');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 71, 'buy', '99269.87', '2010-05-15 11:49:59');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 288, 'sale', '70167.44', '2010-10-14 00:35:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 142, 'buy', '65591.36', '2011-04-30 09:34:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 433, 'sale', '23164.71', '2015-01-19 15:52:24');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 251, 'sale', '20686.65', '2010-10-11 20:40:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 355, 'sale', '48671.49', '2009-01-19 08:00:57');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 257, 'sale', '68353.23', '2012-12-21 01:20:50');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 387, 'sale', '25543.99', '2010-03-11 23:59:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 231, 'sale', '51621.85', '2009-03-31 11:17:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 361, 'sale', '84415.73', '2013-05-27 12:40:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 261, 'sale', '37821.17', '2017-08-28 06:17:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 162, 'sale', '52835.28', '2017-08-09 05:54:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 3, 'sale', '22003.52', '2011-05-18 03:52:19');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 45, 'sale', '88739.89', '2018-03-14 21:20:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 26, 'sale', '99694.87', '2012-05-27 08:32:02');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 340, 'sale', '60864.06', '2010-02-02 10:28:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 470, 'buy', '33596.18', '2017-12-25 19:13:36');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 240, 'sale', '76221.88', '2012-06-24 07:55:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 205, 'sale', '70179.05', '2018-02-17 14:11:23');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 71, 'sale', '80133.73', '2015-04-07 05:12:05');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 194, 'buy', '74964.48', '2013-01-25 03:27:16');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 309, 'buy', '20093.49', '2015-08-13 20:52:36');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 369, 'sale', '89163.03', '2009-05-21 12:02:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 98, 'sale', '14066.71', '2014-10-23 12:57:54');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 484, 'buy', '21579.58', '2008-06-08 09:55:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 371, 'sale', '13983.50', '2011-04-22 22:09:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 12, 'sale', '90860.66', '2017-08-09 22:30:50');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 229, 'buy', '55872.04', '2008-12-20 20:01:06');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 499, 'sale', '24608.15', '2018-02-16 16:56:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 472, 'buy', '84755.88', '2014-11-07 15:29:19');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 13, 'sale', '30958.07', '2009-07-21 13:46:50');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 118, 'sale', '60252.51', '2014-11-27 14:01:02');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 300, 'sale', '14159.51', '2011-02-13 08:00:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 192, 'sale', '42109.73', '2008-06-19 23:37:13');
insert into sales_history (salesman_id, car_id, action, price, date) values (7, 469, 'sale', '20272.94', '2018-03-19 13:54:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 307, 'buy', '58436.26', '2011-06-05 10:24:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 3, 'sale', '86195.09', '2012-08-27 06:46:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 414, 'sale', '78312.65', '2014-03-06 03:20:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 312, 'sale', '9062.97', '2016-10-10 12:02:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 237, 'sale', '96298.92', '2008-12-19 09:50:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 296, 'sale', '34384.93', '2014-03-17 10:44:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 135, 'buy', '50727.60', '2015-07-02 03:34:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 229, 'sale', '61430.93', '2010-09-22 08:50:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 153, 'sale', '65002.79', '2013-11-29 11:26:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 145, 'buy', '81708.99', '2016-11-30 13:20:59');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 256, 'sale', '35564.97', '2012-01-22 04:36:19');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 195, 'sale', '82255.32', '2017-12-06 03:55:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 300, 'sale', '17960.78', '2015-04-05 21:34:10');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 257, 'buy', '68287.96', '2016-12-30 07:35:28');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 390, 'buy', '30645.40', '2015-04-24 07:51:19');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 254, 'sale', '68306.67', '2013-08-05 12:30:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 172, 'buy', '99050.14', '2014-12-28 06:03:22');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 83, 'buy', '76743.33', '2017-10-16 14:25:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 39, 'sale', '86082.90', '2016-10-12 22:46:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 369, 'sale', '63658.69', '2016-05-03 18:00:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 497, 'sale', '50072.08', '2011-03-14 22:05:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 213, 'sale', '39314.44', '2014-08-17 23:09:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 16, 'sale', '82667.52', '2009-09-27 01:37:07');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 487, 'buy', '22772.65', '2010-11-26 21:24:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 229, 'sale', '88998.63', '2016-09-01 18:09:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 402, 'sale', '41521.45', '2015-05-08 01:19:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 274, 'sale', '31588.10', '2010-10-11 05:40:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 219, 'sale', '81880.23', '2008-09-05 19:25:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 349, 'sale', '23680.77', '2010-11-16 04:51:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 487, 'sale', '43413.18', '2016-07-20 22:59:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 486, 'buy', '10648.38', '2013-09-18 17:45:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 300, 'buy', '87880.96', '2014-06-17 17:16:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 87, 'sale', '48505.54', '2016-01-28 06:55:42');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 487, 'buy', '97274.41', '2011-05-02 09:37:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 271, 'buy', '9198.92', '2012-03-06 08:33:02');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 9, 'sale', '83365.38', '2015-04-07 13:10:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 374, 'sale', '48243.47', '2017-06-20 17:35:59');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 287, 'sale', '39853.60', '2010-05-10 01:42:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 214, 'sale', '22969.40', '2010-12-13 06:04:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 182, 'sale', '75694.40', '2009-11-08 20:03:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 312, 'buy', '61687.24', '2015-07-26 09:58:39');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 412, 'sale', '74976.84', '2012-09-23 05:50:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 261, 'sale', '97892.42', '2009-11-28 09:17:13');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 447, 'sale', '66281.31', '2009-09-22 11:29:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 156, 'buy', '16560.06', '2012-03-09 20:03:20');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 472, 'sale', '34721.70', '2009-06-25 16:17:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 250, 'buy', '17527.22', '2017-09-06 04:12:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 463, 'buy', '85896.55', '2009-04-16 19:03:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 112, 'sale', '99156.22', '2016-07-21 12:07:08');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 35, 'sale', '79344.00', '2009-02-01 10:56:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 453, 'sale', '23753.73', '2017-05-27 12:52:23');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 415, 'buy', '82104.13', '2013-01-31 19:36:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 274, 'sale', '64083.58', '2009-10-20 21:44:36');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 261, 'sale', '78819.80', '2015-04-21 01:02:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 287, 'sale', '76689.64', '2015-04-22 15:10:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 237, 'sale', '99070.93', '2012-07-03 08:57:15');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 290, 'sale', '74294.91', '2010-06-12 03:09:17');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 370, 'sale', '34563.41', '2011-06-13 18:35:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 370, 'sale', '44333.17', '2009-05-30 14:15:16');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 487, 'sale', '96216.93', '2011-11-22 21:24:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 144, 'sale', '67884.28', '2010-09-25 23:00:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 195, 'sale', '45388.54', '2012-08-18 22:53:08');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 496, 'sale', '55323.27', '2015-01-12 02:26:21');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 296, 'buy', '41611.93', '2010-01-15 04:15:24');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 26, 'sale', '61355.97', '2013-02-03 04:22:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 92, 'sale', '85705.83', '2011-09-17 22:07:36');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 143, 'sale', '81972.74', '2016-08-20 14:30:48');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 102, 'sale', '9434.38', '2014-05-18 09:22:22');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 246, 'sale', '27565.74', '2014-08-06 05:08:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (8, 150, 'sale', '96682.11', '2013-08-06 01:46:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 428, 'sale', '95422.42', '2010-12-19 03:51:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 458, 'sale', '32512.30', '2011-04-04 22:39:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 428, 'sale', '19703.52', '2016-04-04 14:05:57');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 53, 'sale', '16820.35', '2016-05-21 01:25:57');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 326, 'sale', '85821.30', '2012-02-14 01:10:55');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 256, 'buy', '93760.23', '2009-07-18 02:16:06');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 76, 'sale', '32444.37', '2012-12-07 07:26:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 455, 'buy', '35656.03', '2016-02-17 05:14:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 222, 'buy', '67301.70', '2015-08-01 21:55:07');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 135, 'sale', '67964.54', '2009-03-12 12:36:43');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 455, 'sale', '21597.44', '2015-01-18 10:08:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 436, 'sale', '47660.92', '2017-05-09 08:27:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 402, 'sale', '58849.94', '2017-10-08 14:21:17');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 105, 'sale', '34498.26', '2012-10-28 09:41:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 157, 'sale', '56489.25', '2010-10-31 10:34:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 108, 'sale', '77628.02', '2012-04-26 09:26:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 96, 'buy', '57347.69', '2017-12-07 14:01:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 463, 'sale', '41503.44', '2009-02-22 09:21:59');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 96, 'sale', '29410.07', '2009-07-06 03:09:58');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 424, 'buy', '21744.76', '2016-05-13 20:38:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 312, 'sale', '13791.62', '2010-01-31 07:57:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 432, 'buy', '35092.27', '2017-11-26 10:17:16');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 65, 'buy', '74056.85', '2012-04-04 03:32:41');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 116, 'buy', '71144.01', '2016-08-23 20:25:39');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 195, 'buy', '69753.62', '2016-10-09 06:44:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 105, 'sale', '43782.31', '2017-08-26 10:43:17');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 128, 'sale', '86387.31', '2009-12-30 17:50:15');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 35, 'sale', '89165.09', '2010-06-13 08:25:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 466, 'buy', '52390.08', '2008-11-07 13:01:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 470, 'sale', '90175.43', '2015-04-26 17:19:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 316, 'buy', '54298.15', '2009-04-28 07:28:15');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 211, 'buy', '67765.32', '2017-10-20 11:34:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 316, 'sale', '34177.03', '2014-04-19 08:09:28');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 98, 'buy', '67213.98', '2015-09-16 16:12:48');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 316, 'sale', '75442.14', '2015-11-16 09:26:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 390, 'sale', '28203.02', '2014-08-29 00:52:58');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 371, 'sale', '89056.07', '2017-06-19 01:16:22');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 219, 'buy', '40977.90', '2013-05-27 07:14:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 433, 'sale', '20306.60', '2014-09-03 10:57:24');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 53, 'buy', '62508.73', '2011-02-23 21:07:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 495, 'sale', '19355.47', '2018-03-15 12:44:07');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 406, 'sale', '55793.65', '2010-04-14 01:11:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 67, 'buy', '68174.89', '2010-05-10 05:19:13');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 452, 'sale', '10466.25', '2016-09-08 00:19:55');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 446, 'buy', '27101.87', '2011-03-12 06:18:24');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 261, 'buy', '47071.50', '2010-02-26 17:15:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 486, 'sale', '23608.03', '2014-08-31 03:27:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 9, 'sale', '72031.19', '2017-07-03 12:33:43');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 371, 'sale', '44640.73', '2008-10-26 12:34:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 412, 'sale', '47953.50', '2012-06-21 01:40:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 484, 'buy', '62060.65', '2011-12-30 16:32:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 65, 'buy', '66649.29', '2015-07-08 09:17:05');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 388, 'sale', '96745.19', '2012-04-18 22:16:05');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 470, 'sale', '69143.65', '2016-06-16 01:13:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 29, 'buy', '84907.89', '2015-05-07 01:05:58');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 205, 'sale', '83233.28', '2008-09-26 18:35:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 346, 'sale', '99111.55', '2009-03-22 06:26:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 337, 'sale', '13139.86', '2017-09-15 23:50:23');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 113, 'sale', '22748.78', '2015-04-03 21:35:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 98, 'buy', '54348.18', '2013-05-18 14:33:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 251, 'buy', '47316.46', '2008-12-09 22:51:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 418, 'sale', '44168.79', '2011-12-15 17:01:33');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 238, 'buy', '45257.39', '2013-07-15 23:55:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 388, 'sale', '24716.12', '2016-12-26 18:29:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 79, 'sale', '48214.35', '2012-04-14 17:20:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 3, 'sale', '69789.22', '2017-04-19 08:00:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 273, 'sale', '20218.40', '2008-06-29 10:32:10');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 346, 'sale', '51836.45', '2010-02-02 02:44:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 76, 'sale', '38770.32', '2012-09-01 18:22:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (9, 299, 'sale', '86877.97', '2014-12-10 00:06:54');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 396, 'sale', '23602.35', '2017-11-19 06:00:43');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 61, 'sale', '23026.71', '2009-05-12 01:41:59');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 343, 'sale', '43094.04', '2008-09-11 11:22:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 39, 'buy', '51857.76', '2012-09-23 01:53:19');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 455, 'sale', '13349.63', '2008-06-06 07:32:48');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 222, 'sale', '22604.62', '2016-01-19 03:19:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 55, 'sale', '12375.65', '2009-06-06 14:30:20');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 288, 'sale', '41944.36', '2012-11-09 05:28:43');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 47, 'sale', '70780.87', '2016-11-09 06:08:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 208, 'sale', '37730.20', '2016-06-05 20:37:38');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 246, 'sale', '98516.25', '2009-08-25 23:31:21');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 421, 'sale', '30793.05', '2014-10-02 14:59:58');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 358, 'sale', '34845.53', '2018-02-27 21:30:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 452, 'buy', '29658.65', '2008-09-14 19:44:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 331, 'sale', '9700.21', '2015-03-17 01:54:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 214, 'sale', '28538.01', '2017-10-06 19:51:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 237, 'sale', '28858.93', '2015-01-25 02:14:50');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 496, 'sale', '42102.78', '2016-07-01 12:03:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 353, 'sale', '61300.91', '2012-03-28 08:57:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 402, 'buy', '87449.38', '2014-08-15 22:52:24');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 145, 'sale', '52275.52', '2017-05-07 05:56:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 237, 'sale', '46413.70', '2015-04-15 05:11:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 246, 'sale', '43707.92', '2008-06-26 00:55:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 172, 'sale', '79465.78', '2016-05-13 20:14:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 207, 'sale', '44795.00', '2011-09-21 00:39:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 143, 'sale', '47694.47', '2013-12-31 00:26:54');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 280, 'sale', '46646.39', '2009-01-27 08:26:45');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 142, 'buy', '26149.92', '2011-04-21 22:57:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 102, 'sale', '89899.39', '2009-03-17 22:14:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 432, 'sale', '16922.12', '2013-11-30 09:50:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 421, 'sale', '54823.73', '2018-01-29 22:00:54');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 195, 'sale', '53487.45', '2018-01-14 10:32:24');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 486, 'sale', '38675.09', '2009-07-18 19:18:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 375, 'buy', '97434.98', '2010-07-12 08:53:55');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 462, 'sale', '65389.08', '2009-06-05 23:55:20');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 424, 'sale', '19694.26', '2016-09-30 21:31:55');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 387, 'sale', '33202.68', '2018-03-28 12:58:28');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 466, 'sale', '42449.53', '2014-09-12 07:31:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 487, 'sale', '25889.47', '2013-09-05 14:14:58');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 13, 'sale', '78718.71', '2014-07-31 06:09:23');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 389, 'sale', '39733.12', '2015-07-26 08:50:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 348, 'buy', '91779.67', '2009-07-04 07:57:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 51, 'sale', '64400.17', '2011-08-16 13:43:44');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 180, 'buy', '95699.98', '2016-09-29 14:12:07');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 165, 'sale', '23112.48', '2012-02-29 15:55:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 316, 'sale', '55452.48', '2014-10-25 20:00:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 487, 'sale', '78298.47', '2011-03-20 16:29:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 229, 'sale', '76102.50', '2016-08-12 03:42:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 249, 'sale', '87133.02', '2012-02-05 21:36:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 211, 'sale', '93254.59', '2015-06-08 11:07:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 190, 'sale', '58784.53', '2011-11-20 06:05:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 53, 'sale', '99110.01', '2016-09-20 16:47:17');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 211, 'buy', '33728.94', '2009-09-15 10:58:23');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 316, 'sale', '55208.77', '2011-09-08 19:58:45');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 431, 'buy', '28172.53', '2017-12-13 07:38:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 418, 'sale', '70473.26', '2014-02-16 07:42:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 205, 'sale', '71048.21', '2014-12-08 22:28:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 187, 'sale', '82379.00', '2010-11-22 16:44:41');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 495, 'sale', '61126.64', '2016-05-06 19:52:13');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 409, 'buy', '44166.63', '2013-06-17 15:38:15');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 205, 'sale', '37517.17', '2013-12-06 22:57:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 282, 'sale', '97618.54', '2016-02-29 05:46:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 85, 'buy', '69621.12', '2015-03-15 03:27:57');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 117, 'sale', '54511.02', '2013-04-20 08:01:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 432, 'sale', '99930.25', '2016-06-01 10:50:14');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 254, 'sale', '79484.59', '2014-03-08 07:23:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 237, 'buy', '70551.84', '2017-03-03 08:49:27');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 75, 'sale', '61723.97', '2011-04-19 00:36:57');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 88, 'sale', '56144.30', '2013-06-24 13:55:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 331, 'sale', '70306.80', '2017-02-16 14:35:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 132, 'sale', '53144.10', '2014-07-19 10:18:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (10, 253, 'sale', '27956.24', '2016-08-23 12:38:07');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 253, 'buy', '75802.02', '2016-05-15 20:14:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 230, 'buy', '88812.91', '2015-10-28 06:48:48');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 101, 'sale', '60357.46', '2014-05-03 17:42:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 495, 'sale', '50875.86', '2009-09-08 04:11:38');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 486, 'sale', '14347.63', '2018-04-13 11:52:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 312, 'buy', '52332.81', '2010-03-03 13:46:52');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 76, 'buy', '58101.44', '2009-06-12 03:54:00');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 348, 'sale', '99090.28', '2016-10-17 08:00:43');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 419, 'sale', '98767.57', '2012-05-21 00:02:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 353, 'sale', '50845.32', '2013-04-03 22:17:39');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 306, 'buy', '33848.30', '2013-12-02 12:17:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 269, 'buy', '16657.63', '2014-01-25 06:46:41');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 43, 'sale', '79231.75', '2015-12-29 05:00:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 439, 'buy', '98344.92', '2011-03-03 16:57:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 162, 'sale', '99462.35', '2010-05-25 09:19:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 142, 'buy', '28281.11', '2017-10-03 03:10:51');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 304, 'sale', '88816.87', '2010-05-22 06:41:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 195, 'sale', '49235.88', '2016-03-06 20:17:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 310, 'buy', '49484.51', '2010-07-25 09:40:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 388, 'buy', '95132.83', '2009-05-24 16:17:39');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 182, 'sale', '69317.01', '2016-01-08 18:39:40');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 135, 'sale', '63118.80', '2013-01-10 03:21:16');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 221, 'sale', '54995.35', '2016-03-20 21:53:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 334, 'sale', '80395.17', '2009-09-17 07:40:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 304, 'sale', '75155.25', '2017-11-29 10:01:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 280, 'sale', '14445.94', '2012-08-24 03:05:16');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 261, 'buy', '16305.15', '2009-10-05 02:01:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 432, 'buy', '36238.60', '2010-04-22 08:31:45');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 477, 'buy', '42806.64', '2014-01-17 14:45:50');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 71, 'sale', '56354.85', '2013-01-06 22:39:16');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 418, 'buy', '10113.24', '2015-02-12 16:25:32');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 459, 'sale', '32039.05', '2009-07-21 19:53:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 132, 'sale', '53435.80', '2017-03-15 10:15:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 402, 'sale', '89815.08', '2015-09-30 08:25:35');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 112, 'buy', '76239.88', '2016-01-23 23:35:56');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 494, 'sale', '9738.97', '2015-11-15 21:08:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 20, 'sale', '28646.87', '2015-12-28 15:30:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 3, 'buy', '64065.25', '2016-06-24 00:34:59');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 213, 'sale', '92198.01', '2014-10-09 20:25:22');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 294, 'buy', '31400.82', '2009-04-14 01:17:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 140, 'buy', '79872.67', '2009-03-21 13:20:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 312, 'sale', '27872.18', '2016-02-10 13:51:13');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 273, 'sale', '16666.83', '2010-07-15 17:41:21');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 419, 'sale', '77928.91', '2015-07-15 06:42:29');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 300, 'sale', '25139.52', '2015-06-21 07:23:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 53, 'sale', '17814.59', '2013-11-26 11:55:59');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 210, 'sale', '45423.28', '2013-02-15 12:55:02');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 309, 'sale', '99807.02', '2014-06-28 05:06:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 237, 'buy', '72086.15', '2009-12-10 23:09:09');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 12, 'sale', '76804.71', '2014-01-30 13:46:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 462, 'sale', '53724.32', '2015-06-17 21:25:01');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 300, 'buy', '85184.24', '2016-01-26 02:08:11');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 341, 'sale', '76481.38', '2015-01-20 19:26:33');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 240, 'sale', '87731.29', '2017-07-08 05:33:23');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 45, 'sale', '50243.71', '2010-10-08 16:54:58');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 462, 'sale', '47296.53', '2016-07-09 21:00:15');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 353, 'buy', '33453.37', '2012-10-30 13:44:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 127, 'buy', '11674.97', '2012-04-21 00:38:31');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 412, 'buy', '54455.42', '2009-04-11 11:11:53');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 213, 'sale', '20492.33', '2009-03-29 12:57:46');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 431, 'sale', '19766.36', '2016-06-18 18:27:22');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 415, 'buy', '78612.71', '2008-05-09 20:35:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 257, 'sale', '64017.99', '2008-07-20 21:06:55');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 447, 'buy', '55256.06', '2015-08-18 17:30:10');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 50, 'sale', '58789.40', '2014-08-26 07:43:18');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 494, 'sale', '89583.17', '2015-02-04 23:30:02');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 265, 'sale', '88840.65', '2009-09-13 12:08:50');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 273, 'sale', '36472.88', '2016-02-26 16:21:04');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 371, 'sale', '73433.13', '2017-06-07 22:42:34');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 253, 'sale', '72522.19', '2010-01-26 19:01:25');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 217, 'sale', '81983.51', '2015-07-29 10:04:24');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 253, 'buy', '46931.48', '2016-08-08 10:33:03');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 452, 'sale', '56371.61', '2017-11-29 07:25:47');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 237, 'sale', '63951.78', '2012-10-19 20:43:30');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 39, 'buy', '84600.44', '2014-10-25 08:11:37');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 466, 'sale', '79404.98', '2008-11-08 13:39:49');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 29, 'buy', '38022.77', '2009-12-19 09:08:12');
insert into sales_history (salesman_id, car_id, action, price, date) values (12, 415, 'sale', '23064.59', '2015-08-20 02:12:04');

