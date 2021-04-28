--Inserting into Phoenix Pho Table
INSERT INTO Phoenix_Pho VALUES (12345,'East Phoenix Pho', 'MA', '11 Martin Ave', '02122');
INSERT INTO Phoenix_Pho VALUES (12445,'West Phoenix Pho', 'MA', '34 Evans Way', '02144');
INSERT INTO Phoenix_Pho (PHOENIXPHOID,STREET,Zip_Code) VALUES (11345, '65 Luther Street', '02145');
INSERT INTO Phoenix_Pho (PhoenixPhoID,Name,Street,Zip_Code) VALUES (12365,'North Phoenix Pho', '21 Ange Ave', '02155');
INSERT INTO Phoenix_Pho VALUES (12335,'CA Phoenix Pho', 'CA', '64 York Ave', '23432');

--Inserting into Kitchen Table
INSERT INTO Kitchen VALUES (22222, 5, 6, 5, 2000,3000,3000,12345);
INSERT INTO Kitchen VALUES (23222, 6, 4, 5, 2400,2000,3000,12445);
INSERT INTO Kitchen VALUES (24222, 6, 4, 5, 2400,2000,3000,11345);
INSERT INTO Kitchen VALUES (25222, 6, 5, 6, 3400,4000,3000,12365);
INSERT INTO Kitchen VALUES (26222, 4, 5, 6, 4400,3000,2000,12335);

--Inserting into Storage_Area Table
INSERT INTO Storage_Area VALUES(34562, 5,5,8,12345, NULL);
INSERT INTO Storage_Area VALUES(35562, 5,5,8,12445, 23222);
INSERT INTO Storage_Area VALUES(36562, 6,7,8,11345, 24222);
INSERT INTO Storage_Area VALUES(37562, 6,7,9,12365, NULL);
INSERT INTO Storage_Area VALUES(38562, 6,7,9,12335, 26222);

--Inserting into Cleaning_Tool Table
INSERT INTO Cleaning_Tool VALUES(01234,10,10,10,300,100,10,10,12345);
INSERT INTO Cleaning_Tool VALUES(11234,20,15,9,200,50,10,10,12445);
INSERT INTO Cleaning_Tool VALUES(21234,11,5,20,350,50,10,10,11345);
INSERT INTO Cleaning_Tool VALUES(31234,12,10,13,600,200,14,12,12365);
INSERT INTO Cleaning_Tool VALUES(41234,14,12,15,320,200,12,12,12335);

--Inserting into Manager Table
INSERT INTO Manager(ManagerID, Name, Address, Wage, PhoenixPhoID) VALUES (92345, 'Oliver', '11 Hinkleton Ave', 2400, 12345);
INSERT INTO Manager VALUES(93345, 'Dave', '22 April Street',DATE '2014-10-08', 2400,12445);
INSERT INTO Manager(ManagerID, Name, Address, Wage, PhoenixPhoID) VALUES (94345, 'Frank', '25 Apple Street', 2400, 11345);
INSERT INTO Manager VALUES(95345, 'Mark', '18 Franklin Street',DATE '2015-12-08', 2400,12365);
INSERT INTO Manager(ManagerID, Name, Address, Wage, PhoenixPhoID) VALUES (96345, 'Steve', '19 Forest Street', 2400, 12335);

--Inserting into Employee Table (LEAVING THIS PART TO DAN).
INSERT INTO Employee VALUES(23456, 'Isaac', '64 Bronz Street', DATE '2017-10-08',DATE '2017-10-10' ,12345, 92345, 01234, 34562, 22222);
INSERT INTO Employee(EmployeeID, Name, Address, DateHired, PhoenixPhoID, ManagerID, CleaningToolID,StorageAreaID, KitchenID) VALUES(23457, 'Clara', '22 Eve Street', DATE '2017-11-08', 12345, 92345, 01234, 34562, 22222);
INSERT INTO Employee(EmployeeID, Name, Address, DateHired, PhoenixPhoID, ManagerID, CleaningToolID,StorageAreaID, KitchenID) VALUES(23458, 'Misora', '72 Artisan Street', DATE '2016-09-06', 12345, 92345, 01234, 34562, 22222);
INSERT INTO Employee VALUES(23459, 'Erik', '69 Cakes Street', DATE '2015-10-10', DATE '2020-09-20',12345, 92345, 01234, 34562, 22222);
INSERT INTO Employee(EmployeeID, Name, Address, DateHired, PhoenixPhoID, ManagerID, CleaningToolID,StorageAreaID, KitchenID) VALUES(23460, 'Darren', '10 Bread Street', DATE '2016-08-11', 12345, 92345, 01234, 34562, 22222);

