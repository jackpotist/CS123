DROP database jcarl;
CREATE database jcarl;
USE jcarl;

CREATE TABLE IF NOT EXISTS suppliers
(supplier_id INTEGER(6) NOT NULL,
 supplier_name VARCHAR(254) NOT NULL,
 category VARCHAR(254) NOT NULL,
 CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id));
 
CREATE TABLE IF NOT EXISTS employee
(employee_id INTEGER(6) NOT NULL,
 employee_name VARCHAR(254) NOT NULL,
 pay_Rate INTEGER(8) NOT NULL,
 CONSTRAINT employee_pk PRIMARY KEY (employee_id));

CREATE TABLE IF NOT EXISTS materials
(material_id INTEGER(6) NOT NULL,
 material_name VARCHAR(254) NOT NULL,
 quantity INTEGER(45) NOT NULL,
 price DOUBLE(10,4) NOT NULL,
 CONSTRAINT materials_pk PRIMARY KEY (material_id));