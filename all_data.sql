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

insert into roles (id, title) values ('sls', 'salesman');
insert into roles (id, title) values ('tech', 'technician');

-- makes
DROP TABLE IF EXISTS car_makes;

CREATE TABLE car_makes (
  id VARCHAR(60) NOT NULL,
  title VARCHAR(60) NOT NULL,

  PRIMARY KEY (id)
);

INSERT INTO car_makes (id, title) VALUES
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
  make_id INT NOT NULL REFERENCES car_makes(id),
  id VARCHAR(60) NOT NULL ,
  title VARCHAR(60) NOT NULL ,

  PRIMARY KEY (id)
);

  INSERT INTO car_models (make_id, id, title) VALUES
('ACURA', 'CL_MODELS', 'CL Models (4)'),
('ACURA', '2.2CL', ' - 2.2CL'),
('ACURA', '2.3CL', ' - 2.3CL'),
('ACURA', '3.0CL', ' - 3.0CL'),
('ACURA', '3.2CL', ' - 3.2CL'),
('ACURA', 'ILX', 'ILX'),
('ACURA', 'INTEG', 'Integra'),
('ACURA', 'LEGEND', 'Legend'),
('ACURA', 'MDX', 'MDX'),
('ACURA', 'NSX', 'NSX'),
('ACURA', 'RDX', 'RDX'),
('ACURA', 'RL_MODELS', 'RL Models (2)'),
('ACURA', '3.5RL', ' - 3.5 RL'),
('ACURA', 'RL', ' - RL'),
('ACURA', 'RSX', 'RSX'),
('ACURA', 'SLX', 'SLX'),
('ACURA', 'TL_MODELS', 'TL Models (3)'),
('ACURA', '2.5TL', ' - 2.5TL'),
('ACURA', '3.2TL', ' - 3.2TL'),
('ACURA', 'TL', ' - TL'),
('ACURA', 'TSX', 'TSX'),
('ACURA', 'VIGOR', 'Vigor'),
('ACURA', 'ZDX', 'ZDX'),
('ACURA', 'ACUOTH', 'Other Acura Models'),
('ALFA', 'ALFA164', '164'),
('ALFA', 'ALFA8C', '8C Competizione'),
('ALFA', 'ALFAGT', 'GTV-6'),
('ALFA', 'MIL', 'Milano'),
('ALFA', 'SPID', 'Spider'),
('ALFA', 'ALFAOTH', 'Other Alfa Romeo Models'),
('AMC', 'AMCALLIAN', 'Alliance'),
('AMC', 'CON', 'Concord'),
('AMC', 'EAGLE', 'Eagle'),
('AMC', 'AMCENC', 'Encore'),
('AMC', 'AMCSPIRIT', 'Spirit'),
('AMC', 'AMCOTH', 'Other AMC Models'),
('ASTON', 'DB7', 'DB7'),
('ASTON', 'DB9', 'DB9'),
('ASTON', 'DBS', 'DBS'),
('ASTON', 'LAGONDA', 'Lagonda'),
('ASTON', 'RAPIDE', 'Rapide'),
('ASTON', 'V12VANT', 'V12 Vantage'),
('ASTON', 'VANTAGE', 'V8 Vantage'),
('ASTON', 'VANQUISH', 'Vanquish'),
('ASTON', 'VIRAGE', 'Virage'),
('ASTON', 'UNAVAILAST', 'Other Aston Martin Models'),
('AUDI', 'AUDI100', '100'),
('AUDI', 'AUDI200', '200'),
('AUDI', '4000', '4000'),
('AUDI', '5000', '5000'),
('AUDI', '80', '80'),
('AUDI', '90', '90'),
('AUDI', 'A3', 'A3'),
('AUDI', 'A4', 'A4'),
('AUDI', 'A5', 'A5'),
('AUDI', 'A6', 'A6'),
('AUDI', 'A7', 'A7'),
('AUDI', 'A8', 'A8'),
('AUDI', 'ALLRDQUA', 'allroad'),
('AUDI', 'AUDICABRI', 'Cabriolet'),
('AUDI', 'AUDICOUPE', 'Coupe'),
('AUDI', 'Q3', 'Q3'),
('AUDI', 'Q5', 'Q5'),
('AUDI', 'Q7', 'Q7'),
('AUDI', 'QUATTR', 'Quattro'),
('AUDI', 'R8', 'R8'),
('AUDI', 'RS4', 'RS 4'),
('AUDI', 'RS5', 'RS 5'),
('AUDI', 'RS6', 'RS 6'),
('AUDI', 'S4', 'S4'),
('AUDI', 'S5', 'S5'),
('AUDI', 'S6', 'S6'),
('AUDI', 'S7', 'S7'),
('AUDI', 'S8', 'S8'),
('AUDI', 'TT', 'TT'),
('AUDI', 'TTRS', 'TT RS'),
('AUDI', 'TTS', 'TTS'),
('AUDI', 'V8', 'V8 Quattro'),
('AUDI', 'AUDOTH', 'Other Audi Models'),
('AVANTI', 'CONVERT', 'Convertible'),
('AVANTI', 'COUPEAVANT', 'Coupe'),
('AVANTI', 'SEDAN', 'Sedan'),
('AVANTI', 'UNAVAILAVA', 'Other Avanti Models'),
('BENTL', 'ARNAGE', 'Arnage'),
('BENTL', 'AZURE', 'Azure'),
('BENTL', 'BROOKLANDS', 'Brooklands'),
('BENTL', 'BENCONT', 'Continental'),
('BENTL', 'CORNICHE', 'Corniche'),
('BENTL', 'BENEIGHT', 'Eight'),
('BENTL', 'BENMUL', 'Mulsanne'),
('BENTL', 'BENTURBO', 'Turbo R'),
('BENTL', 'UNAVAILBEN', 'Other Bentley Models'),
('BMW', '1_SERIES', '1 Series (3)'),
('BMW', '128I', ' - 128i'),
('BMW', '135I', ' - 135i'),
('BMW', '135IS', ' - 135is'),
('BMW', '3_SERIES', '3 Series (29)'),
('BMW', '318I', ' - 318i'),
('BMW', '318IC', ' - 318iC'),
('BMW', '318IS', ' - 318iS'),
('BMW', '318TI', ' - 318ti'),
('BMW', '320I', ' - 320i'),
('BMW', '323CI', ' - 323ci'),
('BMW', '323I', ' - 323i'),
('BMW', '323IS', ' - 323is'),
('BMW', '323IT', ' - 323iT'),
('BMW', '325CI', ' - 325Ci'),
('BMW', '325E', ' - 325e'),
('BMW', '325ES', ' - 325es'),
('BMW', '325I', ' - 325i'),
('BMW', '325IS', ' - 325is'),
('BMW', '325IX', ' - 325iX'),
('BMW', '325XI', ' - 325xi'),
('BMW', '328CI', ' - 328Ci'),
('BMW', '328I', ' - 328i'),
('BMW', '328IS', ' - 328iS'),
('BMW', '328XI', ' - 328xi'),
('BMW', '330CI', ' - 330Ci'),
('BMW', '330I', ' - 330i'),
('BMW', '330XI', ' - 330xi'),
('BMW', '335D', ' - 335d'),
('BMW', '335I', ' - 335i'),
('BMW', '335IS', ' - 335is'),
('BMW', '335XI', ' - 335xi'),
('BMW', 'ACTIVE3', ' - ActiveHybrid 3'),
('BMW', 'BMW325', ' - 325'),
('BMW', '5_SERIES', '5 Series (19)'),
('BMW', '524TD', ' - 524td'),
('BMW', '525I', ' - 525i'),
('BMW', '525XI', ' - 525xi'),
('BMW', '528E', ' - 528e'),
('BMW', '528I', ' - 528i'),
('BMW', '528IT', ' - 528iT'),
('BMW', '528XI', ' - 528xi'),
('BMW', '530I', ' - 530i'),
('BMW', '530IT', ' - 530iT'),
('BMW', '530XI', ' - 530xi'),
('BMW', '533I', ' - 533i'),
('BMW', '535I', ' - 535i'),
('BMW', '535IGT', ' - 535i Gran Turismo'),
('BMW', '535XI', ' - 535xi'),
('BMW', '540I', ' - 540i'),
('BMW', '545I', ' - 545i'),
('BMW', '550I', ' - 550i'),
('BMW', '550IGT', ' - 550i Gran Turismo'),
('BMW', 'ACTIVE5', ' - ActiveHybrid 5'),
('BMW', '6_SERIES', '6 Series (8)'),
('BMW', '633CSI', ' - 633CSi'),
('BMW', '635CSI', ' - 635CSi'),
('BMW', '640I', ' - 640i'),
('BMW', '640IGC', ' - 640i Gran Coupe'),
('BMW', '645CI', ' - 645Ci'),
('BMW', '650I', ' - 650i'),
('BMW', '650IGC', ' - 650i Gran Coupe'),
('BMW', 'L6', ' - L6'),
('BMW', '7_SERIES', '7 Series (15)'),
('BMW', '733I', ' - 733i'),
('BMW', '735I', ' - 735i'),
('BMW', '735IL', ' - 735iL'),
('BMW', '740I', ' - 740i'),
('BMW', '740IL', ' - 740iL'),
('BMW', '740LI', ' - 740Li'),
('BMW', '745I', ' - 745i'),
('BMW', '745LI', ' - 745Li'),
('BMW', '750I', ' - 750i'),
('BMW', '750IL', ' - 750iL'),
('BMW', '750LI', ' - 750Li'),
('BMW', '760I', ' - 760i'),
('BMW', '760LI', ' - 760Li'),
('BMW', 'ACTIVE7', ' - ActiveHybrid 7'),
('BMW', 'ALPINAB7', ' - Alpina B7'),
('BMW', '8_SERIES', '8 Series (4)'),
('BMW', '840CI', ' - 840Ci'),
('BMW', '850CI', ' - 850Ci'),
('BMW', '850CSI', ' - 850CSi'),
('BMW', '850I', ' - 850i'),
('BMW', 'L_SERIES', 'L Series (1)'),
('BMW', 'L7', ' - L7'),
('BMW', 'M_SERIES', 'M Series (8)'),
('BMW', '1SERIESM', ' - 1 Series M'),
('BMW', 'BMWMCOUPE', ' - M Coupe'),
('BMW', 'BMWROAD', ' - M Roadster'),
('BMW', 'M3', ' - M3'),
('BMW', 'M5', ' - M5'),
('BMW', 'M6', ' - M6'),
('BMW', 'X5M', ' - X5 M'),
('BMW', 'X6M', ' - X6 M'),
('BMW', 'X_SERIES', 'X Series (5)'),
('BMW', 'ACTIVEX6', ' - ActiveHybrid X6'),
('BMW', 'X1', ' - X1'),
('BMW', 'X3', ' - X3'),
('BMW', 'X5', ' - X5'),
('BMW', 'X6', ' - X6'),
('BMW', 'Z_SERIES', 'Z Series (3)'),
('BMW', 'Z3', ' - Z3'),
('BMW', 'Z4', ' - Z4'),
('BMW', 'Z8', ' - Z8'),
('BMW', 'BMWOTH', 'Other BMW Models'),
('BUICK', 'CENT', 'Century'),
('BUICK', 'ELEC', 'Electra'),
('BUICK', 'ENCLAVE', 'Enclave'),
('BUICK', 'BUIENC', 'Encore'),
('BUICK', 'LACROSSE', 'LaCrosse'),
('BUICK', 'LESA', 'Le Sabre'),
('BUICK', 'LUCERNE', 'Lucerne'),
('BUICK', 'PARK', 'Park Avenue'),
('BUICK', 'RAINIER', 'Rainier'),
('BUICK', 'REATTA', 'Reatta'),
('BUICK', 'REG', 'Regal'),
('BUICK', 'RENDEZVOUS', 'Rendezvous'),
('BUICK', 'RIV', 'Riviera'),
('BUICK', 'BUICKROAD', 'Roadmaster'),
('BUICK', 'SKYH', 'Skyhawk'),
('BUICK', 'SKYL', 'Skylark'),
('BUICK', 'SOMER', 'Somerset'),
('BUICK', 'TERRAZA', 'Terraza'),
('BUICK', 'BUVERANO', 'Verano'),
('BUICK', 'BUOTH', 'Other Buick Models'),
('CAD', 'ALLANT', 'Allante'),
('CAD', 'ATS', 'ATS'),
('CAD', 'BROUGH', 'Brougham'),
('CAD', 'CATERA', 'Catera'),
('CAD', 'CIMA', 'Cimarron'),
('CAD', 'CTS', 'CTS'),
('CAD', 'DEV', 'De Ville'),
('CAD', 'DTS', 'DTS'),
('CAD', 'ELDO', 'Eldorado'),
('CAD', 'ESCALA', 'Escalade'),
('CAD', 'ESCALAESV', 'Escalade ESV'),
('CAD', 'EXT', 'Escalade EXT'),
('CAD', 'FLEE', 'Fleetwood'),
('CAD', 'SEV', 'Seville'),
('CAD', 'SRX', 'SRX'),
('CAD', 'STS', 'STS'),
('CAD', 'XLR', 'XLR'),
('CAD', 'XTS', 'XTS'),
('CAD', 'CADOTH', 'Other Cadillac Models'),
('CHEV', 'ASTRO', 'Astro'),
('CHEV', 'AVALNCH', 'Avalanche'),
('CHEV', 'AVEO', 'Aveo'),
('CHEV', 'AVEO5', 'Aveo5'),
('CHEV', 'BERETT', 'Beretta'),
('CHEV', 'BLAZER', 'Blazer'),
('CHEV', 'CAM', 'Camaro'),
('CHEV', 'CAP', 'Caprice'),
('CHEV', 'CHECAPS', 'Captiva Sport'),
('CHEV', 'CAV', 'Cavalier'),
('CHEV', 'CELE', 'Celebrity'),
('CHEV', 'CHEVETTE', 'Chevette'),
('CHEV', 'CITATION', 'Citation'),
('CHEV', 'COBALT', 'Cobalt'),
('CHEV', 'COLORADO', 'Colorado'),
('CHEV', 'CORSI', 'Corsica'),
('CHEV', 'CORV', 'Corvette'),
('CHEV', 'CRUZE', 'Cruze'),
('CHEV', 'ELCAM', 'El Camino'),
('CHEV', 'EQUINOX', 'Equinox'),
('CHEV', 'G15EXP', 'Express Van'),
('CHEV', 'G10', 'G Van'),
('CHEV', 'HHR', 'HHR'),
('CHEV', 'CHEVIMP', 'Impala'),
('CHEV', 'KODC4500', 'Kodiak C4500'),
('CHEV', 'LUMINA', 'Lumina'),
('CHEV', 'LAPV', 'Lumina APV'),
('CHEV', 'LUV', 'LUV'),
('CHEV', 'MALI', 'Malibu'),
('CHEV', 'CHVMETR', 'Metro'),
('CHEV', 'CHEVMONT', 'Monte Carlo'),
('CHEV', 'NOVA', 'Nova'),
('CHEV', 'CHEVPRIZM', 'Prizm'),
('CHEV', 'CHVST', 'S10 Blazer'),
('CHEV', 'S10PICKUP', 'S10 Pickup'),
('CHEV', 'CHEV150', 'Silverado and other C/K1500'),
('CHEV', 'CHEVC25', 'Silverado and other C/K2500'),
('CHEV', 'CH3500PU', 'Silverado and other C/K3500'),
('CHEV', 'SONIC', 'Sonic'),
('CHEV', 'SPARK', 'Spark'),
('CHEV', 'CHEVSPEC', 'Spectrum'),
('CHEV', 'CHSPRINT', 'Sprint'),
('CHEV', 'SSR', 'SSR'),
('CHEV', 'CHEVSUB', 'Suburban'),
('CHEV', 'TAHOE', 'Tahoe'),
('CHEV', 'TRACKE', 'Tracker'),
('CHEV', 'TRAILBLZ', 'TrailBlazer'),
('CHEV', 'TRAILBZEXT', 'TrailBlazer EXT'),
('CHEV', 'TRAVERSE', 'Traverse'),
('CHEV', 'UPLANDER', 'Uplander'),
('CHEV', 'VENTUR', 'Venture'),
('CHEV', 'VOLT', 'Volt'),
('CHEV', 'CHEOTH', 'Other Chevrolet Models'),
('CHRY', 'CHRYS200', '200'),
('CHRY', '300', '300'),
('CHRY', 'CHRY300', '300M'),
('CHRY', 'ASPEN', 'Aspen'),
('CHRY', 'CARAVAN', 'Caravan'),
('CHRY', 'CIRRUS', 'Cirrus'),
('CHRY', 'CONC', 'Concorde'),
('CHRY', 'CHRYCONQ', 'Conquest'),
('CHRY', 'CORDOBA', 'Cordoba'),
('CHRY', 'CROSSFIRE', 'Crossfire'),
('CHRY', 'ECLASS', 'E Class'),
('CHRY', 'FIFTH', 'Fifth Avenue'),
('CHRY', 'CHRYGRANDV', 'Grand Voyager'),
('CHRY', 'IMPE', 'Imperial'),
('CHRY', 'INTREPID', 'Intrepid'),
('CHRY', 'CHRYLAS', 'Laser'),
('CHRY', 'LEBA', 'LeBaron'),
('CHRY', 'LHS', 'LHS'),
('CHRY', 'CHRYNEON', 'Neon'),
('CHRY', 'NY', 'New Yorker'),
('CHRY', 'NEWPORT', 'Newport'),
('CHRY', 'PACIFICA', 'Pacifica'),
('CHRY', 'CHPROWLE', 'Prowler'),
('CHRY', 'PTCRUIS', 'PT Cruiser'),
('CHRY', 'CHRYSEB', 'Sebring'),
('CHRY', 'CHRYTC', 'TC by Maserati'),
('CHRY', 'TANDC', 'Town & Country'),
('CHRY', 'VOYAGER', 'Voyager'),
('CHRY', 'CHOTH', 'Other Chrysler Models'),
('DAEW', 'LANOS', 'Lanos'),
('DAEW', 'LEGANZA', 'Leganza'),
('DAEW', 'NUBIRA', 'Nubira'),
('DAEW', 'DAEOTH', 'Other Daewoo Models'),
('DAIHAT', 'CHAR', 'Charade'),
('DAIHAT', 'ROCKY', 'Rocky'),
('DAIHAT', 'DAIHOTH', 'Other Daihatsu Models'),
('DATSUN', 'DAT200SX', '200SX'),
('DATSUN', 'DAT210', '210'),
('DATSUN', '280Z', '280ZX'),
('DATSUN', '300ZX', '300ZX'),
('DATSUN', '310', '310'),
('DATSUN', '510', '510'),
('DATSUN', '720', '720'),
('DATSUN', '810', '810'),
('DATSUN', 'DATMAX', 'Maxima'),
('DATSUN', 'DATPU', 'Pickup'),
('DATSUN', 'PUL', 'Pulsar'),
('DATSUN', 'DATSENT', 'Sentra'),
('DATSUN', 'STAN', 'Stanza'),
('DATSUN', 'DATOTH', 'Other Datsun Models'),
('DELOREAN', 'DMC12', 'DMC-12'),
('DODGE', '400', '400'),
('DODGE', 'DOD600', '600'),
('DODGE', 'ARI', 'Aries'),
('DODGE', 'AVENGR', 'Avenger'),
('DODGE', 'CALIBER', 'Caliber'),
('DODGE', 'DODCARA', 'Caravan'),
('DODGE', 'CHALLENGER', 'Challenger'),
('DODGE', 'DODCHAR', 'Charger'),
('DODGE', 'DODCOLT', 'Colt'),
('DODGE', 'DODCONQ', 'Conquest'),
('DODGE', 'DODDW', 'D/W Truck'),
('DODGE', 'DAKOTA', 'Dakota'),
('DODGE', 'DODDART', 'Dart'),
('DODGE', 'DAY', 'Daytona'),
('DODGE', 'DIPLOMA', 'Diplomat'),
('DODGE', 'DURANG', 'Durango'),
('DODGE', 'DODDYNA', 'Dynasty'),
('DODGE', 'GRANDCARAV', 'Grand Caravan'),
('DODGE', 'INTRE', 'Intrepid'),
('DODGE', 'JOURNEY', 'Journey'),
('DODGE', 'LANCERDODG', 'Lancer'),
('DODGE', 'MAGNUM', 'Magnum'),
('DODGE', 'MIRADA', 'Mirada'),
('DODGE', 'MONACO', 'Monaco'),
('DODGE', 'DODNEON', 'Neon'),
('DODGE', 'NITRO', 'Nitro'),
('DODGE', 'OMNI', 'Omni'),
('DODGE', 'RAIDER', 'Raider'),
('DODGE', 'RAM1504WD', 'Ram 1500 Truck'),
('DODGE', 'RAM25002WD', 'Ram 2500 Truck'),
('DODGE', 'RAM3502WD', 'Ram 3500 Truck'),
('DODGE', 'RAM4500', 'Ram 4500 Truck'),
('DODGE', 'DODD50', 'Ram 50 Truck'),
('DODGE', 'CV', 'RAM C/V'),
('DODGE', 'RAMSRT10', 'Ram SRT-10'),
('DODGE', 'RAMVANV8', 'Ram Van'),
('DODGE', 'RAMWAGON', 'Ram Wagon'),
('DODGE', 'RAMCGR', 'Ramcharger'),
('DODGE', 'RAMPAGE', 'Rampage'),
('DODGE', 'DODSHAD', 'Shadow'),
('DODGE', 'DODSPIR', 'Spirit'),
('DODGE', 'SPRINTER', 'Sprinter'),
('DODGE', 'SRT4', 'SRT-4'),
('DODGE', 'STREGIS', 'St. Regis'),
('DODGE', 'STEAL', 'Stealth'),
('DODGE', 'STRATU', 'Stratus'),
('DODGE', 'VIPER', 'Viper'),
('DODGE', 'DOOTH', 'Other Dodge Models'),
('EAGLE', 'EAGLEMED', 'Medallion'),
('EAGLE', 'EAGLEPREM', 'Premier'),
('EAGLE', 'SUMMIT', 'Summit'),
('EAGLE', 'TALON', 'Talon'),
('EAGLE', 'VISION', 'Vision'),
('EAGLE', 'EAGOTH', 'Other Eagle Models'),
('FER', '308GTB', '308 GTB Quattrovalvole'),
('FER', '308TBI', '308 GTBI'),
('FER', '308GTS', '308 GTS Quattrovalvole'),
('FER', '308TSI', '308 GTSI'),
('FER', '328GTB', '328 GTB'),
('FER', '328GTS', '328 GTS'),
('FER', '348GTB', '348 GTB'),
('FER', '348GTS', '348 GTS'),
('FER', '348SPI', '348 Spider'),
('FER', '348TB', '348 TB'),
('FER', '348TS', '348 TS'),
('FER', '360', '360'),
('FER', '456GT', '456 GT'),
('FER', '456MGT', '456M GT'),
('FER', '458ITALIA', '458 Italia'),
('FER', '512BBI', '512 BBi'),
('FER', '512M', '512M'),
('FER', '512TR', '512TR'),
('FER', '550M', '550 Maranello'),
('FER', '575M', '575M Maranello'),
('FER', '599GTB', '599 GTB Fiorano'),
('FER', '599GTO', '599 GTO'),
('FER', '612SCAGLIE', '612 Scaglietti'),
('FER', 'FERCALIF', 'California'),
('FER', 'ENZO', 'Enzo'),
('FER', 'F355', 'F355'),
('FER', 'F40', 'F40'),
('FER', 'F430', 'F430'),
('FER', 'F50', 'F50'),
('FER', 'FERFF', 'FF'),
('FER', 'MOND', 'Mondial'),
('FER', 'TEST', 'Testarossa'),
('FER', 'UNAVAILFER', 'Other Ferrari Models'),
('FIAT', '2000', '2000 Spider'),
('FIAT', 'FIAT500', '500'),
('FIAT', 'BERTON', 'Bertone X1/9'),
('FIAT', 'BRAVA', 'Brava'),
('FIAT', 'PININ', 'Pininfarina Spider'),
('FIAT', 'STRADA', 'Strada'),
('FIAT', 'FIATX19', 'X1/9'),
('FIAT', 'UNAVAILFIA', 'Other Fiat Models'),
('FISK', 'KARMA', 'Karma'),
('FORD', 'AERO', 'Aerostar'),
('FORD', 'ASPIRE', 'Aspire'),
('FORD', 'BRON', 'Bronco'),
('FORD', 'B2', 'Bronco II'),
('FORD', 'FOCMAX', 'C-MAX'),
('FORD', 'FORDCLUB', 'Club Wagon'),
('FORD', 'CONTOUR', 'Contour'),
('FORD', 'COURIER', 'Courier'),
('FORD', 'CROWNVIC', 'Crown Victoria'),
('FORD', 'E150ECON', 'E-150 and Econoline 150'),
('FORD', 'E250ECON', 'E-250 and Econoline 250'),
('FORD', 'E350ECON', 'E-350 and Econoline 350'),
('FORD', 'EDGE', 'Edge'),
('FORD', 'ESCAPE', 'Escape'),
('FORD', 'ESCO', 'Escort'),
('FORD', 'EXCURSION', 'Excursion'),
('FORD', 'EXP', 'EXP'),
('FORD', 'EXPEDI', 'Expedition'),
('FORD', 'EXPEDIEL', 'Expedition EL'),
('FORD', 'EXPLOR', 'Explorer'),
('FORD', 'SPORTTRAC', 'Explorer Sport Trac'),
('FORD', 'F100', 'F100'),
('FORD', 'F150PICKUP', 'F150'),
('FORD', 'F250', 'F250'),
('FORD', 'F350', 'F350'),
('FORD', 'F450', 'F450'),
('FORD', 'FAIRM', 'Fairmont'),
('FORD', 'FESTIV', 'Festiva'),
('FORD', 'FIESTA', 'Fiesta'),
('FORD', 'FIVEHUNDRE', 'Five Hundred'),
('FORD', 'FLEX', 'Flex'),
('FORD', 'FOCUS', 'Focus'),
('FORD', 'FREESTAR', 'Freestar'),
('FORD', 'FREESTYLE', 'Freestyle'),
('FORD', 'FUSION', 'Fusion'),
('FORD', 'GRANADA', 'Granada'),
('FORD', 'GT', 'GT'),
('FORD', 'LTD', 'LTD'),
('FORD', 'MUST', 'Mustang'),
('FORD', 'PROBE', 'Probe'),
('FORD', 'RANGER', 'Ranger'),
('FORD', 'TAURUS', 'Taurus'),
('FORD', 'TAURUSX', 'Taurus X'),
('FORD', 'TEMPO', 'Tempo'),
('FORD', 'TBIRD', 'Thunderbird'),
('FORD', 'TRANSCONN', 'Transit Connect'),
('FORD', 'WINDST', 'Windstar'),
('FORD', 'FORDZX2', 'ZX2 Escort'),
('FORD', 'FOOTH', 'Other Ford Models'),
('FREIGHT', 'FRESPRINT', 'Sprinter'),
('GEO', 'GEOMETRO', 'Metro'),
('GEO', 'GEOPRIZM', 'Prizm'),
('GEO', 'SPECT', 'Spectrum'),
('GEO', 'STORM', 'Storm'),
('GEO', 'GEOTRACK', 'Tracker'),
('GEO', 'GEOOTH', 'Other Geo Models'),
('GMC', 'ACADIA', 'Acadia'),
('GMC', 'CABALLERO', 'Caballero'),
('GMC', 'CANYON', 'Canyon'),
('GMC', 'ENVOY', 'Envoy'),
('GMC', 'ENVOYXL', 'Envoy XL'),
('GMC', 'ENVOYXUV', 'Envoy XUV'),
('GMC', 'JIM', 'Jimmy'),
('GMC', 'RALLYWAG', 'Rally Wagon'),
('GMC', 'GMCS15', 'S15 Jimmy'),
('GMC', 'S15', 'S15 Pickup'),
('GMC', 'SAFARIGMC', 'Safari'),
('GMC', 'GMCSAVANA', 'Savana'),
('GMC', '15SIPU4WD', 'Sierra C/K1500'),
('GMC', 'GMCC25PU', 'Sierra C/K2500'),
('GMC', 'GMC3500PU', 'Sierra C/K3500'),
('GMC', 'SONOMA', 'Sonoma'),
('GMC', 'SUB', 'Suburban'),
('GMC', 'GMCSYCLON', 'Syclone'),
('GMC', 'TERRAIN', 'Terrain'),
('GMC', 'TOPC4500', 'TopKick C4500'),
('GMC', 'TYPH', 'Typhoon'),
('GMC', 'GMCVANDUR', 'Vandura'),
('GMC', 'YUKON', 'Yukon'),
('GMC', 'YUKONXL', 'Yukon XL'),
('GMC', 'GMCOTH', 'Other GMC Models'),
('HONDA', 'ACCORD', 'Accord'),
('HONDA', 'CIVIC', 'Civic'),
('HONDA', 'CRV', 'CR-V'),
('HONDA', 'CRZ', 'CR-Z'),
('HONDA', 'CRX', 'CRX'),
('HONDA', 'CROSSTOUR_MODELS', 'Crosstour and Accord Crosstour Models (2)'),
('HONDA', 'CROSSTOUR', ' - Accord Crosstour'),
('HONDA', 'HONCROSS', ' - Crosstour'),
('HONDA', 'HONDELSOL', 'Del Sol'),
('HONDA', 'ELEMENT', 'Element'),
('HONDA', 'FIT', 'Fit'),
('HONDA', 'INSIGHT', 'Insight'),
('HONDA', 'ODYSSEY', 'Odyssey'),
('HONDA', 'PASSPO', 'Passport'),
('HONDA', 'PILOT', 'Pilot'),
('HONDA', 'PRE', 'Prelude'),
('HONDA', 'RIDGELINE', 'Ridgeline'),
('HONDA', 'S2000', 'S2000'),
('HONDA', 'HONOTH', 'Other Honda Models'),
('AMGEN', 'HUMMER', 'H1'),
('AMGEN', 'H2', 'H2'),
('AMGEN', 'H3', 'H3'),
('AMGEN', 'H3T', 'H3T'),
('AMGEN', 'AMGOTH', 'Other Hummer Models'),
('HYUND', 'ACCENT', 'Accent'),
('HYUND', 'AZERA', 'Azera'),
('HYUND', 'ELANTR', 'Elantra'),
('HYUND', 'HYUELANCPE', 'Elantra Coupe'),
('HYUND', 'ELANTOUR', 'Elantra Touring'),
('HYUND', 'ENTOURAGE', 'Entourage'),
('HYUND', 'EQUUS', 'Equus'),
('HYUND', 'HYUEXCEL', 'Excel'),
('HYUND', 'GENESIS', 'Genesis'),
('HYUND', 'GENESISCPE', 'Genesis Coupe'),
('HYUND', 'SANTAFE', 'Santa Fe'),
('HYUND', 'SCOUPE', 'Scoupe'),
('HYUND', 'SONATA', 'Sonata'),
('HYUND', 'TIBURO', 'Tiburon'),
('HYUND', 'TUCSON', 'Tucson'),
('HYUND', 'VELOSTER', 'Veloster'),
('HYUND', 'VERACRUZ', 'Veracruz'),
('HYUND', 'XG300', 'XG300'),
('HYUND', 'XG350', 'XG350'),
('HYUND', 'HYUOTH', 'Other Hyundai Models'),
('INFIN', 'EX_MODELS', 'EX Models (2)'),
('INFIN', 'EX35', ' - EX35'),
('INFIN', 'EX37', ' - EX37'),
('INFIN', 'FX_MODELS', 'FX Models (4)'),
('INFIN', 'FX35', ' - FX35'),
('INFIN', 'FX37', ' - FX37'),
('INFIN', 'FX45', ' - FX45'),
('INFIN', 'FX50', ' - FX50'),
('INFIN', 'G_MODELS', 'G Models (4)'),
('INFIN', 'G20', ' - G20'),
('INFIN', 'G25', ' - G25'),
('INFIN', 'G35', ' - G35'),
('INFIN', 'G37', ' - G37'),
('INFIN', 'I_MODELS', 'I Models (2)'),
('INFIN', 'I30', ' - I30'),
('INFIN', 'I35', ' - I35'),
('INFIN', 'J_MODELS', 'J Models (1)'),
('INFIN', 'J30', ' - J30'),
('INFIN', 'JX_MODELS', 'JX Models (1)'),
('INFIN', 'JX35', ' - JX35'),
('INFIN', 'M_MODELS', 'M Models (6)'),
('INFIN', 'M30', ' - M30'),
('INFIN', 'M35', ' - M35'),
('INFIN', 'M35HYBRID', ' - M35h'),
('INFIN', 'M37', ' - M37'),
('INFIN', 'M45', ' - M45'),
('INFIN', 'M56', ' - M56'),
('INFIN', 'Q_MODELS', 'Q Models (1)'),
('INFIN', 'Q45', ' - Q45'),
('INFIN', 'QX_MODELS', 'QX Models (2)'),
('INFIN', 'QX4', ' - QX4'),
('INFIN', 'QX56', ' - QX56'),
('INFIN', 'INFOTH', 'Other Infiniti Models'),
('ISU', 'AMIGO', 'Amigo'),
('ISU', 'ASCENDER', 'Ascender'),
('ISU', 'AXIOM', 'Axiom'),
('ISU', 'HOMBRE', 'Hombre'),
('ISU', 'I280', 'i-280'),
('ISU', 'I290', 'i-290'),
('ISU', 'I350', 'i-350'),
('ISU', 'I370', 'i-370'),
('ISU', 'ISUMARK', 'I-Mark'),
('ISU', 'ISUIMP', 'Impulse'),
('ISU', 'OASIS', 'Oasis'),
('ISU', 'ISUPU', 'Pickup'),
('ISU', 'RODEO', 'Rodeo'),
('ISU', 'STYLUS', 'Stylus'),
('ISU', 'TROOP', 'Trooper'),
('ISU', 'TRP2', 'Trooper II'),
('ISU', 'VEHICROSS', 'VehiCROSS'),
('ISU', 'ISUOTH', 'Other Isuzu Models'),
('JAG', 'STYPE', 'S-Type'),
('JAG', 'XTYPE', 'X-Type'),
('JAG', 'XF', 'XF'),
('JAG', 'XJ_SERIES', 'XJ Series (10)'),
('JAG', 'JAGXJ12', ' - XJ12'),
('JAG', 'JAGXJ6', ' - XJ6'),
('JAG', 'JAGXJR', ' - XJR'),
('JAG', 'JAGXJRS', ' - XJR-S'),
('JAG', 'JAGXJS', ' - XJS'),
('JAG', 'VANDEN', ' - XJ Vanden Plas'),
('JAG', 'XJ', ' - XJ'),
('JAG', 'XJ8', ' - XJ8'),
('JAG', 'XJ8L', ' - XJ8 L'),
('JAG', 'XJSPORT', ' - XJ Sport'),
('JAG', 'XK_SERIES', 'XK Series (3)'),
('JAG', 'JAGXK8', ' - XK8'),
('JAG', 'XK', ' - XK'),
('JAG', 'XKR', ' - XKR'),
('JAG', 'JAGOTH', 'Other Jaguar Models'),
('JEEP', 'CHER', 'Cherokee'),
('JEEP', 'JEEPCJ', 'CJ'),
('JEEP', 'COMANC', 'Comanche'),
('JEEP', 'COMMANDER', 'Commander'),
('JEEP', 'COMPASS', 'Compass'),
('JEEP', 'JEEPGRAND', 'Grand Cherokee'),
('JEEP', 'GRWAG', 'Grand Wagoneer'),
('JEEP', 'LIBERTY', 'Liberty'),
('JEEP', 'PATRIOT', 'Patriot'),
('JEEP', 'JEEPPU', 'Pickup'),
('JEEP', 'SCRAMBLE', 'Scrambler'),
('JEEP', 'WAGONE', 'Wagoneer'),
('JEEP', 'WRANGLER', 'Wrangler'),
('JEEP', 'JEOTH', 'Other Jeep Models'),
('KIA', 'AMANTI', 'Amanti'),
('KIA', 'BORREGO', 'Borrego'),
('KIA', 'FORTE', 'Forte'),
('KIA', 'FORTEKOUP', 'Forte Koup'),
('KIA', 'OPTIMA', 'Optima'),
('KIA', 'RIO', 'Rio'),
('KIA', 'RIO5', 'Rio5'),
('KIA', 'RONDO', 'Rondo'),
('KIA', 'SEDONA', 'Sedona'),
('KIA', 'SEPHIA', 'Sephia'),
('KIA', 'SORENTO', 'Sorento'),
('KIA', 'SOUL', 'Soul'),
('KIA', 'SPECTRA', 'Spectra'),
('KIA', 'SPECTRA5', 'Spectra5'),
('KIA', 'SPORTA', 'Sportage'),
('KIA', 'KIAOTH', 'Other Kia Models'),
('LAM', 'AVENT', 'Aventador'),
('LAM', 'COUNT', 'Countach'),
('LAM', 'DIABLO', 'Diablo'),
('LAM', 'GALLARDO', 'Gallardo'),
('LAM', 'JALPA', 'Jalpa'),
('LAM', 'LM002', 'LM002'),
('LAM', 'MURCIELAGO', 'Murcielago'),
('LAM', 'UNAVAILLAM', 'Other Lamborghini Models'),
('LAN', 'BETA', 'Beta'),
('LAN', 'ZAGATO', 'Zagato'),
('LAN', 'UNAVAILLAN', 'Other Lancia Models'),
('ROV', 'DEFEND', 'Defender'),
('ROV', 'DISCOV', 'Discovery'),
('ROV', 'FRELNDR', 'Freelander'),
('ROV', 'LR2', 'LR2'),
('ROV', 'LR3', 'LR3'),
('ROV', 'LR4', 'LR4'),
('ROV', 'RANGE', 'Range Rover'),
('ROV', 'EVOQUE', 'Range Rover Evoque'),
('ROV', 'RANGESPORT', 'Range Rover Sport'),
('ROV', 'ROVOTH', 'Other Land Rover Models'),
('LEXUS', 'CT_MODELS', 'CT Models (1)'),
('LEXUS', 'CT200H', ' - CT 200h'),
('LEXUS', 'ES_MODELS', 'ES Models (5)'),
('LEXUS', 'ES250', ' - ES 250'),
('LEXUS', 'ES300', ' - ES 300'),
('LEXUS', 'ES300H', ' - ES 300h'),
('LEXUS', 'ES330', ' - ES 330'),
('LEXUS', 'ES350', ' - ES 350'),
('LEXUS', 'GS_MODELS', 'GS Models (6)'),
('LEXUS', 'GS300', ' - GS 300'),
('LEXUS', 'GS350', ' - GS 350'),
('LEXUS', 'GS400', ' - GS 400'),
('LEXUS', 'GS430', ' - GS 430'),
('LEXUS', 'GS450H', ' - GS 450h'),
('LEXUS', 'GS460', ' - GS 460'),
('LEXUS', 'GX_MODELS', 'GX Models (2)'),
('LEXUS', 'GX460', ' - GX 460'),
('LEXUS', 'GX470', ' - GX 470'),
('LEXUS', 'HS_MODELS', 'HS Models (1)'),
('LEXUS', 'HS250H', ' - HS 250h'),
('LEXUS', 'IS_MODELS', 'IS Models (6)'),
('LEXUS', 'IS250', ' - IS 250'),
('LEXUS', 'IS250C', ' - IS 250C'),
('LEXUS', 'IS300', ' - IS 300'),
('LEXUS', 'IS350', ' - IS 350'),
('LEXUS', 'IS350C', ' - IS 350C'),
('LEXUS', 'ISF', ' - IS F'),
('LEXUS', 'LEXLFA', 'LFA'),
('LEXUS', 'LS_MODELS', 'LS Models (4)'),
('LEXUS', 'LS400', ' - LS 400'),
('LEXUS', 'LS430', ' - LS 430'),
('LEXUS', 'LS460', ' - LS 460'),
('LEXUS', 'LS600H', ' - LS 600h'),
('LEXUS', 'LX_MODELS', 'LX Models (3)'),
('LEXUS', 'LX450', ' - LX 450'),
('LEXUS', 'LX470', ' - LX 470'),
('LEXUS', 'LX570', ' - LX 570'),
('LEXUS', 'RX_MODELS', 'RX Models (5)'),
('LEXUS', 'RX300', ' - RX 300'),
('LEXUS', 'RX330', ' - RX 330'),
('LEXUS', 'RX350', ' - RX 350'),
('LEXUS', 'RX400H', ' - RX 400h'),
('LEXUS', 'RX450H', ' - RX 450h'),
('LEXUS', 'SC_MODELS', 'SC Models (3)'),
('LEXUS', 'SC300', ' - SC 300'),
('LEXUS', 'SC400', ' - SC 400'),
('LEXUS', 'SC430', ' - SC 430'),
('LEXUS', 'LEXOTH', 'Other Lexus Models'),
('LINC', 'AVIATOR', 'Aviator'),
('LINC', 'BLKWOOD', 'Blackwood'),
('LINC', 'CONT', 'Continental'),
('LINC', 'LSLINCOLN', 'LS'),
('LINC', 'MARKLT', 'Mark LT'),
('LINC', 'MARK6', 'Mark VI'),
('LINC', 'MARK7', 'Mark VII'),
('LINC', 'MARK8', 'Mark VIII'),
('LINC', 'MKS', 'MKS'),
('LINC', 'MKT', 'MKT'),
('LINC', 'MKX', 'MKX'),
('LINC', 'MKZ', 'MKZ'),
('LINC', 'NAVIGA', 'Navigator'),
('LINC', 'NAVIGAL', 'Navigator L'),
('LINC', 'LINCTC', 'Town Car'),
('LINC', 'ZEPHYR', 'Zephyr'),
('LINC', 'LINOTH', 'Other Lincoln Models'),
('LOTUS', 'ELAN', 'Elan'),
('LOTUS', 'LOTELISE', 'Elise'),
('LOTUS', 'ESPRIT', 'Esprit'),
('LOTUS', 'EVORA', 'Evora'),
('LOTUS', 'EXIGE', 'Exige'),
('LOTUS', 'UNAVAILLOT', 'Other Lotus Models'),
('MAS', '430', '430'),
('MAS', 'BITRBO', 'Biturbo'),
('MAS', 'COUPEMAS', 'Coupe'),
('MAS', 'GRANSPORT', 'GranSport'),
('MAS', 'GRANTURISM', 'GranTurismo'),
('MAS', 'QP', 'Quattroporte'),
('MAS', 'SPYDER', 'Spyder'),
('MAS', 'UNAVAILMAS', 'Other Maserati Models'),
('MAYBACH', '57MAYBACH', '57'),
('MAYBACH', '62MAYBACH', '62'),
('MAYBACH', 'UNAVAILMAY', 'Other Maybach Models'),
('MAZDA', 'MAZDA323', '323'),
('MAZDA', 'MAZDA626', '626'),
('MAZDA', '929', '929'),
('MAZDA', 'B-SERIES', 'B-Series Pickup'),
('MAZDA', 'CX-5', 'CX-5'),
('MAZDA', 'CX-7', 'CX-7'),
('MAZDA', 'CX-9', 'CX-9'),
('MAZDA', 'GLC', 'GLC'),
('MAZDA', 'MAZDA2', 'MAZDA2'),
('MAZDA', 'MAZDA3', 'MAZDA3'),
('MAZDA', 'MAZDA5', 'MAZDA5'),
('MAZDA', 'MAZDA6', 'MAZDA6'),
('MAZDA', 'MAZDASPD3', 'MAZDASPEED3'),
('MAZDA', 'MAZDASPD6', 'MAZDASPEED6'),
('MAZDA', 'MIATA', 'Miata MX5'),
('MAZDA', 'MILL', 'Millenia'),
('MAZDA', 'MPV', 'MPV'),
('MAZDA', 'MX3', 'MX3'),
('MAZDA', 'MX6', 'MX6'),
('MAZDA', 'NAVAJO', 'Navajo'),
('MAZDA', 'PROTE', 'Protege'),
('MAZDA', 'PROTE5', 'Protege5'),
('MAZDA', 'RX7', 'RX-7'),
('MAZDA', 'RX8', 'RX-8'),
('MAZDA', 'TRIBUTE', 'Tribute'),
('MAZDA', 'MAZOTH', 'Other Mazda Models'),
('MCLAREN', 'MP4', 'MP4-12C'),
('MB', '190_CLASS', '190 Class (2)'),
('MB', '190D', ' - 190D'),
('MB', '190E', ' - 190E'),
('MB', '240_CLASS', '240 Class (1)'),
('MB', '240D', ' - 240D'),
('MB', '300_CLASS_E_CLASS', '300 Class / E Class (6)'),
('MB', '300CD', ' - 300CD'),
('MB', '300CE', ' - 300CE'),
('MB', '300D', ' - 300D'),
('MB', '300E', ' - 300E'),
('MB', '300TD', ' - 300TD'),
('MB', '300TE', ' - 300TE'),
('MB', 'C_CLASS', 'C Class (13)'),
('MB', 'C220', ' - C220'),
('MB', 'C230', ' - C230'),
('MB', 'C240', ' - C240'),
('MB', 'C250', ' - C250'),
('MB', 'C280', ' - C280'),
('MB', 'C300', ' - C300'),
('MB', 'C320', ' - C320'),
('MB', 'C32AMG', ' - C32 AMG'),
('MB', 'C350', ' - C350'),
('MB', 'C36AMG', ' - C36 AMG'),
('MB', 'C43AMG', ' - C43 AMG'),
('MB', 'C55AMG', ' - C55 AMG'),
('MB', 'C63AMG', ' - C63 AMG'),
('MB', 'CL_CLASS', 'CL Class (6)'),
('MB', 'CL500', ' - CL500'),
('MB', 'CL550', ' - CL550'),
('MB', 'CL55AMG', ' - CL55 AMG'),
('MB', 'CL600', ' - CL600'),
('MB', 'CL63AMG', ' - CL63 AMG'),
('MB', 'CL65AMG', ' - CL65 AMG'),
('MB', 'CLK_CLASS', 'CLK Class (7)'),
('MB', 'CLK320', ' - CLK320'),
('MB', 'CLK350', ' - CLK350'),
('MB', 'CLK430', ' - CLK430'),
('MB', 'CLK500', ' - CLK500'),
('MB', 'CLK550', ' - CLK550'),
('MB', 'CLK55AMG', ' - CLK55 AMG'),
('MB', 'CLK63AMG', ' - CLK63 AMG'),
('MB', 'CLS_CLASS', 'CLS Class (4)'),
('MB', 'CLS500', ' - CLS500'),
('MB', 'CLS550', ' - CLS550'),
('MB', 'CLS55AMG', ' - CLS55 AMG'),
('MB', 'CLS63AMG', ' - CLS63 AMG'),
('MB', 'E_CLASS', 'E Class (18)'),
('MB', '260E', ' - 260E'),
('MB', '280CE', ' - 280CE'),
('MB', '280E', ' - 280E'),
('MB', '400E', ' - 400E'),
('MB', '500E', ' - 500E'),
('MB', 'E300', ' - E300'),
('MB', 'E320', ' - E320'),
('MB', 'E320BLUE', ' - E320 Bluetec'),
('MB', 'E320CDI', ' - E320 CDI'),
('MB', 'E350', ' - E350'),
('MB', 'E350BLUE', ' - E350 Bluetec'),
('MB', 'E400', ' - E400 Hybrid'),
('MB', 'E420', ' - E420'),
('MB', 'E430', ' - E430'),
('MB', 'E500', ' - E500'),
('MB', 'E550', ' - E550'),
('MB', 'E55AMG', ' - E55 AMG'),
('MB', 'E63AMG', ' - E63 AMG'),
('MB', 'G_CLASS', 'G Class (4)'),
('MB', 'G500', ' - G500'),
('MB', 'G550', ' - G550'),
('MB', 'G55AMG', ' - G55 AMG'),
('MB', 'G63AMG', ' - G63 AMG'),
('MB', 'GL_CLASS', 'GL Class (5)'),
('MB', 'GL320BLUE', ' - GL320 Bluetec'),
('MB', 'GL320CDI', ' - GL320 CDI'),
('MB', 'GL350BLUE', ' - GL350 Bluetec'),
('MB', 'GL450', ' - GL450'),
('MB', 'GL550', ' - GL550'),
('MB', 'GLK_CLASS', 'GLK Class (1)'),
('MB', 'GLK350', ' - GLK350'),
('MB', 'M_CLASS', 'M Class (11)'),
('MB', 'ML320', ' - ML320'),
('MB', 'ML320BLUE', ' - ML320 Bluetec'),
('MB', 'ML320CDI', ' - ML320 CDI'),
('MB', 'ML350', ' - ML350'),
('MB', 'ML350BLUE', ' - ML350 Bluetec'),
('MB', 'ML430', ' - ML430'),
('MB', 'ML450HY', ' - ML450 Hybrid'),
('MB', 'ML500', ' - ML500'),
('MB', 'ML550', ' - ML550'),
('MB', 'ML55AMG', ' - ML55 AMG'),
('MB', 'ML63AMG', ' - ML63 AMG'),
('MB', 'R_CLASS', 'R Class (6)'),
('MB', 'R320BLUE', ' - R320 Bluetec'),
('MB', 'R320CDI', ' - R320 CDI'),
('MB', 'R350', ' - R350'),
('MB', 'R350BLUE', ' - R350 Bluetec'),
('MB', 'R500', ' - R500'),
('MB', 'R63AMG', ' - R63 AMG'),
('MB', 'S_CLASS', 'S Class (30)'),
('MB', '300SD', ' - 300SD'),
('MB', '300SDL', ' - 300SDL'),
('MB', '300SE', ' - 300SE'),
('MB', '300SEL', ' - 300SEL'),
('MB', '350SD', ' - 350SD'),
('MB', '350SDL', ' - 350SDL'),
('MB', '380SE', ' - 380SE'),
('MB', '380SEC', ' - 380SEC'),
('MB', '380SEL', ' - 380SEL'),
('MB', '400SE', ' - 400SE'),
('MB', '400SEL', ' - 400SEL'),
('MB', '420SEL', ' - 420SEL'),
('MB', '500SEC', ' - 500SEC'),
('MB', '500SEL', ' - 500SEL'),
('MB', '560SEC', ' - 560SEC'),
('MB', '560SEL', ' - 560SEL'),
('MB', '600SEC', ' - 600SEC'),
('MB', '600SEL', ' - 600SEL'),
('MB', 'S320', ' - S320'),
('MB', 'S350', ' - S350'),
('MB', 'S350BLUE', ' - S350 Bluetec'),
('MB', 'S400HY', ' - S400 Hybrid'),
('MB', 'S420', ' - S420'),
('MB', 'S430', ' - S430'),
('MB', 'S500', ' - S500'),
('MB', 'S550', ' - S550'),
('MB', 'S55AMG', ' - S55 AMG'),
('MB', 'S600', ' - S600'),
('MB', 'S63AMG', ' - S63 AMG'),
('MB', 'S65AMG', ' - S65 AMG'),
('MB', 'SL_CLASS', 'SL Class (13)'),
('MB', '300SL', ' - 300SL'),
('MB', '380SL', ' - 380SL'),
('MB', '380SLC', ' - 380SLC'),
('MB', '500SL', ' - 500SL'),
('MB', '560SL', ' - 560SL'),
('MB', '600SL', ' - 600SL'),
('MB', 'SL320', ' - SL320'),
('MB', 'SL500', ' - SL500'),
('MB', 'SL550', ' - SL550'),
('MB', 'SL55AMG', ' - SL55 AMG'),
('MB', 'SL600', ' - SL600'),
('MB', 'SL63AMG', ' - SL63 AMG'),
('MB', 'SL65AMG', ' - SL65 AMG'),
('MB', 'SLK_CLASS', 'SLK Class (8)'),
('MB', 'SLK230', ' - SLK230'),
('MB', 'SLK250', ' - SLK250'),
('MB', 'SLK280', ' - SLK280'),
('MB', 'SLK300', ' - SLK300'),
('MB', 'SLK320', ' - SLK320'),
('MB', 'SLK32AMG', ' - SLK32 AMG'),
('MB', 'SLK350', ' - SLK350'),
('MB', 'SLK55AMG', ' - SLK55 AMG'),
('MB', 'SLR_CLASS', 'SLR Class (1)'),
('MB', 'SLR', ' - SLR'),
('MB', 'SLS_CLASS', 'SLS Class (1)'),
('MB', 'SLSAMG', ' - SLS AMG'),
('MB', 'SPRINTER_CLASS', 'Sprinter Class (1)'),
('MB', 'MBSPRINTER', ' - Sprinter'),
('MB', 'MBOTH', 'Other Mercedes-Benz Models'),
('MERC', 'CAPRI', 'Capri'),
('MERC', 'COUGAR', 'Cougar'),
('MERC', 'MERCGRAND', 'Grand Marquis'),
('MERC', 'LYNX', 'Lynx'),
('MERC', 'MARAUDER', 'Marauder'),
('MERC', 'MARINER', 'Mariner'),
('MERC', 'MARQ', 'Marquis'),
('MERC', 'MILAN', 'Milan'),
('MERC', 'MONTEGO', 'Montego'),
('MERC', 'MONTEREY', 'Monterey'),
('MERC', 'MOUNTA', 'Mountaineer'),
('MERC', 'MYSTIQ', 'Mystique'),
('MERC', 'SABLE', 'Sable'),
('MERC', 'TOPAZ', 'Topaz'),
('MERC', 'TRACER', 'Tracer'),
('MERC', 'VILLA', 'Villager'),
('MERC', 'MERCZEP', 'Zephyr'),
('MERC', 'MEOTH', 'Other Mercury Models'),
('MERKUR', 'SCORP', 'Scorpio'),
('MERKUR', 'XR4TI', 'XR4Ti'),
('MERKUR', 'MEROTH', 'Other Merkur Models'),
('MINI', 'COOPRCLUB_MODELS', 'Cooper Clubman Models (2)'),
('MINI', 'COOPERCLUB', ' - Cooper Clubman'),
('MINI', 'COOPRCLUBS', ' - Cooper S Clubman'),
('MINI', 'COOPCOUNTRY_MODELS', 'Cooper Countryman Models (2)'),
('MINI', 'COUNTRYMAN', ' - Cooper Countryman'),
('MINI', 'COUNTRYMNS', ' - Cooper S Countryman'),
('MINI', 'COOPCOUP_MODELS', 'Cooper Coupe Models (2)'),
('MINI', 'MINICOUPE', ' - Cooper Coupe'),
('MINI', 'MINISCOUPE', ' - Cooper S Coupe'),
('MINI', 'COOPER_MODELS', 'Cooper Models (2)'),
('MINI', 'COOPER', ' - Cooper'),
('MINI', 'COOPERS', ' - Cooper S'),
('MINI', 'COOPRROAD_MODELS', 'Cooper Roadster Models (2)'),
('MINI', 'COOPERROAD', ' - Cooper Roadster'),
('MINI', 'COOPERSRD', ' - Cooper S Roadster'),
('MIT', '3000GT', '3000GT'),
('MIT', 'CORD', 'Cordia'),
('MIT', 'DIAMAN', 'Diamante'),
('MIT', 'ECLIP', 'Eclipse'),
('MIT', 'ENDEAVOR', 'Endeavor'),
('MIT', 'MITEXP', 'Expo'),
('MIT', 'GALANT', 'Galant'),
('MIT', 'MITI', 'i'),
('MIT', 'LANCERMITS', 'Lancer'),
('MIT', 'LANCEREVO', 'Lancer Evolution'),
('MIT', 'MITPU', 'Mighty Max'),
('MIT', 'MIRAGE', 'Mirage'),
('MIT', 'MONT', 'Montero'),
('MIT', 'MONTSPORT', 'Montero Sport'),
('MIT', 'OUTLANDER', 'Outlander'),
('MIT', 'OUTLANDSPT', 'Outlander Sport'),
('MIT', 'PRECIS', 'Precis'),
('MIT', 'RAIDERMITS', 'Raider'),
('MIT', 'SIGMA', 'Sigma'),
('MIT', 'MITSTAR', 'Starion'),
('MIT', 'TRED', 'Tredia'),
('MIT', 'MITVAN', 'Van'),
('MIT', 'MITOTH', 'Other Mitsubishi Models'),
('NISSAN', 'NIS200SX', '200SX'),
('NISSAN', '240SX', '240SX'),
('NISSAN', '300ZXTURBO', '300ZX'),
('NISSAN', '350Z', '350Z'),
('NISSAN', '370Z', '370Z'),
('NISSAN', 'ALTIMA', 'Altima'),
('NISSAN', 'PATHARMADA', 'Armada'),
('NISSAN', 'AXXESS', 'Axxess'),
('NISSAN', 'CUBE', 'Cube'),
('NISSAN', 'FRONTI', 'Frontier'),
('NISSAN', 'GT-R', 'GT-R'),
('NISSAN', 'JUKE', 'Juke'),
('NISSAN', 'LEAF', 'Leaf'),
('NISSAN', 'MAX', 'Maxima'),
('NISSAN', 'MURANO', 'Murano'),
('NISSAN', 'MURANOCROS', 'Murano CrossCabriolet'),
('NISSAN', 'NV', 'NV'),
('NISSAN', 'NX', 'NX'),
('NISSAN', 'PATH', 'Pathfinder'),
('NISSAN', 'NISPU', 'Pickup'),
('NISSAN', 'PULSAR', 'Pulsar'),
('NISSAN', 'QUEST', 'Quest'),
('NISSAN', 'ROGUE', 'Rogue'),
('NISSAN', 'SENTRA', 'Sentra'),
('NISSAN', 'STANZA', 'Stanza'),
('NISSAN', 'TITAN', 'Titan'),
('NISSAN', 'NISVAN', 'Van'),
('NISSAN', 'VERSA', 'Versa'),
('NISSAN', 'XTERRA', 'Xterra'),
('NISSAN', 'NISSOTH', 'Other Nissan Models'),
('OLDS', '88', '88'),
('OLDS', 'ACHIEV', 'Achieva'),
('OLDS', 'ALERO', 'Alero'),
('OLDS', 'AURORA', 'Aurora'),
('OLDS', 'BRAV', 'Bravada'),
('OLDS', 'CUCR', 'Custom Cruiser'),
('OLDS', 'OLDCUS', 'Cutlass'),
('OLDS', 'OLDCALAIS', 'Cutlass Calais'),
('OLDS', 'CIERA', 'Cutlass Ciera'),
('OLDS', 'CSUPR', 'Cutlass Supreme'),
('OLDS', 'OLDSFIR', 'Firenza'),
('OLDS', 'INTRIG', 'Intrigue'),
('OLDS', '98', 'Ninety-Eight'),
('OLDS', 'OMEG', 'Omega'),
('OLDS', 'REGEN', 'Regency'),
('OLDS', 'SILHO', 'Silhouette'),
('OLDS', 'TORO', 'Toronado'),
('OLDS', 'OLDOTH', 'Other Oldsmobile Models'),
('PEUG', '405', '405'),
('PEUG', '504', '504'),
('PEUG', '505', '505'),
('PEUG', '604', '604'),
('PEUG', 'UNAVAILPEU', 'Other Peugeot Models'),
('PLYN', 'ACC', 'Acclaim'),
('PLYN', 'ARROW', 'Arrow'),
('PLYN', 'BREEZE', 'Breeze'),
('PLYN', 'CARAVE', 'Caravelle'),
('PLYN', 'CHAMP', 'Champ'),
('PLYN', 'COLT', 'Colt'),
('PLYN', 'PLYMCONQ', 'Conquest'),
('PLYN', 'GRANFURY', 'Gran Fury'),
('PLYN', 'PLYMGRANV', 'Grand Voyager'),
('PLYN', 'HORI', 'Horizon'),
('PLYN', 'LASER', 'Laser'),
('PLYN', 'NEON', 'Neon'),
('PLYN', 'PROWLE', 'Prowler'),
('PLYN', 'RELI', 'Reliant'),
('PLYN', 'SAPPOROPLY', 'Sapporo'),
('PLYN', 'SCAMP', 'Scamp'),
('PLYN', 'SUNDAN', 'Sundance'),
('PLYN', 'TRAILDUST', 'Trailduster'),
('PLYN', 'VOYA', 'Voyager'),
('PLYN', 'PLYOTH', 'Other Plymouth Models'),
('PONT', 'T-1000', '1000'),
('PONT', '6000', '6000'),
('PONT', 'AZTEK', 'Aztek'),
('PONT', 'BON', 'Bonneville'),
('PONT', 'CATALINA', 'Catalina'),
('PONT', 'FIERO', 'Fiero'),
('PONT', 'FBIRD', 'Firebird'),
('PONT', 'G3', 'G3'),
('PONT', 'G5', 'G5'),
('PONT', 'G6', 'G6'),
('PONT', 'G8', 'G8'),
('PONT', 'GRNDAM', 'Grand Am'),
('PONT', 'GP', 'Grand Prix'),
('PONT', 'GTO', 'GTO'),
('PONT', 'J2000', 'J2000'),
('PONT', 'LEMANS', 'Le Mans'),
('PONT', 'MONTANA', 'Montana'),
('PONT', 'PARISI', 'Parisienne'),
('PONT', 'PHOENIX', 'Phoenix'),
('PONT', 'SAFARIPONT', 'Safari'),
('PONT', 'SOLSTICE', 'Solstice'),
('PONT', 'SUNBIR', 'Sunbird'),
('PONT', 'SUNFIR', 'Sunfire'),
('PONT', 'TORRENT', 'Torrent'),
('PONT', 'TS', 'Trans Sport'),
('PONT', 'VIBE', 'Vibe'),
('PONT', 'PONOTH', 'Other Pontiac Models'),
('POR', '911', '911'),
('POR', '924', '924'),
('POR', '928', '928'),
('POR', '944', '944'),
('POR', '968', '968'),
('POR', 'BOXSTE', 'Boxster'),
('POR', 'CARRERAGT', 'Carrera GT'),
('POR', 'CAYENNE', 'Cayenne'),
('POR', 'CAYMAN', 'Cayman'),
('POR', 'PANAMERA', 'Panamera'),
('POR', 'POROTH', 'Other Porsche Models'),
('RAM', 'RAM1504WD', '1500'),
('RAM', 'RAM25002WD', '2500'),
('RAM', 'RAM3502WD', '3500'),
('RAM', 'RAM4500', '4500'),
('REN', '18I', '18i'),
('REN', 'FU', 'Fuego'),
('REN', 'LECAR', 'Le Car'),
('REN', 'R18', 'R18'),
('REN', 'RENSPORT', 'Sportwagon'),
('REN', 'UNAVAILREN', 'Other Renault Models'),
('RR', 'CAMAR', 'Camargue'),
('RR', 'CORN', 'Corniche'),
('RR', 'GHOST', 'Ghost'),
('RR', 'PARKWARD', 'Park Ward'),
('RR', 'PHANT', 'Phantom'),
('RR', 'DAWN', 'Silver Dawn'),
('RR', 'SILSERAPH', 'Silver Seraph'),
('RR', 'RRSPIR', 'Silver Spirit'),
('RR', 'SPUR', 'Silver Spur'),
('RR', 'UNAVAILRR', 'Other Rolls-Royce Models'),
('SAAB', '9-2X', '9-2X'),
('SAAB', '9-3', '9-3'),
('SAAB', '9-4X', '9-4X'),
('SAAB', '9-5', '9-5'),
('SAAB', '97X', '9-7X'),
('SAAB', '900', '900'),
('SAAB', '9000', '9000'),
('SAAB', 'SAOTH', 'Other Saab Models'),
('SATURN', 'ASTRA', 'Astra'),
('SATURN', 'AURA', 'Aura'),
('SATURN', 'ION', 'ION'),
('SATURN', 'L_SERIES', 'L Series (3)'),
('SATURN', 'L100', ' - L100'),
('SATURN', 'L200', ' - L200'),
('SATURN', 'L300', ' - L300'),
('SATURN', 'LSSATURN', 'LS'),
('SATURN', 'LW_SERIES', 'LW Series (4)'),
('SATURN', 'LW', ' - LW1'),
('SATURN', 'LW2', ' - LW2'),
('SATURN', 'LW200', ' - LW200'),
('SATURN', 'LW300', ' - LW300'),
('SATURN', 'OUTLOOK', 'Outlook'),
('SATURN', 'RELAY', 'Relay'),
('SATURN', 'SC_SERIES', 'SC Series (2)'),
('SATURN', 'SC1', ' - SC1'),
('SATURN', 'SC2', ' - SC2'),
('SATURN', 'SKY', 'Sky'),
('SATURN', 'SL_SERIES', 'SL Series (3)'),
('SATURN', 'SL', ' - SL'),
('SATURN', 'SL1', ' - SL1'),
('SATURN', 'SL2', ' - SL2'),
('SATURN', 'SW_SERIES', 'SW Series (2)'),
('SATURN', 'SW1', ' - SW1'),
('SATURN', 'SW2', ' - SW2'),
('SATURN', 'VUE', 'Vue'),
('SATURN', 'SATOTH', 'Other Saturn Models'),
('SCION', 'SCIFRS', 'FR-S'),
('SCION', 'IQ', 'iQ'),
('SCION', 'TC', 'tC'),
('SCION', 'XA', 'xA'),
('SCION', 'XB', 'xB'),
('SCION', 'XD', 'xD'),
('SMART', 'FORTWO', 'fortwo'),
('SMART', 'SMOTH', 'Other smart Models'),
('SRT', 'SRTVIPER', 'Viper'),
('STERL', '825', '825'),
('STERL', '827', '827'),
('STERL', 'UNAVAILSTE', 'Other Sterling Models'),
('SUB', 'BAJA', 'Baja'),
('SUB', 'BRAT', 'Brat'),
('SUB', 'SUBBRZ', 'BRZ'),
('SUB', 'FOREST', 'Forester'),
('SUB', 'IMPREZ', 'Impreza'),
('SUB', 'IMPWRX', 'Impreza WRX'),
('SUB', 'JUSTY', 'Justy'),
('SUB', 'SUBL', 'L Series'),
('SUB', 'LEGACY', 'Legacy'),
('SUB', 'LOYALE', 'Loyale'),
('SUB', 'SUBOUTBK', 'Outback'),
('SUB', 'SVX', 'SVX'),
('SUB', 'B9TRIBECA', 'Tribeca'),
('SUB', 'XT', 'XT'),
('SUB', 'XVCRSSTREK', 'XV Crosstrek'),
('SUB', 'SUBOTH', 'Other Subaru Models'),
('SUZUKI', 'AERIO', 'Aerio'),
('SUZUKI', 'EQUATOR', 'Equator'),
('SUZUKI', 'ESTEEM', 'Esteem'),
('SUZUKI', 'FORENZA', 'Forenza'),
('SUZUKI', 'GRANDV', 'Grand Vitara'),
('SUZUKI', 'KIZASHI', 'Kizashi'),
('SUZUKI', 'RENO', 'Reno'),
('SUZUKI', 'SAMUR', 'Samurai'),
('SUZUKI', 'SIDE', 'Sidekick'),
('SUZUKI', 'SWIFT', 'Swift'),
('SUZUKI', 'SX4', 'SX4'),
('SUZUKI', 'VERONA', 'Verona'),
('SUZUKI', 'VITARA', 'Vitara'),
('SUZUKI', 'X90', 'X-90'),
('SUZUKI', 'XL7', 'XL7'),
('SUZUKI', 'SUZOTH', 'Other Suzuki Models'),
('TESLA', 'ROADSTER', 'Roadster'),
('TOYOTA', '4RUN', '4Runner'),
('TOYOTA', 'AVALON', 'Avalon'),
('TOYOTA', 'CAMRY', 'Camry'),
('TOYOTA', 'CELICA', 'Celica'),
('TOYOTA', 'COROL', 'Corolla'),
('TOYOTA', 'CORONA', 'Corona'),
('TOYOTA', 'CRESS', 'Cressida'),
('TOYOTA', 'ECHO', 'Echo'),
('TOYOTA', 'FJCRUIS', 'FJ Cruiser'),
('TOYOTA', 'HIGHLANDER', 'Highlander'),
('TOYOTA', 'LC', 'Land Cruiser'),
('TOYOTA', 'MATRIX', 'Matrix'),
('TOYOTA', 'MR2', 'MR2'),
('TOYOTA', 'MR2SPYDR', 'MR2 Spyder'),
('TOYOTA', 'PASEO', 'Paseo'),
('TOYOTA', 'PICKUP', 'Pickup'),
('TOYOTA', 'PREVIA', 'Previa'),
('TOYOTA', 'PRIUS', 'Prius'),
('TOYOTA', 'PRIUSC', 'Prius C'),
('TOYOTA', 'PRIUSV', 'Prius V'),
('TOYOTA', 'RAV4', 'RAV4'),
('TOYOTA', 'SEQUOIA', 'Sequoia'),
('TOYOTA', 'SIENNA', 'Sienna'),
('TOYOTA', 'SOLARA', 'Solara'),
('TOYOTA', 'STARLET', 'Starlet'),
('TOYOTA', 'SUPRA', 'Supra'),
('TOYOTA', 'T100', 'T100'),
('TOYOTA', 'TACOMA', 'Tacoma'),
('TOYOTA', 'TERCEL', 'Tercel'),
('TOYOTA', 'TUNDRA', 'Tundra'),
('TOYOTA', 'TOYVAN', 'Van'),
('TOYOTA', 'VENZA', 'Venza'),
('TOYOTA', 'YARIS', 'Yaris'),
('TOYOTA', 'TOYOTH', 'Other Toyota Models'),
('TRI', 'TR7', 'TR7'),
('TRI', 'TR8', 'TR8'),
('TRI', 'TRIOTH', 'Other Triumph Models'),
('VOLKS', 'BEETLE', 'Beetle'),
('VOLKS', 'VOLKSCAB', 'Cabrio'),
('VOLKS', 'CAB', 'Cabriolet'),
('VOLKS', 'CC', 'CC'),
('VOLKS', 'CORR', 'Corrado'),
('VOLKS', 'DASHER', 'Dasher'),
('VOLKS', 'EOS', 'Eos'),
('VOLKS', 'EUROVAN', 'Eurovan'),
('VOLKS', 'VOLKSFOX', 'Fox'),
('VOLKS', 'GLI', 'GLI'),
('VOLKS', 'GOLFR', 'Golf R'),
('VOLKS', 'GTI', 'GTI'),
('VOLKS', 'GOLFANDRABBITMODELS', 'Golf and Rabbit Models (2)'),
('VOLKS', 'GOLF', ' - Golf'),
('VOLKS', 'RABBIT', ' - Rabbit'),
('VOLKS', 'JET', 'Jetta'),
('VOLKS', 'PASS', 'Passat'),
('VOLKS', 'PHAETON', 'Phaeton'),
('VOLKS', 'RABBITPU', 'Pickup'),
('VOLKS', 'QUAN', 'Quantum'),
('VOLKS', 'R32', 'R32'),
('VOLKS', 'ROUTAN', 'Routan'),
('VOLKS', 'SCIR', 'Scirocco'),
('VOLKS', 'TIGUAN', 'Tiguan'),
('VOLKS', 'TOUAREG', 'Touareg'),
('VOLKS', 'VANAG', 'Vanagon'),
('VOLKS', 'VWOTH', 'Other Volkswagen Models'),
('VOLVO', '240', '240'),
('VOLVO', '260', '260'),
('VOLVO', '740', '740'),
('VOLVO', '760', '760'),
('VOLVO', '780', '780'),
('VOLVO', '850', '850'),
('VOLVO', '940', '940'),
('VOLVO', '960', '960'),
('VOLVO', 'C30', 'C30'),
('VOLVO', 'C70', 'C70'),
('VOLVO', 'S40', 'S40'),
('VOLVO', 'S60', 'S60'),
('VOLVO', 'S70', 'S70'),
('VOLVO', 'S80', 'S80'),
('VOLVO', 'S90', 'S90'),
('VOLVO', 'V40', 'V40'),
('VOLVO', 'V50', 'V50'),
('VOLVO', 'V70', 'V70'),
('VOLVO', 'V90', 'V90'),
('VOLVO', 'XC60', 'XC60'),
('VOLVO', 'XC', 'XC70'),
('VOLVO', 'XC90', 'XC90'),
('VOLVO', 'VOLOTH', 'Other Volvo Models'),
('YUGO', 'GV', 'GV'),
('YUGO', 'GVC', 'GVC'),
('YUGO', 'GVL', 'GVL'),
('YUGO', 'GVS', 'GVS'),
('YUGO', 'GVX', 'GVX'),
('YUGO', 'YUOTH', 'Other Yugo Models');

