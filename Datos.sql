delete from store;
delete from warehouse;
delete from category;
delete from product;
delete from client;
delete from affiliate;
delete from employee;
delete from bank;
delete from cost;
delete from shelf;
delete from shelf_quantity;
delete from stored_in;

insert into store
    (id_store, name, max_capacity, openingHour, closingHour)
values
    (1, 'Plaza Las Mercedes', 100, '9:00:00', '20:00:00');
insert into store
    (id_store, name, max_capacity, openingHour, closingHour)
values
    (2, 'Plaza Los Naranjos', 100, '9:00:00', '20:00:00');

insert into warehouse
    (id_warehouse, max_capacity, id_store)
values
    (1, 5000, 1);
insert into warehouse
    (id_warehouse, max_capacity, id_store)
values
    (2, 5000, 2);

insert into category
    (name)
values
    ('Cleaning');
insert into category
    (name)
values
    ('Alcohol');
insert into category
    (name)
values
    ('Beverages');
insert into category
    (name)
values
    ('Processed');
insert into category
    (name)
values
    ('Vegetables');
insert into category
    (name)
values
    ('Frozen');
insert into category
    (name)
values
    ('Seeds');
insert into category
    (name)
values
    ('Spices and Sauces');
insert into category
    (name)
values
    ('Kitchen');
insert into category
    (name)
values
    ('Fruits');
insert into category
    (name)
values
    ('Meat');
insert into category
    (name)
values
    ('Sweets');

insert into product
    (id_category, name)
values
    (1, 'Ecolab - Balanced Fusion');
insert into product
    (id_category, name)
values
    (2, 'Wine - Casablanca Valley');
insert into product
    (id_category, name)
values
    (3, 'Tea - Vanilla Chai');
insert into product
    (id_category, name)
values
    (4, 'Dried Peach');
insert into product
    (id_category, name)
values
    (8, 'Sauce - Plum');
insert into product
    (id_category, name)
values
    (2, 'Wine - White, Riesling, Henry Of');
insert into product
    (id_category, name)
values
    (5, 'Potatoes - Yukon Gold 5 Oz');
insert into product
    (id_category, name)
values
    (6, 'Pasta - Lasagne, Fresh');
insert into product
    (id_category, name)
values
    (5, 'Eggplant Oriental');
insert into product
    (id_category, name)
values
    (7, 'Carroway Seed');
insert into product
    (id_category, name)
values
    (4, 'Dip - Tapenade');
insert into product
    (id_category, name)
values
    (8, 'Pepper - Cayenne');
insert into product
    (id_category, name)
values
    (9, 'Steam Pan - Half Size Deep');
insert into product
    (id_category, name)
values
    (6, 'Raspberries - Frozen');
insert into product
    (id_category, name)
values
    (4, 'Sauerkraut');
insert into product
    (id_category, name)
values
    (8, 'Tobasco Sauce');
insert into product
    (id_category, name)
values
    (8, 'Sauce - Cranberry');
insert into product
    (id_category, name)
values
    (10, 'Apples - Sliced / Wedge');
insert into product
    (id_category, name)
values
    (4, 'Muffin - Mix - Strawberry Rhubarb');
insert into product
    (id_category, name)
values
    (10, 'Tomatoes - Vine Ripe, Yellow');
insert into product
    (id_category, name)
values
    (2, 'Wine - Bourgogne 2002, La');
insert into product
    (id_category, name)
values
    (3, 'Energy Drink');
insert into product
    (id_category, name)
values
    (9, 'Huck Towels White');
insert into product
    (id_category, name)
values
    (3, 'Juice - Cranberry 284ml');
insert into product
    (id_category, name)
values
    (11, 'Quail - Whole, Boneless');
insert into product
    (id_category, name)
values
    (11, 'Cornish Hen');
insert into product
    (id_category, name)
values
    (3, 'Myers Planters Punch');
insert into product
    (id_category, name)
values
    (2, 'Rum - Coconut, Malibu');
insert into product
    (id_category, name)
values
    (5, 'Pepper - Jalapeno');
insert into product
    (id_category, name)
values
    (12, 'Godiva White Chocolate');
insert into product
    (id_category, name)
values
    (4, 'Graham Cracker Mix');
insert into product
    (id_category, name)
values
    (11, 'Barramundi');
insert into product
    (id_category, name)
values
    (8, 'Ginger - Ground');
insert into product
    (id_category, name)
values
    (4, 'Flour - Pastry');
insert into product
    (id_category, name)
values
    (12, 'Mousse - Passion Fruit');
insert into product
    (id_category, name)
values
    (2, 'Wine - White, Riesling, Semi - Dry');
insert into product
    (id_category, name)
values
    (2, 'Beer - Alexander Kieths, Pale Ale');
insert into product
    (id_category, name)
values
    (2, 'Wine - Marlbourough Sauv Blanc');
insert into product
    (id_category, name)
values
    (3, 'Tea - Black Currant');
insert into product
    (id_category, name)
values
    (11, 'Squid - U - 10 Thailand');
insert into product
    (id_category, name)
values
    (11, 'Fish - Halibut, Cold Smoked');
insert into product
    (id_category, name)
values
    (10, 'Tamarillo');
insert into product
    (id_category, name)
values
    (11, 'Shrimp - 16/20, Iqf, Shell On');
insert into product
    (id_category, name)
values
    (10, 'Kaffir Lime Leaves');
insert into product
    (id_category, name)
values
    (4, 'Chinese Foods - Pepper Beef');
insert into product
    (id_category, name)
values
    (5, 'Truffle - Whole Black Peeled');
insert into product
    (id_category, name)
values
    (4, 'Bread - Raisin');
insert into product
    (id_category, name)
values
    (11, 'Muskox - French Rack');
insert into product
    (id_category, name)
values
    (11, 'Lamb - Pieces, Diced');
insert into product
    (id_category, name)
values
    (9, 'Table Cloth 91x91 Colour');

insert into client
    (id_client, gender)
values
    ('9058501784', 'F');
insert into client
    (id_client, gender)
values
    ('0126596269', 'M');
insert into client
    (id_client, gender)
values
    ('8546067011', 'F');
insert into client
    (id_client, gender)
values
    ('9864733194', 'M');
insert into client
    (id_client, gender)
values
    ('4436029351', 'M');
insert into client
    (id_client, gender)
values
    ('4033955726', 'M');
insert into client
    (id_client, gender)
values
    ('0644373026', 'F');
insert into client
    (id_client, gender)
values
    ('6504134303', 'M');
insert into client
    (id_client, gender)
values
    ('0438274433', 'M');
insert into client
    (id_client, gender)
values
    ('0576680656', 'M');
insert into client
    (id_client, gender)
values
    ('9672123138', 'M');
insert into client
    (id_client, gender)
values
    ('1431210909', 'F');
insert into client
    (id_client, gender)
values
    ('4653606296', 'F');
insert into client
    (id_client, gender)
values
    ('6370656395', 'M');
insert into client
    (id_client, gender)
values
    ('1694797125', 'F');
insert into client
    (id_client, gender)
values
    ('6046818861', 'M');
insert into client
    (id_client, gender)
values
    ('1518594062', 'F');
insert into client
    (id_client, gender)
values
    ('0195492534', 'M');
insert into client
    (id_client, gender)
values
    ('2104312923', 'F');
insert into client
    (id_client, gender)
values
    ('2920657274', 'F');
insert into client
    (id_client, gender)
values
    ('8123444762', 'M');
insert into client
    (id_client, gender)
values
    ('6138668935', 'M');
insert into client
    (id_client, gender)
values
    ('7829776721', 'F');
insert into client
    (id_client, gender)
values
    ('4220955508', 'F');
insert into client
    (id_client, gender)
values
    ('9988696421', 'M');
insert into client
    (id_client, gender)
values
    ('5702257224', 'F');
insert into client
    (id_client, gender)
values
    ('0561699607', 'F');
insert into client
    (id_client, gender)
values
    ('1623859433', 'M');
insert into client
    (id_client, gender)
values
    ('0031653916', 'M');
insert into client
    (id_client, gender)
values
    ('9311535251', 'M');
insert into client
    (id_client, gender)
values
    ('5654598543', 'F');
insert into client
    (id_client, gender)
values
    ('9870217225', 'M');
insert into client
    (id_client, gender)
values
    ('1386711385', 'F');
insert into client
    (id_client, gender)
values
    ('5024684415', 'M');
insert into client
    (id_client, gender)
values
    ('4436430102', 'F');
insert into client
    (id_client, gender)
values
    ('4960827506', 'M');
insert into client
    (id_client, gender)
values
    ('4265198470', 'F');
insert into client
    (id_client, gender)
values
    ('1694613356', 'F');
insert into client
    (id_client, gender)
values
    ('9137143871', 'M');
insert into client
    (id_client, gender)
values
    ('3407422559', 'F');
insert into client
    (id_client, gender)
values
    ('3372670842', 'M');
insert into client
    (id_client, gender)
values
    ('0678672196', 'M');
insert into client
    (id_client, gender)
values
    ('3384110593', 'F');
insert into client
    (id_client, gender)
values
    ('4783958763', 'M');
insert into client
    (id_client, gender)
values
    ('0864754802', 'F');
insert into client
    (id_client, gender)
values
    ('2146922365', 'F');
insert into client
    (id_client, gender)
values
    ('7524350506', 'M');
insert into client
    (id_client, gender)
values
    ('1220864024', 'M');
insert into client
    (id_client, gender)
values
    ('4704507300', 'F');
insert into client
    (id_client, gender)
values
    ('2993035126', 'M');

insert into affiliate
    (name, gender, identification)
values
    ('Cherie Morais', 'F', 22173566);
insert into affiliate
    (name, gender, identification)
values
    ('Annemarie Pinchin', 'F', 21833912);
insert into affiliate
    (name, gender, identification)
values
    ('Roarke Schoolcroft', 'M', 11171674);
insert into affiliate
    (name, gender, identification)
values
    ('Filmore Pigeram', 'M', 19425336);
insert into affiliate
    (name, gender, identification)
values
    ('Roldan Kippins', 'M', 23597833);
insert into affiliate
    (name, gender, identification)
values
    ('Jerrold Brandes', 'M', 25806980);
insert into affiliate
    (name, gender, identification)
values
    ('Lucia Butt Gow', 'F', 12263388);
insert into affiliate
    (name, gender, identification)
values
    ('Emma McIsaac', 'F', 13368428);
insert into affiliate
    (name, gender, identification)
values
    ('Clareta Norley', 'F', 11222252);
insert into affiliate
    (name, gender, identification)
values
    ('Fayre Friedenbach', 'F', 13820517);
insert into affiliate
    (name, gender, identification)
values
    ('Tabby Fishly', 'M', 8248817);
insert into affiliate
    (name, gender, identification)
values
    ('Sheff Willes', 'M', 20894672);
insert into affiliate
    (name, gender, identification)
values
    ('Sargent Woolacott', 'M', 15614828);
insert into affiliate
    (name, gender, identification)
values
    ('Joey Lemerle', 'M', 13022662);
insert into affiliate
    (name, gender, identification)
values
    ('Darelle Sineath', 'F', 18541923);
insert into affiliate
    (name, gender, identification)
values
    ('Banky Daviot', 'M', 26784567);
insert into affiliate
    (name, gender, identification)
values
    ('Durand Minto', 'M', 24262884);
insert into affiliate
    (name, gender, identification)
values
    ('Aleta Allaker', 'F', 26564553);
insert into affiliate
    (name, gender, identification)
values
    ('Iris Breitler', 'F', 6609428);
insert into affiliate
    (name, gender, identification)
values
    ('Vere Kerwin', 'F', 10239118);
insert into affiliate
    (name, gender, identification)
values
    ('Port Hay', 'M', 9049321);
insert into affiliate
    (name, gender, identification)
values
    ('Randell Morrid', 'M', 6588636);
insert into affiliate
    (name, gender, identification)
values
    ('Junia Dary', 'F', 27485038);
insert into affiliate
    (name, gender, identification)
values
    ('Theresina Eades', 'F', 5753371);
insert into affiliate
    (name, gender, identification)
values
    ('Hollis Down', 'M', 28813796);
insert into affiliate
    (name, gender, identification)
values
    ('Alexandros Duval', 'M', 22619352);
insert into affiliate
    (name, gender, identification)
values
    ('Ermina Ovize', 'F', 9130878);
insert into affiliate
    (name, gender, identification)
values
    ('Henderson Reichardt', 'M', 18377312);
insert into affiliate
    (name, gender, identification)
values
    ('Edan Sango', 'M', 7334457);
insert into affiliate
    (name, gender, identification)
values
    ('Harlen Le Fleming', 'M', 29291244);
insert into affiliate
    (name, gender, identification)
values
    ('Erastus Figgins', 'M', 20480297);
insert into affiliate
    (name, gender, identification)
values
    ('Moina Petts', 'F', 18017316);
insert into affiliate
    (name, gender, identification)
values
    ('Dev Barnshaw', 'M', 12076782);
insert into affiliate
    (name, gender, identification)
values
    ('Rasia Diben', 'F', 25592226);
insert into affiliate
    (name, gender, identification)
values
    ('Meridith Ciobotaro', 'F', 15198804);
insert into affiliate
    (name, gender, identification)
values
    ('Erica Steely', 'F', 21729546);
insert into affiliate
    (name, gender, identification)
values
    ('Collin Wollaston', 'M', 24588466);
insert into affiliate
    (name, gender, identification)
values
    ('Freddi Hattoe', 'F', 14560212);
insert into affiliate
    (name, gender, identification)
values
    ('Burt Pauleau', 'M', 28117209);
insert into affiliate
    (name, gender, identification)
values
    ('Avivah Dowrey', 'F', 18050054);
insert into affiliate
    (name, gender, identification)
values
    ('Dominique Heape', 'M', 14513904);
insert into affiliate
    (name, gender, identification)
values
    ('Brooks Joule', 'M', 15040266);
insert into affiliate
    (name, gender, identification)
values
    ('Charleen Izkovici', 'F', 14196587);
insert into affiliate
    (name, gender, identification)
values
    ('Seamus Cloughton', 'M', 25827928);
insert into affiliate
    (name, gender, identification)
values
    ('Leola Dalgarnowch', 'F', 18383359);
insert into affiliate
    (name, gender, identification)
values
    ('Bianca Mays', 'F', 12358317);
insert into affiliate
    (name, gender, identification)
values
    ('Chelsy Oates', 'F', 18688992);
insert into affiliate
    (name, gender, identification)
values
    ('Abbey Kliment', 'F', 24263111);
insert into affiliate
    (name, gender, identification)
values
    ('Uri De Hooch', 'M', 26011528);
insert into affiliate
    (name, gender, identification)
values
    ('Garvin Barrabeale', 'M', 8145714);
insert into affiliate
    (name, gender, identification)
values
    ('Mack Fellini', 'M', 7257619);
insert into affiliate
    (name, gender, identification)
values
    ('Alec Bunstone', 'M', 21987749);
insert into affiliate
    (name, gender, identification)
values
    ('Scotty Dabels', 'M', 9392155);
insert into affiliate
    (name, gender, identification)
values
    ('Jaquith Burchett', 'F', 18927404);
insert into affiliate
    (name, gender, identification)
values
    ('Bernhard Willacot', 'M', 17427487);
insert into affiliate
    (name, gender, identification)
values
    ('Stace Hudd', 'F', 22705385);
insert into affiliate
    (name, gender, identification)
values
    ('Reiko Noraway', 'F', 17683586);
insert into affiliate
    (name, gender, identification)
values
    ('Boycie Cutill', 'M', 24094456);
insert into affiliate
    (name, gender, identification)
values
    ('Bordie Foskin', 'M', 29757969);
insert into affiliate
    (name, gender, identification)
values
    ('Evelyn Gelly', 'M', 13374668);
insert into affiliate
    (name, gender, identification)
values
    ('Murray Favill', 'M', 21611897);
insert into affiliate
    (name, gender, identification)
values
    ('Adler Chatburn', 'M', 18171892);
insert into affiliate
    (name, gender, identification)
values
    ('Skyler Aron', 'M', 22062036);
insert into affiliate
    (name, gender, identification)
values
    ('Stavros Terzi', 'M', 17007280);
insert into affiliate
    (name, gender, identification)
values
    ('Marion Alpe', 'M', 14612445);
insert into affiliate
    (name, gender, identification)
values
    ('Esmaria Delgardo', 'F', 27675983);
insert into affiliate
    (name, gender, identification)
values
    ('Ola Norrington', 'F', 20291047);
insert into affiliate
    (name, gender, identification)
values
    ('Clotilda Whardley', 'F', 5250474);
insert into affiliate
    (name, gender, identification)
values
    ('Clyve Swyre', 'M', 12914975);
insert into affiliate
    (name, gender, identification)
values
    ('Hailey Kemble', 'M', 6504551);
insert into affiliate
    (name, gender, identification)
values
    ('Kristi Bootton', 'F', 14364279);
insert into affiliate
    (name, gender, identification)
