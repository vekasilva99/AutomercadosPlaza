delete from plazas.store;
delete from plazas.warehouse;
delete from plazas.category;
delete from plazas.product;
delete from plazas.client;
delete from plazas.affiliate;
delete from plazas.employee;
delete from plazas.bank;
delete from plazas.cost;
delete from plazas.shelf;
delete from plazas.shelf_quantity;
delete from plazas.stored_in;

insert into plazas.store
    (id_store, name, max_capacity, openingHour, closingHour)
values
    (1, 'Plaza Las Mercedes', 100, '9:00:00', '20:00:00');
insert into plazas.store
    (id_store, name, max_capacity, openingHour, closingHour)
values
    (2, 'Plaza Los Naranjos', 100, '9:00:00', '20:00:00');

insert into plazas.warehouse
    (id_warehouse, max_capacity, id_store)
values
    (1, 5000, 1);
insert into plazas.warehouse
    (id_warehouse, max_capacity, id_store)
values
    (2, 5000, 2);

insert into plazas.category
    (name)
values
    ('Cleaning');
insert into plazas.category
    (name)
values
    ('Alcohol');
insert into plazas.category
    (name)
values
    ('Beverages');
insert into plazas.category
    (name)
values
    ('Processed');
insert into plazas.category
    (name)
values
    ('Vegetables');
insert into plazas.category
    (name)
values
    ('Frozen');
insert into plazas.category
    (name)
values
    ('Seeds');
insert into plazas.category
    (name)
values
    ('Spices and Sauces');
insert into plazas.category
    (name)
values
    ('Kitchen');
insert into plazas.category
    (name)
values
    ('Fruits');
insert into plazas.category
    (name)
values
    ('Meat');
insert into plazas.category
    (name)
values
    ('Sweets');

insert into plazas.product
    (id_category, name)
values
    (1, 'Ecolab - Balanced Fusion');
insert into plazas.product
    (id_category, name)
values
    (2, 'Wine - Casablanca Valley');
insert into plazas.product
    (id_category, name)
values
    (3, 'Tea - Vanilla Chai');
insert into plazas.product
    (id_category, name)
values
    (4, 'Dried Peach');
insert into plazas.product
    (id_category, name)
values
    (8, 'Sauce - Plum');
insert into plazas.product
    (id_category, name)
values
    (2, 'Wine - White, Riesling, Henry Of');
insert into plazas.product
    (id_category, name)
values
    (5, 'Potatoes - Yukon Gold 5 Oz');
insert into plazas.product
    (id_category, name)
values
    (6, 'Pasta - Lasagne, Fresh');
insert into plazas.product
    (id_category, name)
values
    (5, 'Eggplant Oriental');
insert into plazas.product
    (id_category, name)
values
    (7, 'Carroway Seed');
insert into plazas.product
    (id_category, name)
values
    (4, 'Dip - Tapenade');
insert into plazas.product
    (id_category, name)
values
    (8, 'Pepper - Cayenne');
insert into plazas.product
    (id_category, name)
values
    (9, 'Steam Pan - Half Size Deep');
insert into plazas.product
    (id_category, name)
values
    (6, 'Raspberries - Frozen');
insert into plazas.product
    (id_category, name)
values
    (4, 'Sauerkraut');
insert into plazas.product
    (id_category, name)
values
    (8, 'Tobasco Sauce');
insert into plazas.product
    (id_category, name)
values
    (8, 'Sauce - Cranberry');
insert into plazas.product
    (id_category, name)
values
    (10, 'Apples - Sliced / Wedge');
insert into plazas.product
    (id_category, name)
values
    (4, 'Muffin - Mix - Strawberry Rhubarb');
insert into plazas.product
    (id_category, name)
values
    (10, 'Tomatoes - Vine Ripe, Yellow');
insert into plazas.product
    (id_category, name)
values
    (2, 'Wine - Bourgogne 2002, La');
insert into plazas.product
    (id_category, name)
values
    (3, 'Energy Drink');
insert into plazas.product
    (id_category, name)
values
    (9, 'Huck Towels White');
insert into plazas.product
    (id_category, name)
values
    (3, 'Juice - Cranberry 284ml');
insert into plazas.product
    (id_category, name)
values
    (11, 'Quail - Whole, Boneless');
insert into plazas.product
    (id_category, name)
values
    (11, 'Cornish Hen');
