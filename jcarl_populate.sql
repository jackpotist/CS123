insert into project(project_name, start_date, end_date, client) values
("JM's New Dorm", "2011-01-01", "2012-01-01", "Captain Board Shorts"),
("Pia's New Dancing Place Whatever", "2014-08-09", "2015-02-14", "Captain Board Shorts"),
("Javy's Old Drum Place Thingy", "2008-01-05"," 2010-12-12", "Lolo mo"),
("Pet House", "2013-12-01", "2014-12-01", "Captain Board Shorts"),
("McDo Caribbean", "2014-10-11", "2014-10-15", "McDo"),
("Araneta Park", "2013-12-12", "2014-04-14", "Smart"),
("London Bridge in Paranaque", "2012-12-21", "2013-12-21", "Annabelle");
insert into purchase_order(project_id, date_issued, total_price) values
(000001, "2011-01-01", 60000.50),
(000002, "2014-05-21", 50000.00),
(000003, "2008-01-06", 10.00),
(000004, "2013-12-02", 600.00),
(000005, "2013-12-20", 500000.00);
insert into supplier(supplier_name, category) values
("Warehouse","Current Stocks"),
("Captain Board Shorts' Supplies!", "Board Shorts Stuff"),
("Gamit ng Lolo mo", "Things"),
("McAfee's Metal Materials", "Metal"),
("Lolo's Pake", "Pake"),
("Karinderya", "Food Stuff");
insert into material(supplier_id,material_name, quantity, price) values
(2,"Board Shorts", 50, 10000.00), 
(3,"Antique Glass", 20, 5000.00),
(4,"Metal Plastic Bag", 30, 20.00),
(5,"Pake", 5, 0.99),
(6,"Fish Bones",10, 15.00),
(6, "Chicarong Bakal", 50, 55.99),
(2, "Trunks", 20, 500.00),
(1, "Sound System", 2, 50000.00),
(1, "Metal Plates", 5, 4000.00),
(1, "Cabinet", 10, 3000.00);
insert into employee(employee_name, rate) values
("Mang Jose", 1.00),
("Don Romantiko", 5000.00),
("Hari ng Sablay", 3000.00),
("Marco Francisco DeMargue", 200.00),
("FishNChips", 100.00),
("Michael Jordan", 1005.00),
("Don Romantiko", 20.00),
("George Washing", 600.50);
insert into payroll(employee_id, project_id) values
(1, 1),
(2, 2),
(3,3),
(4,4),
(5,4),
(5,1),
(6,5),
(7,7),
(1,6),
(8,2);
insert into for_use(project_id, material_id, quantity) values
(1,2,5),
(4,1,10),
(5,4,5),
(6,5,2),
(2,3,5),
(4,4,2),
(4,7,1),
(7,2,1);