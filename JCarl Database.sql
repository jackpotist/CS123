DROP database jcarl;
CREATE database jcarl;
USE jcarl;

CREATE TABLE IF NOT EXISTS suppliers
(supplier_id INTEGER(6) NOT NULL,
 supplier_name VARCHAR(254) NOT NULL,
 category VARCHAR(254) NOT NULL,
 CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id));
 
CREATE TABLE IF NOT EXISTS employees
(employee_id INTEGER(6) NOT NULL,
 employee_name VARCHAR(254) NOT NULL,
 pay_Rate INTEGER(8) NOT NULL,
 CONSTRAINT employees_pk PRIMARY KEY (employee_id));

CREATE TABLE IF NOT EXISTS materials
(material_id INTEGER(6) NOT NULL,
 material_name VARCHAR(254) NOT NULL,
 quantity INTEGER(45) NOT NULL,
 price DOUBLE(10,4) NOT NULL,
 CONSTRAINT materials_pk PRIMARY KEY (material_id));
 
CREATE TABLE IF NOT EXISTS po
(po_id INTEGER(6) NOT NULL,
 project_name VARCHAR(254) NOT NULL,
 date_issued INTEGER(8) NOT NULL,
 total_price DOUBLE(10,4) NOT NULL,
 CONSTRAINT po_pk PRIMARY KEY (po_id),
 CONSTRAINT po_fk FOREIGN KEY (project_name) REFERENCES projects(project_name));
 
CREATE TABLE IF NOT EXISTS projects
(project_id INTEGER(6) NOT NULL,
 project_name VARCHAR(254) NOT NULL,
 start_date INTEGER(8) NOT NULL,
 end_date INTEGER(8) NOT NULL,
 client VARCHAR(254) NOT NULL,
 CONSTRAINT projects_pk PRIMARY KEY (project_id));