insert into plazas.product
    (id_category, name)
values
    (3, 'Myers Planters Punch');
insert into plazas.product
    (id_category, name)
values
    (2, 'Rum - Coconut, Malibu');
insert into plazas.product
    (id_category, name)
values
    (5, 'Pepper - Jalapeno');
insert into plazas.product
    (id_category, name)
values
    (12, 'Godiva White Chocolate');
insert into plazas.product
    (id_category, name)
values
    (4, 'Graham Cracker Mix');
insert into plazas.product
    (id_category, name)
values
    (11, 'Barramundi');
insert into plazas.product
    (id_category, name)
values
    (8, 'Ginger - Ground');
insert into plazas.product
    (id_category, name)
values
    (4, 'Flour - Pastry');
insert into plazas.product
    (id_category, name)
values
    (12, 'Mousse - Passion Fruit');
insert into plazas.product
    (id_category, name)
values
    (2, 'Wine - White, Riesling, Semi - Dry');
insert into plazas.product
    (id_category, name)
values
    (2, 'Beer - Alexander Kieths, Pale Ale');
insert into plazas.product
    (id_category, name)
values
    (2, 'Wine - Marlbourough Sauv Blanc');
insert into plazas.product
    (id_category, name)
values
    (3, 'Tea - Black Currant');
insert into plazas.product
    (id_category, name)
values
    (11, 'Squid - U - 10 Thailand');
insert into plazas.product
    (id_category, name)
values
    (11, 'Fish - Halibut, Cold Smoked');
insert into plazas.product
    (id_category, name)
values
    (10, 'Tamarillo');
insert into plazas.product
    (id_category, name)
values
    (11, 'Shrimp - 16/20, Iqf, Shell On');
insert into plazas.product
    (id_category, name)
values
    (10, 'Kaffir Lime Leaves');
insert into plazas.product
    (id_category, name)
values
    (4, 'Chinese Foods - Pepper Beef');
insert into plazas.product
    (id_category, name)
values
    (5, 'Truffle - Whole Black Peeled');
insert into plazas.product
    (id_category, name)
values
    (4, 'Bread - Raisin');
insert into plazas.product
    (id_category, name)
values
    (11, 'Muskox - French Rack');
insert into plazas.product
    (id_category, name)
values
    (11, 'Lamb - Pieces, Diced');
insert into plazas.product
    (id_category, name)
values
    (9, 'Table Cloth 91x91 Colour');

insert into plazas.client
    (id_client, gender)