values
    ('Coral Fawcett', 'F', 16561038);
insert into affiliate
    (name, gender, identification)
values
    ('Zuzana McFadzean', 'F', 7415982);
insert into affiliate
    (name, gender, identification)
values
    ('Barrie Wylder', 'F', 18700776);
insert into affiliate
    (name, gender, identification)
values
    ('Holmes Ghelarducci', 'M', 21954829);
insert into affiliate
    (name, gender, identification)
values
    ('Zedekiah Gery', 'M', 23319232);
insert into affiliate
    (name, gender, identification)
values
    ('Boothe McGarahan', 'M', 17020734);
insert into affiliate
    (name, gender, identification)
values
    ('Anneliese Kanwell', 'F', 12715587);
insert into affiliate
    (name, gender, identification)
values
    ('Vickie Pinilla', 'F', 19457533);
insert into affiliate
    (name, gender, identification)
values
    ('Donna Bartles', 'F', 12858824);
insert into affiliate
    (name, gender, identification)
values
    ('Norbie Fazackerley', 'M', 19326706);
insert into affiliate
    (name, gender, identification)
values
    ('Odo Abry', 'M', 12755838);
insert into affiliate
    (name, gender, identification)
values
    ('Bianka Simioni', 'F', 21252989);
insert into affiliate
    (name, gender, identification)
values
    ('Meredeth Scoullar', 'M', 7902989);
insert into affiliate
    (name, gender, identification)
values
    ('Russ Gilders', 'M', 22196815);
insert into affiliate
    (name, gender, identification)
values
    ('Woodrow Bennison', 'M', 9693661);
insert into affiliate
    (name, gender, identification)
values
    ('Ilsa Oloshkin', 'F', 11131285);
insert into affiliate
    (name, gender, identification)
values
    ('Jacquette Tappington', 'F', 13285585);
insert into affiliate
    (name, gender, identification)
values
    ('Chrystel Merryweather', 'F', 8660371);
insert into affiliate
    (name, gender, identification)
values
    ('Marius Bwy', 'M', 15484730);
insert into affiliate
    (name, gender, identification)
values
    ('Arlene Noweak', 'F', 9997680);
insert into affiliate
    (name, gender, identification)
values
    ('Giraud Carrier', 'M', 22893893);
insert into affiliate
    (name, gender, identification)
values
    ('Sheffie Poad', 'M', 6940601);
insert into affiliate
    (name, gender, identification)
values
    ('Ignaz Seak', 'M', 21252277);
insert into affiliate
    (name, gender, identification)
values
    ('Ilse Kenforth', 'F', 7523051);
insert into affiliate
    (name, gender, identification)
values
    ('Rhody Shingler', 'F', 10502477);
insert into affiliate
    (name, gender, identification)
values
    ('Lyndell Stoile', 'F', 15753918);
insert into affiliate
    (name, gender, identification)
values
    ('Bartram Charon', 'M', 11511975);
insert into affiliate
    (name, gender, identification)
values
    ('Newton Glencorse', 'M', 28379933);
insert into affiliate
    (name, gender, identification)
values
    ('Montague Lievesley', 'M', 19888667);
insert into affiliate
    (name, gender, identification)
values
    ('Caril Cornels', 'F', 14532894);
insert into affiliate
    (name, gender, identification)
values
    ('Judi Charnock', 'F', 13016575);
insert into affiliate
    (name, gender, identification)
values
    ('Lucina Boyle', 'F', 18266829);
insert into affiliate
    (name, gender, identification)
values
    ('Melba Burmaster', 'F', 26407500);
insert into affiliate
    (name, gender, identification)
values
    ('Lyndsey Astall', 'F', 28164306);
insert into affiliate
    (name, gender, identification)
values
    ('Eloise Cissell', 'F', 26765973);
insert into affiliate
    (name, gender, identification)
values
    ('Alwin Gounin', 'M', 20802734);
insert into affiliate
    (name, gender, identification)
values
    ('Hayward Cannan', 'M', 28276546);
insert into affiliate
    (name, gender, identification)
values
    ('Ford Matyja', 'M', 16655896);
insert into affiliate
    (name, gender, identification)
values
    ('Berty Costelow', 'M', 10091837);
insert into affiliate
    (name, gender, identification)
values
    ('Rubin Towler', 'M', 22790721);
insert into affiliate
    (name, gender, identification)
values
    ('Fawne Reburn', 'F', 9508347);
insert into affiliate
    (name, gender, identification)
values
    ('Averell Wetherick', 'M', 25762249);
insert into affiliate
    (name, gender, identification)
values
    ('Kylynn Bettlestone', 'F', 25962459);
insert into affiliate
    (name, gender, identification)
values
    ('Raphaela Grosvenor', 'F', 24798625);
insert into affiliate
    (name, gender, identification)
values
    ('Joyann Keningley', 'F', 29291289);
insert into affiliate
    (name, gender, identification)
values
    ('Elia Huie', 'M', 13753453);
insert into affiliate
    (name, gender, identification)
values
    ('Janela Bullon', 'F', 10618567);
insert into affiliate
    (name, gender, identification)
values
    ('Timoteo Minthorpe', 'M', 21463636);
insert into affiliate
    (name, gender, identification)
values
    ('Kerianne Sherwill', 'F', 29660292);
insert into affiliate
    (name, gender, identification)
values
    ('Husain Belbin', 'M', 29389177);
insert into affiliate
    (name, gender, identification)
values
    ('Terrill Labbett', 'M', 17773805);
insert into affiliate
    (name, gender, identification)
values
    ('Kattie Alejo', 'F', 29346831);
insert into affiliate
    (name, gender, identification)
values
    ('Anjanette Simmonett', 'F', 7913880);
insert into affiliate
    (name, gender, identification)
values
    ('Wynne Farrell', 'F', 15627198);
insert into affiliate
    (name, gender, identification)
values
    ('Bevin Fevier', 'M', 21320218);
insert into affiliate
    (name, gender, identification)
values
    ('Arlene Halson', 'F', 12944933);
insert into affiliate
    (name, gender, identification)
values
    ('Claire Greenland', 'M', 5532183);
insert into affiliate
    (name, gender, identification)
values
    ('Gale Beavan', 'F', 21365514);
insert into affiliate
    (name, gender, identification)
values
    ('Alonso MacCrackan', 'M', 10867872);
insert into affiliate
    (name, gender, identification)
values
    ('Kessia MacGorley', 'F', 6421084);
insert into affiliate
    (name, gender, identification)
values
    ('Hartley Sommers', 'M', 20190337);
insert into affiliate
    (name, gender, identification)
values
    ('Ian McPeake', 'M', 5064251);
insert into affiliate
    (name, gender, identification)
values
    ('Michail Philson', 'M', 6636475);
insert into affiliate
    (name, gender, identification)
values
    ('Tirrell Castro', 'M', 5386848);
insert into affiliate
    (name, gender, identification)
values
    ('Dari Donhardt', 'F', 5415884);
insert into affiliate
    (name, gender, identification)
values
    ('Nataline Matthew', 'F', 6211730);
insert into affiliate
    (name, gender, identification)
values
    ('Ximenes Donnersberg', 'M', 25951601);
insert into affiliate
    (name, gender, identification)
values
    ('Farrel Daville', 'M', 6609537);
insert into affiliate
    (name, gender, identification)
values
    ('Louisa Thompson', 'F', 16612429);
insert into affiliate
    (name, gender, identification)
values
    ('Paolina Brockest', 'F', 19228014);
insert into affiliate
    (name, gender, identification)
values
    ('Birk Mathon', 'M', 21203762);
insert into affiliate
    (name, gender, identification)
values
    ('Caddric Bullocke', 'M', 9107922);
insert into affiliate
    (name, gender, identification)
values
    ('Mathilda Greave', 'F', 9862315);
insert into affiliate
    (name, gender, identification)
values
    ('Joanna Povele', 'F', 9720025);
insert into affiliate
    (name, gender, identification)
values
    ('Pebrook Girodin', 'M', 15930167);
insert into affiliate
    (name, gender, identification)
values
    ('Irvine Cripwell', 'M', 16174511);
insert into affiliate
    (name, gender, identification)
values
    ('Hayden Kubicka', 'M', 25861857);
insert into affiliate
    (name, gender, identification)
values
    ('Bambi Ashmole', 'F', 23649216);
insert into affiliate
    (name, gender, identification)
values
    ('Constantina Ferry', 'F', 11830131);
insert into affiliate
    (name, gender, identification)
values
    ('Randy Forson', 'F', 14891650);
insert into affiliate
    (name, gender, identification)
values
    ('Tobie Pidgen', 'M', 9466989);
insert into affiliate
    (name, gender, identification)
values
    ('Jacinda Woolsey', 'F', 13412952);
insert into affiliate
    (name, gender, identification)
values
    ('Cassaundra Rosson', 'F', 11029961);
insert into affiliate
    (name, gender, identification)
values
    ('Mirna Osmond', 'F', 17470294);
insert into affiliate
    (name, gender, identification)
values
    ('Niccolo Haversham', 'M', 22111033);
insert into affiliate
    (name, gender, identification)
values
    ('Scottie Dockray', 'M', 14757485);
insert into affiliate
    (name, gender, identification)
values
    ('Carol-jean Sparshett', 'F', 5149388);
insert into affiliate
    (name, gender, identification)
values
    ('Belva McGinny', 'F', 21344018);
insert into affiliate
    (name, gender, identification)
values
    ('Wildon Panter', 'M', 25612308);
insert into affiliate
    (name, gender, identification)
values
    ('Braden Thatcham', 'M', 16057648);
insert into affiliate
    (name, gender, identification)
values
    ('Monroe McGahy', 'M', 13409018);
insert into affiliate
    (name, gender, identification)
values
    ('Marlie De Vuyst', 'F', 14671778);
insert into affiliate
    (name, gender, identification)
values
    ('Phillipe Sheddan', 'M', 8152533);
insert into affiliate
    (name, gender, identification)
values
    ('Ford Godson', 'M', 15728684);
insert into affiliate
    (name, gender, identification)
values
    ('Lettie Weitzel', 'F', 26548848);
insert into affiliate
    (name, gender, identification)
values
    ('Farr McPeeters', 'M', 15594437);
insert into affiliate
    (name, gender, identification)
values
    ('Vi Windows', 'F', 18009947);
insert into affiliate
    (name, gender, identification)
values
    ('Orelee Joanic', 'F', 23901726);
insert into affiliate
    (name, gender, identification)
values
    ('Natala Provost', 'F', 15338684);
insert into affiliate
    (name, gender, identification)
values
    ('Nickolai Doige', 'M', 26499974);
insert into affiliate
    (name, gender, identification)
values
    ('Grace Riding', 'M', 18365699);
insert into affiliate
    (name, gender, identification)
values
    ('Ted Lubeck', 'M', 28873906);
insert into affiliate
    (name, gender, identification)
values
    ('Corny Bosdet', 'F', 23084736);
insert into affiliate
    (name, gender, identification)
values
    ('Josephina Gladdor', 'F', 28280879);
insert into affiliate
    (name, gender, identification)
values
    ('Berte Pumphreys', 'F', 28385366);
insert into affiliate
    (name, gender, identification)
values
    ('Matthias Spino', 'M', 19946873);
insert into affiliate
    (name, gender, identification)
values
    ('Hyman McGall', 'M', 16348321);
insert into affiliate
    (name, gender, identification)
values
    ('Chelsea Canto', 'F', 14481113);
insert into affiliate
    (name, gender, identification)
values
    ('Noreen Kirckman', 'F', 29101534);
insert into affiliate
    (name, gender, identification)
values
    ('Onfre Dibnah', 'M', 18104069);
insert into affiliate
    (name, gender, identification)
values
    ('Baird Son', 'M', 16611770);
insert into affiliate
    (name, gender, identification)
values
    ('Roslyn Wordley', 'F', 13511501);
insert into affiliate
    (name, gender, identification)
values
    ('Nappie Offord', 'M', 5906030);
insert into affiliate
    (name, gender, identification)
values
    ('Lucas Tee', 'M', 11391415);
insert into affiliate
    (name, gender, identification)
values
    ('Burch Brabban', 'M', 15955405);
insert into affiliate
    (name, gender, identification)
values
    ('Aurel Tunder', 'F', 11838940);
insert into affiliate
    (name, gender, identification)
values
    ('Ashlin Durbin', 'M', 15933558);
insert into affiliate
    (name, gender, identification)
values
    ('Bevvy Bessett', 'F', 11018648);
insert into affiliate
    (name, gender, identification)
values
    ('Salomone Lanktree', 'M', 21913522);
insert into affiliate
    (name, gender, identification)
values
    ('Lenette Billing', 'F', 8759168);
insert into affiliate
    (name, gender, identification)
values
    ('Trudie Van Dijk', 'F', 15285809);
insert into affiliate
    (name, gender, identification)
values
    ('Averil Casaletto', 'M', 20680686);
insert into affiliate
    (name, gender, identification)
values
    ('Tamiko Naisby', 'F', 19361583);
insert into affiliate
    (name, gender, identification)
values
    ('Auberon Chaytor', 'M', 24598746);
insert into affiliate
    (name, gender, identification)
values
    ('Jules Stampfer', 'M', 27912941);
insert into affiliate
    (name, gender, identification)
values
    ('Cyrill Placido', 'M', 22338856);
insert into affiliate
    (name, gender, identification)
values
    ('Thaddus Farndell', 'M', 8368878);
insert into affiliate
    (name, gender, identification)
values
    ('Charleen Haughton', 'F', 8283462);
insert into affiliate
    (name, gender, identification)
values
    ('Leontine Limrick', 'F', 16006023);
insert into affiliate
    (name, gender, identification)
values
    ('Burlie Lidgley', 'M', 9353681);
insert into affiliate
    (name, gender, identification)
values
    ('Marlowe Syder', 'M', 10538874);
insert into affiliate
    (name, gender, identification)
values
    ('Britta Jellico', 'F', 15371400);
insert into affiliate
    (name, gender, identification)
values
    ('Luciano Ovens', 'M', 28414482);
insert into affiliate
    (name, gender, identification)
values
    ('Beverley Kenyon', 'F', 8324082);
insert into affiliate
    (name, gender, identification)
values
    ('Maximilian Sells', 'M', 7351753);
insert into affiliate
    (name, gender, identification)
values
    ('Earvin Paris', 'M', 24314110);
insert into affiliate
    (name, gender, identification)
values
    ('Debby Stackbridge', 'F', 29652033);
insert into affiliate
    (name, gender, identification)
values
    ('Terra Donovan', 'F', 23486032);
insert into affiliate
    (name, gender, identification)
values
    ('Charin Acres', 'F', 20262464);
insert into affiliate
    (name, gender, identification)
values
    ('Quintana Nertney', 'F', 28509655);
insert into affiliate
    (name, gender, identification)
values
    ('Dario Mallaby', 'M', 27961213);
insert into affiliate
    (name, gender, identification)
values
    ('Jocelin Boscher', 'F', 10631416);
insert into affiliate
    (name, gender, identification)
values
    ('Mirna Kubicki', 'F', 14755131);
insert into affiliate
    (name, gender, identification)
values
    ('Ira Pautard', 'F', 18114477);
insert into affiliate
    (name, gender, identification)
values
    ('Cam Ferencowicz', 'F', 26043486);
insert into affiliate
    (name, gender, identification)
values
    ('Rodrique Le Ball', 'M', 6215324);
insert into affiliate
    (name, gender, identification)
values
    ('Allayne Millwater', 'M', 5481522);
insert into affiliate
    (name, gender, identification)
values
    ('Meier Sabban', 'M', 21809023);
insert into affiliate
    (name, gender, identification)
values
    ('Bebe Sarfati', 'F', 21263640);
insert into affiliate
    (name, gender, identification)
values
    ('Farra Heinschke', 'F', 15694152);
insert into affiliate
    (name, gender, identification)
values
    ('Dar Leving', 'M', 9090162);
insert into affiliate
    (name, gender, identification)
values
    ('Candice Atwel', 'F', 22628523);
insert into affiliate
    (name, gender, identification)
values
    ('Franchot Cattermull', 'M', 21644777);
insert into affiliate
    (name, gender, identification)
values
    ('Amabel Spinella', 'F', 5099566);
insert into affiliate
    (name, gender, identification)
values
    ('Roth Key', 'M', 21791135);
insert into affiliate
    (name, gender, identification)
values
    ('Mellie Rustedge', 'F', 20498277);
insert into affiliate
    (name, gender, identification)
values
    ('Luis Werendell', 'M', 11335799);
insert into affiliate
    (name, gender, identification)
values
    ('Kerstin Spurden', 'F', 26535023);
insert into affiliate
    (name, gender, identification)
values
    ('Elnora Arling', 'F', 20550258);
insert into affiliate
    (name, gender, identification)
values
    ('Derwin Tadlow', 'M', 14682998);
insert into affiliate
    (name, gender, identification)
values
    ('Rodolph Rainsdon', 'M', 22175874);
