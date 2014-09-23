create table payroll(
	payroll_id Integer(6) primary key not null AUTO_INCREMENT,
	employee_id Integer(6) not null foreign key,
	project_id Integer(6) not null foreign key,
	rate double(6) not null,
	working_hours Integer(1) not null,
	amount double(6) not null,
	);