values
    ('9058501784', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('0126596269', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('8546067011', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('9864733194', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('4436029351', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('4033955726', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('0644373026', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('6504134303', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('0438274433', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('0576680656', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('9672123138', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('1431210909', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('4653606296', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('6370656395', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('1694797125', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('6046818861', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('1518594062', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('0195492534', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('2104312923', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('2920657274', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('8123444762', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('6138668935', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('7829776721', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('4220955508', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('9988696421', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('5702257224', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('0561699607', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('1623859433', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('0031653916', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('9311535251', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('5654598543', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('9870217225', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('1386711385', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('5024684415', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('4436430102', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('4960827506', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('4265198470', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('1694613356', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('9137143871', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('3407422559', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('3372670842', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('0678672196', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('3384110593', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('4783958763', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('0864754802', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('2146922365', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('7524350506', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('1220864024', 'M');
insert into plazas.client
    (id_client, gender)
values
    ('4704507300', 'F');
insert into plazas.client
    (id_client, gender)
values
    ('2993035126', 'M');

insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('19-6173062', 'Andonis Placstone', 16344459, 11228322, 'M', 1);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('10-4336659', 'Isidor Pedrocco', 18550101, 18195734, 'M', 2);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('18-8720487', 'Rae Learmount', 23250017, 16747597, 'F', 1);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('24-3903943', 'Klarika O''Sheils', 24883692, 12139324, 'F', 1);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('51-6356429', 'Dante Skirvin', 22573407, 13041505, 'M', 1);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('72-6927082', 'Traver Pentlow', 21962255, 18855474, 'M', 2);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('63-9830056', 'Brigit Hartmann', 17948489, 11715452, 'F', 2);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('73-7447647', 'Annmaria Stocky', 20872567, 15152117, 'F', 2);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('37-9127760', 'Myra Weavill', 23753756, 17247320, 'F', 1);
insert into plazas.employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('64-4832094', 'Hewett Porcas', 14276155, 19282261, 'M', 2);

insert into plazas.bank
    (name)
values
    ('Banesco');
insert into plazas.bank
    (name)
values
    ('Mercantil');
insert into plazas.bank
    (name)
values
    ('Provincial');

insert into plazas.cost
    (id_product, date, cost)
values
    (1, '2020-06-01', 1086);
insert into plazas.cost
    (id_product, date, cost)
values
    (2, '2020-06-01', 1651);
insert into plazas.cost
    (id_product, date, cost)
values
    (3, '2020-06-01', 1473);
insert into plazas.cost
    (id_product, date, cost)
values
    (4, '2020-06-01', 1316);
insert into plazas.cost
    (id_product, date, cost)
values
    (5, '2020-06-01', 1181);
insert into plazas.cost
    (id_product, date, cost)
values
    (6, '2020-06-01', 1525);
insert into plazas.cost
    (id_product, date, cost)
values
    (7, '2020-06-01', 1756);
insert into plazas.cost
    (id_product, date, cost)
values
    (8, '2020-06-01', 1490);
insert into plazas.cost
    (id_product, date, cost)
values
    (9, '2020-06-01', 1196);
insert into plazas.cost
    (id_product, date, cost)
values
    (10, '2020-06-01', 1367);
insert into plazas.cost
    (id_product, date, cost)
values
    (11, '2020-06-01', 1669);
insert into plazas.cost
    (id_product, date, cost)
values
    (12, '2020-06-01', 1126);
insert into plazas.cost
    (id_product, date, cost)
values
    (13, '2020-06-01', 1939);
insert into plazas.cost
    (id_product, date, cost)
values
    (14, '2020-06-01', 1878);
insert into plazas.cost
    (id_product, date, cost)
values
    (15, '2020-06-01', 1010);
insert into plazas.cost
    (id_product, date, cost)
values
    (16, '2020-06-01', 1606);
insert into plazas.cost
    (id_product, date, cost)
values
    (17, '2020-06-01', 1979);
insert into plazas.cost
    (id_product, date, cost)
values
    (18, '2020-06-01', 1571);
insert into plazas.cost
    (id_product, date, cost)
values
    (19, '2020-06-01', 1702);
insert into plazas.cost
    (id_product, date, cost)
values
    (20, '2020-06-01', 1129);
insert into plazas.cost
    (id_product, date, cost)
values
    (21, '2020-06-01', 1415);
insert into plazas.cost
    (id_product, date, cost)
values
    (22, '2020-06-01', 1767);
insert into plazas.cost
    (id_product, date, cost)
values
    (23, '2020-06-01', 1913);
insert into plazas.cost
    (id_product, date, cost)
values
    (24, '2020-06-01', 1835);
insert into plazas.cost
    (id_product, date, cost)
values
    (25, '2020-06-01', 1945);
insert into plazas.cost
    (id_product, date, cost)
values
    (26, '2020-06-01', 1011);
insert into plazas.cost
    (id_product, date, cost)
values
    (27, '2020-06-01', 1662);
insert into plazas.cost
    (id_product, date, cost)
values
    (28, '2020-06-01', 1219);
insert into plazas.cost
    (id_product, date, cost)
values
    (29, '2020-06-01', 1431);
insert into plazas.cost
    (id_product, date, cost)
values
    (30, '2020-06-01', 1944);
insert into plazas.cost
    (id_product, date, cost)
values
    (31, '2020-06-01', 1838);
insert into plazas.cost
    (id_product, date, cost)
values
    (32, '2020-06-01', 1727);
insert into plazas.cost
    (id_product, date, cost)
values
    (33, '2020-06-01', 1795);
insert into plazas.cost
    (id_product, date, cost)
values
    (34, '2020-06-01', 1909);
insert into plazas.cost
    (id_product, date, cost)
values
    (35, '2020-06-01', 1210);
insert into plazas.cost
    (id_product, date, cost)
values
    (36, '2020-06-01', 1916);
insert into plazas.cost
    (id_product, date, cost)
values
    (37, '2020-06-01', 1958);
insert into plazas.cost
    (id_product, date, cost)
values
    (38, '2020-06-01', 1425);
insert into plazas.cost
    (id_product, date, cost)
values
    (39, '2020-06-01', 1473);
insert into plazas.cost
    (id_product, date, cost)
values
    (40, '2020-06-01', 1422);
insert into plazas.cost
    (id_product, date, cost)
values
    (41, '2020-06-01', 1071);
insert into plazas.cost
    (id_product, date, cost)
values
    (42, '2020-06-01', 1313);
insert into plazas.cost
    (id_product, date, cost)
values
    (43, '2020-06-01', 1902);
insert into plazas.cost
    (id_product, date, cost)
values
    (44, '2020-06-01', 1449);
insert into plazas.cost
    (id_product, date, cost)
values
    (45, '2020-06-01', 1543);
insert into plazas.cost
    (id_product, date, cost)
values
    (46, '2020-06-01', 1839);
insert into plazas.cost
    (id_product, date, cost)
values
    (47, '2020-06-01', 1097);
insert into plazas.cost
    (id_product, date, cost)
values
    (48, '2020-06-01', 1864);
insert into plazas.cost
    (id_product, date, cost)
values
    (49, '2020-06-01', 1592);
insert into plazas.cost
    (id_product, date, cost)
values
    (50, '2020-06-01', 1217);
insert into plazas.cost
    (id_product, date, cost)
values
    (1, '2020-06-12', 2200);
insert into plazas.cost
    (id_product, date, cost)
values
    (2, '2020-06-08', 2597);
insert into plazas.cost
    (id_product, date, cost)
values
    (3, '2020-06-11', 2984);
insert into plazas.cost
    (id_product, date, cost)
values
    (4, '2020-06-10', 2780);
insert into plazas.cost
    (id_product, date, cost)
values
    (5, '2020-06-12', 2438);
insert into plazas.cost
    (id_product, date, cost)
values
    (6, '2020-06-08', 2506);
insert into plazas.cost
    (id_product, date, cost)
values
    (7, '2020-06-10', 2020);
insert into plazas.cost
    (id_product, date, cost)
values
    (8, '2020-06-11', 2005);
insert into plazas.cost
    (id_product, date, cost)
values
    (9, '2020-06-11', 2230);
insert into plazas.cost
    (id_product, date, cost)
values
    (10, '2020-06-13', 2851);
insert into plazas.cost
    (id_product, date, cost)
values
    (11, '2020-06-10', 2182);
insert into plazas.cost
    (id_product, date, cost)
values
    (12, '2020-06-08', 2838);
insert into plazas.cost
    (id_product, date, cost)
values
    (13, '2020-06-09', 2630);
insert into plazas.cost
    (id_product, date, cost)
values
    (14, '2020-06-12', 2251);
insert into plazas.cost
    (id_product, date, cost)
values
    (15, '2020-06-09', 2037);
insert into plazas.cost
    (id_product, date, cost)
values
    (16, '2020-06-11', 2472);
insert into plazas.cost
    (id_product, date, cost)
values
    (17, '2020-06-12', 2210);
insert into plazas.cost
    (id_product, date, cost)
values
    (18, '2020-06-12', 2920);
insert into plazas.cost
    (id_product, date, cost)
values
    (19, '2020-06-12', 2337);
insert into plazas.cost
    (id_product, date, cost)
values
    (20, '2020-06-09', 2715);
insert into plazas.cost
    (id_product, date, cost)
values
    (21, '2020-06-09', 2004);
insert into plazas.cost
    (id_product, date, cost)
values
    (22, '2020-06-12', 2173);
insert into plazas.cost
    (id_product, date, cost)
values
    (23, '2020-06-12', 2294);
insert into plazas.cost
    (id_product, date, cost)
values
    (24, '2020-06-08', 2939);
insert into plazas.cost
    (id_product, date, cost)
values
    (25, '2020-06-10', 2443);
insert into plazas.cost
    (id_product, date, cost)
values
    (26, '2020-06-12', 2463);
insert into plazas.cost
    (id_product, date, cost)
values
    (27, '2020-06-12', 2611);
insert into plazas.cost
    (id_product, date, cost)
values
    (28, '2020-06-12', 2649);
insert into plazas.cost
    (id_product, date, cost)
values
    (29, '2020-06-12', 2369);
insert into plazas.cost
    (id_product, date, cost)
values
    (30, '2020-06-08', 2901);
insert into plazas.cost
    (id_product, date, cost)
values
    (31, '2020-06-08', 2576);
insert into plazas.cost
    (id_product, date, cost)
values
    (32, '2020-06-13', 2251);
insert into plazas.cost
    (id_product, date, cost)
values
    (33, '2020-06-10', 2113);
insert into plazas.cost
    (id_product, date, cost)
values
    (34, '2020-06-12', 2419);
insert into plazas.cost
    (id_product, date, cost)
values
    (35, '2020-06-12', 2087);
insert into plazas.cost
    (id_product, date, cost)
values
    (36, '2020-06-10', 2007);
insert into plazas.cost
    (id_product, date, cost)
values
    (37, '2020-06-11', 2375);
insert into plazas.cost
    (id_product, date, cost)
values
    (38, '2020-06-08', 2886);
insert into plazas.cost
    (id_product, date, cost)
values
    (39, '2020-06-13', 2047);
insert into plazas.cost
    (id_product, date, cost)
values
    (40, '2020-06-12', 2243);
insert into plazas.cost
    (id_product, date, cost)
values
    (41, '2020-06-08', 2627);
insert into plazas.cost
    (id_product, date, cost)
values
    (42, '2020-06-08', 2810);
insert into plazas.cost
    (id_product, date, cost)
values
    (43, '2020-06-13', 2817);
insert into plazas.cost
    (id_product, date, cost)
values
    (44, '2020-06-12', 2376);
insert into plazas.cost
    (id_product, date, cost)
values
    (45, '2020-06-13', 2091);
insert into plazas.cost
    (id_product, date, cost)
values
    (46, '2020-06-08', 2392);
insert into plazas.cost
    (id_product, date, cost)
values
    (47, '2020-06-12', 2105);
insert into plazas.cost
    (id_product, date, cost)
values
    (48, '2020-06-08', 2991);
insert into plazas.cost
    (id_product, date, cost)
values
    (49, '2020-06-11', 2928);
insert into plazas.cost
    (id_product, date, cost)
values
    (50, '2020-06-11', 2030);
insert into plazas.cost
    (id_product, date, cost)
values
    (1, '2020-06-19', 3967);
insert into plazas.cost
    (id_product, date, cost)
values
    (2, '2020-06-20', 3458);
insert into plazas.cost
    (id_product, date, cost)
values
    (3, '2020-06-17', 3256);
insert into plazas.cost
    (id_product, date, cost)
values
    (4, '2020-06-19', 3867);
insert into plazas.cost
    (id_product, date, cost)
values
    (5, '2020-06-17', 3277);
insert into plazas.cost
    (id_product, date, cost)
values
    (6, '2020-06-20', 3842);
insert into plazas.cost
    (id_product, date, cost)
values
    (7, '2020-06-17', 3717);
insert into plazas.cost
    (id_product, date, cost)
values
    (8, '2020-06-20', 3602);
insert into plazas.cost
    (id_product, date, cost)
values
    (9, '2020-06-15', 3327);
insert into plazas.cost
    (id_product, date, cost)
values
    (10, '2020-06-19', 3921);
insert into plazas.cost
    (id_product, date, cost)
values
    (11, '2020-06-16', 3603);
insert into plazas.cost
    (id_product, date, cost)
values
    (12, '2020-06-17', 3905);
insert into plazas.cost
    (id_product, date, cost)
values
    (13, '2020-06-17', 3802);
insert into plazas.cost
    (id_product, date, cost)
values
    (14, '2020-06-15', 3438);
insert into plazas.cost
    (id_product, date, cost)
values
    (15, '2020-06-16', 3127);
insert into plazas.cost
    (id_product, date, cost)
values
    (16, '2020-06-18', 3364);
insert into plazas.cost
    (id_product, date, cost)
values
    (17, '2020-06-19', 3192);
insert into plazas.cost
    (id_product, date, cost)
values
    (18, '2020-06-18', 3568);
insert into plazas.cost
    (id_product, date, cost)
values
    (19, '2020-06-18', 3498);
insert into plazas.cost
    (id_product, date, cost)
values
    (20, '2020-06-18', 3094);
insert into plazas.cost
    (id_product, date, cost)
values
    (21, '2020-06-18', 3429);
insert into plazas.cost
    (id_product, date, cost)
values
    (22, '2020-06-20', 3317);
insert into plazas.cost
    (id_product, date, cost)
values
    (23, '2020-06-18', 3682);
insert into plazas.cost
    (id_product, date, cost)
values
    (24, '2020-06-18', 3628);
insert into plazas.cost
    (id_product, date, cost)
values
    (25, '2020-06-19', 3131);
insert into plazas.cost
    (id_product, date, cost)
values
    (26, '2020-06-19', 3467);
insert into plazas.cost
    (id_product, date, cost)
values
    (27, '2020-06-15', 3520);
insert into plazas.cost
    (id_product, date, cost)
values
    (28, '2020-06-20', 3978);
insert into plazas.cost
    (id_product, date, cost)
values
    (29, '2020-06-17', 3962);
insert into plazas.cost
    (id_product, date, cost)
values
    (30, '2020-06-18', 3180);
insert into plazas.cost
    (id_product, date, cost)
values
    (31, '2020-06-18', 3560);
insert into plazas.cost
    (id_product, date, cost)
values
    (32, '2020-06-17', 3943);
insert into plazas.cost
    (id_product, date, cost)
values
    (33, '2020-06-16', 3783);
insert into plazas.cost
    (id_product, date, cost)
values
    (34, '2020-06-17', 3589);
insert into plazas.cost
    (id_product, date, cost)
values
    (35, '2020-06-19', 3323);
insert into plazas.cost
    (id_product, date, cost)
values
    (36, '2020-06-20', 3428);
insert into plazas.cost
    (id_product, date, cost)
values
    (37, '2020-06-18', 3173);
insert into plazas.cost
    (id_product, date, cost)
values
    (38, '2020-06-17', 3518);
insert into plazas.cost
    (id_product, date, cost)
values
    (39, '2020-06-17', 3078);
insert into plazas.cost
    (id_product, date, cost)
values
    (40, '2020-06-19', 3370);
insert into plazas.cost
    (id_product, date, cost)
values
    (41, '2020-06-16', 3675);
insert into plazas.cost
    (id_product, date, cost)
values
    (42, '2020-06-18', 3836);
insert into plazas.cost
    (id_product, date, cost)
values
    (43, '2020-06-16', 3625);
insert into plazas.cost
    (id_product, date, cost)
values
    (44, '2020-06-19', 3029);
insert into plazas.cost
    (id_product, date, cost)
values
    (45, '2020-06-16', 3895);
insert into plazas.cost
    (id_product, date, cost)
values
    (46, '2020-06-15', 3154);
insert into plazas.cost
    (id_product, date, cost)
values
    (47, '2020-06-16', 3032);
insert into plazas.cost
    (id_product, date, cost)
values
    (48, '2020-06-20', 3433);
insert into plazas.cost
    (id_product, date, cost)
values
    (49, '2020-06-17', 3059);
insert into plazas.cost
    (id_product, date, cost)
values
    (50, '2020-06-17', 3476);

insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 1, 43, 57);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 2, 17, 43);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 3, 46, 37);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 4, 49, 35);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 5, 18, 60);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 6, 41, 40);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 7, 2, 74);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 8, 44, 42);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 9, 10, 69);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 10, 27, 31);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 11, 31, 69);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 12, 6, 80);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 13, 40, 33);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 14, 14, 47);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 15, 22, 53);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 16, 3, 34);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 17, 45, 45);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 18, 50, 36);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 19, 5, 30);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 20, 4, 33);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 21, 24, 63);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 22, 13, 71);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 23, 1, 49);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 24, 39, 37);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 25, 42, 38);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 26, 7, 70);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 27, 48, 65);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 28, 21, 35);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 29, 28, 51);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 30, 35, 37);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 1, 22, 33);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 2, 13, 53);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 3, 37, 52);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 4, 8, 54);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 5, 47, 78);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 6, 26, 43);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 7, 38, 36);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 8, 29, 76);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 9, 36, 72);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 10, 19, 71);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 11, 9, 62);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 12, 30, 63);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 13, 11, 38);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 14, 32, 34);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 15, 20, 52);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 16, 33, 80);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 17, 12, 72);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 18, 15, 52);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 19, 34, 65);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 20, 16, 71);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 21, 25, 60);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 22, 23, 51);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 23, 5, 33);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 24, 28, 37);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 25, 2, 68);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 26, 41, 47);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 27, 3, 73);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 28, 43, 73);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 29, 50, 61);
insert into plazas.shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 30, 45, 53);

insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 1, 57, '16:18:11', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 2, 43, '13:49:57', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 3, 37, '11:03:26', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 4, 35, '17:46:38', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 5, 60, '12:10:53', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 6, 40, '15:56:04', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 7, 74, '15:55:28', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 8, 42, '16:57:28', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 9, 69, '12:13:39', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 10, 31, '12:49:15', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 11, 69, '12:31:57', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 12, 80, '19:07:56', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 13, 33, '19:26:24', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 14, 47, '16:07:44', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 15, 53, '10:19:51', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 16, 34, '17:24:40', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 17, 45, '16:08:26', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 18, 36, '15:42:55', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 19, 30, '12:21:28', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 20, 33, '9:56:09', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 21, 63, '19:38:36', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 22, 71, '12:29:06', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 23, 49, '12:30:04', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 24, 37, '9:35:21', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 25, 38, '19:54:23', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 26, 70, '10:47:59', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 27, 65, '19:51:19', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 28, 35, '9:00:43', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 29, 51, '15:48:40', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 30, 37, '11:18:46', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 1, 33, '11:37:56', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 2, 53, '12:49:51', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 3, 52, '15:50:18', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 4, 54, '18:42:47', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 5, 78, '11:24:23', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 6, 43, '17:55:44', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 7, 36, '10:14:50', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 8, 76, '14:53:14', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 9, 72, '14:26:03', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 10, 71, '11:17:40', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 11, 62, '13:55:59', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 12, 63, '12:14:37', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 13, 38, '13:34:05', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 14, 34, '11:02:37', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 15, 52, '10:12:43', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 16, 80, '18:42:24', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 17, 72, '12:36:01', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 18, 52, '12:05:01', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 19, 65, '15:08:33', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 20, 71, '15:50:16', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 21, 60, '17:51:28', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 22, 51, '12:45:55', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 23, 33, '15:42:24', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 24, 37, '9:05:47', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 25, 68, '9:57:02', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 26, 47, '18:16:06', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 27, 73, '13:55:31', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 28, 73, '18:41:18', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 29, 61, '19:55:38', '2020-06-01');
insert into plazas.shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 30, 53, '10:18:43', '2020-06-01');

insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 1, 158, '19:14:03', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 2, 160, '10:42:50', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 3, 158, '19:41:50', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 4, 151, '11:13:18', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 5, 156, '14:19:50', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 6, 155, '16:44:41', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 7, 160, '17:26:09', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 50, 150, '19:08:29', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 49, 160, '15:28:17', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 10, 159, '17:01:15', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 48, 150, '12:07:56', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 46, 153, '10:40:41', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 13, 157, '16:54:57', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 14, 156, '12:02:16', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 45, 156, '17:54:01', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 44, 157, '18:12:47', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 17, 154, '17:46:02', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 18, 158, '11:08:29', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 43, 153, '13:38:23', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 42, 151, '16:14:05', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 21, 150, '17:00:34', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 22, 156, '15:46:21', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 41, 155, '18:22:56', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 24, 157, '18:37:00', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 40, 157, '18:45:59', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 39, 152, '18:04:50', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 27, 155, '19:03:55', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 28, 159, '11:08:00', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 35, 160, '11:43:35', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 31, 153, '10:24:30', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 50, 154, '10:24:12', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 2, 155, '14:26:09', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 3, 156, '11:34:01', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 47, 157, '19:19:46', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 5, 159, '17:46:46', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 45, 157, '13:16:27', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 43, 157, '16:19:24', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 8, 152, '11:08:47', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 9, 158, '16:14:36', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 41, 160, '11:41:25', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 11, 150, '11:38:04', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 12, 152, '14:59:03', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 13, 153, '11:57:39', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 38, 159, '19:10:50', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 15, 150, '10:01:07', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 16, 159, '10:37:00', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 37, 151, '14:54:35', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 36, 160, '19:56:38', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 19, 159, '18:11:18', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 20, 160, '13:50:14', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 34, 151, '18:05:47', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 22, 160, '11:47:24', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 23, 156, '13:24:59', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 33, 153, '15:57:18', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 25, 153, '17:35:16', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 26, 155, '17:55:31', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 32, 152, '18:40:07', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 28, 160, '18:56:31', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 29, 154, '19:32:17', '2020-06-01');
insert into plazas.stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 30, 156, '19:44:42', '2020-06-01');