insert into affiliate
    (name, gender, identification)
values
    ('Mallorie Tolefree', 'F', 14089939);
insert into affiliate
    (name, gender, identification)
values
    ('Sylvester Spriggs', 'M', 25868789);
insert into affiliate
    (name, gender, identification)
values
    ('Wendi Shepeard', 'F', 12526300);
insert into affiliate
    (name, gender, identification)
values
    ('Walsh Lauxmann', 'M', 26778318);
insert into affiliate
    (name, gender, identification)
values
    ('Leena Bengal', 'F', 23775750);
insert into affiliate
    (name, gender, identification)
values
    ('Gaelan Feathers', 'M', 10080123);
insert into affiliate
    (name, gender, identification)
values
    ('Archer Thornhill', 'M', 23644129);
insert into affiliate
    (name, gender, identification)
values
    ('Brandais Bigly', 'F', 12417732);
insert into affiliate
    (name, gender, identification)
values
    ('Arlee Signe', 'F', 20984694);
insert into affiliate
    (name, gender, identification)
values
    ('Jolie Shewen', 'F', 15617329);
insert into affiliate
    (name, gender, identification)
values
    ('Stefan Cowton', 'M', 27701083);
insert into affiliate
    (name, gender, identification)
values
    ('Kaela Ponter', 'F', 28694192);
insert into affiliate
    (name, gender, identification)
values
    ('Albie Tavener', 'M', 19469514);
insert into affiliate
    (name, gender, identification)
values
    ('Herb Leming', 'M', 16142318);
insert into affiliate
    (name, gender, identification)
values
    ('Madelyn Vaughan-Hughes', 'F', 29619282);
insert into affiliate
    (name, gender, identification)
values
    ('Willetta Veare', 'F', 6165701);
insert into affiliate
    (name, gender, identification)
values
    ('Kain Hryniewicki', 'M', 15991605);
insert into affiliate
    (name, gender, identification)
values
    ('Towney Gallahar', 'M', 28906367);
insert into affiliate
    (name, gender, identification)
values
    ('Daphna Pollard', 'F', 28882507);
insert into affiliate
    (name, gender, identification)
values
    ('Shalom Prandini', 'M', 28645780);
insert into affiliate
    (name, gender, identification)
values
    ('Sena Whitlow', 'F', 29750992);
insert into affiliate
    (name, gender, identification)
values
    ('Wenona Keam', 'F', 7799671);
insert into affiliate
    (name, gender, identification)
values
    ('Zulema Goosnell', 'F', 13684854);
insert into affiliate
    (name, gender, identification)
values
    ('Reggie Capitano', 'F', 20440988);
insert into affiliate
    (name, gender, identification)
values
    ('Ivette Field', 'F', 22558584);
insert into affiliate
    (name, gender, identification)
values
    ('Myrtie Ivanishev', 'F', 18570532);
insert into affiliate
    (name, gender, identification)
values
    ('Archie Gover', 'M', 23312695);
insert into affiliate
    (name, gender, identification)
values
    ('Raquel Radford', 'F', 25778485);
insert into affiliate
    (name, gender, identification)
values
    ('Brade Waistell', 'M', 11328134);
insert into affiliate
    (name, gender, identification)
values
    ('Thane Gullberg', 'M', 19808876);
insert into affiliate
    (name, gender, identification)
values
    ('Darline Callum', 'F', 13028817);
insert into affiliate
    (name, gender, identification)
values
    ('Maisey Calderon', 'F', 18583307);
insert into affiliate
    (name, gender, identification)
values
    ('Mignon O''Sharry', 'F', 27165308);
insert into affiliate
    (name, gender, identification)
values
    ('Herb Dadge', 'M', 15981311);
insert into affiliate
    (name, gender, identification)
values
    ('Kennett Armytage', 'M', 10148052);
insert into affiliate
    (name, gender, identification)
values
    ('Gerek Frotton', 'M', 15759345);
insert into affiliate
    (name, gender, identification)
values
    ('Josias Bance', 'M', 27689996);
insert into affiliate
    (name, gender, identification)
values
    ('Robert Annion', 'M', 20236896);
insert into affiliate
    (name, gender, identification)
values
    ('Dell Prine', 'M', 9970057);
insert into affiliate
    (name, gender, identification)
values
    ('Fifi Pepineaux', 'F', 11023546);
insert into affiliate
    (name, gender, identification)
values
    ('Jolee Foxley', 'F', 6965631);
insert into affiliate
    (name, gender, identification)
values
    ('Niven Tinto', 'M', 14760122);
insert into affiliate
    (name, gender, identification)
values
    ('Pen Bairstow', 'M', 5845748);
insert into affiliate
    (name, gender, identification)
values
    ('Eloise Truwert', 'F', 15322210);
insert into affiliate
    (name, gender, identification)
values
    ('Deni Flecknoe', 'F', 18290407);
insert into affiliate
    (name, gender, identification)
values
    ('Grannie Climson', 'M', 6082886);
insert into affiliate
    (name, gender, identification)
values
    ('Dominique Hodcroft', 'F', 7717358);
insert into affiliate
    (name, gender, identification)
values
    ('Kathlin Alders', 'F', 16391212);
insert into affiliate
    (name, gender, identification)
values
    ('Rory Emanson', 'F', 5530109);
insert into affiliate
    (name, gender, identification)
values
    ('Carlie Conneely', 'F', 20706264);
insert into affiliate
    (name, gender, identification)
values
    ('Obediah Rays', 'M', 11458115);
insert into affiliate
    (name, gender, identification)
values
    ('Yvor Balstone', 'M', 15138231);
insert into affiliate
    (name, gender, identification)
values
    ('Mozes Hancock', 'M', 28814163);
insert into affiliate
    (name, gender, identification)
values
    ('Georg Caulcutt', 'M', 21890595);
insert into affiliate
    (name, gender, identification)
values
    ('Deva Farrance', 'F', 9470052);
insert into affiliate
    (name, gender, identification)
values
    ('Anthiathia Newlands', 'F', 9886612);
insert into affiliate
    (name, gender, identification)
values
    ('Baily Crabb', 'M', 26140296);
insert into affiliate
    (name, gender, identification)
values
    ('Ashely Bernier', 'F', 23560941);
insert into affiliate
    (name, gender, identification)
values
    ('Jefferey Sawforde', 'M', 6685519);
insert into affiliate
    (name, gender, identification)
values
    ('Thalia Krollman', 'F', 5903623);
insert into affiliate
    (name, gender, identification)
values
    ('Chicky Grasser', 'M', 7820547);
insert into affiliate
    (name, gender, identification)
values
    ('Erek Stobbie', 'M', 17160995);
insert into affiliate
    (name, gender, identification)
values
    ('Georgine Ingon', 'F', 18832698);
insert into affiliate
    (name, gender, identification)
values
    ('Mitchell Cherrett', 'M', 19457031);
insert into affiliate
    (name, gender, identification)
values
    ('Chantal Piper', 'F', 20239735);
insert into affiliate
    (name, gender, identification)
values
    ('Brand Sibthorp', 'M', 11823945);
insert into affiliate
    (name, gender, identification)
values
    ('Fair Stenet', 'M', 21296002);
insert into affiliate
    (name, gender, identification)
values
    ('Ange McKintosh', 'M', 29130412);
insert into affiliate
    (name, gender, identification)
values
    ('Rutherford Murton', 'M', 27853618);
insert into affiliate
    (name, gender, identification)
values
    ('Joe Stuehmeyer', 'M', 14610420);
insert into affiliate
    (name, gender, identification)
values
    ('Evonne Parradice', 'F', 22344274);
insert into affiliate
    (name, gender, identification)
values
    ('Quintin Triebner', 'M', 10612970);
insert into affiliate
    (name, gender, identification)
values
    ('Steffi Karlicek', 'F', 17364721);
insert into affiliate
    (name, gender, identification)
values
    ('Eleonore Shreeve', 'F', 19384773);
insert into affiliate
    (name, gender, identification)
values
    ('Robbyn Claris', 'F', 10714471);
insert into affiliate
    (name, gender, identification)
values
    ('Sherline Dahmel', 'F', 10922006);
insert into affiliate
    (name, gender, identification)
values
    ('Scotti Agge', 'M', 28134074);
insert into affiliate
    (name, gender, identification)
values
    ('Christean Hitcham', 'F', 27449493);
insert into affiliate
    (name, gender, identification)
values
    ('Winnah O''Regan', 'F', 14616966);
insert into affiliate
    (name, gender, identification)
values
    ('Mia Burberry', 'F', 11262224);
insert into affiliate
    (name, gender, identification)
values
    ('Olive Handaside', 'F', 13735594);
insert into affiliate
    (name, gender, identification)
values
    ('Blayne Twidell', 'M', 22686030);
insert into affiliate
    (name, gender, identification)
values
    ('Rourke Sorsby', 'M', 22820891);
insert into affiliate
    (name, gender, identification)
values
    ('Charyl Alesin', 'F', 7453035);
insert into affiliate
    (name, gender, identification)
values
    ('Pearline Capponer', 'F', 12861527);
insert into affiliate
    (name, gender, identification)
values
    ('Free Nares', 'M', 28614793);
insert into affiliate
    (name, gender, identification)
values
    ('Beatrice Woodford', 'F', 13537904);
insert into affiliate
    (name, gender, identification)
values
    ('Maximilien Taffley', 'M', 19034705);
insert into affiliate
    (name, gender, identification)
values
    ('Yul Simeoli', 'M', 6882967);
insert into affiliate
    (name, gender, identification)
values
    ('Liane Schoffel', 'F', 23330661);
insert into affiliate
    (name, gender, identification)
values
    ('Thibaut Tipler', 'M', 23559456);
insert into affiliate
    (name, gender, identification)
values
    ('Gillie Surgen', 'F', 7306876);
insert into affiliate
    (name, gender, identification)
values
    ('Noland Isakowicz', 'M', 23246431);
insert into affiliate
    (name, gender, identification)
values
    ('Justino Bransden', 'M', 22614788);
insert into affiliate
    (name, gender, identification)
values
    ('Kata Hymers', 'F', 27689290);
insert into affiliate
    (name, gender, identification)
values
    ('Daniela Haselhurst', 'F', 17142022);
insert into affiliate
    (name, gender, identification)
values
    ('Rowan Battle', 'M', 7970844);
insert into affiliate
    (name, gender, identification)
values
    ('Gwenny Horche', 'F', 27955477);
insert into affiliate
    (name, gender, identification)
values
    ('Harley Bezants', 'F', 17909808);
insert into affiliate
    (name, gender, identification)
values
    ('Sanson Phoebe', 'M', 16448125);
insert into affiliate
    (name, gender, identification)
values
    ('Flor Corlett', 'F', 6269694);
insert into affiliate
    (name, gender, identification)
values
    ('Corena Bushen', 'F', 12612915);
insert into affiliate
    (name, gender, identification)
values
    ('Zoe MacElroy', 'F', 20784395);
insert into affiliate
    (name, gender, identification)
values
    ('Korie Dorken', 'F', 28785837);
insert into affiliate
    (name, gender, identification)
values
    ('Elvira Kimmings', 'F', 25736909);
insert into affiliate
    (name, gender, identification)
values
    ('Elston Durrand', 'M', 8225517);
insert into affiliate
    (name, gender, identification)
values
    ('Gaspar Brickett', 'M', 16585181);
insert into affiliate
    (name, gender, identification)
values
    ('Lyell Ilyasov', 'M', 6443946);
insert into affiliate
    (name, gender, identification)
values
    ('Dana Bannister', 'M', 26313809);
insert into affiliate
    (name, gender, identification)
values
    ('Vance Pilkington', 'M', 22893828);
insert into affiliate
    (name, gender, identification)
values
    ('Alleyn Fewlass', 'M', 9699849);
insert into affiliate
    (name, gender, identification)
values
    ('Vincents Aldis', 'M', 14311375);
insert into affiliate
    (name, gender, identification)
values
    ('Jobina Crockett', 'F', 29247387);
insert into affiliate
    (name, gender, identification)
values
    ('Allison Scarsbrook', 'F', 19842723);
insert into affiliate
    (name, gender, identification)
values
    ('Dominick Smewings', 'M', 11445665);
insert into affiliate
    (name, gender, identification)
values
    ('Kimball Curror', 'M', 15023921);
insert into affiliate
    (name, gender, identification)
values
    ('Angele St Angel', 'F', 27234274);
insert into affiliate
    (name, gender, identification)
values
    ('Eileen Bloschke', 'F', 13895026);
insert into affiliate
    (name, gender, identification)
values
    ('Teddy Flintoff', 'M', 8589025);
insert into affiliate
    (name, gender, identification)
values
    ('Clotilda Brammar', 'F', 22288494);
insert into affiliate
    (name, gender, identification)
values
    ('Brande McCaughen', 'F', 22881577);
insert into affiliate
    (name, gender, identification)
values
    ('Jeffry Nice', 'M', 27969359);
insert into affiliate
    (name, gender, identification)
values
    ('Toinette Olifard', 'F', 23292479);
insert into affiliate
    (name, gender, identification)
values
    ('Betteanne Surfleet', 'F', 6262030);
insert into affiliate
    (name, gender, identification)
values
    ('Hewett Treagus', 'M', 20114777);
insert into affiliate
    (name, gender, identification)
values
    ('Trixie Laval', 'F', 20167971);
insert into affiliate
    (name, gender, identification)
values
    ('Natale Deverill', 'M', 26060272);
insert into affiliate
    (name, gender, identification)
values
    ('Hadleigh Robbeke', 'M', 8511911);
insert into affiliate
    (name, gender, identification)
values
    ('Shelley Rainer', 'F', 24113319);
insert into affiliate
    (name, gender, identification)
values
    ('El Amies', 'M', 28766825);
insert into affiliate
    (name, gender, identification)
values
    ('Ray Edwin', 'F', 9566185);
insert into affiliate
    (name, gender, identification)
values
    ('Donavon Matthius', 'M', 8086265);
insert into affiliate
    (name, gender, identification)
values
    ('Whitby Sabey', 'M', 20687258);
insert into affiliate
    (name, gender, identification)
values
    ('Hillary Scandwright', 'M', 29464241);
insert into affiliate
    (name, gender, identification)
values
    ('Ollie Kubatsch', 'M', 28723329);
insert into affiliate
    (name, gender, identification)
values
    ('Carlita Newvell', 'F', 8337200);
insert into affiliate
    (name, gender, identification)
values
    ('Orran Norres', 'M', 17349962);
insert into affiliate
    (name, gender, identification)
values
    ('Nancie Kardos', 'F', 19340418);
insert into affiliate
    (name, gender, identification)
values
    ('Hobie Rydeard', 'M', 5294379);
insert into affiliate
    (name, gender, identification)
values
    ('Phyllis Bickerstasse', 'F', 12377653);
insert into affiliate
    (name, gender, identification)
values
    ('Diane Wilcot', 'F', 19310135);
insert into affiliate
    (name, gender, identification)
values
    ('Kiersten Dounbare', 'F', 20617317);
insert into affiliate
    (name, gender, identification)
values
    ('Brianne Hadny', 'F', 17078202);
insert into affiliate
    (name, gender, identification)
values
    ('Lorry Ambrogioli', 'M', 27069315);
insert into affiliate
    (name, gender, identification)
values
    ('Rafa Hambidge', 'F', 12152187);
insert into affiliate
    (name, gender, identification)
values
    ('Teddie O''Criane', 'M', 26523836);
insert into affiliate
    (name, gender, identification)
values
    ('Ophelie French', 'F', 8031759);
insert into affiliate
    (name, gender, identification)
values
    ('Joyan Havelin', 'F', 6631868);
insert into affiliate
    (name, gender, identification)
values
    ('Davie Matz', 'M', 11899139);
insert into affiliate
    (name, gender, identification)
values
    ('Deck Wright', 'M', 19132338);
insert into affiliate
    (name, gender, identification)
values
    ('Adrianna Goodday', 'F', 10667635);
insert into affiliate
    (name, gender, identification)
values
    ('Elane Hardwick', 'F', 15095166);
insert into affiliate
    (name, gender, identification)
values
    ('Barnard Hallifax', 'M', 10502196);
insert into affiliate
    (name, gender, identification)
values
    ('Gerrard Deamer', 'M', 12141090);
insert into affiliate
    (name, gender, identification)
values
    ('Emlynne Treby', 'F', 16825520);
insert into affiliate
    (name, gender, identification)
values
    ('Huntlee Spanton', 'M', 19460099);
insert into affiliate
    (name, gender, identification)
values
    ('Jake Ellingsworth', 'M', 15333699);
insert into affiliate
    (name, gender, identification)
values
    ('Westleigh Grigoryov', 'M', 28848615);
insert into affiliate
    (name, gender, identification)
values
    ('Pia Da Costa', 'F', 14704734);
insert into affiliate
    (name, gender, identification)
values
    ('Klarrisa Sandyfirth', 'F', 6801045);
insert into affiliate
    (name, gender, identification)
values
    ('Aymer Smiths', 'M', 13506723);
