<<<<<<< HEAD
drop database jcarl;
=======
>>>>>>> 527707207b2c1415676ccaf055e5d7b4c8e42207
create database jcarl;
	use jcarl;

	create table project(
		project_id Integer(6) primary key not null AUTO_INCREMENT,
		project_name Varchar(60) not null,
		start_date Date not null,
		end_date Date not null,
		client Varchar(50) not null
		);
		
	create table employee(
		employee_id Integer(6) primary key not null AUTO_INCREMENT,
		employee_name Varchar(60) not null,
		rate DOUBLE(10,2) not null
		);
		
	create table purchase_order(
		po_id Integer(6) primary key not null AUTO_INCREMENT,
		project_id Integer(6) not null,
		date_issued Date not null,
		total_price Double(10,2) not null,
		Foreign key (project_id) references project(project_id) on delete cascade on update restrict
		);
		
	create table supplier(
		supplier_id Integer(6) primary key not null AUTO_INCREMENT,
		supplier_name Varchar(60) not null,
		category Varchar(50) not null
		);
		
	create table material(
		material_id Integer(6) primary key not null AUTO_INCREMENT,
<<<<<<< HEAD
		supplier_id Integer(6),
		material_name Varchar(50) not null,
		quantity Integer(5) not null,
=======
		supplier_id Integer(6) not null,
		material_name Varchar(50) not null,
		quantity Integer(5) not null,
		in_warehouse Boolean not null,
>>>>>>> 527707207b2c1415676ccaf055e5d7b4c8e42207
		price Double(10,2) not null,
		foreign key (supplier_id) references supplier(supplier_id) on delete cascade on update restrict
		);
		
<<<<<<< HEAD
		create table for_use(
		use_id Integer(6) primary key not null AUTO_INCREMENT,
		project_id Integer(6) not null,
		material_id Integer(6) not null,
		quantity Integer(5) not null,
		foreign key (project_id) references project(project_id) on delete cascade on update restrict,
		foreign key (material_id) references material(material_id) on delete cascade on update restrict
		);
		
=======
>>>>>>> 527707207b2c1415676ccaf055e5d7b4c8e42207
	create table payroll(
		payroll_id Integer(6) primary key not null AUTO_INCREMENT,
		employee_id Integer(6) not null,
		project_id Integer(6) not null,
		mon Integer(2),
		tues Integer(2),
		wed Integer(2),
		thurs Integer(2),
		fri Integer(2),
		sat Integer(2),
		sun Integer(2),
		Foreign key (employee_id) references employee(employee_id) on delete cascade on update restrict,
		Foreign key (project_id) references project(project_id) on delete cascade on update restrict
<<<<<<< HEAD
		);
=======
		);
	
	
>>>>>>> 527707207b2c1415676ccaf055e5d7b4c8e42207