INSERT INTO Employee(EmployeeID, Name, Address, DateHired, PhoenixPhoID, ManagerID, CleaningToolID,StorageAreaID, KitchenID) VALUES(23461, 'Joshua', '105 Twin Street', DATE '2014-02-11', 12345, 92345, 01234, 34562, 22222);
INSERT INTO Employee(EmployeeID, Name, Address, DateHired, PhoenixPhoID, ManagerID, CleaningToolID,StorageAreaID, KitchenID) VALUES(23462, 'Estelle', '25 Moon Street', DATE '2015-03-02', 12345, 92345, 01234, 34562, 22222);
INSERT INTO Employee(EmployeeID, Name, Address, DateHired, PhoenixPhoID, ManagerID, CleaningToolID,StorageAreaID, KitchenID) VALUES(23463, 'Renne', '33 Butcher Street', DATE '2016-05-06', 12345, 92345, 01234, 34562, 22222);
INSERT INTO Employee(EmployeeID, Name, Address, DateHired, PhoenixPhoID, ManagerID, CleaningToolID,StorageAreaID, KitchenID) VALUES(23464, 'Elliot', '45 Musician Street', DATE '2015-12-12', 12345, 92345, 01234, 34562, 22222);
INSERT INTO Employee(EmployeeID, Name, Address, DateHired, PhoenixPhoID, ManagerID, CleaningToolID,StorageAreaID, KitchenID) VALUES(23465, 'Osbourne', '100 Snake Street', DATE '2014-07-11', 12345, 92345, 01234, 34562, 22222);

--Inserting into Full-Time Employee table
INSERT INTO Full_Time_Employee VALUES(23456, 'Mon.-Fri.', '9-5', 24);
INSERT INTO Full_Time_Employee VALUES(23457, 'Mon.-Fri.', '9-5', 24);
INSERT INTO Full_Time_Employee VALUES(23458, 'Mon.-Fri.', '9-5', 24);
INSERT INTO Full_Time_Employee VALUES(23459, 'Mon.-Fri.', '9-5', 24);
INSERT INTO Full_Time_Employee VALUES(23460, 'Mon.-Fri.', '9-5', 24);

--Inserting into Part-Time Employee table
INSERT INTO Part_Time_Employee VALUES(23461, 'Mon.,Tue.,Wed.', '9-3', 15);
INSERT INTO Part_Time_Employee VALUES(23462, 'Tue.,Wed.,Thur.', '12-5', 15);
INSERT INTO Part_Time_Employee VALUES(23463, 'Mon.,Wed.,Fri.', '12-5', 15);
INSERT INTO Part_Time_Employee VALUES(23464, 'Tue.,Wed.,Thur.', '9-3', 15);
INSERT INTO Part_Time_Employee VALUES(23465, 'Mon.,Tue.,Fri.', '9-3', 15);


--Inserting in to Chief Table
INSERT INTO Chief(ChiefID, Name, Address, Wage, PhoenixPhoID) VALUES (52345, 'Evan', '13 November Ave', 4400, 12345);
INSERT INTO Chief VALUES(53345, 'Dave', '22 April Street',DATE '2014-10-08', 4400,12445);
INSERT INTO Chief(ChiefID, Name, Address, Wage, PhoenixPhoID) VALUES (54345, 'Hua', '5 Groove Street', 4400, 11345);
INSERT INTO Chief VALUES(55345, 'Mark', '18 Franklin Street',DATE '2015-12-08', 4400,12365);
INSERT INTO Chief(ChiefID, Name, Address, Wage, PhoenixPhoID) VALUES (56345, 'Pham', '34 Adams Street', 4400, 12335);