insert into affiliate
    (name, gender, identification)
values
    ('Casar Weal', 'M', 20734547);
insert into affiliate
    (name, gender, identification)
values
    ('Abby Hovert', 'M', 26639180);
insert into affiliate
    (name, gender, identification)
values
    ('Chrisse Beattie', 'M', 24756404);
insert into affiliate
    (name, gender, identification)
values
    ('Pavel Fishenden', 'M', 27574788);
insert into affiliate
    (name, gender, identification)
values
    ('Lockwood Dominik', 'M', 21310613);
insert into affiliate
    (name, gender, identification)
values
    ('Quintina Verma', 'F', 27201629);
insert into affiliate
    (name, gender, identification)
values
    ('Karel Rosenstiel', 'M', 24536474);
insert into affiliate
    (name, gender, identification)
values
    ('Kandace Hendonson', 'F', 20841771);
insert into affiliate
    (name, gender, identification)
values
    ('Jimmie Densun', 'M', 10758655);
insert into affiliate
    (name, gender, identification)
values
    ('Rodney Debnam', 'M', 25114137);
insert into affiliate
    (name, gender, identification)
values
    ('Hildy Morkham', 'F', 26967873);
insert into affiliate
    (name, gender, identification)
values
    ('Roderich Coggen', 'M', 11701726);
insert into affiliate
    (name, gender, identification)
values
    ('Glenna Pellant', 'F', 20721195);
insert into affiliate
    (name, gender, identification)
values
    ('Alyda Staton', 'F', 29131082);
insert into affiliate
    (name, gender, identification)
values
    ('Skell Alcock', 'M', 6602055);
insert into affiliate
    (name, gender, identification)
values
    ('Fabio Alison', 'M', 11458574);
insert into affiliate
    (name, gender, identification)
values
    ('Auroora Duffer', 'F', 27053591);
insert into affiliate
    (name, gender, identification)
values
    ('Raquela Gleadle', 'F', 14535770);
insert into affiliate
    (name, gender, identification)
values
    ('Rosana Slocombe', 'F', 22631414);
insert into affiliate
    (name, gender, identification)
values
    ('Jodie Bilbery', 'M', 5980401);
insert into affiliate
    (name, gender, identification)
values
    ('Florian Dykes', 'M', 16180997);
insert into affiliate
    (name, gender, identification)
values
    ('Brok Flood', 'M', 16133925);
insert into affiliate
    (name, gender, identification)
values
    ('Arabella Schooley', 'F', 13199580);
insert into affiliate
    (name, gender, identification)
values
    ('Shelly Skotcher', 'F', 28727684);
insert into affiliate
    (name, gender, identification)
values
    ('Darrell Howland', 'M', 22201097);
insert into affiliate
    (name, gender, identification)
values
    ('Pavlov Whilder', 'M', 5234544);
insert into affiliate
    (name, gender, identification)
values
    ('Selina Pitman', 'F', 7008646);
insert into affiliate
    (name, gender, identification)
values
    ('Madelyn Olenchikov', 'F', 15590954);
insert into affiliate
    (name, gender, identification)
values
    ('Tommi Libero', 'F', 6359252);
insert into affiliate
    (name, gender, identification)
values
    ('Sheelagh Samper', 'F', 5856554);
insert into affiliate
    (name, gender, identification)
values
    ('Torre Well', 'M', 11581317);
insert into affiliate
    (name, gender, identification)
values
    ('Cooper Muckersie', 'M', 12652486);
insert into affiliate
    (name, gender, identification)
values
    ('Haley Noar', 'F', 13466153);
insert into affiliate
    (name, gender, identification)
values
    ('Napoleon Matlock', 'M', 22085721);
insert into affiliate
    (name, gender, identification)
values
    ('Mal Beinke', 'M', 8106864);
insert into affiliate
    (name, gender, identification)
values
    ('Nedda Balasini', 'F', 28781387);
insert into affiliate
    (name, gender, identification)
values
    ('Nate Lenglet', 'M', 26539616);
insert into affiliate
    (name, gender, identification)
values
    ('Tedd Shiril', 'M', 24491254);
insert into affiliate
    (name, gender, identification)
values
    ('Heriberto Howsley', 'M', 15625095);
insert into affiliate
    (name, gender, identification)
values
    ('Dania Vaan', 'F', 7821520);
insert into affiliate
    (name, gender, identification)
values
    ('Cort Padgett', 'M', 9660651);
insert into affiliate
    (name, gender, identification)
values
    ('Krispin Schmuhl', 'M', 24076443);
insert into affiliate
    (name, gender, identification)
values
    ('Arly Cuttler', 'F', 10179203);
insert into affiliate
    (name, gender, identification)
values
    ('Marshall Lubman', 'M', 6371001);
insert into affiliate
    (name, gender, identification)
values
    ('Lorens Crame', 'M', 24922022);
insert into affiliate
    (name, gender, identification)
values
    ('Kippar Lippitt', 'M', 29006353);
insert into affiliate
    (name, gender, identification)
values
    ('Zeb Patington', 'M', 27779950);
insert into affiliate
    (name, gender, identification)
values
    ('Klarrisa Follows', 'F', 5141493);
insert into affiliate
    (name, gender, identification)
values
    ('Jonis Ruppele', 'F', 8821248);
insert into affiliate
    (name, gender, identification)
values
    ('Georgy McCorkindale', 'M', 28007790);
insert into affiliate
    (name, gender, identification)
values
    ('Albert Gainsford', 'M', 20250355);
insert into affiliate
    (name, gender, identification)
values
    ('Corny Whitney', 'F', 28806132);
insert into affiliate
    (name, gender, identification)
values
    ('Emelina Bonicelli', 'F', 12147177);
insert into affiliate
    (name, gender, identification)
values
    ('Weber Emblen', 'M', 29077781);
insert into affiliate
    (name, gender, identification)
values
    ('El Pavinese', 'M', 5604026);
insert into affiliate
    (name, gender, identification)
values
    ('Alissa Jagiello', 'F', 12036658);
insert into affiliate
    (name, gender, identification)
values
    ('Sheri Priditt', 'F', 25694597);
insert into affiliate
    (name, gender, identification)
values
    ('Annis Aleksic', 'F', 20278890);
insert into affiliate
    (name, gender, identification)
values
    ('Jodee Stather', 'F', 12236328);
insert into affiliate
    (name, gender, identification)
values
    ('Noach Wride', 'M', 28145452);
insert into affiliate
    (name, gender, identification)
values
    ('Trey Aguirrezabal', 'M', 8793635);
insert into affiliate
    (name, gender, identification)
values
    ('Vlad Lillegard', 'M', 13775303);
insert into affiliate
    (name, gender, identification)
values
    ('Tallie Kinrade', 'M', 29474622);
insert into affiliate
    (name, gender, identification)
values
    ('Mychal Asaaf', 'M', 8395810);
insert into affiliate
    (name, gender, identification)
values
    ('Karissa Giordano', 'F', 13320152);
insert into affiliate
    (name, gender, identification)
values
    ('Cesya Cubitt', 'F', 17369450);
insert into affiliate
    (name, gender, identification)
values
    ('Cami Giacopini', 'F', 11075031);
insert into affiliate
    (name, gender, identification)
values
    ('Annora Leve', 'F', 29058652);
insert into affiliate
    (name, gender, identification)
values
    ('Nickie Pendred', 'F', 17780998);
insert into affiliate
    (name, gender, identification)
values
    ('Fairfax Beidebeke', 'M', 25872750);
insert into affiliate
    (name, gender, identification)
values
    ('Egor Sparrowe', 'M', 18536867);
insert into affiliate
    (name, gender, identification)
values
    ('Mellisent Guenther', 'F', 11124727);
insert into affiliate
    (name, gender, identification)
values
    ('Ranna Alves', 'F', 7142921);
insert into affiliate
    (name, gender, identification)
values
    ('Walton Lippini', 'M', 9061578);
insert into affiliate
    (name, gender, identification)
values
    ('Peirce Kuscha', 'M', 7749876);
insert into affiliate
    (name, gender, identification)
values
    ('Rafe Broke', 'M', 15223275);
insert into affiliate
    (name, gender, identification)
values
    ('Wash Dwerryhouse', 'M', 7952159);
insert into affiliate
    (name, gender, identification)
values
    ('Indira Redholes', 'F', 7510434);
insert into affiliate
    (name, gender, identification)
values
    ('Lucky Summerhayes', 'F', 23718900);
insert into affiliate
    (name, gender, identification)
values
    ('Hettie Jeanon', 'F', 26904241);
insert into affiliate
    (name, gender, identification)
values
    ('Raul McNutt', 'M', 18879439);
insert into affiliate
    (name, gender, identification)
values
    ('Tommie Spurrett', 'M', 16027629);
insert into affiliate
    (name, gender, identification)
values
    ('Quintus Sewill', 'M', 13718886);
insert into affiliate
    (name, gender, identification)
values
    ('Vicky Ransome', 'F', 25166764);
insert into affiliate
    (name, gender, identification)
values
    ('Martyn Rangall', 'M', 7199918);
insert into affiliate
    (name, gender, identification)
values
    ('Blair Goodinge', 'M', 16106883);
insert into affiliate
    (name, gender, identification)
values
    ('Kata Cod', 'F', 20674038);
insert into affiliate
    (name, gender, identification)
values
    ('Rutter Warbeys', 'M', 29366550);
insert into affiliate
    (name, gender, identification)
values
    ('Harman McGenn', 'M', 11813730);
insert into affiliate
    (name, gender, identification)
values
    ('Lazarus Moncaster', 'M', 17859780);
insert into affiliate
    (name, gender, identification)
values
    ('Franklin Scotford', 'M', 12696339);
insert into affiliate
    (name, gender, identification)
values
    ('Germain Baumadier', 'F', 8136801);
insert into affiliate
    (name, gender, identification)
values
    ('Si Inold', 'M', 28622588);
insert into affiliate
    (name, gender, identification)
values
    ('Devin Meir', 'F', 7946424);
insert into affiliate
    (name, gender, identification)
values
    ('Mandel Blowers', 'M', 22363698);
insert into affiliate
    (name, gender, identification)
values
    ('Izak Klima', 'M', 5265672);
insert into affiliate
    (name, gender, identification)
values
    ('Gwendolen Mattheis', 'F', 22614453);
insert into affiliate
    (name, gender, identification)
values
    ('Elmore Guilloud', 'M', 18224160);
insert into affiliate
    (name, gender, identification)
values
    ('Maddalena Steer', 'F', 22986254);
insert into affiliate
    (name, gender, identification)
values
    ('Therese Guidoni', 'F', 10476433);
insert into affiliate
    (name, gender, identification)
values
    ('Alina McEnery', 'F', 19295076);
insert into affiliate
    (name, gender, identification)
values
    ('Jabez Batho', 'M', 17132108);
insert into affiliate
    (name, gender, identification)
values
    ('Shae Kausche', 'F', 23056943);
insert into affiliate
    (name, gender, identification)
values
    ('Margarethe Scandrite', 'F', 12476067);
insert into affiliate
    (name, gender, identification)
values
    ('Danila Goodrich', 'F', 25420708);
insert into affiliate
    (name, gender, identification)
values
    ('Wilone McCartan', 'F', 22771165);
insert into affiliate
    (name, gender, identification)
values
    ('Morris Deshon', 'M', 24006023);
insert into affiliate
    (name, gender, identification)
values
    ('Betty Archbell', 'F', 10757324);
insert into affiliate
    (name, gender, identification)
values
    ('Jules Goddard', 'M', 22834376);
insert into affiliate
    (name, gender, identification)
values
    ('Yehudit Rummer', 'M', 28464333);
insert into affiliate
    (name, gender, identification)
values
    ('Ewen Kobelt', 'M', 6048710);
insert into affiliate
    (name, gender, identification)
values
    ('Jere Spittle', 'F', 21405922);
insert into affiliate
    (name, gender, identification)
values
    ('Burton Nizard', 'M', 27817771);
insert into affiliate
    (name, gender, identification)
values
    ('Celestia Hamor', 'F', 11003772);
insert into affiliate
    (name, gender, identification)
values
    ('Bartel Cunradi', 'M', 27879500);
insert into affiliate
    (name, gender, identification)
values
    ('Evelyn Greedy', 'M', 26179062);
insert into affiliate
    (name, gender, identification)
values
    ('Olympia Misk', 'F', 10181069);
insert into affiliate
    (name, gender, identification)
values
    ('Townsend Count', 'M', 6187715);
insert into affiliate
    (name, gender, identification)
values
    ('Zacharias Pittham', 'M', 13413984);
insert into affiliate
    (name, gender, identification)
values
    ('Danni Gergler', 'F', 14885811);
insert into affiliate
    (name, gender, identification)
values
    ('Elspeth Antognoni', 'F', 29838940);
insert into affiliate
    (name, gender, identification)
values
    ('Ulrick Ridings', 'M', 29244866);
insert into affiliate
    (name, gender, identification)
values
    ('Shaughn Wand', 'M', 18112456);
insert into affiliate
    (name, gender, identification)
values
    ('Catherine Seckom', 'F', 29655233);
insert into affiliate
    (name, gender, identification)
values
    ('Conn Huband', 'M', 7410583);
insert into affiliate
    (name, gender, identification)
values
    ('Aylmar Barrass', 'M', 29966643);
insert into affiliate
    (name, gender, identification)
values
    ('Rosie Von Der Empten', 'F', 26389556);
insert into affiliate
    (name, gender, identification)
values
    ('Mordy Gurnay', 'M', 6875172);
insert into affiliate
    (name, gender, identification)
values
    ('Querida Belbin', 'F', 17168727);
insert into affiliate
    (name, gender, identification)
values
    ('Addison Baudi', 'M', 12818298);
insert into affiliate
    (name, gender, identification)
values
    ('Miles Paynter', 'M', 10077342);
insert into affiliate
    (name, gender, identification)
values
    ('Kata Saylor', 'F', 11620284);
insert into affiliate
    (name, gender, identification)
values
    ('Ricoriki Colly', 'M', 18528233);
insert into affiliate
    (name, gender, identification)
values
    ('Jordan Rosenkranc', 'F', 17350368);
insert into affiliate
    (name, gender, identification)
values
    ('Wake Gentry', 'M', 10494689);
insert into affiliate
    (name, gender, identification)
values
    ('Guy Robak', 'M', 24994037);
insert into affiliate
    (name, gender, identification)
values
    ('Darelle Cheeney', 'F', 26981347);
insert into affiliate
    (name, gender, identification)
values
    ('Miof mela de Voiels', 'F', 7257060);
insert into affiliate
    (name, gender, identification)
values
    ('Laurette Antonognoli', 'F', 7474010);
insert into affiliate
    (name, gender, identification)
values
    ('Nels Fleote', 'M', 10377068);
insert into affiliate
    (name, gender, identification)
values
    ('Berte Jendrusch', 'F', 6333175);
insert into affiliate
    (name, gender, identification)
values
    ('Maison Dorrins', 'M', 23413305);
insert into affiliate
    (name, gender, identification)
values
    ('Ewell Hune', 'M', 6083900);
insert into affiliate
    (name, gender, identification)
values
    ('Joana Timothy', 'F', 9756981);
insert into affiliate
    (name, gender, identification)
values
    ('Paulie Cleland', 'F', 18531186);
insert into affiliate
    (name, gender, identification)
values
    ('Antin Pickthorne', 'M', 9274442);
insert into affiliate
    (name, gender, identification)
values
    ('Bidget Quinnelly', 'F', 19523358);
insert into affiliate
    (name, gender, identification)
values
    ('Marlin Durrans', 'M', 27667451);
insert into affiliate
    (name, gender, identification)
values
    ('Frans Pockey', 'M', 7095707);
insert into affiliate
    (name, gender, identification)
values
    ('Leesa Morehall', 'F', 16259819);
insert into affiliate
    (name, gender, identification)
values
    ('Heda Mostyn', 'F', 8643023);
insert into affiliate
    (name, gender, identification)
values
    ('Letisha Drewitt', 'F', 12237032);
insert into affiliate
    (name, gender, identification)
values
    ('Nertie Iacomettii', 'F', 21471573);
insert into affiliate
    (name, gender, identification)
values
    ('Rurik Durgan', 'M', 29800777);
insert into affiliate
    (name, gender, identification)
values
    ('Windham Lasham', 'M', 27486160);
insert into affiliate
    (name, gender, identification)
values
    ('Giovanni De Hooge', 'M', 27594032);
insert into affiliate
    (name, gender, identification)
values
    ('Vin Addionizio', 'F', 6971040);
insert into affiliate
    (name, gender, identification)
values
    ('Dode Sigert', 'F', 5640507);
insert into affiliate
    (name, gender, identification)
values
    ('Brandie Hatter', 'F', 24811905);
insert into affiliate
    (name, gender, identification)
values
    ('Ragnar Cristofolo', 'M', 29543326);
insert into affiliate
    (name, gender, identification)
values
    ('Marcia Daffey', 'F', 7244167);
