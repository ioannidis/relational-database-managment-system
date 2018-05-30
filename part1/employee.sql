DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
  afm NUMERIC(8,0) NOT NULL,
  role_id VARCHAR(4) REFERENCES roles(id),
  first_name VARCHAR(60) NOT NULL ,
  last_name VARCHAR(60) NOT NULL ,
  email VARCHAR(60) NOT NULL UNIQUE,

  PRIMARY KEY (afm)
);

DELETE FROM employee;

insert into employee (afm, role_id, first_name, last_name, email) values (85601262, 'tech', 'Livy', 'Collaton', 'lcollaton0@chicagotribune.com');
insert into employee (afm, role_id, first_name, last_name, email) values (14304251, 'sls', 'Elroy', 'Kitto', 'ekitto1@toplist.cz');
insert into employee (afm, role_id, first_name, last_name, email) values (55241214, 'tech', 'Stuart', 'Clack', 'sclack2@bizjournals.com');
insert into employee (afm, role_id, first_name, last_name, email) values (41235675, 'tech', 'Rikki', 'Murrigan', 'rmurrigan3@google.de');
insert into employee (afm, role_id, first_name, last_name, email) values (50460430, 'sls', 'Giacobo', 'Tarply', 'gtarply4@intel.com');
insert into employee (afm, role_id, first_name, last_name, email) values (79524750, 'tech', 'Evita', 'Molesworth', 'emolesworth5@cnet.com');
insert into employee (afm, role_id, first_name, last_name, email) values (53373880, 'sls', 'Dale', 'Mellor', 'dmellor6@cmu.edu');
insert into employee (afm, role_id, first_name, last_name, email) values (75093387, 'sls', 'Ronny', 'Dicken', 'rdicken7@admin.ch');
insert into employee (afm, role_id, first_name, last_name, email) values (16047979, 'sls', 'Friedrick', 'Petrik', 'fpetrik8@reference.com');
insert into employee (afm, role_id, first_name, last_name, email) values (17983590, 'sls', 'Garrek', 'Nevinson', 'gnevinson9@va.gov');
insert into employee (afm, role_id, first_name, last_name, email) values (29928702, 'tech', 'Augustine', 'Kennedy', 'akennedya@wikipedia.org');
insert into employee (afm, role_id, first_name, last_name, email) values (39122247, 'sls', 'Maddie', 'Wisher', 'mwisherb@comcast.net');
