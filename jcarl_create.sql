drop database jcarl;
create database jcarl;
	use jcarl;

	create table if not exists project(
		project_id Integer(6) primary key not null AUTO_INCREMENT,
		project_name Varchar(60) not null,
		start_date Date not null,
		end_date Date not null,
		client Varchar(50) not null
		);
		
	create table if not exists employee(
		employee_id Integer(6) primary key not null AUTO_INCREMENT,
		employee_name Varchar(60) not null,
		rate DOUBLE(10,2) not null
		);
		
	create table if not exists supplier(
		supplier_id Integer(6) primary key not null AUTO_INCREMENT,
		supplier_name Varchar(60) not null,
		category Varchar(50) not null
		);
		
	create table if not exists material(
		material_id Integer(6) primary key not null AUTO_INCREMENT,
		supplier_id Integer(6),
		material_name Varchar(50) not null,
		quantity Integer(5) not null,
		price Double(10,2) not null,
		foreign key (supplier_id) references supplier(supplier_id) on delete cascade on update restrict
		);
		
		create table if not exists for_use(
		use_id Integer(6) primary key not null AUTO_INCREMENT,
		project_id Integer(6) not null,
		material_id Integer(6) not null,
		quantity Integer(5) not null,
		foreign key (project_id) references project(project_id) on delete cascade on update restrict,
		foreign key (material_id) references material(material_id) on delete cascade on update restrict
		);
		
	create table if not exists purchase_order(
		po_id Integer(6) primary key not null AUTO_INCREMENT,
		project_id Integer(6) not null,
		supplier_id Integer(6) not null,
		name VARCHAR(60) not null, 
		date_issued Date not null,
		Foreign key (project_id) references project(project_id) on delete cascade on update restrict,
		foreign key (supplier_id) references supplier(supplier_id) on delete cascade on update restrict
		);
		
	create table if not exists payroll(
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
		);