insert into affiliate
    (name, gender, identification)
values
    ('Bert Eggins', 'F', 22378712);
insert into affiliate
    (name, gender, identification)
values
    ('Lissy Fairhurst', 'F', 6056491);
insert into affiliate
    (name, gender, identification)
values
    ('Brooke Frape', 'F', 11959984);
insert into affiliate
    (name, gender, identification)
values
    ('Burnard Pretswell', 'M', 15396363);
insert into affiliate
    (name, gender, identification)
values
    ('Berti Hazelhurst', 'F', 7097823);
insert into affiliate
    (name, gender, identification)
values
    ('Liza Eastgate', 'F', 17574613);
insert into affiliate
    (name, gender, identification)
values
    ('Chantalle Spatarul', 'F', 5046693);
insert into affiliate
    (name, gender, identification)
values
    ('Ludvig Iggulden', 'M', 10822253);
insert into affiliate
    (name, gender, identification)
values
    ('Leif Donan', 'M', 23067981);
insert into affiliate
    (name, gender, identification)
values
    ('Jozef Staker', 'M', 18251358);
insert into affiliate
    (name, gender, identification)
values
    ('Vivianna Dongles', 'F', 20735710);
insert into affiliate
    (name, gender, identification)
values
    ('Ludvig Dougill', 'M', 18933063);
insert into affiliate
    (name, gender, identification)
values
    ('Hamilton Nancekivell', 'M', 8197070);
insert into affiliate
    (name, gender, identification)
values
    ('Joaquin MacCambridge', 'M', 27017045);
insert into affiliate
    (name, gender, identification)
values
    ('Natalee Brawson', 'F', 13692802);
insert into affiliate
    (name, gender, identification)
values
    ('Sanderson Hourihan', 'M', 22504400);
insert into affiliate
    (name, gender, identification)
values
    ('Shepard Thackwray', 'M', 13845032);
insert into affiliate
    (name, gender, identification)
values
    ('Adolphe Masey', 'M', 18431347);
insert into affiliate
    (name, gender, identification)
values
    ('Worthington Huddart', 'M', 25336097);
insert into affiliate
    (name, gender, identification)
values
    ('Tuckie Cadagan', 'M', 28842807);
insert into affiliate
    (name, gender, identification)
values
    ('Simeon Lanfer', 'M', 22437657);
insert into affiliate
    (name, gender, identification)
values
    ('Denny Angell', 'F', 19780495);
insert into affiliate
    (name, gender, identification)
values
    ('Mozes Godlee', 'M', 24199907);
insert into affiliate
    (name, gender, identification)
values
    ('Marion Kurdani', 'F', 10480260);
insert into affiliate
    (name, gender, identification)
values
    ('Christophorus Blackly', 'M', 6424307);
insert into affiliate
    (name, gender, identification)
values
    ('Brennan Killick', 'M', 13654828);
insert into affiliate
    (name, gender, identification)
values
    ('Torry Bainbrigge', 'M', 23995738);
insert into affiliate
    (name, gender, identification)
values
    ('Kanya Gricewood', 'F', 23260330);
insert into affiliate
    (name, gender, identification)
values
    ('Samantha Shutler', 'F', 5545592);
insert into affiliate
    (name, gender, identification)
values
    ('Hy Pendlebery', 'M', 16582365);
insert into affiliate
    (name, gender, identification)
values
    ('Abel Bramer', 'M', 22637880);
insert into affiliate
    (name, gender, identification)
values
    ('Banky Bacop', 'M', 14858115);
insert into affiliate
    (name, gender, identification)
values
    ('Loleta Konzelmann', 'F', 22825073);
insert into affiliate
    (name, gender, identification)
values
    ('Alvira Amort', 'F', 5687308);
insert into affiliate
    (name, gender, identification)
values
    ('Finley Etherington', 'M', 10593991);
insert into affiliate
    (name, gender, identification)
values
    ('Marline Troke', 'F', 18821436);
insert into affiliate
    (name, gender, identification)
values
    ('Bethanne Mundie', 'F', 9485058);
insert into affiliate
    (name, gender, identification)
values
    ('Virgie McCallum', 'M', 10341991);
insert into affiliate
    (name, gender, identification)
values
    ('Leshia Ruffey', 'F', 12827996);
insert into affiliate
    (name, gender, identification)
values
    ('Camel Havile', 'F', 17627312);
insert into affiliate
    (name, gender, identification)
values
    ('Alvie Pawlyn', 'M', 29720887);
insert into affiliate
    (name, gender, identification)
values
    ('Lacy Klaiser', 'F', 9452163);
insert into affiliate
    (name, gender, identification)
values
    ('Kiele Spuner', 'F', 18426051);
insert into affiliate
    (name, gender, identification)
values
    ('Hodge Frow', 'M', 11837294);
insert into affiliate
    (name, gender, identification)
values
    ('Jolene Swinerd', 'F', 25126331);
insert into affiliate
    (name, gender, identification)
values
    ('Josie Skeermer', 'F', 16748984);
insert into affiliate
    (name, gender, identification)
values
    ('Prisca Kingman', 'F', 16975627);
insert into affiliate
    (name, gender, identification)
values
    ('Zedekiah Lockwood', 'M', 5435423);
insert into affiliate
    (name, gender, identification)
values
    ('Zollie Tofanini', 'M', 16371613);
insert into affiliate
    (name, gender, identification)
values
    ('Renado Daughtery', 'M', 8682737);
insert into affiliate
    (name, gender, identification)
values
    ('Saunders Frensche', 'M', 5004497);
insert into affiliate
    (name, gender, identification)
values
    ('Tracey Camellini', 'M', 10511908);
insert into affiliate
    (name, gender, identification)
values
    ('Fredia Ferrarotti', 'F', 23909241);
insert into affiliate
    (name, gender, identification)
values
    ('Barnard Mara', 'M', 14764246);
insert into affiliate
    (name, gender, identification)
values
    ('Jeremy Shields', 'M', 29087672);
insert into affiliate
    (name, gender, identification)
values
    ('Baron Feitosa', 'M', 11809764);
insert into affiliate
    (name, gender, identification)
values
    ('Kass Bernadon', 'F', 17764592);
insert into affiliate
    (name, gender, identification)
values
    ('Olympe Snewin', 'F', 27282121);
insert into affiliate
    (name, gender, identification)
values
    ('Benni Clementel', 'F', 28996099);
insert into affiliate
    (name, gender, identification)
values
    ('Gideon Brunskill', 'M', 25823570);
insert into affiliate
    (name, gender, identification)
values
    ('Hamish Juanico', 'M', 23629225);
insert into affiliate
    (name, gender, identification)
values
    ('Loy Davidy', 'M', 6680668);
insert into affiliate
    (name, gender, identification)
values
    ('Rabi Canadas', 'M', 9817044);
insert into affiliate
    (name, gender, identification)
values
    ('Faina Asp', 'F', 10832624);
insert into affiliate
    (name, gender, identification)
values
    ('Massimo Foan', 'M', 8457767);
insert into affiliate
    (name, gender, identification)
values
    ('Davie Placide', 'M', 25603591);
insert into affiliate
    (name, gender, identification)
values
    ('Daron Ingledew', 'M', 5658302);
insert into affiliate
    (name, gender, identification)
values
    ('Ring Cleugh', 'M', 27363923);
insert into affiliate
    (name, gender, identification)
values
    ('Nathan Soaper', 'M', 10853747);
insert into affiliate
    (name, gender, identification)
values
    ('Buffy Pomroy', 'F', 9649666);
insert into affiliate
    (name, gender, identification)
values
    ('Lyndsey Anthoin', 'F', 13937495);
insert into affiliate
    (name, gender, identification)
values
    ('Lenka Carthy', 'F', 21692078);
insert into affiliate
    (name, gender, identification)
values
    ('Aubree Jephcott', 'F', 21954873);
insert into affiliate
    (name, gender, identification)
values
    ('Gav Hacquel', 'M', 15432893);
insert into affiliate
    (name, gender, identification)
values
    ('Franchot Livoir', 'M', 22043887);
insert into affiliate
    (name, gender, identification)
values
    ('Blaire Rosgen', 'F', 22482376);
insert into affiliate
    (name, gender, identification)
values
    ('Tamar Buddle', 'F', 24367280);
insert into affiliate
    (name, gender, identification)
values
    ('Dinnie Hanson', 'F', 13493200);
insert into affiliate
    (name, gender, identification)
values
    ('Ollie Riche', 'F', 29448137);
insert into affiliate
    (name, gender, identification)
values
    ('Curr Stanwix', 'M', 22658667);
insert into affiliate
    (name, gender, identification)
values
    ('Alfredo Pearl', 'M', 24465592);
insert into affiliate
    (name, gender, identification)
values
    ('Conny George', 'F', 27266045);
insert into affiliate
    (name, gender, identification)
values
    ('Malory Laneham', 'F', 12371541);
insert into affiliate
    (name, gender, identification)
values
    ('Brinn Shrimptone', 'F', 20707324);
insert into affiliate
    (name, gender, identification)
values
    ('Logan Marriott', 'M', 23643573);
insert into affiliate
    (name, gender, identification)
values
    ('Benetta Hartgill', 'F', 10440401);
insert into affiliate
    (name, gender, identification)
values
    ('Jobi McPhillips', 'F', 7845799);
insert into affiliate
    (name, gender, identification)
values
    ('Hugo Ovendon', 'M', 29500289);
insert into affiliate
    (name, gender, identification)
values
    ('Ninon Churchward', 'F', 22145410);
insert into affiliate
    (name, gender, identification)
values
    ('Jillane Gisby', 'F', 22108784);
insert into affiliate
    (name, gender, identification)
values
    ('Farica Gidman', 'F', 18129562);
insert into affiliate
    (name, gender, identification)
values
    ('Enrica Zelley', 'F', 15789133);
insert into affiliate
    (name, gender, identification)
values
    ('Gracia Cowern', 'F', 16674253);
insert into affiliate
    (name, gender, identification)
values
    ('Ardyce Scrauniage', 'F', 29978679);
insert into affiliate
    (name, gender, identification)
values
    ('Marc Fancet', 'M', 7013871);
insert into affiliate
    (name, gender, identification)
values
    ('Evered Dalyiel', 'M', 16233304);
insert into affiliate
    (name, gender, identification)
values
    ('Shaine MacDunlevy', 'M', 10655675);
insert into affiliate
    (name, gender, identification)
values
    ('Rebeka Corneck', 'F', 16640013);
insert into affiliate
    (name, gender, identification)
values
    ('Broderick Vern', 'M', 22536306);
insert into affiliate
    (name, gender, identification)
values
    ('Kat Searight', 'F', 15276659);
insert into affiliate
    (name, gender, identification)
values
    ('Benetta Bundock', 'F', 24519907);
insert into affiliate
    (name, gender, identification)
values
    ('Muhammad Ockendon', 'M', 26885801);
insert into affiliate
    (name, gender, identification)
values
    ('Cornie Mundow', 'F', 10648510);
insert into affiliate
    (name, gender, identification)
values
    ('Bat Lowthian', 'M', 14457065);
insert into affiliate
    (name, gender, identification)
values
    ('Darsey Blumer', 'F', 24049350);
insert into affiliate
    (name, gender, identification)
values
    ('Dacia McKillop', 'F', 17718073);
insert into affiliate
    (name, gender, identification)
values
    ('Jolene Gisburn', 'F', 11806795);
insert into affiliate
    (name, gender, identification)
values
    ('Dot Ettritch', 'F', 21641628);
insert into affiliate
    (name, gender, identification)
values
    ('Stanwood Quickenden', 'M', 18831547);
insert into affiliate
    (name, gender, identification)
values
    ('Orran Hatton', 'M', 6445393);
insert into affiliate
    (name, gender, identification)
values
    ('Rasla Whyffen', 'F', 6843761);
insert into affiliate
    (name, gender, identification)
values
    ('Oates Banbrook', 'M', 17583650);
insert into affiliate
    (name, gender, identification)
values
    ('Cynthea Purple', 'F', 18992772);
insert into affiliate
    (name, gender, identification)
values
    ('Thedric Archanbault', 'M', 15934796);
insert into affiliate
    (name, gender, identification)
values
    ('Cherish Korous', 'F', 26881397);
insert into affiliate
    (name, gender, identification)
values
    ('Mordecai Benedtti', 'M', 5865769);
insert into affiliate
    (name, gender, identification)
values
    ('Rudolf Bunney', 'M', 14073373);
insert into affiliate
    (name, gender, identification)
values
    ('Bancroft Tesyro', 'M', 22648580);
insert into affiliate
    (name, gender, identification)
values
    ('Rosaleen Shrawley', 'F', 22119998);
insert into affiliate
    (name, gender, identification)
values
    ('Dorian Touret', 'F', 19776277);
insert into affiliate
    (name, gender, identification)
values
    ('Aymer McCloughlin', 'M', 13433936);
insert into affiliate
    (name, gender, identification)
values
    ('Mathilde Comsty', 'F', 20030891);
insert into affiliate
    (name, gender, identification)
values
    ('Nap Holworth', 'M', 28795162);
insert into affiliate
    (name, gender, identification)
values
    ('Bar Paulich', 'M', 13979329);
insert into affiliate
    (name, gender, identification)
values
    ('Rosabel Smout', 'F', 29863184);
insert into affiliate
    (name, gender, identification)
values
    ('Lavena Simmance', 'F', 21068853);
insert into affiliate
    (name, gender, identification)
values
    ('Matteo O''Loghlen', 'M', 26052128);
insert into affiliate
    (name, gender, identification)
values
    ('Boris Elsdon', 'M', 8918924);
insert into affiliate
    (name, gender, identification)
values
    ('Yetty Colter', 'F', 13948833);
insert into affiliate
    (name, gender, identification)
values
    ('Ike Southcott', 'M', 5435005);
insert into affiliate
    (name, gender, identification)
values
    ('Darice McFadden', 'F', 8606021);
insert into affiliate
    (name, gender, identification)
values
    ('Candi Neate', 'F', 20172544);
insert into affiliate
    (name, gender, identification)
values
    ('Marti Fakeley', 'F', 8010257);
insert into affiliate
    (name, gender, identification)
values
    ('Corine Domaschke', 'F', 14353773);
insert into affiliate
    (name, gender, identification)
values
    ('Quinton Kiddle', 'M', 27063580);
insert into affiliate
    (name, gender, identification)
values
    ('Kimble Sorley', 'M', 7314576);
insert into affiliate
    (name, gender, identification)
values
    ('Tony Mora', 'F', 22252313);
insert into affiliate
    (name, gender, identification)
values
    ('Chrisy Downing', 'M', 26038602);
insert into affiliate
    (name, gender, identification)
values
    ('Arlan Hrycek', 'M', 28530358);
insert into affiliate
    (name, gender, identification)
values
    ('Ruddie Parradice', 'M', 16008812);
insert into affiliate
    (name, gender, identification)
values
    ('Taylor Janota', 'M', 26372970);
insert into affiliate
    (name, gender, identification)
values
    ('Heriberto Steeden', 'M', 11725460);
insert into affiliate
    (name, gender, identification)
values
    ('Solomon Crocetto', 'M', 9077960);
insert into affiliate
    (name, gender, identification)
values
    ('Ainslee Ettritch', 'F', 19226980);
insert into affiliate
    (name, gender, identification)
values
    ('Traver Bayless', 'M', 11398898);
insert into affiliate
    (name, gender, identification)
values
    ('Teirtza Morrall', 'F', 18904653);
insert into affiliate
    (name, gender, identification)
values
    ('Thaddus Benini', 'M', 11689882);
insert into affiliate
    (name, gender, identification)
values
    ('Danna Mewes', 'F', 5417880);
insert into affiliate
    (name, gender, identification)
values
    ('Britt Kivlin', 'M', 28530217);
insert into affiliate
    (name, gender, identification)
values
    ('Geno Rockhill', 'M', 12669253);
insert into affiliate
    (name, gender, identification)
values
    ('Gardie Yell', 'M', 9750798);
insert into affiliate
    (name, gender, identification)
values
    ('Gregoor MacLleese', 'M', 25664857);
insert into affiliate
    (name, gender, identification)
values
    ('Sheela Soule', 'F', 14069654);
insert into affiliate
    (name, gender, identification)
values
    ('Helli Sealy', 'F', 22668270);
insert into affiliate
    (name, gender, identification)
values
    ('Ernaline Evenden', 'F', 20164323);
insert into affiliate
    (name, gender, identification)
values
    ('Torr Housego', 'M', 11118001);
insert into affiliate
    (name, gender, identification)
values
    ('Raynard Candlin', 'M', 24440154);
insert into affiliate
    (name, gender, identification)
values
    ('Mikaela Handrick', 'F', 15469972);
insert into affiliate
    (name, gender, identification)
values
    ('Melosa O''Lahy', 'F', 27588796);
insert into affiliate
    (name, gender, identification)
values
    ('Munmro Dregan', 'M', 25138398);
insert into affiliate
    (name, gender, identification)
