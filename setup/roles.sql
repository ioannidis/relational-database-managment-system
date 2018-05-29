DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
  id VARCHAR(4) NOT NULL ,
  title VARCHAR(40) NOT NULL ,

  PRIMARY KEY (id)
);

DELETE FROM roles;

insert into roles (id, title) values ('sls', 'salesman');
insert into roles (id, title) values ('tech', 'technician');