-- employee
DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
  id SERIAL NOT NULL ,
  role_id INT REFERENCES roles(id),
  first_name VARCHAR(60) NOT NULL ,
  last_name VARCHAR(60) NOT NULL ,
  email VARCHAR(60) NOT NULL UNIQUE ,
  afm NUMERIC(8,0) NOT NULL UNIQUE ,

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
  afm NUMERIC(8,0) NOT NULL,
  first_name VARCHAR(60) NOT NULL ,
  last_name VARCHAR(60) NOT NULL ,
  email VARCHAR(60) NOT NULL UNIQUE ,
  phone VARCHAR(10) NOT NULL UNIQUE ,

  PRIMARY KEY (afm)
);

insert into customers (afm, first_name, last_name, email, phone) values (61333630, 'Angela', 'Ganiford', 'aganiford0@tamu.edu', '4392350904');
insert into customers (afm, first_name, last_name, email, phone) values (10004451, 'Leigh', 'Easman', 'leasman1@mail.ru', '7217568412');
insert into customers (afm, first_name, last_name, email, phone) values (93128927, 'Jean', 'Durman', 'jdurman2@marketwatch.com', '3398264533');
insert into customers (afm, first_name, last_name, email, phone) values (28209578, 'Jackqueline', 'Hedau', 'jhedau3@ca.gov', '3924735687');
insert into customers (afm, first_name, last_name, email, phone) values (48472091, 'Tiena', 'Beecheno', 'tbeecheno4@discuz.net', '1683804922');
insert into customers (afm, first_name, last_name, email, phone) values (71550163, 'Briggs', 'Fulleylove', 'bfulleylove5@ebay.co.uk', '7266951797');
insert into customers (afm, first_name, last_name, email, phone) values (61934773, 'Alva', 'Goodrich', 'agoodrich6@nbcnews.com', '2903368570');
insert into customers (afm, first_name, last_name, email, phone) values (21707919, 'Penny', 'Maynard', 'pmaynard7@ox.ac.uk', '2565425070');
insert into customers (afm, first_name, last_name, email, phone) values (52970865, 'Fara', 'McConachie', 'fmcconachie8@princeton.edu', '3537719440');
insert into customers (afm, first_name, last_name, email, phone) values (77193431, 'Emmey', 'Hatfull', 'ehatfull9@myspace.com', '1438834556');
insert into customers (afm, first_name, last_name, email, phone) values (36568316, 'Rosalinde', 'Letham', 'rlethama@uiuc.edu', '7184842687');
insert into customers (afm, first_name, last_name, email, phone) values (96253405, 'Burk', 'Whyberd', 'bwhyberdb@51.la', '6244617866');
insert into customers (afm, first_name, last_name, email, phone) values (27609728, 'Hermine', 'Danskine', 'hdanskinec@slashdot.org', '1171229677');
insert into customers (afm, first_name, last_name, email, phone) values (26970733, 'Cassius', 'Ivanusyev', 'civanusyevd@army.mil', '9035207841');
insert into customers (afm, first_name, last_name, email, phone) values (37817870, 'Herby', 'Flatley', 'hflatleye@loc.gov', '7163178495');
insert into customers (afm, first_name, last_name, email, phone) values (30365914, 'Margaretha', 'Mc Queen', 'mmcqueenf@photobucket.com', '9069281414');
insert into customers (afm, first_name, last_name, email, phone) values (81015928, 'Kimbra', 'Foulgham', 'kfoulghamg@constantcontact.com', '4647755452');
insert into customers (afm, first_name, last_name, email, phone) values (45501886, 'Gery', 'Giurio', 'ggiurioh@123-reg.co.uk', '8446821453');
insert into customers (afm, first_name, last_name, email, phone) values (15162710, 'Joly', 'Dowgill', 'jdowgilli@foxnews.com', '2214263719');
insert into customers (afm, first_name, last_name, email, phone) values (49980307, 'Charisse', 'Mussetti', 'cmussettij@blinklist.com', '4318321377');
insert into customers (afm, first_name, last_name, email, phone) values (77746963, 'Meade', 'Beardon', 'mbeardonk@telegraph.co.uk', '3159439722');
insert into customers (afm, first_name, last_name, email, phone) values (30151543, 'Pryce', 'Hawarden', 'phawardenl@bing.com', '4084483887');
insert into customers (afm, first_name, last_name, email, phone) values (85695567, 'Danice', 'Bach', 'dbachm@about.me', '7598987226');
insert into customers (afm, first_name, last_name, email, phone) values (71047799, 'Marc', 'Scarlan', 'mscarlann@tmall.com', '9678522801');
insert into customers (afm, first_name, last_name, email, phone) values (66789268, 'Genevra', 'Inkpen', 'ginkpeno@freewebs.com', '8788112819');
insert into customers (afm, first_name, last_name, email, phone) values (25316280, 'Neel', 'Horley', 'nhorleyp@theatlantic.com', '5612387792');
insert into customers (afm, first_name, last_name, email, phone) values (78025003, 'Byrann', 'Pallatina', 'bpallatinaq@cisco.com', '7505434444');
insert into customers (afm, first_name, last_name, email, phone) values (88629242, 'Guilbert', 'Mobberley', 'gmobberleyr@nytimes.com', '6955386956');
insert into customers (afm, first_name, last_name, email, phone) values (20198730, 'Katusha', 'Le Floch', 'kleflochs@yandex.ru', '8269905208');
insert into customers (afm, first_name, last_name, email, phone) values (56984688, 'Gaylor', 'Stilly', 'gstillyt@guardian.co.uk', '8501168585');
insert into customers (afm, first_name, last_name, email, phone) values (39137393, 'Basia', 'Riping', 'bripingu@java.com', '3737699487');
insert into customers (afm, first_name, last_name, email, phone) values (25691325, 'Selestina', 'Hurdis', 'shurdisv@blog.com', '5028967339');
insert into customers (afm, first_name, last_name, email, phone) values (52278222, 'Zechariah', 'Willden', 'zwilldenw@mtv.com', '6653610641');
insert into customers (afm, first_name, last_name, email, phone) values (21814833, 'Desiree', 'Rookledge', 'drookledgex@posterous.com', '6929777044');
insert into customers (afm, first_name, last_name, email, phone) values (72048054, 'Serene', 'Islip', 'sislipy@hud.gov', '9064542949');
insert into customers (afm, first_name, last_name, email, phone) values (24189008, 'Luis', 'Rutigliano', 'lrutiglianoz@dedecms.com', '6261762793');
insert into customers (afm, first_name, last_name, email, phone) values (76954758, 'Melany', 'Keitley', 'mkeitley10@macromedia.com', '8118185089');
insert into customers (afm, first_name, last_name, email, phone) values (42836434, 'Elfrida', 'Banbury', 'ebanbury11@tuttocitta.it', '6125399997');
insert into customers (afm, first_name, last_name, email, phone) values (73920896, 'Cozmo', 'Brookhouse', 'cbrookhouse12@barnesandnoble.com', '7871597202');
insert into customers (afm, first_name, last_name, email, phone) values (80311803, 'Sari', 'Kears', 'skears13@geocities.com', '4785291427');
insert into customers (afm, first_name, last_name, email, phone) values (20165149, 'Chaunce', 'Wandrack', 'cwandrack14@parallels.com', '9378394095');
insert into customers (afm, first_name, last_name, email, phone) values (45609147, 'Gennie', 'Whye', 'gwhye15@imdb.com', '5994868325');
insert into customers (afm, first_name, last_name, email, phone) values (46676659, 'Iolanthe', 'Sephton', 'isephton16@cbsnews.com', '4102432420');
insert into customers (afm, first_name, last_name, email, phone) values (91068421, 'Timothea', 'Carlsen', 'tcarlsen17@desdev.cn', '3634142371');
insert into customers (afm, first_name, last_name, email, phone) values (59547356, 'Shoshana', 'Tomkins', 'stomkins18@etsy.com', '3598532308');
insert into customers (afm, first_name, last_name, email, phone) values (88005237, 'Zedekiah', 'Tracey', 'ztracey19@statcounter.com', '5203160189');
insert into customers (afm, first_name, last_name, email, phone) values (42558959, 'Averil', 'Tuft', 'atuft1a@bloomberg.com', '3861573051');
insert into customers (afm, first_name, last_name, email, phone) values (48875936, 'Conney', 'Worrell', 'cworrell1b@jiathis.com', '4679955623');
insert into customers (afm, first_name, last_name, email, phone) values (35335003, 'Cristin', 'Feak', 'cfeak1c@hud.gov', '3103960054');
insert into customers (afm, first_name, last_name, email, phone) values (12446070, 'Cordey', 'Dyneley', 'cdyneley1d@timesonline.co.uk', '5657532967');
insert into customers (afm, first_name, last_name, email, phone) values (25014474, 'Hussein', 'Pury', 'hpury1e@google.ca', '8065737702');
insert into customers (afm, first_name, last_name, email, phone) values (84686871, 'Darb', 'Van Geffen', 'dvangeffen1f@ft.com', '5012372490');
insert into customers (afm, first_name, last_name, email, phone) values (83757595, 'Fee', 'Grisard', 'fgrisard1g@dagondesign.com', '2773993762');
insert into customers (afm, first_name, last_name, email, phone) values (37614068, 'Claire', 'Wrout', 'cwrout1h@reddit.com', '1535046879');
insert into customers (afm, first_name, last_name, email, phone) values (49624598, 'Timmi', 'Sugar', 'tsugar1i@4shared.com', '2413726272');
insert into customers (afm, first_name, last_name, email, phone) values (28543141, 'Darline', 'Lepper', 'dlepper1j@mlb.com', '1325485559');
insert into customers (afm, first_name, last_name, email, phone) values (99279003, 'Anjela', 'Vidineev', 'avidineev1k@fema.gov', '6446327821');
insert into customers (afm, first_name, last_name, email, phone) values (76537521, 'Kent', 'Muscat', 'kmuscat1l@ucoz.ru', '1491897644');
insert into customers (afm, first_name, last_name, email, phone) values (89375038, 'Valentine', 'McKennan', 'vmckennan1m@uiuc.edu', '2432602321');
insert into customers (afm, first_name, last_name, email, phone) values (23700932, 'Darda', 'Hub', 'dhub1n@amazon.de', '4326823602');
insert into customers (afm, first_name, last_name, email, phone) values (27502051, 'Livvy', 'Shute', 'lshute1o@reddit.com', '5549363111');
insert into customers (afm, first_name, last_name, email, phone) values (22555822, 'Saba', 'Fearick', 'sfearick1p@jalbum.net', '3585232349');
insert into customers (afm, first_name, last_name, email, phone) values (94098465, 'Grissel', 'Mulles', 'gmulles1q@telegraph.co.uk', '1699100100');
insert into customers (afm, first_name, last_name, email, phone) values (74627235, 'Sarajane', 'Stanbridge', 'sstanbridge1r@fema.gov', '3382002971');
insert into customers (afm, first_name, last_name, email, phone) values (85170044, 'Barnard', 'Cuttle', 'bcuttle1s@lycos.com', '4774115011');
insert into customers (afm, first_name, last_name, email, phone) values (77845492, 'Lion', 'Glenton', 'lglenton1t@columbia.edu', '1905365059');
insert into customers (afm, first_name, last_name, email, phone) values (93507680, 'Devonne', 'Charer', 'dcharer1u@intel.com', '7948320856');
insert into customers (afm, first_name, last_name, email, phone) values (40208412, 'La verne', 'O''Hoey', 'lohoey1v@cam.ac.uk', '4918739624');
insert into customers (afm, first_name, last_name, email, phone) values (22526705, 'Milly', 'Marcham', 'mmarcham1w@reddit.com', '1583419093');
insert into customers (afm, first_name, last_name, email, phone) values (93002192, 'Raviv', 'Pullen', 'rpullen1x@cam.ac.uk', '2669193847');
insert into customers (afm, first_name, last_name, email, phone) values (98403161, 'Izzy', 'Almack', 'ialmack1y@amazonaws.com', '8318947009');
insert into customers (afm, first_name, last_name, email, phone) values (17999165, 'Guendolen', 'Philipeaux', 'gphilipeaux1z@walmart.com', '5571446156');
insert into customers (afm, first_name, last_name, email, phone) values (67513630, 'Derrek', 'Geffinger', 'dgeffinger20@patch.com', '9298737646');
insert into customers (afm, first_name, last_name, email, phone) values (94696454, 'Kincaid', 'Chipps', 'kchipps21@bandcamp.com', '4992015010');
insert into customers (afm, first_name, last_name, email, phone) values (12178732, 'Arch', 'Schrinel', 'aschrinel22@epa.gov', '1598313292');
insert into customers (afm, first_name, last_name, email, phone) values (78783762, 'Mandie', 'Zealy', 'mzealy23@google.com', '4906680481');
insert into customers (afm, first_name, last_name, email, phone) values (49973980, 'Bord', 'Luce', 'bluce24@rambler.ru', '4926001718');
insert into customers (afm, first_name, last_name, email, phone) values (50470439, 'Chickie', 'Gulc', 'cgulc25@youtube.com', '8774648209');
insert into customers (afm, first_name, last_name, email, phone) values (39496641, 'Sula', 'Jurries', 'sjurries26@gmpg.org', '2822295366');
insert into customers (afm, first_name, last_name, email, phone) values (66361803, 'Debera', 'Rawsthorne', 'drawsthorne27@yellowbook.com', '5778624978');
insert into customers (afm, first_name, last_name, email, phone) values (58129363, 'Renado', 'Durrett', 'rdurrett28@vkontakte.ru', '7802714359');
insert into customers (afm, first_name, last_name, email, phone) values (23275655, 'Gail', 'Breache', 'gbreache29@marriott.com', '4887463793');
insert into customers (afm, first_name, last_name, email, phone) values (15505686, 'Glendon', 'Saipy', 'gsaipy2a@pagesperso-orange.fr', '7208299805');
insert into customers (afm, first_name, last_name, email, phone) values (11804623, 'Filide', 'Barizeret', 'fbarizeret2b@twitpic.com', '8976411902');
insert into customers (afm, first_name, last_name, email, phone) values (96427477, 'Addie', 'Openshaw', 'aopenshaw2c@wikia.com', '4202030595');
insert into customers (afm, first_name, last_name, email, phone) values (34396336, 'Clea', 'Onion', 'conion2d@usda.gov', '7955106813');
insert into customers (afm, first_name, last_name, email, phone) values (12312715, 'Birch', 'Codeman', 'bcodeman2e@github.io', '2155648850');
insert into customers (afm, first_name, last_name, email, phone) values (61619852, 'Starla', 'Siley', 'ssiley2f@google.de', '6231590776');
insert into customers (afm, first_name, last_name, email, phone) values (59061543, 'Vikki', 'O''Fogerty', 'vofogerty2g@businesswire.com', '5911343130');
insert into customers (afm, first_name, last_name, email, phone) values (20521780, 'Justin', 'Nugent', 'jnugent2h@naver.com', '9352777162');
insert into customers (afm, first_name, last_name, email, phone) values (74120960, 'Adeline', 'Galbreth', 'agalbreth2i@lulu.com', '9629229720');
insert into customers (afm, first_name, last_name, email, phone) values (65049883, 'Penny', 'Sikora', 'psikora2j@skype.com', '8078850817');
insert into customers (afm, first_name, last_name, email, phone) values (21757427, 'Aldus', 'Maseyk', 'amaseyk2k@dmoz.org', '8217976765');
insert into customers (afm, first_name, last_name, email, phone) values (49377527, 'Lissi', 'Saunter', 'lsaunter2l@hibu.com', '5171823212');
insert into customers (afm, first_name, last_name, email, phone) values (52256534, 'Forrest', 'Duthie', 'fduthie2m@dyndns.org', '7029381108');
insert into customers (afm, first_name, last_name, email, phone) values (87176931, 'Hatty', 'Kimmins', 'hkimmins2n@japanpost.jp', '7067733411');
insert into customers (afm, first_name, last_name, email, phone) values (63691647, 'Viv', 'Prandini', 'vprandini2o@noaa.gov', '6995265122');
insert into customers (afm, first_name, last_name, email, phone) values (66881466, 'Joann', 'Rodenborch', 'jrodenborch2p@blogger.com', '2091785117');
insert into customers (afm, first_name, last_name, email, phone) values (72829793, 'Nerte', 'Lortz', 'nlortz2q@npr.org', '6688726543');
insert into customers (afm, first_name, last_name, email, phone) values (90201041, 'Field', 'Coggon', 'fcoggon2r@huffingtonpost.com', '5455628751');
insert into customers (afm, first_name, last_name, email, phone) values (62679754, 'Danya', 'Knibb', 'dknibb2s@plala.or.jp', '5102110204');
insert into customers (afm, first_name, last_name, email, phone) values (69850336, 'Ahmed', 'Gress', 'agress2t@tripadvisor.com', '5021751555');
insert into customers (afm, first_name, last_name, email, phone) values (92663188, 'Delcina', 'Latan', 'dlatan2u@linkedin.com', '7863463703');
insert into customers (afm, first_name, last_name, email, phone) values (48524633, 'Carolyne', 'Zannotelli', 'czannotelli2v@uiuc.edu', '5278096041');
insert into customers (afm, first_name, last_name, email, phone) values (42141880, 'Cookie', 'Saleway', 'csaleway2w@bloglovin.com', '3276848359');
insert into customers (afm, first_name, last_name, email, phone) values (53393255, 'Jedediah', 'Wombwell', 'jwombwell2x@mail.ru', '5923994794');
insert into customers (afm, first_name, last_name, email, phone) values (13918196, 'Rossy', 'Gullen', 'rgullen2y@zdnet.com', '9152927742');
insert into customers (afm, first_name, last_name, email, phone) values (70505173, 'Wenonah', 'Leman', 'wleman2z@shinystat.com', '8957495303');
insert into customers (afm, first_name, last_name, email, phone) values (52765294, 'Rufus', 'Ferran', 'rferran30@msn.com', '4032673582');
insert into customers (afm, first_name, last_name, email, phone) values (17234885, 'Modesty', 'Teodori', 'mteodori31@reverbnation.com', '5413222632');
insert into customers (afm, first_name, last_name, email, phone) values (60337612, 'Karolina', 'Galgey', 'kgalgey32@disqus.com', '7303653918');
insert into customers (afm, first_name, last_name, email, phone) values (33904981, 'Moyra', 'Barles', 'mbarles33@mozilla.com', '7129001783');
insert into customers (afm, first_name, last_name, email, phone) values (92804602, 'Parnell', 'Baggally', 'pbaggally34@jiathis.com', '8396541970');
insert into customers (afm, first_name, last_name, email, phone) values (83674543, 'Pincas', 'Schwieso', 'pschwieso35@senate.gov', '9056098186');
insert into customers (afm, first_name, last_name, email, phone) values (61171125, 'Shawnee', 'Taunton', 'staunton36@issuu.com', '9045280200');
insert into customers (afm, first_name, last_name, email, phone) values (84595840, 'Hollie', 'Test', 'htest37@biblegateway.com', '9223886930');
insert into customers (afm, first_name, last_name, email, phone) values (13927211, 'Freddie', 'Pioch', 'fpioch38@seesaa.net', '8497814370');
insert into customers (afm, first_name, last_name, email, phone) values (24684854, 'Wyatt', 'Worham', 'wworham39@time.com', '8743623456');
insert into customers (afm, first_name, last_name, email, phone) values (65917335, 'Gilles', 'Baselio', 'gbaselio3a@homestead.com', '5782118976');
insert into customers (afm, first_name, last_name, email, phone) values (55633509, 'Vivianna', 'Reynolds', 'vreynolds3b@phpbb.com', '5832238851');
insert into customers (afm, first_name, last_name, email, phone) values (87879454, 'Vallie', 'Pridgeon', 'vpridgeon3c@biglobe.ne.jp', '4459487464');
insert into customers (afm, first_name, last_name, email, phone) values (73936696, 'Yardley', 'Byard', 'ybyard3d@washingtonpost.com', '9933786526');
insert into customers (afm, first_name, last_name, email, phone) values (90877284, 'Malorie', 'Bysshe', 'mbysshe3e@washingtonpost.com', '4167968057');
insert into customers (afm, first_name, last_name, email, phone) values (20087512, 'Si', 'Wagenen', 'swagenen3f@dot.gov', '8419218831');
insert into customers (afm, first_name, last_name, email, phone) values (94615275, 'Jacqueline', 'Birchenhead', 'jbirchenhead3g@topsy.com', '4064386396');
insert into customers (afm, first_name, last_name, email, phone) values (44154461, 'Jonathon', 'Matthewson', 'jmatthewson3h@smugmug.com', '8328734767');
insert into customers (afm, first_name, last_name, email, phone) values (46252241, 'Ashlen', 'Seeviour', 'aseeviour3i@wunderground.com', '9572854577');
insert into customers (afm, first_name, last_name, email, phone) values (26693614, 'Cristine', 'Sibson', 'csibson3j@clickbank.net', '1824534603');
insert into customers (afm, first_name, last_name, email, phone) values (70828960, 'Brianna', 'Dow', 'bdow3k@cbsnews.com', '2073352740');
insert into customers (afm, first_name, last_name, email, phone) values (76758211, 'Bartlet', 'Eddowis', 'beddowis3l@ezinearticles.com', '9396693229');
insert into customers (afm, first_name, last_name, email, phone) values (34203887, 'Ingaberg', 'Hobden', 'ihobden3m@goodreads.com', '2557453511');
insert into customers (afm, first_name, last_name, email, phone) values (24393277, 'Antonia', 'Kesten', 'akesten3n@apache.org', '7126824393');
insert into customers (afm, first_name, last_name, email, phone) values (17856230, 'De', 'Beevers', 'dbeevers3o@amazon.co.uk', '5256789305');
insert into customers (afm, first_name, last_name, email, phone) values (32553872, 'Rutter', 'Stirrip', 'rstirrip3p@live.com', '6381195286');
insert into customers (afm, first_name, last_name, email, phone) values (95290933, 'Barbe', 'Sherebrook', 'bsherebrook3q@china.com.cn', '1574699096');
insert into customers (afm, first_name, last_name, email, phone) values (70967372, 'Albina', 'Collett', 'acollett3r@bluehost.com', '1757662363');
insert into customers (afm, first_name, last_name, email, phone) values (44341023, 'Cecilia', 'Parkyns', 'cparkyns3s@amazon.com', '9487087851');
insert into customers (afm, first_name, last_name, email, phone) values (58607133, 'Sashenka', 'Sebring', 'ssebring3t@trellian.com', '8133214922');
insert into customers (afm, first_name, last_name, email, phone) values (52312844, 'Shelli', 'Briereton', 'sbriereton3u@hc360.com', '5744410688');
insert into customers (afm, first_name, last_name, email, phone) values (58083344, 'Madelon', 'OShee', 'moshee3v@cisco.com', '7389038671');
insert into customers (afm, first_name, last_name, email, phone) values (74191764, 'Martha', 'Rickis', 'mrickis3w@cafepress.com', '1189868270');
insert into customers (afm, first_name, last_name, email, phone) values (60737316, 'Oliver', 'Perocci', 'operocci3x@ucla.edu', '6888515663');
insert into customers (afm, first_name, last_name, email, phone) values (87952992, 'Jobye', 'Hellcat', 'jhellcat3y@house.gov', '6355279900');
insert into customers (afm, first_name, last_name, email, phone) values (13615938, 'Sophronia', 'Judron', 'sjudron3z@wp.com', '3851186544');
insert into customers (afm, first_name, last_name, email, phone) values (73451525, 'Stephen', 'Shelsher', 'sshelsher40@usnews.com', '5846367860');
insert into customers (afm, first_name, last_name, email, phone) values (87246564, 'Ephraim', 'Haggas', 'ehaggas41@npr.org', '6867861627');
insert into customers (afm, first_name, last_name, email, phone) values (13625284, 'Monika', 'Rontsch', 'mrontsch42@gravatar.com', '6006149254');
insert into customers (afm, first_name, last_name, email, phone) values (39475919, 'Gabriela', 'Cumo', 'gcumo43@samsung.com', '8533598794');
insert into customers (afm, first_name, last_name, email, phone) values (88844600, 'Daisey', 'Bosward', 'dbosward44@cbslocal.com', '1354309213');
insert into customers (afm, first_name, last_name, email, phone) values (66418020, 'Conny', 'Odcroft', 'codcroft45@youtu.be', '9972293709');
insert into customers (afm, first_name, last_name, email, phone) values (29841167, 'Tyrone', 'Silverton', 'tsilverton46@tripadvisor.com', '7801718651');
insert into customers (afm, first_name, last_name, email, phone) values (76922841, 'Isac', 'Bleasdale', 'ibleasdale47@gravatar.com', '8414702173');
insert into customers (afm, first_name, last_name, email, phone) values (12406273, 'Philip', 'Thies', 'pthies48@zdnet.com', '4766016293');
insert into customers (afm, first_name, last_name, email, phone) values (56482586, 'Joanie', 'Cass', 'jcass49@newsvine.com', '9302717651');
insert into customers (afm, first_name, last_name, email, phone) values (92830824, 'Farris', 'Cankett', 'fcankett4a@bbc.co.uk', '7813318503');
insert into customers (afm, first_name, last_name, email, phone) values (55922039, 'Obadias', 'Bruffell', 'obruffell4b@pen.io', '6981314903');
insert into customers (afm, first_name, last_name, email, phone) values (64672437, 'Lynnell', 'Kobierski', 'lkobierski4c@t.co', '8191721314');
insert into customers (afm, first_name, last_name, email, phone) values (90587829, 'Madalyn', 'Vannar', 'mvannar4d@wufoo.com', '2497304741');
insert into customers (afm, first_name, last_name, email, phone) values (78456690, 'Stephanus', 'Boatman', 'sboatman4e@wikispaces.com', '6682966695');
insert into customers (afm, first_name, last_name, email, phone) values (26725942, 'Eleonore', 'Wanless', 'ewanless4f@cafepress.com', '4228225970');
insert into customers (afm, first_name, last_name, email, phone) values (28076112, 'Lesley', 'Hartell', 'lhartell4g@squarespace.com', '2934695095');
insert into customers (afm, first_name, last_name, email, phone) values (43268208, 'Meara', 'Riddall', 'mriddall4h@squidoo.com', '8919684367');
insert into customers (afm, first_name, last_name, email, phone) values (29583253, 'Frans', 'Restieaux', 'frestieaux4i@flavors.me', '2965208682');
insert into customers (afm, first_name, last_name, email, phone) values (58597722, 'Kimberly', 'Benjamin', 'kbenjamin4j@nps.gov', '9788844554');
insert into customers (afm, first_name, last_name, email, phone) values (29868167, 'Vonnie', 'Rickaert', 'vrickaert4k@usda.gov', '4045640325');
insert into customers (afm, first_name, last_name, email, phone) values (37694232, 'Elianora', 'McGebenay', 'emcgebenay4l@hubpages.com', '3513635761');
insert into customers (afm, first_name, last_name, email, phone) values (76434785, 'Jourdan', 'Braga', 'jbraga4m@wisc.edu', '4056081704');
insert into customers (afm, first_name, last_name, email, phone) values (96443428, 'Livia', 'Nyles', 'lnyles4n@marketwatch.com', '1049203483');
insert into customers (afm, first_name, last_name, email, phone) values (94061873, 'Lorie', 'Parmley', 'lparmley4o@rakuten.co.jp', '8126499098');
insert into customers (afm, first_name, last_name, email, phone) values (47809388, 'Olivie', 'Mityukov', 'omityukov4p@wisc.edu', '5663809742');
insert into customers (afm, first_name, last_name, email, phone) values (21449327, 'Bank', 'Chiplin', 'bchiplin4q@nba.com', '6085596510');
insert into customers (afm, first_name, last_name, email, phone) values (90619321, 'Rodina', 'Ghidoni', 'rghidoni4r@skype.com', '1816620230');
insert into customers (afm, first_name, last_name, email, phone) values (99245259, 'Cora', 'Derry', 'cderry4s@imgur.com', '4458807768');
insert into customers (afm, first_name, last_name, email, phone) values (80033414, 'Adrien', 'Linnard', 'alinnard4t@nba.com', '3661032972');
insert into customers (afm, first_name, last_name, email, phone) values (38636704, 'Grethel', 'Gilsthorpe', 'ggilsthorpe4u@friendfeed.com', '4501793912');
insert into customers (afm, first_name, last_name, email, phone) values (10494745, 'Caro', 'Hearthfield', 'chearthfield4v@photobucket.com', '2325494960');
insert into customers (afm, first_name, last_name, email, phone) values (53828436, 'Phyllis', 'Human', 'phuman4w@tuttocitta.it', '3607411788');
insert into customers (afm, first_name, last_name, email, phone) values (94817737, 'Corny', 'Cossam', 'ccossam4x@macromedia.com', '7389400904');
insert into customers (afm, first_name, last_name, email, phone) values (50435910, 'Carolina', 'Stoodley', 'cstoodley4y@bing.com', '9224309337');
insert into customers (afm, first_name, last_name, email, phone) values (45290555, 'Vally', 'Layton', 'vlayton4z@i2i.jp', '5252289786');
insert into customers (afm, first_name, last_name, email, phone) values (88684860, 'Margaretta', 'Ganiclef', 'mganiclef50@geocities.com', '4804999271');
insert into customers (afm, first_name, last_name, email, phone) values (87432145, 'Dalli', 'Cardinale', 'dcardinale51@gmpg.org', '1777879085');
insert into customers (afm, first_name, last_name, email, phone) values (70273916, 'Alfonse', 'Kanzler', 'akanzler52@geocities.com', '1481950597');
insert into customers (afm, first_name, last_name, email, phone) values (52714598, 'Chance', 'Schultheiss', 'cschultheiss53@facebook.com', '1119459274');
insert into customers (afm, first_name, last_name, email, phone) values (10732837, 'Wilton', 'Dissman', 'wdissman54@diigo.com', '1305114612');
insert into customers (afm, first_name, last_name, email, phone) values (78284288, 'Aloysius', 'Chadwin', 'achadwin55@house.gov', '1093135146');
insert into customers (afm, first_name, last_name, email, phone) values (39963076, 'Josefina', 'Tams', 'jtams56@wix.com', '3354095221');
insert into customers (afm, first_name, last_name, email, phone) values (86927213, 'Tait', 'Druhan', 'tdruhan57@eventbrite.com', '6685977258');
insert into customers (afm, first_name, last_name, email, phone) values (86543060, 'Stephenie', 'Cuolahan', 'scuolahan58@zimbio.com', '8103532492');
insert into customers (afm, first_name, last_name, email, phone) values (31350635, 'Pietra', 'Landers', 'planders59@apple.com', '4315973421');
insert into customers (afm, first_name, last_name, email, phone) values (75865553, 'Penn', 'Florez', 'pflorez5a@123-reg.co.uk', '8767606818');
insert into customers (afm, first_name, last_name, email, phone) values (76409090, 'Mata', 'Golland', 'mgolland5b@cargocollective.com', '4985687252');
insert into customers (afm, first_name, last_name, email, phone) values (75348713, 'Abner', 'Osbaldeston', 'aosbaldeston5c@youtu.be', '1011011168');
insert into customers (afm, first_name, last_name, email, phone) values (35409668, 'Emmy', 'Fray', 'efray5d@msn.com', '9148383079');
insert into customers (afm, first_name, last_name, email, phone) values (14067861, 'Waiter', 'Jolliss', 'wjolliss5e@chicagotribune.com', '8304781538');
insert into customers (afm, first_name, last_name, email, phone) values (12556819, 'Lisabeth', 'Vasyunin', 'lvasyunin5f@mapquest.com', '1842230322');
insert into customers (afm, first_name, last_name, email, phone) values (98333310, 'Felicity', 'Herity', 'fherity5g@twitpic.com', '8308813405');
insert into customers (afm, first_name, last_name, email, phone) values (94514532, 'Irv', 'Sutty', 'isutty5h@theglobeandmail.com', '8492102467');
insert into customers (afm, first_name, last_name, email, phone) values (97910554, 'Tara', 'Orrett', 'torrett5i@wisc.edu', '4358231109');
insert into customers (afm, first_name, last_name, email, phone) values (19925780, 'Celia', 'Oleksiak', 'coleksiak5j@w3.org', '3524281901');
insert into customers (afm, first_name, last_name, email, phone) values (17617926, 'Morley', 'Bloomfield', 'mbloomfield5k@state.tx.us', '3716333103');
insert into customers (afm, first_name, last_name, email, phone) values (54843263, 'Klara', 'Slemming', 'kslemming5l@xrea.com', '2523744771');
insert into customers (afm, first_name, last_name, email, phone) values (85084953, 'Valerie', 'Gley', 'vgley5m@mashable.com', '8125402039');
insert into customers (afm, first_name, last_name, email, phone) values (23613176, 'Gordon', 'Sheriff', 'gsheriff5n@infoseek.co.jp', '4729315421');
insert into customers (afm, first_name, last_name, email, phone) values (41238491, 'Leia', 'Klempke', 'lklempke5o@technorati.com', '6428040285');
insert into customers (afm, first_name, last_name, email, phone) values (98999590, 'Garold', 'Island', 'gisland5p@vk.com', '9689635736');
insert into customers (afm, first_name, last_name, email, phone) values (43377841, 'Wanids', 'Spollen', 'wspollen5q@xinhuanet.com', '7149439661');
insert into customers (afm, first_name, last_name, email, phone) values (17649958, 'Stillmann', 'Miroy', 'smiroy5r@webeden.co.uk', '2881807767');
insert into customers (afm, first_name, last_name, email, phone) values (72289021, 'Waldon', 'Peck', 'wpeck5s@ihg.com', '4617786415');
insert into customers (afm, first_name, last_name, email, phone) values (29226869, 'Zahara', 'Peizer', 'zpeizer5t@harvard.edu', '1009351984');
insert into customers (afm, first_name, last_name, email, phone) values (79075137, 'Mohandis', 'Davsley', 'mdavsley5u@slashdot.org', '7333466045');
insert into customers (afm, first_name, last_name, email, phone) values (56425155, 'Cordelia', 'Pruvost', 'cpruvost5v@php.net', '7686927991');
insert into customers (afm, first_name, last_name, email, phone) values (97794267, 'Kerianne', 'Bowerman', 'kbowerman5w@nba.com', '6458917729');
insert into customers (afm, first_name, last_name, email, phone) values (81359559, 'Rolf', 'Teather', 'rteather5x@jigsy.com', '7533377472');
insert into customers (afm, first_name, last_name, email, phone) values (16758758, 'Loria', 'Buffin', 'lbuffin5y@mapy.cz', '5205925387');
insert into customers (afm, first_name, last_name, email, phone) values (43493572, 'Georgiana', 'O''Longain', 'golongain5z@stumbleupon.com', '8735976655');
insert into customers (afm, first_name, last_name, email, phone) values (29192792, 'Esta', 'Guillart', 'eguillart60@seattletimes.com', '5384059993');
insert into customers (afm, first_name, last_name, email, phone) values (67034056, 'Annmarie', 'Kellaway', 'akellaway61@ezinearticles.com', '1766581300');
insert into customers (afm, first_name, last_name, email, phone) values (21307338, 'Dunstan', 'Josovitz', 'djosovitz62@msn.com', '1064125100');
insert into customers (afm, first_name, last_name, email, phone) values (31285812, 'Justin', 'Blampied', 'jblampied63@nasa.gov', '1146778654');
insert into customers (afm, first_name, last_name, email, phone) values (71263787, 'Tiff', 'Ughetti', 'tughetti64@nba.com', '4241988074');
insert into customers (afm, first_name, last_name, email, phone) values (37731274, 'Gilda', 'McGettrick', 'gmcgettrick65@state.tx.us', '5267061003');
insert into customers (afm, first_name, last_name, email, phone) values (69201075, 'Luce', 'Dunton', 'ldunton66@smugmug.com', '9272146222');
insert into customers (afm, first_name, last_name, email, phone) values (12783217, 'Madelon', 'Cattini', 'mcattini67@upenn.edu', '1273540376');
insert into customers (afm, first_name, last_name, email, phone) values (15999676, 'Friederike', 'Doul', 'fdoul68@alibaba.com', '1265155146');
insert into customers (afm, first_name, last_name, email, phone) values (19466217, 'Shelby', 'MacAnulty', 'smacanulty69@printfriendly.com', '5627533411');
insert into customers (afm, first_name, last_name, email, phone) values (45887787, 'Massimo', 'Eustes', 'meustes6a@washington.edu', '6677692064');
insert into customers (afm, first_name, last_name, email, phone) values (12497847, 'Elfrieda', 'Redsall', 'eredsall6b@dedecms.com', '4647751783');
insert into customers (afm, first_name, last_name, email, phone) values (25002793, 'Carr', 'Shepstone', 'cshepstone6c@eventbrite.com', '6213581111');
insert into customers (afm, first_name, last_name, email, phone) values (31762764, 'Irene', 'Cordner', 'icordner6d@hibu.com', '1113129551');
insert into customers (afm, first_name, last_name, email, phone) values (33111878, 'Rozalin', 'Petkov', 'rpetkov6e@accuweather.com', '7141251651');
insert into customers (afm, first_name, last_name, email, phone) values (49440690, 'Rodrigo', 'Matveiko', 'rmatveiko6f@unc.edu', '8833065749');
insert into customers (afm, first_name, last_name, email, phone) values (99407021, 'Emmett', 'Elham', 'eelham6g@oracle.com', '4219826096');
insert into customers (afm, first_name, last_name, email, phone) values (34880407, 'Marje', 'McKaile', 'mmckaile6h@tiny.cc', '5112784209');
insert into customers (afm, first_name, last_name, email, phone) values (44419217, 'Gweneth', 'Boodell', 'gboodell6i@scientificamerican.com', '4783883871');
insert into customers (afm, first_name, last_name, email, phone) values (73721555, 'Whit', 'Robroe', 'wrobroe6j@4shared.com', '5546538789');
insert into customers (afm, first_name, last_name, email, phone) values (31000098, 'Constantia', 'Roubay', 'croubay6k@cbc.ca', '3762486686');
insert into customers (afm, first_name, last_name, email, phone) values (71971134, 'Bree', 'Santi', 'bsanti6l@studiopress.com', '2931224459');
insert into customers (afm, first_name, last_name, email, phone) values (24256635, 'Lindy', 'Defrain', 'ldefrain6m@techcrunch.com', '7859031646');
insert into customers (afm, first_name, last_name, email, phone) values (89492159, 'Brynne', 'Pott', 'bpott6n@businesswire.com', '3314453238');
insert into customers (afm, first_name, last_name, email, phone) values (54589800, 'Chancey', 'Swalough', 'cswalough6o@nih.gov', '8748500500');
insert into customers (afm, first_name, last_name, email, phone) values (86693951, 'Brunhilda', 'Waud', 'bwaud6p@youku.com', '8074106258');
insert into customers (afm, first_name, last_name, email, phone) values (70075533, 'Alexandre', 'Flipek', 'aflipek6q@rambler.ru', '3493383297');
insert into customers (afm, first_name, last_name, email, phone) values (42199909, 'Huntley', 'Shawl', 'hshawl6r@studiopress.com', '5873864417');
insert into customers (afm, first_name, last_name, email, phone) values (58265294, 'Bessy', 'Lamblot', 'blamblot6s@aboutads.info', '1116942841');
insert into customers (afm, first_name, last_name, email, phone) values (49238354, 'Dinah', 'Wynn', 'dwynn6t@google.ru', '2512995598');
insert into customers (afm, first_name, last_name, email, phone) values (53298653, 'Glennie', 'Coburn', 'gcoburn6u@guardian.co.uk', '5855216739');
insert into customers (afm, first_name, last_name, email, phone) values (26776500, 'Ronnie', 'Roscoe', 'rroscoe6v@yolasite.com', '7275616805');
insert into customers (afm, first_name, last_name, email, phone) values (86611731, 'Raymund', 'Weben', 'rweben6w@canalblog.com', '1569889286');
insert into customers (afm, first_name, last_name, email, phone) values (17571532, 'Archibold', 'Ghelerdini', 'aghelerdini6x@mysql.com', '1765739314');
insert into customers (afm, first_name, last_name, email, phone) values (71422663, 'Dode', 'Wickes', 'dwickes6y@cdc.gov', '8403694926');
insert into customers (afm, first_name, last_name, email, phone) values (17966337, 'Myles', 'Crauford', 'mcrauford6z@google.com', '4185221207');
insert into customers (afm, first_name, last_name, email, phone) values (66405654, 'Andros', 'Kryszka', 'akryszka70@mayoclinic.com', '8928626241');
insert into customers (afm, first_name, last_name, email, phone) values (26656937, 'Vanny', 'Reichert', 'vreichert71@dion.ne.jp', '8075039197');
insert into customers (afm, first_name, last_name, email, phone) values (12105058, 'Cchaddie', 'Lanchester', 'clanchester72@topsy.com', '4767637212');
insert into customers (afm, first_name, last_name, email, phone) values (15026798, 'Nikos', 'Dumberrill', 'ndumberrill73@spiegel.de', '2325323116');
insert into customers (afm, first_name, last_name, email, phone) values (84950553, 'Ellerey', 'Bengal', 'ebengal74@wiley.com', '2502971934');
insert into customers (afm, first_name, last_name, email, phone) values (50689477, 'Seamus', 'Ricketts', 'sricketts75@com.com', '8702356136');
insert into customers (afm, first_name, last_name, email, phone) values (20627308, 'Marcy', 'de Lloyd', 'mdelloyd76@wix.com', '3643677884');
insert into customers (afm, first_name, last_name, email, phone) values (26045670, 'Nadiya', 'Matisoff', 'nmatisoff77@yandex.ru', '2162306905');
insert into customers (afm, first_name, last_name, email, phone) values (68145155, 'Grannie', 'Troke', 'gtroke78@xinhuanet.com', '8966635495');
insert into customers (afm, first_name, last_name, email, phone) values (51394972, 'Douglass', 'Foan', 'dfoan79@qq.com', '9784251488');
insert into customers (afm, first_name, last_name, email, phone) values (40340630, 'Saundra', 'Pipworth', 'spipworth7a@google.com', '9865658971');
insert into customers (afm, first_name, last_name, email, phone) values (29278406, 'Katharyn', 'Daenen', 'kdaenen7b@jiathis.com', '4147982430');
insert into customers (afm, first_name, last_name, email, phone) values (22800321, 'Douglas', 'Mary', 'dmary7c@cmu.edu', '6863488785');
insert into customers (afm, first_name, last_name, email, phone) values (30059753, 'Lazar', 'Stollery', 'lstollery7d@ed.gov', '9911989840');
insert into customers (afm, first_name, last_name, email, phone) values (55764886, 'Stearn', 'Hurche', 'shurche7e@uiuc.edu', '4666246551');
insert into customers (afm, first_name, last_name, email, phone) values (27411310, 'Wilhelm', 'Overnell', 'wovernell7f@tumblr.com', '8803901679');
insert into customers (afm, first_name, last_name, email, phone) values (66310235, 'Tamarah', 'Rusk', 'trusk7g@phpbb.com', '2273549479');
insert into customers (afm, first_name, last_name, email, phone) values (48340617, 'Briny', 'Boshers', 'bboshers7h@wikimedia.org', '1727104555');
insert into customers (afm, first_name, last_name, email, phone) values (16004661, 'Marchall', 'Flatley', 'mflatley7i@gnu.org', '5253439772');
insert into customers (afm, first_name, last_name, email, phone) values (65329702, 'Sollie', 'Ivashechkin', 'sivashechkin7j@jiathis.com', '2799534609');
insert into customers (afm, first_name, last_name, email, phone) values (72071195, 'Paolina', 'Davys', 'pdavys7k@ft.com', '3847169023');
insert into customers (afm, first_name, last_name, email, phone) values (25366977, 'Cort', 'Burnet', 'cburnet7l@artisteer.com', '1576293516');
insert into customers (afm, first_name, last_name, email, phone) values (34035494, 'Darya', 'Roos', 'droos7m@fda.gov', '7399933201');
insert into customers (afm, first_name, last_name, email, phone) values (92603488, 'Dionysus', 'Larver', 'dlarver7n@csmonitor.com', '4341112649');
insert into customers (afm, first_name, last_name, email, phone) values (26422927, 'Natal', 'Burel', 'nburel7o@taobao.com', '5263589266');
insert into customers (afm, first_name, last_name, email, phone) values (66565715, 'Nobe', 'Conneely', 'nconneely7p@chronoengine.com', '1118135555');
insert into customers (afm, first_name, last_name, email, phone) values (72544856, 'Nelly', 'Caruth', 'ncaruth7q@tuttocitta.it', '9868549585');
insert into customers (afm, first_name, last_name, email, phone) values (57771710, 'Bobbee', 'Etheridge', 'betheridge7r@live.com', '2977797855');
insert into customers (afm, first_name, last_name, email, phone) values (81465246, 'Gladys', 'Dibson', 'gdibson7s@cbc.ca', '6388926476');
insert into customers (afm, first_name, last_name, email, phone) values (48188019, 'Mario', 'Fursey', 'mfursey7t@webs.com', '7169718842');
insert into customers (afm, first_name, last_name, email, phone) values (15126087, 'Maddi', 'Faircliff', 'mfaircliff7u@springer.com', '9381539944');
insert into customers (afm, first_name, last_name, email, phone) values (44915742, 'Jonathon', 'Bernardez', 'jbernardez7v@mapy.cz', '6347650931');
insert into customers (afm, first_name, last_name, email, phone) values (84111574, 'Roderic', 'Powney', 'rpowney7w@devhub.com', '5181057801');
insert into customers (afm, first_name, last_name, email, phone) values (17181192, 'Tiebout', 'MacIver', 'tmaciver7x@domainmarket.com', '7093515196');
insert into customers (afm, first_name, last_name, email, phone) values (52447846, 'Dehlia', 'Lothlorien', 'dlothlorien7y@quantcast.com', '2415506675');
insert into customers (afm, first_name, last_name, email, phone) values (30696065, 'Maryjane', 'Delacour', 'mdelacour7z@miibeian.gov.cn', '8245915213');
insert into customers (afm, first_name, last_name, email, phone) values (36960580, 'Isidore', 'Benardette', 'ibenardette80@hud.gov', '4083686410');
insert into customers (afm, first_name, last_name, email, phone) values (30886727, 'Damon', 'Hagyard', 'dhagyard81@nsw.gov.au', '8193368272');
insert into customers (afm, first_name, last_name, email, phone) values (51556065, 'Nappie', 'Milham', 'nmilham82@ucsd.edu', '1666427400');
insert into customers (afm, first_name, last_name, email, phone) values (14983036, 'Stanleigh', 'Greveson', 'sgreveson83@myspace.com', '2277437261');
insert into customers (afm, first_name, last_name, email, phone) values (93476831, 'Arney', 'Soane', 'asoane84@cbsnews.com', '6606943418');
insert into customers (afm, first_name, last_name, email, phone) values (27448715, 'Willdon', 'Beddoes', 'wbeddoes85@storify.com', '6238964134');
insert into customers (afm, first_name, last_name, email, phone) values (60779813, 'El', 'McMenamie', 'emcmenamie86@cdbaby.com', '7315762091');
insert into customers (afm, first_name, last_name, email, phone) values (91134454, 'Adella', 'Onyon', 'aonyon87@canalblog.com', '2827356788');
insert into customers (afm, first_name, last_name, email, phone) values (78971443, 'Barbabra', 'Kimbley', 'bkimbley88@plala.or.jp', '1361046875');
insert into customers (afm, first_name, last_name, email, phone) values (99076294, 'Fredrick', 'Trymme', 'ftrymme89@fda.gov', '2981785994');
insert into customers (afm, first_name, last_name, email, phone) values (21468518, 'Corey', 'Bercevelo', 'cbercevelo8a@army.mil', '3942830891');
insert into customers (afm, first_name, last_name, email, phone) values (89143769, 'Alard', 'Botte', 'abotte8b@merriam-webster.com', '7628663670');
insert into customers (afm, first_name, last_name, email, phone) values (37576041, 'Livvie', 'Leverich', 'lleverich8c@dot.gov', '6643950482');
insert into customers (afm, first_name, last_name, email, phone) values (27204504, 'Allard', 'Blind', 'ablind8d@statcounter.com', '9618901158');
insert into customers (afm, first_name, last_name, email, phone) values (31849587, 'Brigida', 'Jouannot', 'bjouannot8e@goodreads.com', '8559226222');
insert into customers (afm, first_name, last_name, email, phone) values (16889101, 'Amye', 'Keedwell', 'akeedwell8f@alexa.com', '8528250562');
insert into customers (afm, first_name, last_name, email, phone) values (17430248, 'Kara-lynn', 'Longea', 'klongea8g@amazon.co.jp', '1898102384');
insert into customers (afm, first_name, last_name, email, phone) values (22875745, 'Nesta', 'Corbridge', 'ncorbridge8h@ameblo.jp', '2275408234');
insert into customers (afm, first_name, last_name, email, phone) values (24122494, 'Corilla', 'Skill', 'cskill8i@cisco.com', '6693829505');
insert into customers (afm, first_name, last_name, email, phone) values (74351612, 'Ely', 'Purchase', 'epurchase8j@foxnews.com', '2414024542');
insert into customers (afm, first_name, last_name, email, phone) values (86440986, 'Falkner', 'Valero', 'fvalero8k@ucoz.com', '8233502837');
insert into customers (afm, first_name, last_name, email, phone) values (17845019, 'Jacquelyn', 'Plenderleith', 'jplenderleith8l@weibo.com', '6914700845');
insert into customers (afm, first_name, last_name, email, phone) values (63557213, 'Oralie', 'Lampe', 'olampe8m@github.com', '1542506277');
insert into customers (afm, first_name, last_name, email, phone) values (21798795, 'Riannon', 'Spanswick', 'rspanswick8n@cdc.gov', '1909565607');
insert into customers (afm, first_name, last_name, email, phone) values (38435403, 'Nevil', 'Sprionghall', 'nsprionghall8o@yandex.ru', '3033840603');
insert into customers (afm, first_name, last_name, email, phone) values (87957170, 'Austine', 'Farren', 'afarren8p@ebay.com', '7206249178');
insert into customers (afm, first_name, last_name, email, phone) values (42468410, 'Merrie', 'Thorwarth', 'mthorwarth8q@irs.gov', '2982272916');
insert into customers (afm, first_name, last_name, email, phone) values (46896095, 'Quent', 'Nelligan', 'qnelligan8r@house.gov', '3378553531');
insert into customers (afm, first_name, last_name, email, phone) values (99412359, 'Cicily', 'Bineham', 'cbineham8s@jimdo.com', '9102603970');
insert into customers (afm, first_name, last_name, email, phone) values (99419312, 'Bibbye', 'Torvey', 'btorvey8t@vinaora.com', '9108192836');
insert into customers (afm, first_name, last_name, email, phone) values (68190490, 'Charles', 'Heinrich', 'cheinrich8u@hao123.com', '2107402926');
insert into customers (afm, first_name, last_name, email, phone) values (95189651, 'Serene', 'Pringer', 'springer8v@hugedomains.com', '4788446077');
insert into customers (afm, first_name, last_name, email, phone) values (25732848, 'Irvine', 'Hamshaw', 'ihamshaw8w@cisco.com', '5261336656');
insert into customers (afm, first_name, last_name, email, phone) values (29126064, 'Dasie', 'Skeene', 'dskeene8x@amazon.co.jp', '3909501857');
insert into customers (afm, first_name, last_name, email, phone) values (10368099, 'Bo', 'McAneny', 'bmcaneny8y@cbsnews.com', '9836555882');
insert into customers (afm, first_name, last_name, email, phone) values (75639588, 'Frankie', 'Ewbanke', 'fewbanke8z@narod.ru', '6931951743');
insert into customers (afm, first_name, last_name, email, phone) values (13909508, 'Rhianna', 'Bollini', 'rbollini90@google.ca', '7215253788');
insert into customers (afm, first_name, last_name, email, phone) values (11056144, 'Sansone', 'Payne', 'spayne91@ehow.com', '5701148825');
insert into customers (afm, first_name, last_name, email, phone) values (35964582, 'Asia', 'Landsman', 'alandsman92@who.int', '4757762332');
insert into customers (afm, first_name, last_name, email, phone) values (70486316, 'Berton', 'Scotti', 'bscotti93@alexa.com', '3506934856');
insert into customers (afm, first_name, last_name, email, phone) values (24579583, 'Buck', 'Scedall', 'bscedall94@bravesites.com', '5538220203');
insert into customers (afm, first_name, last_name, email, phone) values (93070299, 'Kristoffer', 'Cleare', 'kcleare95@prlog.org', '2988435501');
insert into customers (afm, first_name, last_name, email, phone) values (86929394, 'Felecia', 'Ashe', 'fashe96@dedecms.com', '3391821703');
insert into customers (afm, first_name, last_name, email, phone) values (76986521, 'Hermine', 'Espine', 'hespine97@wix.com', '1952209536');
insert into customers (afm, first_name, last_name, email, phone) values (27384754, 'Dione', 'Lordon', 'dlordon98@imdb.com', '1621562838');
insert into customers (afm, first_name, last_name, email, phone) values (40782805, 'Elsi', 'Mott', 'emott99@pcworld.com', '6022396268');
insert into customers (afm, first_name, last_name, email, phone) values (69984930, 'Leila', 'Drayton', 'ldrayton9a@mysql.com', '7847923774');
insert into customers (afm, first_name, last_name, email, phone) values (41586438, 'Jose', 'Mieville', 'jmieville9b@123-reg.co.uk', '4061319975');
insert into customers (afm, first_name, last_name, email, phone) values (36707298, 'Tarah', 'Boteman', 'tboteman9c@cafepress.com', '9373982509');
insert into customers (afm, first_name, last_name, email, phone) values (84793963, 'Jennee', 'Antecki', 'jantecki9d@biblegateway.com', '4218946477');
insert into customers (afm, first_name, last_name, email, phone) values (30901517, 'Catie', 'Dowse', 'cdowse9e@cloudflare.com', '1963506580');
insert into customers (afm, first_name, last_name, email, phone) values (23963684, 'Shannen', 'Karlowicz', 'skarlowicz9f@redcross.org', '4004686970');
insert into customers (afm, first_name, last_name, email, phone) values (53792806, 'Cassondra', 'Dunderdale', 'cdunderdale9g@google.it', '2848694021');
insert into customers (afm, first_name, last_name, email, phone) values (32897334, 'Hillard', 'Simkin', 'hsimkin9h@oakley.com', '1912445533');
insert into customers (afm, first_name, last_name, email, phone) values (99065196, 'Piper', 'Clifton', 'pclifton9i@facebook.com', '7344687634');
insert into customers (afm, first_name, last_name, email, phone) values (44353279, 'Louis', 'Leneham', 'lleneham9j@google.de', '6664700787');
insert into customers (afm, first_name, last_name, email, phone) values (78167564, 'Jaine', 'Lackham', 'jlackham9k@hao123.com', '5169313647');
insert into customers (afm, first_name, last_name, email, phone) values (19165232, 'Emmey', 'Evers', 'eevers9l@bizjournals.com', '7349790849');
insert into customers (afm, first_name, last_name, email, phone) values (22656039, 'Halsy', 'Butland', 'hbutland9m@redcross.org', '6359957574');
insert into customers (afm, first_name, last_name, email, phone) values (74480550, 'Myrwyn', 'Cracie', 'mcracie9n@ehow.com', '4833650264');
insert into customers (afm, first_name, last_name, email, phone) values (96842398, 'Maurene', 'Morecomb', 'mmorecomb9o@e-recht24.de', '6934204388');
insert into customers (afm, first_name, last_name, email, phone) values (67789925, 'Lebbie', 'Vasyanin', 'lvasyanin9p@umich.edu', '2815189865');
insert into customers (afm, first_name, last_name, email, phone) values (58226219, 'Neille', 'Knightsbridge', 'nknightsbridge9q@domainmarket.com', '6739253311');
insert into customers (afm, first_name, last_name, email, phone) values (93954624, 'Kev', 'Snaden', 'ksnaden9r@mac.com', '1379720702');
insert into customers (afm, first_name, last_name, email, phone) values (65492779, 'Brewster', 'Bautiste', 'bbautiste9s@altervista.org', '8228723046');
insert into customers (afm, first_name, last_name, email, phone) values (73770672, 'Mycah', 'Copp', 'mcopp9t@answers.com', '5706964182');
insert into customers (afm, first_name, last_name, email, phone) values (32569975, 'Tammie', 'Malec', 'tmalec9u@deliciousdays.com', '3636599191');
insert into customers (afm, first_name, last_name, email, phone) values (73505966, 'Cathy', 'Reedy', 'creedy9v@linkedin.com', '6936331315');
insert into customers (afm, first_name, last_name, email, phone) values (89466299, 'Carlita', 'Buxcey', 'cbuxcey9w@live.com', '4486262848');
insert into customers (afm, first_name, last_name, email, phone) values (24471750, 'Constancia', 'Risdale', 'crisdale9x@msu.edu', '2945130098');
insert into customers (afm, first_name, last_name, email, phone) values (48521245, 'Patsy', 'Billingsly', 'pbillingsly9y@washington.edu', '4801819873');
insert into customers (afm, first_name, last_name, email, phone) values (38629088, 'Tammy', 'Hearsey', 'thearsey9z@state.gov', '4844512579');
insert into customers (afm, first_name, last_name, email, phone) values (73937067, 'Gerti', 'Drieu', 'gdrieua0@123-reg.co.uk', '4396596535');
insert into customers (afm, first_name, last_name, email, phone) values (16231889, 'Edgar', 'Prydden', 'epryddena1@biblegateway.com', '9388529282');
insert into customers (afm, first_name, last_name, email, phone) values (97166601, 'Theresa', 'Kubec', 'tkubeca2@domainmarket.com', '2973816436');
insert into customers (afm, first_name, last_name, email, phone) values (19346657, 'Sherwin', 'Redd', 'sredda3@unesco.org', '1836873452');
insert into customers (afm, first_name, last_name, email, phone) values (52384467, 'Wilie', 'Langlais', 'wlanglaisa4@who.int', '5074150491');
insert into customers (afm, first_name, last_name, email, phone) values (73395923, 'Micki', 'Swin', 'mswina5@sciencedaily.com', '2117751326');
insert into customers (afm, first_name, last_name, email, phone) values (15663929, 'Una', 'Hoys', 'uhoysa6@walmart.com', '6149898368');
insert into customers (afm, first_name, last_name, email, phone) values (65664820, 'Rowe', 'Lafuente', 'rlafuentea7@si.edu', '8904460161');
insert into customers (afm, first_name, last_name, email, phone) values (31949528, 'Cassy', 'Dunniom', 'cdunnioma8@usa.gov', '9629178235');
insert into customers (afm, first_name, last_name, email, phone) values (41090503, 'Phillie', 'Tippetts', 'ptippettsa9@g.co', '3559732068');
insert into customers (afm, first_name, last_name, email, phone) values (56319863, 'Meredith', 'Behan', 'mbehanaa@icq.com', '7515845770');
insert into customers (afm, first_name, last_name, email, phone) values (20695447, 'Blancha', 'Andric', 'bandricab@sitemeter.com', '3566286555');
insert into customers (afm, first_name, last_name, email, phone) values (93459431, 'Yetty', 'Ehrat', 'yehratac@illinois.edu', '4626051136');
insert into customers (afm, first_name, last_name, email, phone) values (75217958, 'Larine', 'Scarrott', 'lscarrottad@imageshack.us', '5871808470');
insert into customers (afm, first_name, last_name, email, phone) values (53473683, 'Aura', 'Merrilees', 'amerrileesae@blogger.com', '9485897208');
insert into customers (afm, first_name, last_name, email, phone) values (28240974, 'Portia', 'Gatchel', 'pgatchelaf@google.fr', '2809921519');
insert into customers (afm, first_name, last_name, email, phone) values (14212900, 'Trevor', 'Reasun', 'treasunag@canalblog.com', '1788226722');
insert into customers (afm, first_name, last_name, email, phone) values (43736050, 'Giuditta', 'Hurnell', 'ghurnellah@phpbb.com', '1446422296');
insert into customers (afm, first_name, last_name, email, phone) values (11024696, 'Ludovika', 'Paterno', 'lpaternoai@merriam-webster.com', '8882164322');
insert into customers (afm, first_name, last_name, email, phone) values (29897165, 'Daron', 'Cardus', 'dcardusaj@theglobeandmail.com', '9428583572');
insert into customers (afm, first_name, last_name, email, phone) values (89808279, 'Willow', 'Nelmes', 'wnelmesak@va.gov', '8323109604');
insert into customers (afm, first_name, last_name, email, phone) values (86487149, 'Aristotle', 'Murty', 'amurtyal@myspace.com', '2406479506');
insert into customers (afm, first_name, last_name, email, phone) values (58040034, 'Mohandas', 'Godbold', 'mgodboldam@ox.ac.uk', '9001364065');
insert into customers (afm, first_name, last_name, email, phone) values (27666463, 'Bertie', 'Heathorn', 'bheathornan@artisteer.com', '3047832408');
insert into customers (afm, first_name, last_name, email, phone) values (11883566, 'Lynn', 'Simpkin', 'lsimpkinao@github.com', '7284181244');
insert into customers (afm, first_name, last_name, email, phone) values (95265610, 'Germayne', 'Jerok', 'gjerokap@bloglines.com', '7692386450');
insert into customers (afm, first_name, last_name, email, phone) values (89651062, 'Sydel', 'Kenrack', 'skenrackaq@tiny.cc', '7031758366');
insert into customers (afm, first_name, last_name, email, phone) values (47406317, 'Erroll', 'Decker', 'edeckerar@discuz.net', '9729176270');
insert into customers (afm, first_name, last_name, email, phone) values (86772968, 'Olivier', 'Tremeer', 'otremeeras@skyrock.com', '2385128549');
insert into customers (afm, first_name, last_name, email, phone) values (68167178, 'Cass', 'Hannabuss', 'channabussat@4shared.com', '3484411993');
insert into customers (afm, first_name, last_name, email, phone) values (23420334, 'Roseanna', 'Craddock', 'rcraddockau@salon.com', '6708415755');
insert into customers (afm, first_name, last_name, email, phone) values (94628159, 'Witty', 'Drinkhill', 'wdrinkhillav@digg.com', '6009811000');
insert into customers (afm, first_name, last_name, email, phone) values (93903920, 'Gilda', 'Van den Oord', 'gvandenoordaw@list-manage.com', '4616996989');
insert into customers (afm, first_name, last_name, email, phone) values (59851033, 'Free', 'O''Flynn', 'foflynnax@jalbum.net', '1256208596');
insert into customers (afm, first_name, last_name, email, phone) values (77868655, 'Lay', 'Brigden', 'lbrigdenay@nydailynews.com', '6876175177');
insert into customers (afm, first_name, last_name, email, phone) values (23395244, 'Beverie', 'Matkin', 'bmatkinaz@hhs.gov', '8406448464');
insert into customers (afm, first_name, last_name, email, phone) values (78819155, 'Audie', 'MacGilfoyle', 'amacgilfoyleb0@amazon.co.jp', '4308054901');
insert into customers (afm, first_name, last_name, email, phone) values (98639703, 'Dame', 'Cossem', 'dcossemb1@flickr.com', '1106156955');
insert into customers (afm, first_name, last_name, email, phone) values (27482832, 'Sue', 'Isacoff', 'sisacoffb2@ask.com', '1165976726');
insert into customers (afm, first_name, last_name, email, phone) values (90379603, 'Gracie', 'Baskeyfield', 'gbaskeyfieldb3@plala.or.jp', '6215114798');
insert into customers (afm, first_name, last_name, email, phone) values (56847366, 'Kendre', 'Ostrich', 'kostrichb4@archive.org', '1069611262');
insert into customers (afm, first_name, last_name, email, phone) values (90255936, 'Winfred', 'Trevers', 'wtreversb5@unblog.fr', '7287392708');
insert into customers (afm, first_name, last_name, email, phone) values (97602075, 'Karylin', 'Lohde', 'klohdeb6@sourceforge.net', '4274688596');
insert into customers (afm, first_name, last_name, email, phone) values (19128763, 'Kassi', 'Smidmoor', 'ksmidmoorb7@salon.com', '1634298791');
insert into customers (afm, first_name, last_name, email, phone) values (84028454, 'Alfred', 'Rookesby', 'arookesbyb8@printfriendly.com', '1515088026');
insert into customers (afm, first_name, last_name, email, phone) values (28212729, 'Othelia', 'Ilyunin', 'oilyuninb9@noaa.gov', '1183113006');
insert into customers (afm, first_name, last_name, email, phone) values (14704088, 'Fitz', 'Nolton', 'fnoltonba@baidu.com', '7458120523');
insert into customers (afm, first_name, last_name, email, phone) values (49281733, 'Emelda', 'Reggiani', 'ereggianibb@marketwatch.com', '6299456084');
insert into customers (afm, first_name, last_name, email, phone) values (55067564, 'Rory', 'Guirard', 'rguirardbc@omniture.com', '4392153116');
insert into customers (afm, first_name, last_name, email, phone) values (19022073, 'Bartel', 'Ruxton', 'bruxtonbd@simplemachines.org', '3733281308');
insert into customers (afm, first_name, last_name, email, phone) values (36187998, 'Mirna', 'Pancost', 'mpancostbe@joomla.org', '1293019229');
insert into customers (afm, first_name, last_name, email, phone) values (76915724, 'Camala', 'Oswal', 'coswalbf@ameblo.jp', '6912978984');
insert into customers (afm, first_name, last_name, email, phone) values (85386980, 'Kirby', 'd''Arcy', 'kdarcybg@ibm.com', '5027628199');
insert into customers (afm, first_name, last_name, email, phone) values (85372025, 'Jermain', 'Pittwood', 'jpittwoodbh@jiathis.com', '2053844176');
insert into customers (afm, first_name, last_name, email, phone) values (71215689, 'Monte', 'Kegan', 'mkeganbi@about.me', '9524103779');
insert into customers (afm, first_name, last_name, email, phone) values (82449373, 'Minnie', 'Tessington', 'mtessingtonbj@dell.com', '2034840718');
insert into customers (afm, first_name, last_name, email, phone) values (15791033, 'Dorolice', 'Cammack', 'dcammackbk@xinhuanet.com', '7954236927');
insert into customers (afm, first_name, last_name, email, phone) values (37593321, 'Kim', 'Wegner', 'kwegnerbl@upenn.edu', '2981780755');
insert into customers (afm, first_name, last_name, email, phone) values (78443030, 'Ambrosio', 'Scarlin', 'ascarlinbm@howstuffworks.com', '1403928266');
insert into customers (afm, first_name, last_name, email, phone) values (66084267, 'Dev', 'Long', 'dlongbn@digg.com', '1974181498');
insert into customers (afm, first_name, last_name, email, phone) values (60944185, 'Pierce', 'Fullom', 'pfullombo@ning.com', '4471380867');
insert into customers (afm, first_name, last_name, email, phone) values (38291720, 'Iseabal', 'Devereu', 'idevereubp@live.com', '8976675338');
insert into customers (afm, first_name, last_name, email, phone) values (41186965, 'Rabbi', 'Feldbau', 'rfeldbaubq@wikipedia.org', '3723142171');
insert into customers (afm, first_name, last_name, email, phone) values (96333693, 'Dillie', 'Hallmark', 'dhallmarkbr@nifty.com', '3046212851');
insert into customers (afm, first_name, last_name, email, phone) values (48994464, 'Brittni', 'Thyng', 'bthyngbs@amazon.co.jp', '8797827358');
insert into customers (afm, first_name, last_name, email, phone) values (77867161, 'Lory', 'Bentame', 'lbentamebt@arstechnica.com', '7811115330');
insert into customers (afm, first_name, last_name, email, phone) values (94044608, 'Huntlee', 'Ivankin', 'hivankinbu@blogspot.com', '1463820423');
insert into customers (afm, first_name, last_name, email, phone) values (77370632, 'Herbert', 'Ghiron', 'hghironbv@google.fr', '9409092067');
insert into customers (afm, first_name, last_name, email, phone) values (99154390, 'Bert', 'Galliard', 'bgalliardbw@elegantthemes.com', '4363235150');
insert into customers (afm, first_name, last_name, email, phone) values (17330849, 'Calhoun', 'McLemon', 'cmclemonbx@livejournal.com', '1414013872');
insert into customers (afm, first_name, last_name, email, phone) values (53529901, 'Gilbertina', 'Oag', 'goagby@un.org', '6191246911');
insert into customers (afm, first_name, last_name, email, phone) values (12865550, 'Buck', 'Tarquinio', 'btarquiniobz@umich.edu', '7245298965');
insert into customers (afm, first_name, last_name, email, phone) values (76610326, 'Josefa', 'Mollison', 'jmollisonc0@oakley.com', '4243273147');
insert into customers (afm, first_name, last_name, email, phone) values (93473447, 'Cornall', 'Quipp', 'cquippc1@instagram.com', '6932719704');
insert into customers (afm, first_name, last_name, email, phone) values (84693395, 'Arri', 'Bernard', 'abernardc2@engadget.com', '7863917895');
insert into customers (afm, first_name, last_name, email, phone) values (18977175, 'Sara-ann', 'Rooney', 'srooneyc3@studiopress.com', '7682151534');
insert into customers (afm, first_name, last_name, email, phone) values (80796569, 'Arielle', 'Puddin', 'apuddinc4@dropbox.com', '8241087774');
insert into customers (afm, first_name, last_name, email, phone) values (24889103, 'Carlos', 'Leathart', 'cleathartc5@virginia.edu', '8282533385');
insert into customers (afm, first_name, last_name, email, phone) values (31651931, 'Prudence', 'Ouldcott', 'pouldcottc6@google.pl', '7638707407');
insert into customers (afm, first_name, last_name, email, phone) values (35708988, 'Halsey', 'McVanamy', 'hmcvanamyc7@cam.ac.uk', '6085512221');
insert into customers (afm, first_name, last_name, email, phone) values (29204016, 'Guthrie', 'Mangham', 'gmanghamc8@unblog.fr', '2105285360');
insert into customers (afm, first_name, last_name, email, phone) values (91476709, 'Erwin', 'Braffington', 'ebraffingtonc9@hc360.com', '7597767984');
insert into customers (afm, first_name, last_name, email, phone) values (93467690, 'Rowen', 'Edworthy', 'redworthyca@techcrunch.com', '2082318531');
insert into customers (afm, first_name, last_name, email, phone) values (51072021, 'Joel', 'Kalf', 'jkalfcb@comcast.net', '5873804295');
insert into customers (afm, first_name, last_name, email, phone) values (67570834, 'Skipper', 'Ascroft', 'sascroftcc@arstechnica.com', '1926774779');
insert into customers (afm, first_name, last_name, email, phone) values (56598631, 'Kent', 'Iohananof', 'kiohananofcd@is.gd', '4924189052');
insert into customers (afm, first_name, last_name, email, phone) values (53079457, 'Maryjane', 'McGlynn', 'mmcglynnce@vimeo.com', '6338500706');
insert into customers (afm, first_name, last_name, email, phone) values (42836590, 'Roi', 'Luppitt', 'rluppittcf@parallels.com', '7794267940');
insert into customers (afm, first_name, last_name, email, phone) values (14406164, 'Shela', 'Martonfi', 'smartonficg@intel.com', '8868466207');
insert into customers (afm, first_name, last_name, email, phone) values (23056925, 'Beck', 'Junkin', 'bjunkinch@hubpages.com', '1626301894');
insert into customers (afm, first_name, last_name, email, phone) values (75568572, 'Gilburt', 'Paggitt', 'gpaggittci@japanpost.jp', '3208847365');
insert into customers (afm, first_name, last_name, email, phone) values (69741163, 'Ermina', 'Ungerecht', 'eungerechtcj@pcworld.com', '2093695688');
insert into customers (afm, first_name, last_name, email, phone) values (47545979, 'Olag', 'Priter', 'opriterck@google.com.hk', '4844468356');
insert into customers (afm, first_name, last_name, email, phone) values (59975939, 'Dietrich', 'Apark', 'daparkcl@cbc.ca', '1279636581');
insert into customers (afm, first_name, last_name, email, phone) values (95378109, 'Chery', 'Stearndale', 'cstearndalecm@angelfire.com', '1666229325');
insert into customers (afm, first_name, last_name, email, phone) values (14078152, 'Yasmeen', 'Benthall', 'ybenthallcn@redcross.org', '2049663300');
insert into customers (afm, first_name, last_name, email, phone) values (63539397, 'Fayette', 'Gush', 'fgushco@auda.org.au', '4491059218');
insert into customers (afm, first_name, last_name, email, phone) values (62483389, 'Jeri', 'De la Feld', 'jdelafeldcp@psu.edu', '9193113910');
insert into customers (afm, first_name, last_name, email, phone) values (46083674, 'Maximilian', 'Bage', 'mbagecq@ow.ly', '9163020006');
insert into customers (afm, first_name, last_name, email, phone) values (88338513, 'Jehu', 'Punton', 'jpuntoncr@reverbnation.com', '4419361029');
insert into customers (afm, first_name, last_name, email, phone) values (94710409, 'Gerald', 'Spottiswood', 'gspottiswoodcs@si.edu', '2229450734');
insert into customers (afm, first_name, last_name, email, phone) values (34393972, 'Lora', 'Ringwood', 'lringwoodct@netscape.com', '3564587450');
insert into customers (afm, first_name, last_name, email, phone) values (66880490, 'Reuven', 'Craske', 'rcraskecu@pen.io', '2045308605');
insert into customers (afm, first_name, last_name, email, phone) values (54286340, 'Norby', 'Galer', 'ngalercv@ucla.edu', '4302579633');
insert into customers (afm, first_name, last_name, email, phone) values (44540369, 'Crysta', 'Going', 'cgoingcw@t.co', '7892528029');
insert into customers (afm, first_name, last_name, email, phone) values (40794387, 'Amelie', 'Shailer', 'ashailercx@aol.com', '5729352238');
insert into customers (afm, first_name, last_name, email, phone) values (89396837, 'Toiboid', 'Wakley', 'twakleycy@paypal.com', '1616225198');
insert into customers (afm, first_name, last_name, email, phone) values (39464154, 'Orelie', 'Blaxill', 'oblaxillcz@newsvine.com', '3861230580');
insert into customers (afm, first_name, last_name, email, phone) values (11525951, 'Drugi', 'Heaford', 'dheafordd0@mediafire.com', '6808394174');
insert into customers (afm, first_name, last_name, email, phone) values (86967919, 'Norris', 'Bruckman', 'nbruckmand1@newyorker.com', '8066677898');
insert into customers (afm, first_name, last_name, email, phone) values (91082152, 'Kerrin', 'Deabill', 'kdeabilld2@cloudflare.com', '9154195689');
insert into customers (afm, first_name, last_name, email, phone) values (43979748, 'Olympie', 'Kiddell', 'okiddelld3@goodreads.com', '3195568292');
insert into customers (afm, first_name, last_name, email, phone) values (21316482, 'Tyson', 'Buttwell', 'tbuttwelld4@bigcartel.com', '2109259626');
insert into customers (afm, first_name, last_name, email, phone) values (70484837, 'Maudie', 'Bentall', 'mbentalld5@youtu.be', '3576650376');
insert into customers (afm, first_name, last_name, email, phone) values (58489770, 'Ira', 'Shearsby', 'ishearsbyd6@so-net.ne.jp', '7085473897');
insert into customers (afm, first_name, last_name, email, phone) values (81892680, 'Cherey', 'Grgic', 'cgrgicd7@liveinternet.ru', '1678759170');
insert into customers (afm, first_name, last_name, email, phone) values (77536345, 'Tove', 'Tinto', 'ttintod8@adobe.com', '1846206745');
insert into customers (afm, first_name, last_name, email, phone) values (33458280, 'Fancy', 'Bernadzki', 'fbernadzkid9@state.tx.us', '1732693682');
insert into customers (afm, first_name, last_name, email, phone) values (61357425, 'Morry', 'Collyer', 'mcollyerda@latimes.com', '4908904179');
insert into customers (afm, first_name, last_name, email, phone) values (26692799, 'Fredrika', 'Dickenson', 'fdickensondb@ning.com', '3635784142');
insert into customers (afm, first_name, last_name, email, phone) values (69616579, 'Roger', 'Girkins', 'rgirkinsdc@mtv.com', '5168434739');
insert into customers (afm, first_name, last_name, email, phone) values (85323402, 'Drew', 'Hawkswood', 'dhawkswooddd@cbsnews.com', '7086437053');
insert into customers (afm, first_name, last_name, email, phone) values (59548136, 'Cirillo', 'Forsythe', 'cforsythede@livejournal.com', '7625626480');
insert into customers (afm, first_name, last_name, email, phone) values (45647586, 'Analiese', 'Morrow', 'amorrowdf@netvibes.com', '9147305041');
insert into customers (afm, first_name, last_name, email, phone) values (19010516, 'Tallie', 'Alyoshin', 'talyoshindg@quantcast.com', '9776491147');
insert into customers (afm, first_name, last_name, email, phone) values (11856678, 'Antonino', 'Wilkisson', 'awilkissondh@clickbank.net', '7923203522');
insert into customers (afm, first_name, last_name, email, phone) values (42580813, 'Humfrey', 'Redley', 'hredleydi@taobao.com', '2113285112');
insert into customers (afm, first_name, last_name, email, phone) values (94586793, 'Deena', 'Catterson', 'dcattersondj@si.edu', '5671243331');
insert into customers (afm, first_name, last_name, email, phone) values (43075591, 'Skipp', 'Cropton', 'scroptondk@princeton.edu', '6365460576');
insert into customers (afm, first_name, last_name, email, phone) values (68711469, 'Darrin', 'Chisolm', 'dchisolmdl@washington.edu', '3523808215');
insert into customers (afm, first_name, last_name, email, phone) values (49985913, 'Krissie', 'Marcam', 'kmarcamdm@is.gd', '8137714031');
insert into customers (afm, first_name, last_name, email, phone) values (66043223, 'Christen', 'Domel', 'cdomeldn@lulu.com', '6376939172');
insert into customers (afm, first_name, last_name, email, phone) values (50120704, 'Bruno', 'Perone', 'bperonedo@nationalgeographic.com', '8473228333');
insert into customers (afm, first_name, last_name, email, phone) values (87803675, 'Gunar', 'Hebbard', 'ghebbarddp@fotki.com', '4561657832');
insert into customers (afm, first_name, last_name, email, phone) values (72839037, 'Darbee', 'Clother', 'dclotherdq@t-online.de', '3088552657');
insert into customers (afm, first_name, last_name, email, phone) values (16656312, 'Issiah', 'Magauran', 'imagaurandr@earthlink.net', '2056696367');
insert into customers (afm, first_name, last_name, email, phone) values (43226962, 'Fabio', 'Jeandillou', 'fjeandillouds@odnoklassniki.ru', '2428834573');
insert into customers (afm, first_name, last_name, email, phone) values (32933743, 'Gilberta', 'McAdam', 'gmcadamdt@house.gov', '9526083412');
insert into customers (afm, first_name, last_name, email, phone) values (61524414, 'Obed', 'Conradie', 'oconradiedu@meetup.com', '6387216925');
insert into customers (afm, first_name, last_name, email, phone) values (96092712, 'Delainey', 'Hedin', 'dhedindv@blogspot.com', '8697033828');


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
  car_warehouse_id INT NOT NULL REFERENCES car_warehouse(id),
  tech_id INT NOT NULL REFERENCES employee(id),
  cost FLOAT NOT NULL ,
  start_date DATE NOT NULL ,
  end_date DATE,

  PRIMARY KEY (id)
);

insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (83, 85601262, '240.56', '2016-05-19 02:09:22', '2016-05-24 02:09:22');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (215, 85601262, '620.40', '2016-11-20 16:33:03', '2017-01-14 16:33:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (56, 85601262, '214.59', '2017-07-12 06:26:21', '2017-07-17 06:26:21');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (15, 85601262, '583.84', '2017-11-13 01:10:02', '2017-12-31 01:10:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (309, 85601262, '401.65', '2018-02-15 03:17:57', '2018-03-27 03:17:57');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (35, 85601262, '391.66', '2017-08-15 01:16:29', '2017-09-29 01:16:29');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (357, 85601262, '266.83', '2016-04-23 18:37:50', '2016-06-13 18:37:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (498, 85601262, '739.14', '2018-05-21 18:14:13', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (271, 85601262, '498.41', '2016-08-16 22:17:09', '2016-09-02 22:17:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (497, 85601262, '73.70', '2015-08-15 23:51:49', '2015-10-10 23:51:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (275, 85601262, '673.01', '2016-11-07 10:20:52', '2016-12-18 10:20:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (335, 85601262, '221.75', '2017-09-24 04:32:24', '2017-11-05 04:32:24');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (336, 85601262, '977.70', '2017-04-28 08:54:52', '2017-06-08 08:54:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (147, 85601262, '430.61', '2017-03-01 04:36:16', '2017-04-26 04:36:16');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (341, 85601262, '579.46', '2016-07-21 04:03:53', '2016-07-21 04:03:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (264, 85601262, '304.19', '2015-06-05 16:44:28', '2015-07-23 16:44:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (248, 85601262, '502.70', '2015-09-01 10:37:40', '2015-09-13 10:37:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (160, 85601262, '437.60', '2018-05-22 11:42:40', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (150, 85601262, '775.99', '2017-04-30 12:43:40', '2017-06-04 12:43:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (247, 85601262, '109.37', '2016-01-12 05:11:22', '2016-01-31 05:11:22');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (309, 85601262, '679.07', '2017-05-11 01:13:08', '2017-06-25 01:13:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (101, 85601262, '283.00', '2017-10-21 08:41:05', '2017-12-12 08:41:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (355, 85601262, '567.53', '2016-09-01 23:23:09', '2016-09-21 23:23:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (436, 85601262, '150.82', '2018-01-06 11:17:16', '2018-01-15 11:17:16');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (177, 85601262, '733.85', '2016-02-14 20:42:45', '2016-03-28 20:42:45');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (429, 85601262, '42.00', '2015-05-19 23:45:12', '2015-07-03 23:45:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (297, 85601262, '328.04', '2015-06-25 05:11:14', '2015-07-19 05:11:14');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (387, 85601262, '691.38', '2018-05-25 23:14:40', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (498, 85601262, '448.39', '2015-12-31 11:23:14', '2016-01-16 11:23:14');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (118, 85601262, '129.52', '2018-05-28 21:52:31', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (16, 85601262, '155.65', '2016-01-23 18:20:10', '2016-03-22 18:20:10');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (499, 85601262, '433.00', '2015-09-18 10:32:15', '2015-09-18 10:32:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (245, 85601262, '629.64', '2016-08-14 20:59:39', '2016-09-05 20:59:39');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (382, 85601262, '671.41', '2015-12-01 10:59:29', '2015-12-16 10:59:29');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (103, 85601262, '766.09', '2015-12-12 20:09:08', '2016-01-13 20:09:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (240, 85601262, '386.44', '2015-07-07 23:53:49', '2015-07-21 23:53:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (228, 85601262, '689.44', '2017-02-05 08:44:02', '2017-02-21 08:44:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (495, 85601262, '106.10', '2016-01-14 12:23:35', '2016-03-02 12:23:35');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (436, 85601262, '34.83', '2017-03-26 11:00:03', '2017-04-24 11:00:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (465, 85601262, '422.46', '2016-05-03 08:02:50', '2016-05-22 08:02:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (264, 85601262, '905.80', '2015-05-03 06:47:01', '2015-05-20 06:47:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (331, 85601262, '311.62', '2016-12-03 12:59:07', '2017-01-26 12:59:07');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (287, 85601262, '618.75', '2017-11-02 18:49:32', '2017-12-06 18:49:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (179, 85601262, '908.98', '2018-05-30 09:54:02', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (222, 85601262, '519.46', '2016-01-28 02:26:31', '2016-02-19 02:26:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (223, 85601262, '567.93', '2016-02-09 02:23:25', '2016-02-28 02:23:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (121, 85601262, '372.34', '2015-11-24 02:14:05', '2015-12-30 02:14:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (148, 85601262, '108.28', '2017-11-01 02:37:39', '2017-11-23 02:37:39');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (212, 85601262, '676.53', '2018-01-05 19:29:44', '2018-02-17 19:29:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (426, 85601262, '639.58', '2017-12-22 09:14:38', '2017-12-29 09:14:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (330, 85601262, '889.31', '2016-07-20 09:44:38', '2016-07-20 09:44:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (494, 85601262, '252.38', '2016-02-15 08:24:20', '2016-03-28 08:24:20');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (210, 85601262, '113.88', '2015-04-26 14:10:49', '2015-05-19 14:10:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (204, 85601262, '836.15', '2017-07-14 08:49:30', '2017-07-17 08:49:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (444, 85601262, '787.62', '2017-03-12 21:59:12', '2017-03-15 21:59:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (194, 85601262, '469.68', '2015-05-22 17:26:49', '2015-07-18 17:26:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (261, 85601262, '576.07', '2017-08-23 10:20:25', '2017-10-10 10:20:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (381, 85601262, '881.59', '2016-06-29 22:53:27', '2016-06-29 22:53:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (495, 85601262, '565.16', '2016-02-21 09:32:54', '2016-03-26 09:32:54');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (363, 85601262, '228.26', '2016-10-07 00:49:17', '2016-12-05 00:49:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (436, 85601262, '216.57', '2018-01-04 00:16:26', '2018-03-01 00:16:26');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (182, 85601262, '259.34', '2016-07-31 05:26:21', '2016-08-24 05:26:21');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (466, 85601262, '270.12', '2016-06-16 21:27:19', '2016-07-30 21:27:19');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (131, 85601262, '320.77', '2017-04-02 11:46:46', '2017-05-19 11:46:46');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (478, 85601262, '306.15', '2015-10-21 14:18:23', '2015-11-07 14:18:23');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (445, 85601262, '73.64', '2015-12-17 18:34:54', '2016-02-09 18:34:54');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (179, 85601262, '602.88', '2015-09-10 23:36:41', '2015-09-11 23:36:41');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (361, 55241214, '152.55', '2015-04-25 22:12:22', '2015-04-25 22:12:22');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (10, 55241214, '423.92', '2017-09-14 23:22:47', '2017-09-14 23:22:47');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (360, 55241214, '443.35', '2017-11-22 13:38:25', '2017-12-11 13:38:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (181, 55241214, '745.51', '2017-02-10 04:36:00', '2017-03-01 04:36:00');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (435, 55241214, '335.21', '2017-03-18 11:21:04', '2017-03-26 11:21:04');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (17, 55241214, '125.62', '2015-09-27 08:36:41', '2015-11-17 08:36:41');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (414, 55241214, '142.68', '2017-11-01 19:56:40', '2017-12-19 19:56:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (178, 55241214, '35.51', '2016-04-07 02:27:44', '2016-05-14 02:27:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (132, 55241214, '765.38', '2015-05-22 11:32:08', '2015-06-14 11:32:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (222, 55241214, '659.51', '2017-04-15 12:55:23', '2017-05-20 12:55:23');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (30, 55241214, '101.51', '2017-06-17 08:36:31', '2017-08-10 08:36:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (452, 55241214, '23.42', '2017-11-14 06:58:10', '2017-12-05 06:58:10');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (87, 55241214, '665.02', '2016-10-03 09:48:24', '2016-11-27 09:48:24');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (310, 55241214, '992.74', '2017-05-31 06:25:15', '2017-06-10 06:25:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (124, 55241214, '63.15', '2016-10-03 11:38:27', '2016-11-20 11:38:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (89, 55241214, '337.50', '2016-03-02 17:46:19', '2016-04-20 17:46:19');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (498, 55241214, '863.50', '2016-01-17 22:07:55', '2016-02-21 22:07:55');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (114, 55241214, '842.36', '2016-01-25 05:21:37', '2016-03-04 05:21:37');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (429, 55241214, '942.53', '2017-11-16 05:36:05', '2018-01-05 05:36:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (417, 55241214, '785.52', '2017-05-26 23:35:48', '2017-07-01 23:35:48');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (424, 55241214, '489.69', '2015-10-11 05:28:45', '2015-11-03 05:28:45');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (382, 55241214, '410.86', '2015-10-08 17:38:17', '2015-11-07 17:38:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (399, 55241214, '433.33', '2018-02-14 22:15:27', '2018-03-17 22:15:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (126, 55241214, '642.91', '2017-03-25 10:00:12', '2017-04-13 10:00:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (382, 55241214, '910.39', '2016-12-30 01:35:08', '2017-02-18 01:35:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (126, 55241214, '832.25', '2017-02-27 23:11:08', '2017-03-25 23:11:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (271, 55241214, '531.47', '2017-09-25 20:36:45', '2017-11-04 20:36:45');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (177, 55241214, '507.01', '2015-09-26 17:43:37', '2015-09-30 17:43:37');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (310, 55241214, '992.84', '2017-01-22 02:01:25', '2017-03-04 02:01:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (117, 55241214, '813.97', '2016-06-12 02:31:37', '2016-06-23 02:31:37');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (124, 55241214, '153.34', '2017-03-13 23:50:58', '2017-05-10 23:50:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (349, 55241214, '685.38', '2017-06-28 14:15:09', '2017-07-26 14:15:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (428, 55241214, '317.22', '2018-05-29 22:08:34', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (403, 55241214, '213.44', '2015-11-04 18:34:22', '2015-11-09 18:34:22');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (206, 55241214, '906.59', '2015-09-16 10:46:46', '2015-11-09 10:46:46');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (316, 55241214, '479.98', '2017-06-23 06:25:36', '2017-06-30 06:25:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (286, 55241214, '180.26', '2017-10-04 16:33:11', '2017-10-18 16:33:11');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (407, 55241214, '612.78', '2017-01-23 02:20:18', '2017-02-09 02:20:18');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (180, 55241214, '380.65', '2015-09-23 20:24:03', '2015-11-08 20:24:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (10, 55241214, '353.12', '2015-05-20 20:07:16', '2015-07-05 20:07:16');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (480, 55241214, '375.46', '2017-10-16 06:21:14', '2017-11-08 06:21:14');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (123, 55241214, '692.79', '2017-01-30 05:50:44', '2017-03-23 05:50:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (315, 55241214, '564.76', '2017-01-25 09:06:32', '2017-03-16 09:06:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (51, 55241214, '931.95', '2015-05-30 00:32:35', '2015-06-28 00:32:35');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (133, 55241214, '322.36', '2017-10-15 04:22:25', '2017-11-15 04:22:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (20, 55241214, '814.63', '2017-05-03 07:29:18', '2017-05-24 07:29:18');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (82, 55241214, '632.67', '2018-01-07 15:12:46', '2018-01-22 15:12:46');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (274, 55241214, '288.57', '2017-09-02 17:53:21', '2017-09-11 17:53:21');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (7, 55241214, '674.58', '2017-06-06 07:46:53', '2017-07-23 07:46:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (228, 55241214, '821.67', '2016-05-22 20:23:30', '2016-07-11 20:23:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (382, 55241214, '675.49', '2015-07-15 13:32:11', '2015-08-13 13:32:11');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (14, 55241214, '855.22', '2016-07-31 06:06:08', '2016-08-27 06:06:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (101, 55241214, '61.50', '2017-03-28 07:33:03', '2017-05-20 07:33:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (2, 55241214, '385.94', '2017-05-15 03:00:08', '2017-06-01 03:00:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (170, 55241214, '648.36', '2016-10-15 10:03:15', '2016-12-08 10:03:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (389, 55241214, '267.82', '2015-07-09 09:46:33', '2015-07-29 09:46:33');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (146, 55241214, '119.86', '2017-11-18 15:15:19', '2017-11-22 15:15:19');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (245, 55241214, '840.03', '2015-08-03 07:27:03', '2015-08-11 07:27:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (161, 55241214, '911.69', '2017-03-18 16:37:40', '2017-04-02 16:37:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (192, 55241214, '412.83', '2017-07-01 08:23:57', '2017-07-15 08:23:57');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (427, 55241214, '787.40', '2016-10-30 19:29:11', '2016-11-01 19:29:11');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (204, 55241214, '914.40', '2016-10-04 01:50:32', '2016-11-20 01:50:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (345, 55241214, '373.75', '2017-01-20 00:08:15', '2017-02-07 00:08:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (286, 55241214, '659.27', '2016-01-11 12:06:13', '2016-02-21 12:06:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (40, 55241214, '991.44', '2017-02-02 01:17:42', '2017-03-24 01:17:42');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (325, 55241214, '474.17', '2016-06-05 09:41:33', '2016-07-26 09:41:33');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (287, 55241214, '253.95', '2015-05-21 15:05:35', '2015-07-01 15:05:35');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (292, 55241214, '404.19', '2015-11-05 18:32:55', '2015-11-06 18:32:55');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (109, 55241214, '40.03', '2018-01-04 18:36:25', '2018-01-19 18:36:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (212, 55241214, '325.00', '2017-03-20 04:53:39', '2017-04-29 04:53:39');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (426, 55241214, '463.92', '2016-05-23 09:03:30', '2016-07-07 09:03:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (459, 55241214, '704.68', '2016-09-24 21:22:30', '2016-11-06 21:22:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (213, 55241214, '643.96', '2015-08-10 04:18:27', '2015-08-18 04:18:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (496, 55241214, '642.00', '2018-05-26 20:25:02', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (147, 55241214, '864.78', '2015-04-24 06:41:24', '2015-05-27 06:41:24');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (325, 55241214, '636.42', '2016-05-13 07:22:09', '2016-06-25 07:22:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (58, 55241214, '370.92', '2015-06-28 23:09:49', '2015-07-29 23:09:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (428, 55241214, '575.29', '2018-01-27 15:26:48', '2018-03-17 15:26:48');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (161, 55241214, '660.78', '2017-12-04 15:39:59', '2018-01-03 15:39:59');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (255, 55241214, '703.51', '2018-01-06 19:38:40', '2018-01-25 19:38:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (84, 55241214, '22.82', '2017-07-07 06:24:33', '2017-08-11 06:24:33');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (49, 55241214, '591.09', '2016-12-19 14:37:40', '2017-01-21 14:37:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (362, 55241214, '249.84', '2016-09-15 18:28:56', '2016-09-20 18:28:56');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (191, 55241214, '373.92', '2017-07-19 03:02:25', '2017-08-05 03:02:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (149, 55241214, '791.58', '2016-06-07 16:51:40', '2016-07-16 16:51:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (46, 41235675, '332.60', '2015-12-30 14:42:27', '2016-01-10 14:42:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (427, 41235675, '748.16', '2017-06-16 12:47:01', '2017-08-07 12:47:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (191, 41235675, '328.53', '2017-07-20 18:20:03', '2017-07-28 18:20:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (344, 41235675, '689.57', '2016-08-21 23:41:03', '2016-09-19 23:41:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (444, 41235675, '847.59', '2016-07-07 13:42:05', '2016-08-24 13:42:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (84, 41235675, '531.77', '2016-05-15 17:34:13', '2016-05-23 17:34:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (17, 41235675, '641.86', '2016-03-05 02:00:02', '2016-03-10 02:00:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (252, 41235675, '469.92', '2017-02-14 18:05:02', '2017-04-15 18:05:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (426, 41235675, '849.76', '2017-09-25 13:24:40', '2017-10-19 13:24:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (148, 41235675, '120.30', '2016-09-06 19:46:57', '2016-09-20 19:46:57');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (145, 41235675, '708.38', '2015-08-11 06:49:12', '2015-09-15 06:49:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (285, 41235675, '757.47', '2017-01-14 00:01:54', '2017-01-27 00:01:54');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (55, 41235675, '148.77', '2017-10-19 19:13:42', '2017-11-24 19:13:42');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (439, 41235675, '468.83', '2016-10-06 03:48:39', '2016-11-29 03:48:39');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (49, 41235675, '99.02', '2017-08-03 23:40:24', '2017-09-07 23:40:24');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (93, 41235675, '824.90', '2017-12-25 03:28:44', '2018-02-20 03:28:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (359, 41235675, '494.52', '2017-08-20 04:08:06', '2017-09-25 04:08:06');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (316, 41235675, '304.18', '2017-08-10 16:15:22', '2017-08-15 16:15:22');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (387, 41235675, '633.55', '2015-04-24 15:23:43', '2015-05-08 15:23:43');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (17, 41235675, '797.48', '2015-08-20 22:30:32', '2015-09-16 22:30:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (428, 41235675, '617.04', '2016-10-22 02:58:12', '2016-11-27 02:58:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (102, 41235675, '464.90', '2016-11-13 10:05:36', '2016-11-19 10:05:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (322, 41235675, '741.58', '2017-12-06 13:33:02', '2017-12-21 13:33:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (55, 41235675, '704.12', '2016-07-11 19:33:33', '2016-07-19 19:33:33');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (210, 41235675, '381.88', '2016-04-01 09:42:31', '2016-04-26 09:42:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (330, 41235675, '356.57', '2018-01-09 20:06:56', '2018-03-06 20:06:56');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (248, 41235675, '542.57', '2016-12-09 23:54:38', '2016-12-16 23:54:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (498, 41235675, '653.96', '2018-03-06 19:24:01', '2018-03-08 19:24:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (240, 41235675, '197.60', '2018-01-29 05:28:52', '2018-03-18 05:28:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (435, 41235675, '80.56', '2016-03-27 08:20:58', '2016-04-17 08:20:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (39, 41235675, '463.46', '2015-08-23 08:59:15', '2015-09-08 08:59:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (407, 41235675, '712.21', '2015-08-15 02:33:22', '2015-09-17 02:33:22');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (400, 41235675, '175.50', '2016-06-16 06:47:30', '2016-07-12 06:47:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (30, 41235675, '606.48', '2016-03-11 19:34:50', '2016-03-25 19:34:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (124, 41235675, '920.63', '2017-10-04 17:11:06', '2017-10-30 17:11:06');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (217, 41235675, '783.43', '2015-09-23 20:04:33', '2015-10-28 20:04:33');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (202, 41235675, '669.72', '2016-12-03 07:06:55', '2016-12-08 07:06:55');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (459, 41235675, '262.77', '2017-12-12 23:58:48', '2018-01-19 23:58:48');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (178, 41235675, '605.83', '2017-04-04 07:37:47', '2017-05-18 07:37:47');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (481, 41235675, '812.85', '2017-05-15 16:19:57', '2017-07-08 16:19:57');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (459, 41235675, '262.39', '2015-08-21 23:45:46', '2015-10-05 23:45:46');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (331, 41235675, '376.18', '2016-08-19 05:58:53', '2016-10-15 05:58:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (35, 41235675, '840.58', '2017-06-25 11:31:28', '2017-07-02 11:31:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (191, 41235675, '279.00', '2016-12-23 00:04:10', '2017-01-03 00:04:10');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (228, 41235675, '38.48', '2017-01-01 01:43:01', '2017-01-07 01:43:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (466, 41235675, '780.86', '2016-01-27 10:32:56', '2016-03-09 10:32:56');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (111, 41235675, '503.26', '2017-02-11 00:41:31', '2017-02-24 00:41:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (388, 41235675, '323.43', '2015-06-30 14:27:53', '2015-08-03 14:27:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (407, 41235675, '478.50', '2016-05-06 03:58:32', '2016-07-03 03:58:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (399, 41235675, '477.57', '2017-10-17 19:15:03', '2017-10-29 19:15:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (32, 41235675, '240.43', '2016-01-16 01:33:04', '2016-01-28 01:33:04');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (361, 41235675, '276.43', '2015-11-03 00:26:12', '2015-12-12 00:26:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (84, 41235675, '724.34', '2017-05-23 11:54:13', '2017-05-27 11:54:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (479, 41235675, '195.50', '2017-07-23 09:43:09', '2017-09-15 09:43:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (46, 41235675, '793.45', '2016-06-11 14:31:13', '2016-07-25 14:31:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (5, 41235675, '381.40', '2016-02-18 21:54:18', '2016-02-29 21:54:18');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (122, 41235675, '501.07', '2015-09-22 22:52:34', '2015-10-12 22:52:34');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (204, 41235675, '157.57', '2016-06-07 14:46:00', '2016-06-10 14:46:00');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (103, 41235675, '708.31', '2015-10-30 16:42:52', '2015-11-05 16:42:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (315, 41235675, '304.86', '2016-03-04 04:12:41', '2016-04-06 04:12:41');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (474, 41235675, '663.35', '2017-01-15 19:37:59', '2017-02-04 19:37:59');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (202, 41235675, '35.05', '2018-02-05 17:57:02', '2018-02-19 17:57:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (110, 41235675, '142.43', '2015-06-24 17:17:37', '2015-07-24 17:17:37');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (344, 41235675, '490.04', '2016-05-22 23:53:42', '2016-07-13 23:53:42');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (121, 41235675, '30.27', '2016-03-06 10:52:11', '2016-04-15 10:52:11');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (167, 41235675, '309.20', '2016-01-28 15:42:28', '2016-03-14 15:42:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (15, 41235675, '123.04', '2016-07-21 04:30:05', '2016-08-01 04:30:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (362, 41235675, '114.78', '2016-04-20 09:49:23', '2016-05-31 09:49:23');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (145, 41235675, '307.24', '2016-04-01 20:40:55', '2016-04-10 20:40:55');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (206, 41235675, '291.08', '2017-05-07 03:54:25', '2017-06-13 03:54:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (110, 41235675, '304.67', '2017-01-15 15:26:12', '2017-03-07 15:26:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (317, 41235675, '766.84', '2016-01-14 22:24:23', '2016-01-21 22:24:23');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (217, 41235675, '79.46', '2018-02-15 10:18:30', '2018-02-25 10:18:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (361, 41235675, '33.40', '2015-07-23 05:41:48', '2015-07-24 05:41:48');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (394, 41235675, '944.24', '2015-07-31 09:15:54', '2015-09-23 09:15:54');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (345, 79524750, '611.69', '2015-04-27 08:51:43', '2015-05-16 08:51:43');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (105, 79524750, '72.15', '2016-05-15 04:51:51', '2016-06-08 04:51:51');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (357, 79524750, '402.90', '2016-01-17 15:22:23', '2016-03-13 15:22:23');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (439, 79524750, '949.10', '2017-11-11 14:35:04', '2017-12-17 14:35:04');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (145, 79524750, '717.85', '2018-02-14 02:08:39', '2018-03-23 02:08:39');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (465, 79524750, '773.19', '2017-11-02 06:51:01', '2017-12-25 06:51:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (32, 79524750, '314.91', '2016-02-03 09:01:28', '2016-02-19 09:01:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (393, 79524750, '438.29', '2017-04-13 16:07:40', '2017-06-11 16:07:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (4, 79524750, '788.57', '2016-01-04 19:49:07', '2016-03-03 19:49:07');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (171, 79524750, '228.07', '2015-08-28 03:24:53', '2015-09-06 03:24:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (359, 79524750, '451.24', '2017-08-27 10:48:51', '2017-09-29 10:48:51');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (427, 79524750, '918.02', '2016-10-02 17:17:10', '2016-10-07 17:17:10');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (182, 79524750, '995.40', '2015-09-15 13:38:44', '2015-09-30 13:38:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (83, 79524750, '840.85', '2018-02-17 00:13:17', '2018-03-26 00:13:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (282, 79524750, '186.36', '2016-02-02 04:22:28', '2016-02-12 04:22:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (414, 79524750, '803.60', '2017-10-05 04:40:30', '2017-11-21 04:40:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (285, 79524750, '345.33', '2016-01-13 10:41:55', '2016-03-12 10:41:55');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (170, 79524750, '855.92', '2016-12-29 16:33:54', '2017-01-24 16:33:54');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (361, 79524750, '378.19', '2016-05-29 14:00:53', '2016-06-10 14:00:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (232, 79524750, '215.98', '2017-11-03 15:33:14', '2017-12-16 15:33:14');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (17, 79524750, '137.31', '2017-11-30 02:45:52', '2017-12-12 02:45:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (217, 79524750, '501.63', '2016-08-23 20:03:29', '2016-10-05 20:03:29');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (214, 79524750, '435.00', '2017-06-30 09:02:31', '2017-07-19 09:02:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (178, 79524750, '722.11', '2015-07-01 06:24:29', '2015-07-07 06:24:29');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (499, 79524750, '686.48', '2017-01-17 05:10:05', '2017-02-10 05:10:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (345, 79524750, '665.86', '2018-01-12 22:47:13', '2018-01-24 22:47:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (163, 79524750, '604.76', '2016-01-10 05:07:06', '2016-02-20 05:07:06');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (316, 79524750, '637.17', '2015-11-29 11:43:46', '2016-01-13 11:43:46');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (191, 79524750, '453.08', '2018-03-25 13:11:14', '2018-05-19 13:11:14');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (237, 79524750, '203.82', '2017-05-22 22:12:36', '2017-06-22 22:12:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (202, 79524750, '713.68', '2016-09-11 23:22:17', '2016-10-02 23:22:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (357, 79524750, '262.05', '2017-09-08 19:00:25', '2017-09-12 19:00:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (112, 79524750, '206.01', '2017-07-30 07:48:36', '2017-08-16 07:48:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (10, 79524750, '895.14', '2015-05-17 04:40:05', '2015-06-28 04:40:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (195, 79524750, '608.77', '2017-05-30 07:22:13', '2017-06-05 07:22:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (292, 79524750, '94.88', '2016-10-03 04:23:32', '2016-10-28 04:23:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (146, 79524750, '943.77', '2016-03-12 19:03:50', '2016-04-23 19:03:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (265, 79524750, '356.91', '2017-08-19 05:04:30', '2017-08-30 05:04:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (191, 79524750, '584.98', '2017-06-09 22:54:58', '2017-07-31 22:54:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (17, 79524750, '913.27', '2015-04-27 11:45:15', '2015-05-25 11:45:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (322, 79524750, '688.21', '2016-01-08 23:26:14', '2016-02-21 23:26:14');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (148, 79524750, '453.77', '2017-04-01 01:48:07', '2017-05-09 01:48:07');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (46, 79524750, '539.27', '2017-08-16 05:46:15', '2017-08-23 05:46:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (400, 79524750, '405.55', '2017-03-16 22:16:36', '2017-05-02 22:16:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (400, 79524750, '996.59', '2017-09-10 03:14:15', '2017-10-01 03:14:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (423, 79524750, '687.64', '2016-08-13 08:39:44', '2016-09-03 08:39:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (220, 79524750, '130.61', '2016-10-01 16:26:44', '2016-10-25 16:26:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (215, 79524750, '95.17', '2016-11-19 07:00:42', '2016-12-10 07:00:42');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (146, 79524750, '818.28', '2017-12-22 03:21:00', '2018-01-24 03:21:00');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (73, 79524750, '284.77', '2016-02-08 22:57:52', '2016-03-27 22:57:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (249, 79524750, '664.20', '2015-10-21 08:53:58', '2015-10-31 08:53:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (275, 79524750, '731.31', '2017-11-17 02:59:40', '2017-12-18 02:59:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (104, 79524750, '283.95', '2016-04-15 00:27:30', '2016-05-30 00:27:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (191, 79524750, '81.99', '2017-09-27 19:32:36', '2017-10-20 19:32:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (47, 79524750, '315.04', '2015-05-30 00:35:25', '2015-07-11 00:35:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (423, 79524750, '330.52', '2016-08-17 23:36:10', '2016-10-07 23:36:10');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (445, 79524750, '665.71', '2016-12-22 23:22:21', '2017-01-04 23:22:21');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (274, 79524750, '391.18', '2015-06-08 16:11:45', '2015-06-24 16:11:45');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (25, 79524750, '253.48', '2015-12-12 03:21:06', '2016-01-16 03:21:06');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (354, 79524750, '682.49', '2015-05-10 18:55:59', '2015-05-16 18:55:59');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (206, 79524750, '985.76', '2016-04-26 03:39:52', '2016-06-18 03:39:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (244, 79524750, '236.36', '2016-04-24 07:50:37', '2016-05-12 07:50:37');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (7, 79524750, '118.56', '2015-10-07 10:28:08', '2015-11-02 10:28:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (310, 79524750, '108.90', '2015-09-06 05:05:09', '2015-09-25 05:05:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (379, 79524750, '622.15', '2016-02-22 02:32:13', '2016-03-12 02:32:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (32, 79524750, '67.70', '2015-10-28 04:15:40', '2015-12-18 04:15:40');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (192, 79524750, '139.50', '2016-11-07 12:08:46', '2016-12-02 12:08:46');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (69, 79524750, '174.74', '2016-05-14 04:09:19', '2016-06-06 04:09:19');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (182, 79524750, '284.66', '2016-10-17 05:25:42', '2016-12-05 05:25:42');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (271, 79524750, '623.54', '2016-07-06 10:47:15', '2016-07-25 10:47:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (357, 79524750, '363.93', '2017-10-09 04:00:01', '2017-11-18 04:00:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (212, 79524750, '465.71', '2015-06-28 23:21:13', '2015-07-29 23:21:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (315, 79524750, '393.70', '2016-12-09 03:58:42', '2016-12-19 03:58:42');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (361, 79524750, '307.44', '2016-03-11 12:10:53', '2016-04-16 12:10:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (431, 79524750, '955.78', '2017-06-27 14:16:23', '2017-07-03 14:16:23');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (168, 79524750, '395.38', '2017-01-03 02:27:32', '2017-02-06 02:27:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (180, 79524750, '290.60', '2016-11-19 20:13:00', '2016-12-06 20:13:00');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (494, 79524750, '266.16', '2016-08-10 15:11:29', '2016-08-28 15:11:29');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (263, 29928702, '514.70', '2017-10-11 23:32:57', '2017-10-15 23:32:57');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (181, 29928702, '66.18', '2016-09-07 21:04:17', '2016-09-10 21:04:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (459, 29928702, '415.45', '2017-02-20 04:27:05', '2017-03-17 04:27:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (148, 29928702, '399.00', '2017-05-15 11:07:27', '2017-07-06 11:07:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (68, 29928702, '735.67', '2016-07-02 16:06:44', '2016-08-18 16:06:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (214, 29928702, '108.76', '2017-09-30 19:37:24', '2017-10-18 19:37:24');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (387, 29928702, '991.55', '2018-05-28 06:22:53', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (49, 29928702, '653.38', '2016-01-22 12:09:44', '2016-02-04 12:09:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (498, 29928702, '801.14', '2017-12-09 16:49:28', '2018-01-14 16:49:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (93, 29928702, '670.29', '2017-06-01 19:37:15', '2017-06-23 19:37:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (436, 29928702, '937.45', '2016-06-17 07:21:21', '2016-07-13 07:21:21');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (479, 29928702, '494.79', '2016-10-15 23:04:09', '2016-10-15 23:04:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (219, 29928702, '814.84', '2015-11-23 03:09:41', '2015-11-23 03:09:41');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (206, 29928702, '746.06', '2016-11-23 04:54:15', '2017-01-05 04:54:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (499, 29928702, '254.51', '2017-06-22 06:24:58', '2017-07-11 06:24:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (124, 29928702, '710.40', '2016-08-10 21:00:05', '2016-08-19 21:00:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (437, 29928702, '889.41', '2015-11-24 20:23:39', '2015-12-03 20:23:39');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (465, 29928702, '894.70', '2016-09-18 19:12:04', '2016-11-04 19:12:04');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (203, 29928702, '401.02', '2017-05-20 02:03:15', '2017-05-29 02:03:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (50, 29928702, '535.26', '2017-02-07 19:55:38', '2017-02-13 19:55:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (16, 29928702, '157.37', '2016-10-07 13:31:27', '2016-12-04 13:31:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (356, 29928702, '363.84', '2017-05-22 13:16:04', '2017-07-09 13:16:04');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (349, 29928702, '77.95', '2016-04-22 12:11:52', '2016-05-03 12:11:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (50, 29928702, '533.30', '2015-12-17 00:29:33', '2016-01-22 00:29:33');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (213, 29928702, '507.09', '2017-10-23 04:25:55', '2017-12-08 04:25:55');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (73, 29928702, '888.55', '2016-11-09 17:10:30', '2016-11-25 17:10:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (402, 29928702, '487.27', '2016-08-29 02:44:13', '2016-09-15 02:44:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (317, 29928702, '257.44', '2015-12-15 12:03:18', '2015-12-18 12:03:18');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (344, 29928702, '559.94', '2017-07-29 11:50:20', '2017-09-05 11:50:20');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (8, 29928702, '953.34', '2017-05-29 10:26:01', '2017-06-13 10:26:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (24, 29928702, '819.03', '2015-09-24 17:57:49', '2015-11-23 17:57:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (93, 29928702, '89.06', '2015-10-02 17:48:09', '2015-10-28 17:48:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (219, 29928702, '283.13', '2016-08-10 09:34:15', '2016-08-26 09:34:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (278, 29928702, '139.73', '2017-01-18 11:41:31', '2017-03-05 11:41:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (181, 29928702, '264.90', '2016-04-27 14:49:56', '2016-06-01 14:49:56');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (133, 29928702, '747.02', '2018-01-10 03:49:43', '2018-01-28 03:49:43');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (287, 29928702, '167.86', '2015-07-07 14:18:36', '2015-08-20 14:18:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (428, 29928702, '454.32', '2015-09-04 08:03:54', '2015-09-10 08:03:54');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (400, 29928702, '786.22', '2015-10-06 14:38:58', '2015-10-13 14:38:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (126, 29928702, '338.02', '2015-04-28 23:32:58', '2015-06-27 23:32:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (114, 29928702, '187.82', '2016-08-10 07:52:58', '2016-08-26 07:52:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (278, 29928702, '332.33', '2017-05-31 22:10:17', '2017-06-27 22:10:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (103, 29928702, '913.53', '2017-09-25 13:13:15', '2017-10-28 13:13:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (263, 29928702, '760.05', '2017-06-12 19:53:35', '2017-06-18 19:53:35');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (39, 29928702, '361.59', '2015-06-14 02:04:13', '2015-08-11 02:04:13');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (70, 29928702, '138.49', '2015-10-16 15:32:16', '2015-10-30 15:32:16');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (15, 29928702, '33.37', '2015-08-16 14:33:29', '2015-10-02 14:33:29');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (496, 29928702, '688.00', '2017-01-18 11:08:30', '2017-03-05 11:08:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (323, 29928702, '602.34', '2016-02-29 03:04:05', '2016-04-20 03:04:05');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (149, 29928702, '644.82', '2017-11-23 22:54:42', '2018-01-02 22:54:42');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (80, 29928702, '83.21', '2017-07-21 22:20:47', '2017-09-04 22:20:47');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (286, 29928702, '93.01', '2017-08-18 08:39:34', '2017-10-01 08:39:34');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (427, 29928702, '934.88', '2017-11-20 08:29:45', '2018-01-16 08:29:45');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (388, 29928702, '400.66', '2015-09-30 01:02:29', '2015-11-03 01:02:29');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (46, 29928702, '449.81', '2016-05-17 19:31:39', '2016-05-30 19:31:39');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (55, 29928702, '198.56', '2016-10-05 02:48:27', '2016-10-14 02:48:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (279, 29928702, '286.31', '2015-08-28 05:14:28', '2015-09-19 05:14:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (400, 29928702, '143.73', '2017-01-06 05:44:30', '2017-03-01 05:44:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (11, 29928702, '427.67', '2017-05-23 05:36:11', '2017-07-01 05:36:11');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (282, 29928702, '583.24', '2017-05-13 04:30:11', '2017-05-31 04:30:11');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (102, 29928702, '332.32', '2015-12-18 08:10:21', '2016-01-13 08:10:21');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (427, 29928702, '362.61', '2018-05-30 04:03:37', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (191, 29928702, '354.16', '2018-01-09 23:51:47', '2018-01-31 23:51:47');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (159, 29928702, '984.62', '2015-06-28 09:00:30', '2015-08-20 09:00:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (223, 29928702, '203.55', '2017-09-15 12:33:55', '2017-10-08 12:33:55');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (429, 29928702, '93.75', '2015-12-13 13:16:45', '2015-12-16 13:16:45');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (217, 29928702, '904.30', '2016-05-03 23:55:46', '2016-05-26 23:55:46');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (403, 29928702, '134.37', '2017-07-15 04:08:31', '2017-07-15 04:08:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (249, 29928702, '20.23', '2017-11-26 19:32:02', '2017-12-25 19:32:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (252, 29928702, '446.16', '2017-06-17 07:05:33', '2017-08-11 07:05:33');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (459, 29928702, '707.37', '2018-05-24 20:51:27', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (315, 29928702, '633.30', '2015-08-20 17:01:02', '2015-09-29 17:01:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (481, 29928702, '833.68', '2015-12-20 03:06:34', '2015-12-25 03:06:34');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (160, 29928702, '970.62', '2015-06-09 11:12:35', '2015-08-06 11:12:35');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (445, 29928702, '186.19', '2017-02-14 04:24:38', '2017-02-21 04:24:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (243, 29928702, '224.28', '2016-11-20 01:05:15', '2016-12-11 01:05:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (101, 29928702, '386.84', '2015-06-08 07:01:12', '2015-06-12 07:01:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (364, 29928702, '447.69', '2016-08-17 02:39:48', '2016-09-10 02:39:48');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (394, 29928702, '993.67', '2017-10-16 14:57:07', '2017-12-08 14:57:07');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (147, 29928702, '820.18', '2017-10-31 12:50:26', '2017-12-10 12:50:26');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (265, 29928702, '539.63', '2015-12-01 09:09:43', '2015-12-09 09:09:43');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (51, 29928702, '724.47', '2017-05-05 11:25:33', '2017-07-01 11:25:33');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (271, 29928702, '201.93', '2016-04-09 19:17:51', '2016-05-03 19:17:51');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (237, 55241214, '736.88', '2016-04-27 15:31:44', '2016-06-23 15:31:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (150, 55241214, '387.11', '2016-11-17 17:04:52', '2016-11-21 17:04:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (388, 55241214, '978.11', '2017-12-06 00:36:53', '2018-01-10 00:36:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (220, 55241214, '99.17', '2017-05-05 03:17:15', '2017-05-16 03:17:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (177, 55241214, '880.72', '2015-12-23 04:12:25', '2016-02-05 04:12:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (1, 55241214, '344.57', '2017-11-08 21:08:10', '2018-01-05 21:08:10');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (231, 55241214, '233.76', '2017-12-14 07:40:50', '2017-12-31 07:40:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (212, 55241214, '231.60', '2015-09-17 18:46:50', '2015-10-07 18:46:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (465, 55241214, '704.32', '2017-09-25 23:18:52', '2017-09-25 23:18:52');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (145, 55241214, '899.60', '2017-01-08 16:43:36', '2017-03-03 16:43:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (58, 55241214, '686.03', '2017-08-19 15:17:18', '2017-10-13 15:17:18');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (206, 55241214, '809.57', '2016-07-15 08:33:53', '2016-09-02 08:33:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (286, 55241214, '359.26', '2015-10-19 12:50:32', '2015-12-15 12:50:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (265, 55241214, '284.93', '2017-07-09 14:38:32', '2017-08-28 14:38:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (216, 55241214, '51.15', '2017-04-27 21:19:12', '2017-05-13 21:19:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (362, 55241214, '426.48', '2017-04-25 06:30:38', '2017-06-08 06:30:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (393, 55241214, '933.27', '2016-01-31 15:11:11', '2016-02-17 15:11:11');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (69, 55241214, '234.52', '2015-05-30 13:23:15', '2015-06-30 13:23:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (431, 55241214, '494.36', '2017-06-20 07:58:43', '2017-08-18 07:58:43');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (263, 55241214, '647.68', '2017-12-31 06:12:28', '2018-02-15 06:12:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (132, 55241214, '511.50', '2015-10-23 05:17:50', '2015-11-05 05:17:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (17, 55241214, '547.13', '2015-08-25 00:01:12', '2015-09-18 00:01:12');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (203, 55241214, '299.57', '2017-03-28 01:18:01', '2017-05-23 01:18:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (127, 55241214, '106.37', '2016-03-09 17:07:27', '2016-03-16 17:07:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (474, 55241214, '734.36', '2015-05-19 02:32:59', '2015-05-26 02:32:59');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (288, 55241214, '400.05', '2016-06-30 23:18:47', '2016-08-09 23:18:47');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (7, 55241214, '226.17', '2017-06-25 22:25:48', '2017-08-06 22:25:48');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (163, 55241214, '315.72', '2017-01-24 13:10:17', '2017-03-25 13:10:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (7, 55241214, '168.95', '2016-01-04 05:11:36', '2016-01-15 05:11:36');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (17, 55241214, '78.72', '2016-04-24 02:59:23', '2016-05-25 02:59:23');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (231, 55241214, '629.21', '2017-12-02 01:33:51', '2017-12-19 01:33:51');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (424, 55241214, '851.60', '2018-05-27 20:43:05', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (8, 55241214, '927.08', '2017-07-08 06:12:24', '2017-09-05 06:12:24');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (381, 55241214, '840.71', '2017-09-28 03:08:22', '2017-11-22 03:08:22');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (16, 55241214, '297.37', '2017-04-05 20:47:08', '2017-04-08 20:47:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (439, 55241214, '975.51', '2015-11-01 06:52:56', '2015-12-27 06:52:56');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (355, 55241214, '954.74', '2018-05-28 10:00:28', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (309, 55241214, '449.36', '2017-10-01 14:12:55', '2017-10-22 14:12:55');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (203, 55241214, '721.64', '2017-12-15 21:16:07', '2018-02-09 21:16:07');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (348, 55241214, '802.05', '2017-02-05 03:09:26', '2017-03-20 03:09:26');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (382, 55241214, '890.12', '2018-01-02 06:37:11', '2018-02-17 06:37:11');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (445, 55241214, '911.06', '2016-02-22 10:57:25', '2016-04-13 10:57:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (194, 55241214, '304.75', '2017-12-05 04:23:24', '2017-12-22 04:23:24');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (206, 55241214, '685.98', '2015-10-31 23:48:17', '2015-11-11 23:48:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (426, 55241214, '577.12', '2018-03-14 10:22:29', '2018-03-20 10:22:29');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (400, 55241214, '53.52', '2016-09-24 00:35:28', '2016-10-03 00:35:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (58, 41235675, '791.76', '2017-11-22 02:41:58', '2018-01-08 02:41:58');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (428, 41235675, '795.31', '2015-06-29 05:52:35', '2015-08-17 05:52:35');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (494, 41235675, '666.28', '2017-12-18 22:16:44', '2018-02-12 22:16:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (412, 41235675, '69.90', '2015-11-18 06:14:53', '2016-01-14 06:14:53');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (216, 41235675, '364.72', '2017-10-25 02:58:34', '2017-10-25 02:58:34');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (273, 41235675, '844.34', '2016-11-24 04:01:27', '2017-01-09 04:01:27');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (355, 41235675, '141.44', '2017-01-07 18:36:38', '2017-02-25 18:36:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (271, 41235675, '472.10', '2018-02-03 04:19:37', '2018-02-11 04:19:37');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (210, 41235675, '730.91', '2017-10-05 15:23:51', '2017-10-20 15:23:51');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (289, 41235675, '164.81', '2015-09-06 06:23:57', '2015-10-29 06:23:57');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (231, 41235675, '954.42', '2017-05-07 00:04:54', '2017-05-29 00:04:54');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (424, 41235675, '171.98', '2017-10-31 10:34:08', '2017-10-31 10:34:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (468, 41235675, '185.82', '2017-04-22 15:27:03', '2017-05-06 15:27:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (404, 41235675, '637.83', '2018-05-29 05:50:11', null);
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (10, 41235675, '692.61', '2016-02-11 17:19:07', '2016-02-15 17:19:07');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (50, 41235675, '809.72', '2018-03-27 18:58:10', '2018-03-30 18:58:10');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (286, 41235675, '753.22', '2017-02-20 03:09:31', '2017-04-17 03:09:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (389, 41235675, '475.93', '2017-04-19 03:28:21', '2017-05-18 03:28:21');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (20, 41235675, '923.77', '2016-08-21 19:29:49', '2016-09-16 19:29:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (332, 41235675, '444.13', '2015-05-03 13:00:32', '2015-06-11 13:00:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (80, 41235675, '566.11', '2016-02-26 12:18:56', '2016-04-23 12:18:56');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (246, 41235675, '889.60', '2016-08-25 18:52:25', '2016-09-30 18:52:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (74, 41235675, '940.60', '2017-05-24 19:56:35', '2017-07-14 19:56:35');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (7, 41235675, '401.29', '2017-11-13 04:44:51', '2017-11-26 04:44:51');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (346, 41235675, '863.73', '2016-03-06 17:32:09', '2016-04-03 17:32:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (247, 41235675, '72.21', '2017-04-12 15:07:50', '2017-04-19 15:07:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (345, 41235675, '153.56', '2015-06-29 00:26:57', '2015-07-18 00:26:57');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (159, 41235675, '772.61', '2016-06-13 06:04:06', '2016-07-25 06:04:06');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (52, 41235675, '960.88', '2015-05-14 16:11:09', '2015-06-23 16:11:09');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (117, 41235675, '166.65', '2017-09-04 07:12:59', '2017-10-28 07:12:59');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (55, 41235675, '421.48', '2017-04-22 17:07:25', '2017-04-27 17:07:25');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (121, 41235675, '186.00', '2015-04-26 02:51:02', '2015-05-26 02:51:02');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (30, 41235675, '812.48', '2017-07-01 13:07:08', '2017-07-24 13:07:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (80, 41235675, '25.63', '2016-08-07 04:33:21', '2016-08-10 04:33:21');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (25, 41235675, '457.32', '2015-09-08 01:03:01', '2015-09-08 01:03:01');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (2, 41235675, '206.57', '2017-10-28 04:33:49', '2017-11-23 04:33:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (101, 41235675, '432.70', '2015-09-09 16:23:23', '2015-10-29 16:23:23');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (210, 85601262, '200.45', '2017-07-24 04:39:15', '2017-09-03 04:39:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (248, 85601262, '53.21', '2017-12-17 09:30:38', '2018-02-08 09:30:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (459, 85601262, '587.18', '2017-06-10 13:01:28', '2017-06-22 13:01:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (51, 85601262, '87.30', '2015-07-26 13:38:18', '2015-09-07 13:38:18');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (302, 85601262, '934.55', '2017-09-23 15:32:32', '2017-10-03 15:32:32');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (401, 85601262, '38.37', '2017-05-05 13:16:45', '2017-05-29 13:16:45');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (423, 85601262, '298.10', '2017-12-12 17:26:49', '2018-01-11 17:26:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (491, 85601262, '867.71', '2015-11-30 12:51:22', '2015-12-11 12:51:22');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (237, 85601262, '167.81', '2017-11-23 04:42:57', '2017-12-06 04:42:57');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (207, 85601262, '350.61', '2015-11-30 10:27:03', '2015-12-28 10:27:03');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (32, 85601262, '734.84', '2017-11-21 15:02:44', '2017-12-17 15:02:44');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (236, 85601262, '358.77', '2015-07-12 12:49:56', '2015-07-16 12:49:56');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (465, 85601262, '986.27', '2018-01-08 22:51:15', '2018-02-01 22:51:15');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (248, 79524750, '757.47', '2015-12-31 17:24:38', '2016-01-21 17:24:38');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (222, 79524750, '985.40', '2016-10-16 18:57:39', '2016-10-31 18:57:39');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (220, 79524750, '286.08', '2016-12-24 02:41:50', '2017-01-08 02:41:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (445, 79524750, '607.11', '2016-10-20 14:27:17', '2016-12-11 14:27:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (118, 79524750, '109.61', '2017-10-10 11:48:08', '2017-10-30 11:48:08');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (182, 79524750, '553.28', '2015-09-13 18:48:49', '2015-11-01 18:48:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (346, 79524750, '446.67', '2016-02-21 08:15:17', '2016-03-12 08:15:17');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (104, 79524750, '359.53', '2016-05-17 18:47:31', '2016-07-07 18:47:31');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (149, 29928702, '348.39', '2018-02-06 15:49:07', '2018-03-03 15:49:07');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (212, 29928702, '119.25', '2016-12-26 21:39:50', '2017-01-14 21:39:50');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (331, 29928702, '850.09', '2017-11-08 15:47:49', '2017-12-18 15:47:49');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (128, 29928702, '254.41', '2016-11-12 08:36:30', '2016-12-13 08:36:30');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (265, 29928702, '885.25', '2016-04-01 08:39:45', '2016-05-10 08:39:45');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (403, 29928702, '805.78', '2018-01-12 16:00:28', '2018-02-13 16:00:28');
insert into service_history (car_warehouse_id, tech_id, cost, start_date, end_date) values (401, 29928702, '156.10', '2016-10-16 20:36:21', '2016-12-09 20:36:21');


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