values
    ('Heinrick Swinford', 'M', 27939429);
insert into affiliate
    (name, gender, identification)
values
    ('Keslie McSpirron', 'F', 20336691);
insert into affiliate
    (name, gender, identification)
values
    ('Abagail Davydenko', 'F', 23767650);
insert into affiliate
    (name, gender, identification)
values
    ('Corette Killick', 'F', 5695074);
insert into affiliate
    (name, gender, identification)
values
    ('Ross Banishevitz', 'M', 13508853);
insert into affiliate
    (name, gender, identification)
values
    ('Ester Elloy', 'F', 11435451);
insert into affiliate
    (name, gender, identification)
values
    ('Chrissie Ornils', 'F', 15004932);
insert into affiliate
    (name, gender, identification)
values
    ('Genevra Hanbridge', 'F', 29237760);
insert into affiliate
    (name, gender, identification)
values
    ('Hynda Fratson', 'F', 24274333);
insert into affiliate
    (name, gender, identification)
values
    ('Isac Hanny', 'M', 19377779);
insert into affiliate
    (name, gender, identification)
values
    ('Sebastiano Isaacs', 'M', 15395303);
insert into affiliate
    (name, gender, identification)
values
    ('Dominique Chennells', 'F', 5603055);
insert into affiliate
    (name, gender, identification)
values
    ('Rubi Cawston', 'F', 8981503);
insert into affiliate
    (name, gender, identification)
values
    ('Abbie Leece', 'M', 9268196);
insert into affiliate
    (name, gender, identification)
values
    ('Berthe Vittet', 'F', 12908500);
insert into affiliate
    (name, gender, identification)
values
    ('Clemmie Foxwell', 'M', 6016128);
insert into affiliate
    (name, gender, identification)
values
    ('Man Southerell', 'M', 6988903);
insert into affiliate
    (name, gender, identification)
values
    ('Meggy Commins', 'F', 13692317);
insert into affiliate
    (name, gender, identification)
values
    ('Ajay Dagwell', 'F', 9592691);
insert into affiliate
    (name, gender, identification)
values
    ('Flossy Pritchard', 'F', 9470391);
insert into affiliate
    (name, gender, identification)
values
    ('Iggie Couser', 'M', 6275953);
insert into affiliate
    (name, gender, identification)
values
    ('Lilli Sloper', 'F', 20179159);
insert into affiliate
    (name, gender, identification)
values
    ('Tess Le Page', 'F', 9927329);
insert into affiliate
    (name, gender, identification)
values
    ('Marty Fee', 'M', 21907002);
insert into affiliate
    (name, gender, identification)
values
    ('Steward Johnikin', 'M', 20969483);
insert into affiliate
    (name, gender, identification)
values
    ('Ethelbert Conniam', 'M', 5184684);
insert into affiliate
    (name, gender, identification)
values
    ('Estell Everil', 'F', 7950008);
insert into affiliate
    (name, gender, identification)
values
    ('Malissa Bonnefin', 'F', 25758569);
insert into affiliate
    (name, gender, identification)
values
    ('Gertrudis Jex', 'F', 25493670);
insert into affiliate
    (name, gender, identification)
values
    ('Nancey Slowan', 'F', 26279615);
insert into affiliate
    (name, gender, identification)
values
    ('Bea ducarme', 'F', 29643713);
insert into affiliate
    (name, gender, identification)
values
    ('Delilah Tweedie', 'F', 27877946);
insert into affiliate
    (name, gender, identification)
values
    ('Gertrud Whitley', 'F', 19326088);
insert into affiliate
    (name, gender, identification)
values
    ('Iggy Etty', 'M', 17877352);
insert into affiliate
    (name, gender, identification)
values
    ('Raquel O''Donnelly', 'F', 28362037);
insert into affiliate
    (name, gender, identification)
values
    ('Dorrie Rowlands', 'F', 24549690);
insert into affiliate
    (name, gender, identification)
values
    ('Dasya Solway', 'F', 15484386);
insert into affiliate
    (name, gender, identification)
values
    ('Audry Houchin', 'F', 19486610);
insert into affiliate
    (name, gender, identification)
values
    ('Erie Spary', 'M', 10700938);
insert into affiliate
    (name, gender, identification)
values
    ('Giulia Aharoni', 'F', 5916985);
insert into affiliate
    (name, gender, identification)
values
    ('Karlyn Habbeshaw', 'F', 8737854);
insert into affiliate
    (name, gender, identification)
values
    ('Pooh Grunwall', 'M', 14555331);
insert into affiliate
    (name, gender, identification)
values
    ('Karim Adderson', 'M', 5091633);
insert into affiliate
    (name, gender, identification)
values
    ('Annemarie Triswell', 'F', 23961430);
insert into affiliate
    (name, gender, identification)
values
    ('Nickey Dumpleton', 'M', 25172201);
insert into affiliate
    (name, gender, identification)
values
    ('Daron Vinten', 'M', 21610270);
insert into affiliate
    (name, gender, identification)
values
    ('Grantham Pioch', 'M', 14145313);
insert into affiliate
    (name, gender, identification)
values
    ('Arlee Blincko', 'F', 28196296);
insert into affiliate
    (name, gender, identification)
values
    ('Vasilis Dunniom', 'M', 28157529);
insert into affiliate
    (name, gender, identification)
values
    ('Kristine Hearnshaw', 'F', 14934654);
insert into affiliate
    (name, gender, identification)
values
    ('Adrianna Aleksandrikin', 'F', 26929708);
insert into affiliate
    (name, gender, identification)
values
    ('Jewel Prall', 'F', 8893572);
insert into affiliate
    (name, gender, identification)
values
    ('Gideon Boultwood', 'M', 6587500);
insert into affiliate
    (name, gender, identification)
values
    ('Yevette Jellett', 'F', 7586668);
insert into affiliate
    (name, gender, identification)
values
    ('Rubin Fairall', 'M', 26714806);
insert into affiliate
    (name, gender, identification)
values
    ('Ellynn Whatson', 'F', 23360454);
insert into affiliate
    (name, gender, identification)
values
    ('Di Vicary', 'F', 28447213);
insert into affiliate
    (name, gender, identification)
values
    ('Ettore Gemeau', 'M', 14050395);
insert into affiliate
    (name, gender, identification)
values
    ('Denys Callender', 'F', 23013264);
insert into affiliate
    (name, gender, identification)
values
    ('Pru Johnsson', 'F', 12379015);
insert into affiliate
    (name, gender, identification)
values
    ('Rasia Lightowlers', 'F', 6298899);
insert into affiliate
    (name, gender, identification)
values
    ('Elvin Leddie', 'M', 17751652);
insert into affiliate
    (name, gender, identification)
values
    ('Amerigo Manuele', 'M', 22079718);
insert into affiliate
    (name, gender, identification)
values
    ('Basile Fransson', 'M', 24584118);
insert into affiliate
    (name, gender, identification)
values
    ('Kata Kesby', 'F', 28562684);
insert into affiliate
    (name, gender, identification)
values
    ('Gilemette Frail', 'F', 11109452);
insert into affiliate
    (name, gender, identification)
values
    ('Enrica Urlin', 'F', 12103514);
insert into affiliate
    (name, gender, identification)
values
    ('Lilias Southey', 'F', 19169052);
insert into affiliate
    (name, gender, identification)
values
    ('Richart Mellmer', 'M', 22827796);
insert into affiliate
    (name, gender, identification)
values
    ('Benyamin Studholme', 'M', 20641500);
insert into affiliate
    (name, gender, identification)
values
    ('Casi Tregea', 'F', 16025011);
insert into affiliate
    (name, gender, identification)
values
    ('Garth Oxherd', 'M', 6207171);
insert into affiliate
    (name, gender, identification)
values
    ('Allistir Douse', 'M', 21596378);
insert into affiliate
    (name, gender, identification)
values
    ('Cherry Heinig', 'F', 25862359);
insert into affiliate
    (name, gender, identification)
values
    ('Harvey Vardey', 'M', 11929254);
insert into affiliate
    (name, gender, identification)
values
    ('Ephrem Julien', 'M', 26488189);
insert into affiliate
    (name, gender, identification)
values
    ('Ernie Cushe', 'M', 19752024);
insert into affiliate
    (name, gender, identification)
values
    ('Loralyn Sliman', 'F', 19590929);
insert into affiliate
    (name, gender, identification)
values
    ('Adam Larmor', 'M', 5386280);
insert into affiliate
    (name, gender, identification)
values
    ('Lindon Ivchenko', 'M', 14735576);
insert into affiliate
    (name, gender, identification)
values
    ('Esteban Buttfield', 'M', 28142241);
insert into affiliate
    (name, gender, identification)
values
    ('Grete Hamstead', 'F', 25483532);
insert into affiliate
    (name, gender, identification)
values
    ('Ivette Trencher', 'F', 15199888);
insert into affiliate
    (name, gender, identification)
values
    ('Christin Volante', 'F', 21828668);
insert into affiliate
    (name, gender, identification)
values
    ('Joachim Hartridge', 'M', 15407864);
insert into affiliate
    (name, gender, identification)
values
    ('Rochester Urey', 'M', 21392490);
insert into affiliate
    (name, gender, identification)
values
    ('Brietta Kiln', 'F', 20929720);
insert into affiliate
    (name, gender, identification)
values
    ('Kendall Sinisbury', 'M', 11595102);
insert into affiliate
    (name, gender, identification)
values
    ('Piggy Notley', 'M', 19916518);
insert into affiliate
    (name, gender, identification)
values
    ('Gabriel Antonov', 'F', 11798418);
insert into affiliate
    (name, gender, identification)
values
    ('Ennis Wermerling', 'M', 17168479);
insert into affiliate
    (name, gender, identification)
values
    ('Sunny Sunderland', 'F', 18340010);
insert into affiliate
    (name, gender, identification)
values
    ('Federico Winterson', 'M', 11582085);
insert into affiliate
    (name, gender, identification)
values
    ('Bartlet Hodgets', 'M', 10243793);
insert into affiliate
    (name, gender, identification)
values
    ('Anastassia Murtell', 'F', 22775325);
insert into affiliate
    (name, gender, identification)
values
    ('Mella Ketton', 'F', 8524785);
insert into affiliate
    (name, gender, identification)
values
    ('Herta Casina', 'F', 21607899);
insert into affiliate
    (name, gender, identification)
values
    ('Dyana Porker', 'F', 14113676);
insert into affiliate
    (name, gender, identification)
values
    ('Meyer Giamuzzo', 'M', 29964604);
insert into affiliate
    (name, gender, identification)
values
    ('Antoinette Lindeberg', 'F', 8915555);
insert into affiliate
    (name, gender, identification)
values
    ('Andrea Saunder', 'F', 6882770);
insert into affiliate
    (name, gender, identification)
values
    ('Nevile Nockolds', 'M', 21175647);
insert into affiliate
    (name, gender, identification)
values
    ('Silvan Twist', 'M', 13720992);
insert into affiliate
    (name, gender, identification)
values
    ('Pauletta Abbie', 'F', 14427469);
insert into affiliate
    (name, gender, identification)
values
    ('Annora Obington', 'F', 22127733);
insert into affiliate
    (name, gender, identification)
values
    ('Minda Rapo', 'F', 28379339);
insert into affiliate
    (name, gender, identification)
values
    ('Bat Paradis', 'M', 14601383);
insert into affiliate
    (name, gender, identification)
values
    ('Pat Temperton', 'M', 19939401);
insert into affiliate
    (name, gender, identification)
values
    ('Alfons Cregg', 'M', 22198917);
insert into affiliate
    (name, gender, identification)
values
    ('Jody Kunert', 'M', 13818837);
insert into affiliate
    (name, gender, identification)
values
    ('Veronique Ratcliff', 'F', 9010947);
insert into affiliate
    (name, gender, identification)
values
    ('Jeane Assiter', 'F', 18054589);
insert into affiliate
    (name, gender, identification)
values
    ('Sula Celler', 'F', 9908501);
insert into affiliate
    (name, gender, identification)
values
    ('Dominic MacManus', 'M', 29495666);
insert into affiliate
    (name, gender, identification)
values
    ('Kienan Faraker', 'M', 14723651);
insert into affiliate
    (name, gender, identification)
values
    ('Galvan Myrtle', 'M', 22136199);
insert into affiliate
    (name, gender, identification)
values
    ('Mickie Everiss', 'F', 16202838);
insert into affiliate
    (name, gender, identification)
values
    ('Arie Yakolev', 'M', 25212302);
insert into affiliate
    (name, gender, identification)
values
    ('Briana Monahan', 'F', 12728290);
insert into affiliate
    (name, gender, identification)
values
    ('Lacee Bradburn', 'F', 6058349);
insert into affiliate
    (name, gender, identification)
values
    ('Lyle Standbridge', 'M', 5298911);
insert into affiliate
    (name, gender, identification)
values
    ('Jared Barlee', 'M', 20948231);
insert into affiliate
    (name, gender, identification)
values
    ('Granthem Verey', 'M', 10156074);
insert into affiliate
    (name, gender, identification)
values
    ('Shannon Bonnick', 'F', 15383466);
insert into affiliate
    (name, gender, identification)
values
    ('Caressa Ponnsett', 'F', 15090140);
insert into affiliate
    (name, gender, identification)
values
    ('Mortie Wedmore.', 'M', 6674209);
insert into affiliate
    (name, gender, identification)
values
    ('Barbra Minghetti', 'F', 21136152);
insert into affiliate
    (name, gender, identification)
values
    ('Barnebas Way', 'M', 14294663);
insert into affiliate
    (name, gender, identification)
values
    ('Davey O''Doherty', 'M', 13778726);
insert into affiliate
    (name, gender, identification)
values
    ('Molli Finlay', 'F', 10382095);
insert into affiliate
    (name, gender, identification)
values
    ('Burl Heisham', 'M', 13383538);
insert into affiliate
    (name, gender, identification)
values
    ('Ronni Ring', 'F', 20450216);
insert into affiliate
    (name, gender, identification)
values
    ('Aggie Slane', 'F', 13690418);
insert into affiliate
    (name, gender, identification)
values
    ('Ruthe Tieraney', 'F', 23184227);
insert into affiliate
    (name, gender, identification)
values
    ('Anna-maria MacSporran', 'F', 26801824);
insert into affiliate
    (name, gender, identification)
values
    ('Deloria Drance', 'F', 7527789);
insert into affiliate
    (name, gender, identification)
values
    ('Vanna Desouza', 'F', 9315954);
insert into affiliate
    (name, gender, identification)
values
    ('Romeo Thorouggood', 'M', 26082356);
insert into affiliate
    (name, gender, identification)
values
    ('Sarene McMonies', 'F', 26993318);
insert into affiliate
    (name, gender, identification)
values
    ('Angel Tesmond', 'M', 24832359);
insert into affiliate
    (name, gender, identification)
values
    ('Garret Kimber', 'M', 20207693);
insert into affiliate
    (name, gender, identification)
values
    ('Patty Shorto', 'F', 27629694);
insert into affiliate
    (name, gender, identification)
values
    ('Elijah Cisec', 'M', 13944362);
insert into affiliate
    (name, gender, identification)
values
    ('Millicent MacGahy', 'F', 28879861);
insert into affiliate
    (name, gender, identification)
values
    ('Milzie Attaway', 'F', 14286424);
insert into affiliate
    (name, gender, identification)
values
    ('Sutherland Gudahy', 'M', 22084914);
insert into affiliate
    (name, gender, identification)
values
    ('Mano Fidelli', 'M', 5871897);
insert into affiliate
    (name, gender, identification)
values
    ('Sansone Boulds', 'M', 23775966);
insert into affiliate
    (name, gender, identification)
values
    ('Tedmund Colson', 'M', 20978805);
insert into affiliate
    (name, gender, identification)
values
    ('Pattin Oblein', 'M', 12833641);
insert into affiliate
    (name, gender, identification)
values
    ('Harper Folley', 'M', 13289220);
insert into affiliate
    (name, gender, identification)
values
    ('Morganica Llorente', 'F', 14619075);
insert into affiliate
    (name, gender, identification)
values
    ('Yank Baiss', 'M', 25689712);
insert into affiliate
    (name, gender, identification)
values
    ('Carlen Cattini', 'F', 28029686);
insert into affiliate
    (name, gender, identification)
values
    ('Halsey Barnaclough', 'M', 8904179);
insert into affiliate
    (name, gender, identification)
values
    ('Jacintha Yakunikov', 'F', 29698322);
insert into affiliate
    (name, gender, identification)
values
    ('Urson Eliaz', 'M', 20249354);
insert into affiliate
    (name, gender, identification)
values
    ('Corbet O''Deoran', 'M', 26051812);
insert into affiliate
    (name, gender, identification)
values
    ('Linea Dutson', 'F', 10881551);
insert into affiliate
    (name, gender, identification)
values
    ('Gregorio Swyn', 'M', 17065765);
insert into affiliate
    (name, gender, identification)
values
    ('Nikolaus Lieber', 'M', 6038633);