--Inserting in to Dish Table
INSERT INTO Dish VALUES(44444, '','','','',50,52345);
INSERT INTO Dish VALUES(45444, 'Pepper','','','Lettuce',100,53345);
INSERT INTO Dish VALUES(46444, 'Chili','','','Carrot',30,54345);
INSERT INTO Dish VALUES(47444, '','','','Lettuce',150,55345);
INSERT INTO Dish VALUES(48444, '','','Ketchup','',20,56345);

--Inserting in to Meat Table
INSERT INTO Meat VALUES (44444,'Pork', '');
INSERT INTO Meat VALUES (45444,'Beef', 'Fish');
INSERT INTO Meat VALUES (46444,'', 'Clam');
INSERT INTO Meat VALUES (47444,'Beef', 'Clam');
INSERT INTO Meat VALUES (48444,'', '');

--Inserting in to Rice Dish Table
INSERT INTO Rice_Dish VALUES(45444,'Brown Rice');
INSERT INTO Rice_Dish VALUES(44444,'Brown Rice');
INSERT INTO Rice_Dish VALUES(46444,'Brown Rice');
INSERT INTO Rice_Dish VALUES(47444,'White Rice');
INSERT INTO Rice_Dish VALUES(48444,'White Rice');

--Inserting in to Noodle Dish Table
INSERT INTO Noodle_Dish VALUES(46444, 'Rice Vermicelli');
INSERT INTO Noodle_Dish VALUES(47444, 'Banh Canh');
INSERT INTO Noodle_Dish VALUES(45444, 'Mi');
INSERT INTO Noodle_Dish VALUES(48444, 'Hu Tieu');
INSERT INTO Noodle_Dish VALUES(44444, 'Mien');

--Inserting in to Sandwich Table
INSERT INTO Sandwich VALUES(48444, 'Wheat Bread');
INSERT INTO Sandwich VALUES(45444, 'Baguette');
INSERT INTO Sandwich VALUES(46444, 'Baguette');
INSERT INTO Sandwich VALUES(47444, 'Baguette');
INSERT INTO Sandwich VALUES(44444, 'Baguette');

--Inserting in to Renovation Table
INSERT INTO Renovation VALUES(88888,5000000,1000000);
INSERT INTO Renovation(RenovationID, Cost) VALUES(87888,600000);
INSERT INTO Renovation(RenovationID, Cost) VALUES(86888,7000000);
INSERT INTO Renovation VALUES(85888,600000,2000000);
INSERT INTO Renovation VALUES(84888,700000,2001000);

--Inserting in to Promotion Table
INSERT INTO Promotion VALUES(77777,'TV Advertisement');
INSERT INTO Promotion VALUES(76777,'20% Off Deal');
INSERT INTO Promotion VALUES(75777,'Coupons');
INSERT INTO Promotion VALUES(74777,'Actors For Ad');
INSERT INTO Promotion VALUES(73777,'Posters');
INSERT INTO Promotion VALUES(72777,'Paid Promotions');
INSERT INTO Promotion VALUES(71777,'10% Off Deal');
INSERT INTO Promotion VALUES(70777,'Winter Deal');
INSERT INTO Promotion VALUES(70677,'Summer Deal');
INSERT INTO Promotion VALUES(70577,'Radio Ad');

--Inserting in to Advertisement Table
INSERT INTO Advertisement VALUES(72777,30000,100000);
INSERT INTO Advertisement VALUES(70577,40000,500000);
INSERT INTO Advertisement VALUES(77777,100000,1000000);
INSERT INTO Advertisement VALUES(74777,10000000,500000000);
INSERT INTO Advertisement VALUES(73777,100000,5000000);

--Inserting in to Customer Deal Table
INSERT INTO Customer_Deal VALUES(76777, 100000, 200000);
INSERT INTO Customer_Deal VALUES(71777, 200000, 5000000);
INSERT INTO Customer_Deal VALUES(70777, 300000, 200000);
INSERT INTO Customer_Deal VALUES(70677, 300000, 250000);
INSERT INTO Customer_Deal VALUES(75777, 30000, 2000);

