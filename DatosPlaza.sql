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
    (id_client, name, gender, identification)
values
    ('7855963263', 'Tad Sloy', 'M', 10816057);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1092087244', 'Sauveur Pask', 'M', 18009315);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5714193382', 'Rockie Baskeyfied', 'M', 28965581);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3884559855', 'Raphaela Dresser', 'F', 13239655);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7420226798', 'Karil Pirdy', 'F', 24246801);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7949259477', 'Louisette Myring', 'F', 19782542);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6219739969', 'Marlon Crehan', 'M', 5822396);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6061418438', 'Kristina Cleall', 'F', 15406777);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7165338162', 'Merell Clemo', 'M', 28706087);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9641486171', 'Kendra Waldie', 'F', 23851780);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5070348852', 'Ase Jendrach', 'M', 27302416);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2066915669', 'Chrissy Tweedell', 'M', 8271067);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8493872738', 'Flinn Hourstan', 'M', 25104419);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1131161954', 'Cletus Tillman', 'M', 19028690);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2787147485', 'Cally Withrop', 'F', 5562454);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0901373818', 'Elsey Letteresse', 'F', 21726728);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9805305463', 'Dorolisa Bumford', 'F', 14684611);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7036922495', 'Quinlan Yakob', 'M', 12996143);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9279565232', 'Junette Baughen', 'F', 7391039);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7950726789', 'Vernon Towe', 'M', 14683184);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2018575131', 'Cleo Lummasana', 'F', 7484338);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0515729882', 'Leshia Dysart', 'F', 20153057);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2428237300', 'Kirby Bettridge', 'M', 9597119);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4711663928', 'Finlay Corbishley', 'M', 15517320);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1301152799', 'Erik Heineke', 'M', 8285461);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3350538651', 'Robers Buchan', 'M', 21450128);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4076955678', 'Roarke Beneix', 'M', 25790621);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5522177152', 'Emili Ioannou', 'F', 7342834);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0619389850', 'Marthe Farrear', 'F', 29248891);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6383052604', 'Timotheus Habron', 'M', 24450313);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2763384865', 'Mace Challes', 'M', 23521152);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7560132184', 'Uriah Trewman', 'M', 7726265);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5469531811', 'Kim Boerder', 'F', 12629967);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5405555551', 'Riannon Harburtson', 'F', 9603594);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4702373383', 'Colly Pales', 'F', 21698754);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2129813958', 'Jacquenetta Prickett', 'F', 18788609);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5810313030', 'Lynn Dallan', 'M', 22715651);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3635479635', 'Edwina Doley', 'F', 26270069);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3031681005', 'Karol Hazelden', 'F', 8862726);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4853629174', 'Jolene Kemitt', 'F', 11784039);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2973919530', 'Gregory Fife', 'M', 20762066);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2787429540', 'Carmina Zarfai', 'F', 6695609);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2243523995', 'Libby Juan', 'F', 18621513);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2503766005', 'Kathryn Lockie', 'F', 19402183);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5151251425', 'Natalina Purdon', 'F', 14533142);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6413290355', 'Lizabeth Hentzer', 'F', 7790598);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8263043932', 'Bendix Fenix', 'M', 21805119);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2512565506', 'Griffith Juan', 'M', 23906426);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1777720993', 'Brenna Longworth', 'F', 25901248);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0045701394', 'Brandtr Chapman', 'M', 7015551);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1938561764', 'Waylon Vick', 'M', 14942891);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4570546298', 'Glenn Schultes', 'M', 13845893);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3295609514', 'Kirby Grelak', 'F', 26690849);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4631457186', 'Jacinthe Face', 'F', 15208115);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4978797971', 'Benjie Mundow', 'M', 26543922);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0893066472', 'Ulrike Bartholat', 'F', 19172646);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5354281468', 'Bertina Kording', 'F', 22646404);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0238214043', 'Hall Ludron', 'M', 12106278);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1412457521', 'Rosmunda Holde', 'F', 19696366);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1344986644', 'Gerard Dowle', 'M', 10268759);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6714445188', 'Culver Jammes', 'M', 17012396);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6869488856', 'Titus Joye', 'M', 6302333);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7979588293', 'Iosep Jerdon', 'M', 19380808);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3840483569', 'Madonna Clift', 'F', 7997006);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7633039756', 'Alma Bottrill', 'F', 22008336);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4481289817', 'Mina Lewry', 'F', 11867707);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1927526934', 'Elnora Winston', 'F', 21124640);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6204862357', 'Dalston Salery', 'M', 5046941);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3866029100', 'Shannon Schettini', 'F', 16369253);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1557274148', 'Joey Eberst', 'M', 19449350);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7919823901', 'Corabella Dodd', 'F', 19882721);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9371610219', 'Rhodie Eirwin', 'F', 5644279);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6812082989', 'Melanie Ritchley', 'F', 19904567);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4456049091', 'Carmine Klement', 'M', 20359246);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1414754447', 'Elijah Maw', 'M', 10633001);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5008240882', 'Aliza Fieller', 'F', 19457208);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5719927674', 'Gertrude Buckwell', 'F', 16496888);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1916949093', 'Tarrance Brundell', 'M', 29718812);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4129587188', 'Lilah Commander', 'F', 18430044);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7570386831', 'Kalvin Tapley', 'M', 13149316);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4843959667', 'Martguerita Harring', 'F', 9070751);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4848602923', 'Aigneis Vagges', 'F', 16699449);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0181315088', 'Harley Tilley', 'F', 20811637);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5742966309', 'Colet Greenstreet', 'M', 24002636);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4993322368', 'Armin Maskew', 'M', 15051825);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5741278742', 'Antoinette Jeannard', 'F', 13624858);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8989598125', 'Cherise Bailles', 'F', 16014252);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5395765658', 'Tabatha Varns', 'F', 28546893);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4936039566', 'Corty Seres', 'M', 23727074);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1694654406', 'Sansone Rappa', 'M', 15831561);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2093277304', 'Modesty Driuzzi', 'F', 25556458);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6700892736', 'Corbin Shirland', 'M', 6963501);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9803820563', 'Benito Aughtie', 'M', 29197690);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0885521276', 'Reese Lettice', 'M', 16520490);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0909578892', 'Ivonne Jasik', 'F', 5101416);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4296142625', 'Alva Dagworthy', 'M', 19210628);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2680215028', 'Clyve Vane', 'M', 20123574);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6390826198', 'Cherey Brewood', 'F', 23126068);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5624946406', 'Krissy Sheryn', 'F', 24473245);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0852370494', 'Jarred Duddin', 'M', 15928389);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5262983044', 'Aube Pepin', 'M', 13328792);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5115531220', 'Jory Crumpe', 'M', 5277735);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4486748059', 'Carroll Tetla', 'M', 29009555);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9650531196', 'Beatrisa Saltsberger', 'F', 20393067);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7507412768', 'Merlina Shortcliffe', 'F', 10078391);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7978653465', 'Lanni Gookey', 'F', 6594309);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0718142104', 'Reese Probey', 'M', 25103551);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0778958941', 'Brit Lindell', 'M', 23270072);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6581073877', 'Artemas Cuskery', 'M', 18918488);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4311457370', 'Corine Bolland', 'F', 14168548);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4014062704', 'Holly Canet', 'F', 28334173);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0109463034', 'Bar Meak', 'M', 15584582);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2182205251', 'Berne Winslet', 'M', 20823903);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6863843303', 'Mitchell Lamble', 'M', 28719549);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9910643351', 'Bernette Spinola', 'F', 11625866);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2233110212', 'Sophie Pinckney', 'F', 24664804);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9021148786', 'Tully Claypoole', 'M', 14828258);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1337835502', 'Tyrone Jacquemard', 'M', 21334779);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9867291267', 'Zacherie Rupp', 'M', 8996946);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7327245285', 'Charleen Statersfield', 'F', 25225856);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8683979914', 'Tiffi Cullnean', 'F', 8530319);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2053688412', 'Westleigh Hannan', 'M', 5579838);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4472033039', 'Gilberto Rome', 'M', 27709805);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6168439863', 'Alis Ordidge', 'F', 25434364);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9115036156', 'Genvieve Lockhurst', 'F', 16878108);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7818492544', 'Corty Umpleby', 'M', 6444807);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2944335068', 'Carlie Farnall', 'M', 17492973);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2127003820', 'Herve Gatfield', 'M', 20293012);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9561867500', 'Zea Bachshell', 'F', 28120550);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7004279127', 'Brianna Goreway', 'F', 27019426);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8480161147', 'Hayes Beevers', 'M', 12591971);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4885076960', 'Farly Lodden', 'M', 22770854);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6404674420', 'Jillane de Mullett', 'F', 25155622);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9644646401', 'Consuela Reolfi', 'F', 16266037);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6646347546', 'Nadiya Joicey', 'F', 18697111);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8282846172', 'Vito Chatelet', 'M', 27619743);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1435756105', 'Oswald Linnett', 'M', 9123761);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5185491082', 'Doralin Talboy', 'F', 12107231);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9720464804', 'Eddy Skarr', 'F', 18826390);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1422328990', 'Thelma Burgyn', 'F', 21578062);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0531113209', 'Jakob Coultard', 'M', 15526623);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7196191936', 'Lon Dorracott', 'M', 23177914);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2913206000', 'Candace Ades', 'F', 13502645);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3127749737', 'Clint Emblem', 'M', 13559291);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4753640725', 'Cam Pencot', 'M', 25165588);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7743486157', 'Tiertza McGilben', 'F', 5720097);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9759706135', 'Sanders Lammin', 'M', 14085773);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1840832420', 'Brady Gooder', 'M', 16703913);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0532099829', 'Ives Assinder', 'M', 15297738);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0918231036', 'Rudolph Wyldish', 'M', 13462154);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4578105162', 'Doy Hatfull', 'M', 28307156);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2199725183', 'Katrine Beardon', 'F', 16093759);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0253620470', 'Janet Baylie', 'F', 8905713);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1823950635', 'Corney Ollerhead', 'M', 21953102);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0276413633', 'Marius Jachimak', 'M', 5470498);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0224112917', 'Sula Woolford', 'F', 13608078);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4332736516', 'Bart Gritsunov', 'M', 13544512);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4616701773', 'Ad Klemmt', 'M', 5780319);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4406874424', 'Alvinia McSharry', 'F', 6334588);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2024227505', 'Gustaf Daid', 'M', 14528119);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8041916224', 'Sharla Pitkeathley', 'F', 18873872);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8876391879', 'Webster Vasyutin', 'M', 9764319);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7573239278', 'Konstance Ballchin', 'F', 11777779);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6077023323', 'Valentijn Dielhenn', 'M', 20225354);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4875630630', 'Winne Shawyers', 'F', 10666214);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9469921761', 'Costanza Pierton', 'F', 21578444);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8473846174', 'Ruthi Hawick', 'F', 25008153);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5890304963', 'Dirk Leathley', 'M', 9614177);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9585492284', 'Claudetta Saddleton', 'F', 22938235);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7979539176', 'Rhiamon Bester', 'F', 18557209);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5202218815', 'Arlyne Siseland', 'F', 28533127);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2638420365', 'Donovan Clampe', 'M', 17886741);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4547101722', 'Jenny Ericsson', 'F', 26245780);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1331073397', 'Aurelea Toderbrugge', 'F', 19210170);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8517748008', 'Ben Hamnett', 'M', 18561516);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1854946486', 'Lelia Gounod', 'F', 13699697);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1917870016', 'Haskell Fortnon', 'M', 11819996);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9757973308', 'Desiri Josupeit', 'F', 13144610);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3558419359', 'Fionna Woolaston', 'F', 16746222);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9774077640', 'Diarmid Mawer', 'M', 16536143);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8279674877', 'Richard Borris', 'M', 8024569);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7932318312', 'Russ Herion', 'M', 16441404);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3485200675', 'Vallie Spirit', 'F', 15548097);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3728029873', 'Katee Rastall', 'F', 16115996);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7749819370', 'Tomkin Bachelor', 'M', 28313880);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7503261857', 'Tierney Conneely', 'F', 19157532);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5788126704', 'Adair Batalini', 'M', 15219163);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6361668731', 'Sissy Baudassi', 'F', 15495856);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3317095125', 'Ginelle Currin', 'F', 17097697);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7737433093', 'Lucky Cahalan', 'F', 20667711);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0456020581', 'Magdalen De Ambrosis', 'F', 23004897);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6198301939', 'Marten Kimble', 'M', 18604586);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6436580269', 'Bank Charte', 'M', 7950976);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6909242790', 'Kelsey Nisot', 'F', 19051351);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4734402108', 'Davita Bowden', 'F', 13392407);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5807936282', 'Esther Edginton', 'F', 24502427);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6839193321', 'Nicola Corish', 'F', 26635411);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6930411125', 'Gerrie Klauer', 'M', 21493089);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0701585646', 'Gwenneth Giacobini', 'F', 19081516);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2167573608', 'Heloise Winslow', 'F', 23111275);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2459992682', 'Modesta Blenkin', 'F', 19632993);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2194165017', 'Elijah O''Heyne', 'M', 13372498);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4379389677', 'Dicky Jagels', 'M', 26526789);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4808244407', 'Valentine Puddefoot', 'F', 10905405);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0876671288', 'Enrika Inmett', 'F', 23074545);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6382453859', 'Gunter Vaune', 'M', 26829510);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3835183047', 'Sheila-kathryn Twelvetrees', 'F', 29786336);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4217492398', 'Arleyne MacFall', 'F', 14850289);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2813019397', 'Shaine Looks', 'F', 7467676);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6123905775', 'Mandie Ledrane', 'F', 28628964);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4888326206', 'Kelsey Conrard', 'F', 5516688);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8267684292', 'Lyndsey Chazerand', 'F', 22804331);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6942107629', 'Pamella Sambals', 'F', 24283787);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4254187803', 'Christye Cheales', 'F', 17692597);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4499475396', 'Florette Faulconer', 'F', 11809033);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0392069971', 'Adriane Baelde', 'F', 29004707);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4947063174', 'Garey McGinny', 'M', 15969654);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3349059751', 'Kathlin Winteringham', 'F', 26166925);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7292453689', 'Krishna Sleep', 'M', 19048036);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4004381795', 'Sonja Castaneda', 'F', 20255550);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1057716197', 'Chrissie Broke', 'M', 10673912);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4103761433', 'Maryjo Kinchley', 'F', 23034863);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6867035998', 'Luis Gravy', 'M', 16580736);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6222970090', 'Jerrie Bransdon', 'F', 8673815);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8646367091', 'Ramon Kane', 'M', 5395804);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8677656971', 'Corry Splevin', 'F', 12787772);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3154926581', 'Jodi Bromage', 'M', 11427962);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5320191520', 'Dickie Cockburn', 'M', 6014504);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1767775487', 'Ruth Siney', 'F', 29385762);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7149579534', 'Grannie Wyer', 'M', 28743386);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3320928074', 'Stanislaus Manuelli', 'M', 22770108);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9680855482', 'Aurelea Tommasi', 'F', 17094046);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4289084268', 'Pollyanna Salzberger', 'F', 24927619);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9049484292', 'Janice Leaman', 'F', 18418670);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6624276144', 'Rockie Wichard', 'M', 23170112);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2411408326', 'Farica Riddiford', 'F', 6351110);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7316670719', 'Brigit Izakof', 'F', 5349468);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0383239274', 'Elmer Taberer', 'M', 23108771);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6252586365', 'Peirce Lowdham', 'M', 15764301);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5698631959', 'Rainer Grinter', 'M', 8273070);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5513993409', 'Marion Miner', 'M', 28606540);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1982926149', 'Mathilde Reuble', 'F', 8494760);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3688831736', 'Lucille Bomb', 'F', 11644717);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5829194201', 'Marcy Ronald', 'F', 14716948);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0576237048', 'Lorenza Rounce', 'F', 7220759);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6465437904', 'Collen Jedrysik', 'F', 18195751);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1130689348', 'Ines Carreyette', 'F', 10915387);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6292578531', 'Ludovico Scothron', 'M', 21995016);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6146526192', 'Alexander Bleasby', 'M', 28294661);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3987463237', 'Travus Daftor', 'M', 18833745);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4936609152', 'Page Denning', 'F', 8766286);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9532173072', 'Justine Brightie', 'F', 14642263);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1251406558', 'Alfredo Wildblood', 'M', 8625022);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3735910548', 'Dorena Mundle', 'F', 27460776);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2471948959', 'Cornelle Ashenhurst', 'F', 22201151);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8318860909', 'Petronille Scottesmoor', 'F', 5881187);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('5647046864', 'Moira Leworthy', 'F', 8101401);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6918988506', 'Ethe Wittrington', 'M', 10743476);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8613117609', 'Hersch Bracher', 'M', 22958592);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2103777179', 'Serena Shapera', 'F', 26727304);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6206477761', 'Sampson Proudley', 'M', 5310890);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0602117873', 'Valli Brayshay', 'F', 29011287);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2727905598', 'Caz Kinmond', 'M', 25939528);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7056511510', 'Jarrad Seville', 'M', 21772531);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4754908964', 'Arel McCarty', 'M', 16502943);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6345172563', 'Luce Forder', 'F', 22686721);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8736722239', 'Donaugh Bedborough', 'M', 20483309);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0178277771', 'Aron Tipling', 'M', 5754005);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6809519645', 'Brett Sturt', 'F', 11998004);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6529737452', 'Abel O''Dreain', 'M', 25814606);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2500662200', 'Sheena Hansman', 'F', 13011271);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9442798249', 'Emerson Eve', 'M', 22744065);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6048189747', 'Francklyn Bulcroft', 'M', 20268002);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3189675147', 'Theodoric Bucklee', 'M', 18548097);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8774402546', 'Nerissa Megroff', 'F', 17656773);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3429828024', 'Cathe Mc Corley', 'F', 20587044);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0556499431', 'Pancho Rumney', 'M', 8054021);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4951799893', 'Candace Yearby', 'F', 22722666);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3562172519', 'Pall Zanassi', 'M', 24917206);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6109275295', 'Belva Nussii', 'F', 14920022);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('7745315794', 'Chloette Moorrud', 'F', 27599684);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('6255166653', 'Philippine Mundow', 'F', 15754467);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4989415608', 'Shelagh Kreutzer', 'F', 16931050);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4586740053', 'Evey Valsler', 'F', 15805559);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0033081908', 'Sherrie Brabham', 'F', 15674015);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4069070951', 'Midge Scripture', 'F', 9139550);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0954210570', 'Elfrieda Silvester', 'F', 27400419);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('3316358230', 'Jason Brithman', 'M', 16866086);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9618752068', 'Gerladina Minton', 'F', 23224998);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4313462954', 'Northrop Darte', 'M', 24213025);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4174712260', 'Cesar Dwyr', 'M', 21954606);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8072614623', 'Gratiana O''Feeney', 'F', 18837236);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('4776583233', 'Rorke Devaney', 'M', 29707608);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('9908870323', 'Codi Fleay', 'M', 9474693);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('1499000612', 'Martie Goldingay', 'M', 17948007);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0885889859', 'Fianna Vidler', 'F', 27955686);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2104778029', 'Packston Kaplan', 'M', 18598661);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('8366936343', 'Sigismond Bauser', 'M', 11150044);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('2558581914', 'Guntar Treeby', 'M', 19149063);
insert into plazas.client
    (id_client, name, gender, identification)
values
    ('0944372159', 'Iain Loftin', 'M', 6387009);


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