insert into affiliate
    (name, gender, identification)
values
    ('Colline Whitsey', 'F', 21686223);
insert into affiliate
    (name, gender, identification)
values
    ('Floyd Stawell', 'M', 5790562);
insert into affiliate
    (name, gender, identification)
values
    ('Krissie Tonnesen', 'F', 12926790);
insert into affiliate
    (name, gender, identification)
values
    ('Sheela Skate', 'F', 26814674);
insert into affiliate
    (name, gender, identification)
values
    ('Waylan Cantero', 'M', 18422675);
insert into affiliate
    (name, gender, identification)
values
    ('Garwin Meert', 'M', 7577450);
insert into affiliate
    (name, gender, identification)
values
    ('Adel Fanshawe', 'F', 10716384);
insert into affiliate
    (name, gender, identification)
values
    ('Rosamund Berendsen', 'F', 10426276);
insert into affiliate
    (name, gender, identification)
values
    ('Craig Prandy', 'M', 21973999);
insert into affiliate
    (name, gender, identification)
values
    ('Wyndham Morecomb', 'M', 29526370);
insert into affiliate
    (name, gender, identification)
values
    ('Haroun Schuchmacher', 'M', 6173414);
insert into affiliate
    (name, gender, identification)
values
    ('Bevon Wakeman', 'M', 20342839);
insert into affiliate
    (name, gender, identification)
values
    ('Berti Lott', 'F', 19210241);
insert into affiliate
    (name, gender, identification)
values
    ('Kearney Margaritelli', 'M', 22391851);
insert into affiliate
    (name, gender, identification)
values
    ('Otis Skaif', 'M', 23341940);
insert into affiliate
    (name, gender, identification)
values
    ('Marshall Priest', 'M', 24100722);
insert into affiliate
    (name, gender, identification)
values
    ('Pris Lethieulier', 'F', 22173259);
insert into affiliate
    (name, gender, identification)
values
    ('Reece Flowerden', 'M', 27009490);
insert into affiliate
    (name, gender, identification)
values
    ('Marion Pooke', 'M', 10565609);
insert into affiliate
    (name, gender, identification)
values
    ('Maude Vase', 'F', 12030594);
insert into affiliate
    (name, gender, identification)
values
    ('Cletis Whitear', 'M', 27980179);
insert into affiliate
    (name, gender, identification)
values
    ('Rinaldo Dickinson', 'M', 27572364);
insert into affiliate
    (name, gender, identification)
values
    ('Leslie Ortner', 'F', 18374434);
insert into affiliate
    (name, gender, identification)
values
    ('Kerry Tonkin', 'F', 16876281);
insert into affiliate
    (name, gender, identification)
values
    ('Allie Gibben', 'M', 27787975);
insert into affiliate
    (name, gender, identification)
values
    ('Say Santello', 'M', 25903009);
insert into affiliate
    (name, gender, identification)
values
    ('Marianna Grainge', 'F', 7532054);
insert into affiliate
    (name, gender, identification)
values
    ('Auberon Dufoure', 'M', 17743657);
insert into affiliate
    (name, gender, identification)
values
    ('Anissa Costi', 'F', 11211958);
insert into affiliate
    (name, gender, identification)
values
    ('Torr Ladbury', 'M', 28531327);
insert into affiliate
    (name, gender, identification)
values
    ('Glori Loughlan', 'F', 14487028);
insert into affiliate
    (name, gender, identification)
values
    ('Clarke Mott', 'M', 20885781);
insert into affiliate
    (name, gender, identification)
values
    ('Laurene Barosch', 'F', 6093954);
insert into affiliate
    (name, gender, identification)
values
    ('Julio Sinney', 'M', 8048912);
insert into affiliate
    (name, gender, identification)
values
    ('Fancie Orans', 'F', 9605863);
insert into affiliate
    (name, gender, identification)
values
    ('Kile Gerasch', 'M', 25937082);
insert into affiliate
    (name, gender, identification)
values
    ('Tawsha Stambridge', 'F', 17287327);
insert into affiliate
    (name, gender, identification)
values
    ('Baldwin Rohlfs', 'M', 12255528);
insert into affiliate
    (name, gender, identification)
values
    ('Hadleigh Beckwith', 'M', 8997930);
insert into affiliate
    (name, gender, identification)
values
    ('Avram Lockwood', 'M', 16249335);
insert into affiliate
    (name, gender, identification)
values
    ('Evered Lindstrom', 'M', 13373094);
insert into affiliate
    (name, gender, identification)
values
    ('Cissy Scardifield', 'F', 27948678);
insert into affiliate
    (name, gender, identification)
values
    ('Rochester Espinha', 'M', 10079783);
insert into affiliate
    (name, gender, identification)
values
    ('Fanny White', 'F', 15396641);
insert into affiliate
    (name, gender, identification)
values
    ('Kass Furmagier', 'F', 20228612);
insert into affiliate
    (name, gender, identification)
values
    ('Talbert Hernik', 'M', 16405469);
insert into affiliate
    (name, gender, identification)
values
    ('Myrilla Hirth', 'F', 27825086);
insert into affiliate
    (name, gender, identification)
values
    ('Eydie Tomasello', 'F', 27106236);
insert into affiliate
    (name, gender, identification)
values
    ('Karlens Matts', 'M', 6631933);
insert into affiliate
    (name, gender, identification)
values
    ('Valentino Goldhawk', 'M', 6797796);
insert into affiliate
    (name, gender, identification)
values
    ('Jonathon Oldknow', 'M', 12239178);
insert into affiliate
    (name, gender, identification)
values
    ('Iorgos Simko', 'M', 21599033);
insert into affiliate
    (name, gender, identification)
values
    ('Constantine Brazur', 'F', 9918574);
insert into affiliate
    (name, gender, identification)
values
    ('Octavius McAirt', 'M', 5795028);
insert into affiliate
    (name, gender, identification)
values
    ('Nyssa Corrington', 'F', 9875747);
insert into affiliate
    (name, gender, identification)
values
    ('Frasquito Derye-Barrett', 'M', 7124762);
insert into affiliate
    (name, gender, identification)
values
    ('Ralina Presshaugh', 'F', 20724923);
insert into affiliate
    (name, gender, identification)
values
    ('Phaedra Vanshin', 'F', 5977152);
insert into affiliate
    (name, gender, identification)
values
    ('Jamesy Purry', 'M', 14378220);
insert into affiliate
    (name, gender, identification)
values
    ('Francene Di Batista', 'F', 23944033);
insert into affiliate
    (name, gender, identification)
values
    ('Eimile Ambrosi', 'F', 23420626);
insert into affiliate
    (name, gender, identification)
values
    ('Manny Cockshut', 'M', 11068625);
insert into affiliate
    (name, gender, identification)
values
    ('Monah Lovegrove', 'F', 23623407);
insert into affiliate
    (name, gender, identification)
values
    ('Fletcher Simo', 'M', 19725315);
insert into affiliate
    (name, gender, identification)
values
    ('Felipa Flageul', 'F', 20780619);
insert into affiliate
    (name, gender, identification)
values
    ('Harv Judkins', 'M', 6420769);
insert into affiliate
    (name, gender, identification)
values
    ('Efren Craxford', 'M', 28577067);
insert into affiliate
    (name, gender, identification)
values
    ('Shelby Gamlin', 'M', 8815648);
insert into affiliate
    (name, gender, identification)
values
    ('Elliott Evill', 'M', 26565279);
insert into affiliate
    (name, gender, identification)
values
    ('Ashlin Merida', 'M', 8906605);
insert into affiliate
    (name, gender, identification)
values
    ('Husain Iwanicki', 'M', 27333335);
insert into affiliate
    (name, gender, identification)
values
    ('Chickie Mattheeuw', 'M', 12083352);
insert into affiliate
    (name, gender, identification)
values
    ('Damon Spellissy', 'M', 29736927);
insert into affiliate
    (name, gender, identification)
values
    ('Nathanil Rendell', 'M', 23087380);
insert into affiliate
    (name, gender, identification)
values
    ('Kristina Vasnev', 'F', 12990580);
insert into affiliate
    (name, gender, identification)
values
    ('Anatol Emmens', 'M', 9857989);
insert into affiliate
    (name, gender, identification)
values
    ('Stephannie Choke', 'F', 23791607);
insert into affiliate
    (name, gender, identification)
values
    ('Emmery Fennick', 'M', 23245421);
insert into affiliate
    (name, gender, identification)
values
    ('Clint Lowbridge', 'M', 11208598);
insert into affiliate
    (name, gender, identification)
values
    ('Anya Lingley', 'F', 7407334);
insert into affiliate
    (name, gender, identification)
values
    ('Paloma Eccott', 'F', 22710440);
insert into affiliate
    (name, gender, identification)
values
    ('Uriel Brobyn', 'M', 26206829);
insert into affiliate
    (name, gender, identification)
values
    ('Turner Ricson', 'M', 14321471);
insert into affiliate
    (name, gender, identification)
values
    ('Alonso Iglesias', 'M', 29870213);
insert into affiliate
    (name, gender, identification)
values
    ('Dyanna Kubczak', 'F', 26243742);
insert into affiliate
    (name, gender, identification)
values
    ('Felicity Hammerton', 'F', 22568616);
insert into affiliate
    (name, gender, identification)
values
    ('Octavius McCard', 'M', 16545235);
insert into affiliate
    (name, gender, identification)
values
    ('Sauncho Bernardinelli', 'M', 22322059);
insert into affiliate
    (name, gender, identification)
values
    ('Base McAndie', 'M', 27845531);
insert into affiliate
    (name, gender, identification)
values
    ('Mart Brewett', 'M', 15737149);
insert into affiliate
    (name, gender, identification)
values
    ('Twyla Metzig', 'F', 23962275);
insert into affiliate
    (name, gender, identification)
values
    ('Kiley Ellph', 'F', 6691730);
insert into affiliate
    (name, gender, identification)
values
    ('Renaldo Epps', 'M', 9385933);
insert into affiliate
    (name, gender, identification)
values
    ('Pennie Helix', 'M', 21664252);
insert into affiliate
    (name, gender, identification)
values
    ('Gan Rickesies', 'M', 29354194);
insert into affiliate
    (name, gender, identification)
values
    ('Wanids Skerme', 'F', 20665390);
insert into affiliate
    (name, gender, identification)
values
    ('Maiga Arlett', 'F', 28667717);
insert into affiliate
    (name, gender, identification)
values
    ('Niko Yallowley', 'M', 27876782);
insert into affiliate
    (name, gender, identification)
values
    ('Allayne Lamburne', 'M', 16842802);
insert into affiliate
    (name, gender, identification)
values
    ('Robinette Cockshott', 'F', 20583365);
insert into affiliate
    (name, gender, identification)
values
    ('Fifine Poor', 'F', 19279591);
insert into affiliate
    (name, gender, identification)
values
    ('Tracie Cheng', 'M', 20153756);
insert into affiliate
    (name, gender, identification)
values
    ('Benson Elen', 'M', 10401050);
insert into affiliate
    (name, gender, identification)
values
    ('Hardy Bentz', 'M', 10407417);
insert into affiliate
    (name, gender, identification)
values
    ('Rosalie O''Doireidh', 'F', 9760446);
insert into affiliate
    (name, gender, identification)
values
    ('Micki Gammie', 'F', 11500856);
insert into affiliate
    (name, gender, identification)
values
    ('Fancie Meachem', 'F', 16556408);
insert into affiliate
    (name, gender, identification)
values
    ('Fawne Battany', 'F', 26393156);
insert into affiliate
    (name, gender, identification)
values
    ('Huntlee Weathers', 'M', 26131574);
insert into affiliate
    (name, gender, identification)
values
    ('Arlen Arbuckle', 'M', 18805856);
insert into affiliate
    (name, gender, identification)
values
    ('Gracia Bassham', 'F', 10729658);
insert into affiliate
    (name, gender, identification)
values
    ('Jolene Thams', 'F', 7966375);
insert into affiliate
    (name, gender, identification)
values
    ('Pooh Cutcliffe', 'F', 15197527);
insert into affiliate
    (name, gender, identification)
values
    ('Maurits Linkleter', 'M', 29850445);
insert into affiliate
    (name, gender, identification)
values
    ('Any Pachmann', 'M', 29829201);
insert into affiliate
    (name, gender, identification)
values
    ('Heinrik Shilstone', 'M', 5381242);
insert into affiliate
    (name, gender, identification)
values
    ('Abbot Silly', 'M', 6310795);
insert into affiliate
    (name, gender, identification)
values
    ('Hal Tabourin', 'M', 10362944);
insert into affiliate
    (name, gender, identification)
values
    ('Zelma Burwin', 'F', 29499371);
insert into affiliate
    (name, gender, identification)
values
    ('Joshua Cordelette', 'M', 16248228);
insert into affiliate
    (name, gender, identification)
values
    ('Yevette Greeson', 'F', 15904103);
insert into affiliate
    (name, gender, identification)
values
    ('Wyatan Rothert', 'M', 19971403);
insert into affiliate
    (name, gender, identification)
values
    ('Sidoney Inworth', 'F', 10447006);
insert into affiliate
    (name, gender, identification)
values
    ('Abra Pringuer', 'F', 25594392);
insert into affiliate
    (name, gender, identification)
values
    ('Tedmund Matts', 'M', 24282157);

insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('19-6173062', 'Andonis Placstone', 16344459, 11228322, 'M', 1);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('10-4336659', 'Isidor Pedrocco', 18550101, 18195734, 'M', 2);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('18-8720487', 'Rae Learmount', 23250017, 16747597, 'F', 1);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('24-3903943', 'Klarika O''Sheils', 24883692, 12139324, 'F', 1);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('51-6356429', 'Dante Skirvin', 22573407, 13041505, 'M', 1);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('72-6927082', 'Traver Pentlow', 21962255, 18855474, 'M', 2);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('63-9830056', 'Brigit Hartmann', 17948489, 11715452, 'F', 2);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('73-7447647', 'Annmaria Stocky', 20872567, 15152117, 'F', 2);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('37-9127760', 'Myra Weavill', 23753756, 17247320, 'F', 1);
insert into employee
    (id_employee, name, identification, salary, gender, id_store)
values
    ('64-4832094', 'Hewett Porcas', 14276155, 19282261, 'M', 2);

insert into bank
    (name)
values
    ('Banesco');
insert into bank
    (name)
values
    ('Mercantil');
insert into bank
    (name)
values
    ('Provincial');

insert into cost
    (id_product, date, cost)
values
    (1, '2020-06-01', 1086);
insert into cost
    (id_product, date, cost)
values
    (2, '2020-06-01', 1651);
insert into cost
    (id_product, date, cost)
values
    (3, '2020-06-01', 1473);
insert into cost
    (id_product, date, cost)
values
    (4, '2020-06-01', 1316);
insert into cost
    (id_product, date, cost)
values
    (5, '2020-06-01', 1181);
insert into cost
    (id_product, date, cost)
values
    (6, '2020-06-01', 1525);
insert into cost
    (id_product, date, cost)
values
    (7, '2020-06-01', 1756);
insert into cost
    (id_product, date, cost)
values
    (8, '2020-06-01', 1490);
insert into cost
    (id_product, date, cost)
values
    (9, '2020-06-01', 1196);
insert into cost
    (id_product, date, cost)
values
    (10, '2020-06-01', 1367);
insert into cost
    (id_product, date, cost)
values
    (11, '2020-06-01', 1669);
insert into cost
    (id_product, date, cost)
values
    (12, '2020-06-01', 1126);
insert into cost
    (id_product, date, cost)
values
    (13, '2020-06-01', 1939);
insert into cost
    (id_product, date, cost)
values
    (14, '2020-06-01', 1878);
insert into cost
    (id_product, date, cost)
values
    (15, '2020-06-01', 1010);
insert into cost
    (id_product, date, cost)
values
    (16, '2020-06-01', 1606);
insert into cost
    (id_product, date, cost)
values
    (17, '2020-06-01', 1979);
insert into cost
    (id_product, date, cost)
values
    (18, '2020-06-01', 1571);
insert into cost
    (id_product, date, cost)
values
    (19, '2020-06-01', 1702);
insert into cost
    (id_product, date, cost)
values
    (20, '2020-06-01', 1129);
insert into cost
    (id_product, date, cost)
values
    (21, '2020-06-01', 1415);
insert into cost
    (id_product, date, cost)
values
    (22, '2020-06-01', 1767);
insert into cost
    (id_product, date, cost)
values
    (23, '2020-06-01', 1913);
insert into cost
    (id_product, date, cost)
values
    (24, '2020-06-01', 1835);
insert into cost
    (id_product, date, cost)
values
    (25, '2020-06-01', 1945);
insert into cost
    (id_product, date, cost)
values
    (26, '2020-06-01', 1011);
insert into cost
    (id_product, date, cost)
values
    (27, '2020-06-01', 1662);
insert into cost
    (id_product, date, cost)
values
    (28, '2020-06-01', 1219);
insert into cost
    (id_product, date, cost)
