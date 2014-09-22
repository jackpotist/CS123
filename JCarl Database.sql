DROP database jcarl;
CREATE database jcarl;
USE jcarl;

CREATE TABLE IF NOT EXISTS suppliers
(supplier_id INTEGER(6) NOT NULL,
 supplier_name VARCHAR(254) NOT NULL,
 category VARCHAR(254) NOT NULL,
 CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id));