--Inserting in to Financial Advisor TABLE
INSERT INTO Financial_Advisor(FinancialAdvisorID,RenovationID, PromotionID, PhoenixPhoID) VALUES(98765, 88888,77777, 12345);
INSERT INTO Financial_Advisor(FinancialAdvisorID,RenovationID, PromotionID, PhoenixPhoID) VALUES(98764, 87888,76777, 12445);
INSERT INTO Financial_Advisor(FinancialAdvisorID,RenovationID, PromotionID, PhoenixPhoID) VALUES(98763, 86888,75777, 12445);
INSERT INTO Financial_Advisor(FinancialAdvisorID,RenovationID, PromotionID, PhoenixPhoID) VALUES(98762, 85888,74777, 12345);
INSERT INTO Financial_Advisor(FinancialAdvisorID,RenovationID, PromotionID, PhoenixPhoID) VALUES(98761, 84888,73777, 12445);

--Inserting in to Drink Table
INSERT INTO Drink VALUES(11111, 'Coca Cola',20,12345);
INSERT INTO Drink VALUES(12111, 'Diet Coke',25,12445);
INSERT INTO Drink VALUES(13111, 'Sprite',15,12345);
INSERT INTO Drink VALUES(14111, 'Coffee',20,12445);
INSERT INTO Drink VALUES(15111, 'Tea',20,12345);

--Inserting in to Phoenix_Pho_Customer
INSERT INTO Phoenix_Pho_Customer VALUES (42060, 'Yichi', 12345,44444,11111);
INSERT INTO Phoenix_Pho_Customer VALUES (42061, 'Khanh', 12445,45444,12111);
INSERT INTO Phoenix_Pho_Customer VALUES (42062, 'Syron', 12345,46444,13111);
INSERT INTO Phoenix_Pho_Customer VALUES (42063, 'Joseph', 12445,47444,14111);
INSERT INTO Phoenix_Pho_Customer VALUES (42064, 'Andrew', 12345,48444,15111);

--Inserting in to Expense Table
INSERT INTO Expense VALUES(54321, 12345);
INSERT INTO Expense VALUES(54322, 12445);
INSERT INTO Expense VALUES(54323, 12445);
INSERT INTO Expense VALUES(54324, 12345);
INSERT INTO Expense VALUES(54325, 12445);
INSERT INTO Expense VALUES(54326, 12345);
INSERT INTO Expense VALUES(54327, 12445);
INSERT INTO Expense VALUES(54328, 12445);
INSERT INTO Expense VALUES(54329, 12345);
INSERT INTO Expense VALUES(54330, 12445);
INSERT INTO Expense VALUES(54331, 12345);
INSERT INTO Expense VALUES(54332, 12445);
INSERT INTO Expense VALUES(54333, 12445);
INSERT INTO Expense VALUES(54334, 12345);
INSERT INTO Expense VALUES(54335, 12445);

--Inserting in to Employee_Payment TABLE
INSERT INTO Employee_Payment VALUES(54321, 135);
INSERT INTO Employee_Payment VALUES(54322, 146);
INSERT INTO Employee_Payment VALUES(54323, 124);
INSERT INTO Employee_Payment VALUES(54324, 114);
INSERT INTO Employee_Payment VALUES(54325, 131);

--Inserting in to Maintenance table
INSERT INTO Maintenance VALUES(54326, 90);
INSERT INTO Maintenance VALUES(54327, 50);
INSERT INTO Maintenance VALUES(54328, 88);
INSERT INTO Maintenance VALUES(54329, 47);
INSERT INTO Maintenance VALUES(54330, 79);

--Inserting in to Ingredient_Cost table
INSERT INTO Ingredient_Cost VALUES(54331, 304);
INSERT INTO Ingredient_Cost VALUES(54332, 234);
INSERT INTO Ingredient_Cost VALUES(54333, 344);
INSERT INTO Ingredient_Cost VALUES(54334, 335);
INSERT INTO Ingredient_Cost VALUES(54335, 298);