values
    (29, '2020-06-01', 1431);
insert into cost
    (id_product, date, cost)
values
    (30, '2020-06-01', 1944);
insert into cost
    (id_product, date, cost)
values
    (31, '2020-06-01', 1838);
insert into cost
    (id_product, date, cost)
values
    (32, '2020-06-01', 1727);
insert into cost
    (id_product, date, cost)
values
    (33, '2020-06-01', 1795);
insert into cost
    (id_product, date, cost)
values
    (34, '2020-06-01', 1909);
insert into cost
    (id_product, date, cost)
values
    (35, '2020-06-01', 1210);
insert into cost
    (id_product, date, cost)
values
    (36, '2020-06-01', 1916);
insert into cost
    (id_product, date, cost)
values
    (37, '2020-06-01', 1958);
insert into cost
    (id_product, date, cost)
values
    (38, '2020-06-01', 1425);
insert into cost
    (id_product, date, cost)
values
    (39, '2020-06-01', 1473);
insert into cost
    (id_product, date, cost)
values
    (40, '2020-06-01', 1422);
insert into cost
    (id_product, date, cost)
values
    (41, '2020-06-01', 1071);
insert into cost
    (id_product, date, cost)
values
    (42, '2020-06-01', 1313);
insert into cost
    (id_product, date, cost)
values
    (43, '2020-06-01', 1902);
insert into cost
    (id_product, date, cost)
values
    (44, '2020-06-01', 1449);
insert into cost
    (id_product, date, cost)
values
    (45, '2020-06-01', 1543);
insert into cost
    (id_product, date, cost)
values
    (46, '2020-06-01', 1839);
insert into cost
    (id_product, date, cost)
values
    (47, '2020-06-01', 1097);
insert into cost
    (id_product, date, cost)
values
    (48, '2020-06-01', 1864);
insert into cost
    (id_product, date, cost)
values
    (49, '2020-06-01', 1592);
insert into cost
    (id_product, date, cost)
values
    (50, '2020-06-01', 1217);
insert into cost
    (id_product, date, cost)
values
    (1, '2020-06-12', 2200);
insert into cost
    (id_product, date, cost)
values
    (2, '2020-06-08', 2597);
insert into cost
    (id_product, date, cost)
values
    (3, '2020-06-11', 2984);
insert into cost
    (id_product, date, cost)
values
    (4, '2020-06-10', 2780);
insert into cost
    (id_product, date, cost)
values
    (5, '2020-06-12', 2438);
insert into cost
    (id_product, date, cost)
values
    (6, '2020-06-08', 2506);
insert into cost
    (id_product, date, cost)
values
    (7, '2020-06-10', 2020);
insert into cost
    (id_product, date, cost)
values
    (8, '2020-06-11', 2005);
insert into cost
    (id_product, date, cost)
values
    (9, '2020-06-11', 2230);
insert into cost
    (id_product, date, cost)
values
    (10, '2020-06-13', 2851);
insert into cost
    (id_product, date, cost)
values
    (11, '2020-06-10', 2182);
insert into cost
    (id_product, date, cost)
values
    (12, '2020-06-08', 2838);
insert into cost
    (id_product, date, cost)
values
    (13, '2020-06-09', 2630);
insert into cost
    (id_product, date, cost)
values
    (14, '2020-06-12', 2251);
insert into cost
    (id_product, date, cost)
values
    (15, '2020-06-09', 2037);
insert into cost
    (id_product, date, cost)
values
    (16, '2020-06-11', 2472);
insert into cost
    (id_product, date, cost)
values
    (17, '2020-06-12', 2210);
insert into cost
    (id_product, date, cost)
values
    (18, '2020-06-12', 2920);
insert into cost
    (id_product, date, cost)
values
    (19, '2020-06-12', 2337);
insert into cost
    (id_product, date, cost)
values
    (20, '2020-06-09', 2715);
insert into cost
    (id_product, date, cost)
values
    (21, '2020-06-09', 2004);
insert into cost
    (id_product, date, cost)
values
    (22, '2020-06-12', 2173);
insert into cost
    (id_product, date, cost)
values
    (23, '2020-06-12', 2294);
insert into cost
    (id_product, date, cost)
values
    (24, '2020-06-08', 2939);
insert into cost
    (id_product, date, cost)
values
    (25, '2020-06-10', 2443);
insert into cost
    (id_product, date, cost)
values
    (26, '2020-06-12', 2463);
insert into cost
    (id_product, date, cost)
values
    (27, '2020-06-12', 2611);
insert into cost
    (id_product, date, cost)
values
    (28, '2020-06-12', 2649);
insert into cost
    (id_product, date, cost)
values
    (29, '2020-06-12', 2369);
insert into cost
    (id_product, date, cost)
values
    (30, '2020-06-08', 2901);
insert into cost
    (id_product, date, cost)
values
    (31, '2020-06-08', 2576);
insert into cost
    (id_product, date, cost)
values
    (32, '2020-06-13', 2251);
insert into cost
    (id_product, date, cost)
values
    (33, '2020-06-10', 2113);
insert into cost
    (id_product, date, cost)
values
    (34, '2020-06-12', 2419);
insert into cost
    (id_product, date, cost)
values
    (35, '2020-06-12', 2087);
insert into cost
    (id_product, date, cost)
values
    (36, '2020-06-10', 2007);
insert into cost
    (id_product, date, cost)
values
    (37, '2020-06-11', 2375);
insert into cost
    (id_product, date, cost)
values
    (38, '2020-06-08', 2886);
insert into cost
    (id_product, date, cost)
values
    (39, '2020-06-13', 2047);
insert into cost
    (id_product, date, cost)
values
    (40, '2020-06-12', 2243);
insert into cost
    (id_product, date, cost)
values
    (41, '2020-06-08', 2627);
insert into cost
    (id_product, date, cost)
values
    (42, '2020-06-08', 2810);
insert into cost
    (id_product, date, cost)
values
    (43, '2020-06-13', 2817);
insert into cost
    (id_product, date, cost)
values
    (44, '2020-06-12', 2376);
insert into cost
    (id_product, date, cost)
values
    (45, '2020-06-13', 2091);
insert into cost
    (id_product, date, cost)
values
    (46, '2020-06-08', 2392);
insert into cost
    (id_product, date, cost)
values
    (47, '2020-06-12', 2105);
insert into cost
    (id_product, date, cost)
values
    (48, '2020-06-08', 2991);
insert into cost
    (id_product, date, cost)
values
    (49, '2020-06-11', 2928);
insert into cost
    (id_product, date, cost)
values
    (50, '2020-06-11', 2030);
insert into cost
    (id_product, date, cost)
values
    (1, '2020-06-19', 3967);
insert into cost
    (id_product, date, cost)
values
    (2, '2020-06-20', 3458);
insert into cost
    (id_product, date, cost)
values
    (3, '2020-06-17', 3256);
insert into cost
    (id_product, date, cost)
values
    (4, '2020-06-19', 3867);
insert into cost
    (id_product, date, cost)
values
    (5, '2020-06-17', 3277);
insert into cost
    (id_product, date, cost)
values
    (6, '2020-06-20', 3842);
insert into cost
    (id_product, date, cost)
values
    (7, '2020-06-17', 3717);
insert into cost
    (id_product, date, cost)
values
    (8, '2020-06-20', 3602);
insert into cost
    (id_product, date, cost)
values
    (9, '2020-06-15', 3327);
insert into cost
    (id_product, date, cost)
values
    (10, '2020-06-19', 3921);
insert into cost
    (id_product, date, cost)
values
    (11, '2020-06-16', 3603);
insert into cost
    (id_product, date, cost)
values
    (12, '2020-06-17', 3905);
insert into cost
    (id_product, date, cost)
values
    (13, '2020-06-17', 3802);
insert into cost
    (id_product, date, cost)
values
    (14, '2020-06-15', 3438);
insert into cost
    (id_product, date, cost)
values
    (15, '2020-06-16', 3127);
insert into cost
    (id_product, date, cost)
values
    (16, '2020-06-18', 3364);
insert into cost
    (id_product, date, cost)
values
    (17, '2020-06-19', 3192);
insert into cost
    (id_product, date, cost)
values
    (18, '2020-06-18', 3568);
insert into cost
    (id_product, date, cost)
values
    (19, '2020-06-18', 3498);
insert into cost
    (id_product, date, cost)
values
    (20, '2020-06-18', 3094);
insert into cost
    (id_product, date, cost)
values
    (21, '2020-06-18', 3429);
insert into cost
    (id_product, date, cost)
values
    (22, '2020-06-20', 3317);
insert into cost
    (id_product, date, cost)
values
    (23, '2020-06-18', 3682);
insert into cost
    (id_product, date, cost)
values
    (24, '2020-06-18', 3628);
insert into cost
    (id_product, date, cost)
values
    (25, '2020-06-19', 3131);
insert into cost
    (id_product, date, cost)
values
    (26, '2020-06-19', 3467);
insert into cost
    (id_product, date, cost)
values
    (27, '2020-06-15', 3520);
insert into cost
    (id_product, date, cost)
values
    (28, '2020-06-20', 3978);
insert into cost
    (id_product, date, cost)
values
    (29, '2020-06-17', 3962);
insert into cost
    (id_product, date, cost)
values
    (30, '2020-06-18', 3180);
insert into cost
    (id_product, date, cost)
values
    (31, '2020-06-18', 3560);
insert into cost
    (id_product, date, cost)
values
    (32, '2020-06-17', 3943);
insert into cost
    (id_product, date, cost)
values
    (33, '2020-06-16', 3783);
insert into cost
    (id_product, date, cost)
values
    (34, '2020-06-17', 3589);
insert into cost
    (id_product, date, cost)
values
    (35, '2020-06-19', 3323);
insert into cost
    (id_product, date, cost)
values
    (36, '2020-06-20', 3428);
insert into cost
    (id_product, date, cost)
values
    (37, '2020-06-18', 3173);
insert into cost
    (id_product, date, cost)
values
    (38, '2020-06-17', 3518);
insert into cost
    (id_product, date, cost)
values
    (39, '2020-06-17', 3078);
insert into cost
    (id_product, date, cost)
values
    (40, '2020-06-19', 3370);
insert into cost
    (id_product, date, cost)
values
    (41, '2020-06-16', 3675);
insert into cost
    (id_product, date, cost)
values
    (42, '2020-06-18', 3836);
insert into cost
    (id_product, date, cost)
values
    (43, '2020-06-16', 3625);
insert into cost
    (id_product, date, cost)
values
    (44, '2020-06-19', 3029);
insert into cost
    (id_product, date, cost)
values
    (45, '2020-06-16', 3895);
insert into cost
    (id_product, date, cost)
values
    (46, '2020-06-15', 3154);
insert into cost
    (id_product, date, cost)
values
    (47, '2020-06-16', 3032);
insert into cost
    (id_product, date, cost)
values
    (48, '2020-06-20', 3433);
insert into cost
    (id_product, date, cost)
values
    (49, '2020-06-17', 3059);
insert into cost
    (id_product, date, cost)
values
    (50, '2020-06-17', 3476);

insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 1, 43, 57);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 2, 17, 43);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 3, 46, 37);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 4, 49, 35);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 5, 18, 60);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 6, 41, 40);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 7, 2, 74);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 8, 44, 42);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 9, 10, 69);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 10, 27, 31);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 11, 31, 69);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 12, 6, 80);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 13, 40, 33);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 14, 14, 47);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 15, 22, 53);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 16, 3, 34);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 17, 45, 45);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 18, 50, 36);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 19, 5, 30);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 20, 4, 33);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 21, 24, 63);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 22, 13, 71);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 23, 1, 49);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 24, 39, 37);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 25, 42, 38);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 26, 7, 70);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 27, 48, 65);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 28, 21, 35);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 29, 28, 51);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (1, 30, 35, 37);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 1, 22, 33);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 2, 13, 53);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 3, 37, 52);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 4, 8, 54);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 5, 47, 78);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 6, 26, 43);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 7, 38, 36);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 8, 29, 76);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 9, 36, 72);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 10, 19, 71);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 11, 9, 62);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 12, 30, 63);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 13, 11, 38);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 14, 32, 34);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 15, 20, 52);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 16, 33, 80);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 17, 12, 72);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 18, 15, 52);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 19, 34, 65);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 20, 16, 71);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 21, 25, 60);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 22, 23, 51);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 23, 5, 33);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 24, 28, 37);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 25, 2, 68);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 26, 41, 47);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 27, 3, 73);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 28, 43, 73);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 29, 50, 61);
insert into shelf
    (id_store, id_shelf, id_product, max_capacity)
values
    (2, 30, 45, 53);

insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 1, 57, '16:18:11', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 2, 43, '13:49:57', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 3, 37, '11:03:26', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 4, 35, '17:46:38', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 5, 60, '12:10:53', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 6, 40, '15:56:04', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 7, 74, '15:55:28', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 8, 42, '16:57:28', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 9, 69, '12:13:39', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 10, 31, '12:49:15', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 11, 69, '12:31:57', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 12, 80, '19:07:56', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 13, 33, '19:26:24', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 14, 47, '16:07:44', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 15, 53, '10:19:51', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 16, 34, '17:24:40', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 17, 45, '16:08:26', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 18, 36, '15:42:55', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 19, 30, '12:21:28', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 20, 33, '9:56:09', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 21, 63, '19:38:36', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 22, 71, '12:29:06', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 23, 49, '12:30:04', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 24, 37, '9:35:21', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 25, 38, '19:54:23', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 26, 70, '10:47:59', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 27, 65, '19:51:19', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 28, 35, '9:00:43', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 29, 51, '15:48:40', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (1, 30, 37, '11:18:46', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 1, 33, '11:37:56', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 2, 53, '12:49:51', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 3, 52, '15:50:18', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 4, 54, '18:42:47', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 5, 78, '11:24:23', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 6, 43, '17:55:44', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 7, 36, '10:14:50', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 8, 76, '14:53:14', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 9, 72, '14:26:03', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 10, 71, '11:17:40', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 11, 62, '13:55:59', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 12, 63, '12:14:37', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 13, 38, '13:34:05', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 14, 34, '11:02:37', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 15, 52, '10:12:43', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 16, 80, '18:42:24', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 17, 72, '12:36:01', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 18, 52, '12:05:01', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 19, 65, '15:08:33', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 20, 71, '15:50:16', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 21, 60, '17:51:28', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 22, 51, '12:45:55', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 23, 33, '15:42:24', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 24, 37, '9:05:47', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 25, 68, '9:57:02', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 26, 47, '18:16:06', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 27, 73, '13:55:31', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 28, 73, '18:41:18', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 29, 61, '19:55:38', '2020-06-01');
insert into shelf_quantity
    (id_store, id_shelf, quantity, hour, date)
values
    (2, 30, 53, '10:18:43', '2020-06-01');

insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 1, 158, '19:14:03', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 2, 160, '10:42:50', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 3, 158, '19:41:50', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 4, 151, '11:13:18', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 5, 156, '14:19:50', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 6, 155, '16:44:41', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 7, 160, '17:26:09', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 50, 150, '19:08:29', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 49, 160, '15:28:17', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 10, 159, '17:01:15', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 48, 150, '12:07:56', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 46, 153, '10:40:41', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 13, 157, '16:54:57', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 14, 156, '12:02:16', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 45, 156, '17:54:01', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 44, 157, '18:12:47', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 17, 154, '17:46:02', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 18, 158, '11:08:29', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 43, 153, '13:38:23', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 42, 151, '16:14:05', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 21, 150, '17:00:34', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 22, 156, '15:46:21', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 41, 155, '18:22:56', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 24, 157, '18:37:00', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 40, 157, '18:45:59', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 39, 152, '18:04:50', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 27, 155, '19:03:55', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 28, 159, '11:08:00', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 35, 160, '11:43:35', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (1, 31, 153, '10:24:30', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 50, 154, '10:24:12', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 2, 155, '14:26:09', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 3, 156, '11:34:01', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 47, 157, '19:19:46', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 5, 159, '17:46:46', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 45, 157, '13:16:27', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 43, 157, '16:19:24', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 8, 152, '11:08:47', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 9, 158, '16:14:36', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 41, 160, '11:41:25', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 11, 150, '11:38:04', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 12, 152, '14:59:03', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 13, 153, '11:57:39', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 38, 159, '19:10:50', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 15, 150, '10:01:07', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 16, 159, '10:37:00', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 37, 151, '14:54:35', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 36, 160, '19:56:38', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 19, 159, '18:11:18', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 20, 160, '13:50:14', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 34, 151, '18:05:47', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 22, 160, '11:47:24', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 23, 156, '13:24:59', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 33, 153, '15:57:18', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 25, 153, '17:35:16', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 26, 155, '17:55:31', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 32, 152, '18:40:07', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 28, 160, '18:56:31', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 29, 154, '19:32:17', '2020-06-01');
insert into stored_in
    (id_warehouse, id_product, quantity, hour, date)
values
    (2, 30, 156, '19:44:42', '2020-06-01');
