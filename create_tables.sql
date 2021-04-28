
CREATE TABLE Phoenix_Pho (
PhoenixPhoID      NUMBER(5)  NOT NULL,
Name              VARCHAR2(20) DEFAULT 'Phoenix Pho' NOT NULL,
State             VARCHAR2(20) DEFAULT 'MA' NOT NULL,
Street            VARCHAR2(20)  NOT NULL,
Zip_Code          VARCHAR2(5)   NOT NULL,
CONSTRAINT PhoenixPho_PK PRIMARY KEY(PhoenixPhoID)
);

CREATE TABLE Kitchen(
KitchenID      	  NUMBER(5)  NOT NULL,
Stoves       	  NUMBER(2) NOT NULL,
Grills       	  NUMBER(2) NOT NULL,
Fryers      	  NUMBER(2) NOT NULL,
Spoons       	  NUMBER(4) NOT NULL,
Forks       	  NUMBER(4)  NOT NULL,
ChopSticks   	  NUMBER(4)  NOT NULL,
PhoenixPhoID      NUMBER(5)  NOT NULL,
CONSTRAINT Kitchen_PK PRIMARY KEY(KitchenID),
CONSTRAINT Kitchen_FK FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID)
);

CREATE TABLE Storage_Area(
StorageAreaID     NUMBER(5)  NOT NULL,
Freezers          NUMBER(2) NOT NULL,
Shelves           NUMBER(2) NOT NULL,
Containers        NUMBER(2) NOT NULL,
PhoenixPhoID      NUMBER(5)  NOT NULL,
KitchenID         NUMBER(5),
CONSTRAINT Storage_Area_PK PRIMARY KEY(StorageAreaID),
CONSTRAINT Storage_Area_FK1 FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID),
CONSTRAINT Storage_Area_FK2 FOREIGN KEY(KitchenID) REFERENCES Kitchen(KitchenID)
);

CREATE TABLE Cleaning_Tool(
CleaningToolID     NUMBER(5)  NOT NULL,
Mops               NUMBER(2) NOT NULL,
Brooms             NUMBER(2) NOT NULL,
TrashBins          NUMBER(2) NOT NULL,
Sponges            NUMBER(4) NOT NULL,
CleaningClothes    NUMBER(4)  NOT NULL,
Sinks   		   NUMBER(2)  NOT NULL,
Dryers  		   NUMBER(2)  NOT NULL,
PhoenixPhoID       NUMBER(5)  NOT NULL,
CONSTRAINT Cleaning_Tool_PK PRIMARY KEY(CleaningToolID),
CONSTRAINT Cleaning_Tool_FK FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID)
);

CREATE TABLE Manager(
ManagerID   NUMBER(5)   NOT NULL,
Name        VARCHAR2(20)  NOT NULL,
Address     VARCHAR2(20)  NOT NULL,
DateHired     DATE DEFAULT SYSDATE   NOT NULL,
Wage          NUMBER(4)     NOT NULL,
PhoenixPhoID      NUMBER(5)  NOT NULL,
CONSTRAINT Manager_PK PRIMARY KEY(ManagerID),
CONSTRAINT Manager_FK FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID)
);

CREATE TABLE Employee(
EmployeeID    NUMBER(5)   NOT NULL,
Name          VARCHAR2(20)   NOT NULL,
Address       VARCHAR2(20)   NOT NULL,
DateHired     DATE DEFAULT SYSDATE   NOT NULL,
TimeCleaned   DATE,
PhoenixPhoID      NUMBER(5)  NOT NULL,
ManagerID      NUMBER(5)  NOT NULL,
CleaningToolID     NUMBER(5)  NOT NULL,
StorageAreaID     NUMBER(5)  NOT NULL,
KitchenID     NUMBER(5)  NOT NULL,
CONSTRAINT Employee_PK PRIMARY KEY(EmployeeID),
CONSTRAINT Employee_FK1 FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID),
CONSTRAINT Employee_FK2 FOREIGN KEY(ManagerID) REFERENCES Manager(ManagerID),
CONSTRAINT Employee_FK3 FOREIGN KEY(StorageAreaID) REFERENCES Storage_Area(StorageAreaID),
CONSTRAINT Employee_FK4 FOREIGN KEY(KitchenID) REFERENCES Kitchen(KitchenID),
CONSTRAINT Employee_FK5 FOREIGN KEY(CleaningToolID) REFERENCES Cleaning_Tool(CleaningToolID)
);

CREATE TABLE Chief(
ChiefID   NUMBER(5)   NOT NULL,
Name        VARCHAR2(20)  NOT NULL,
Address     VARCHAR2(20)  NOT NULL,
DateHired     DATE DEFAULT SYSDATE   NOT NULL,
Wage          NUMBER(4)     NOT NULL,
PhoenixPhoID      NUMBER(5)  NOT NULL,
CONSTRAINT Chief_PK PRIMARY KEY(ChiefID),
CONSTRAINT Chief_FK FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID)
);

CREATE TABLE Dish(
DishID   NUMBER(5)   NOT NULL,
Spices   VARCHAR2(20),
Seasonings VARCHAR2(20),
Condiments  VARCHAR2(20),
Vegetables  VARCHAR2(20),
DishCost    NUMBER(5) NOT NULL,
ChiefID    NUMBER(5),
CONSTRAINT Dish_PK PRIMARY KEY(DishID),
CONSTRAINT Dish_FK FOREIGN KEY(ChiefID) REFERENCES Chief(ChiefID)
);

CREATE TABLE Meat(
MDishID    NUMBER(5) NOT NULL,
Seafood   VARCHAR2(20),
Meat      VARCHAR2(20),
CONSTRAINT Meat_PK PRIMARY KEY(MDishID),
CONSTRAINT Meat_FK FOREIGN KEY(MDishID) REFERENCES Dish(DishID)
);

CREATE TABLE Rice_Dish(
RDishID    NUMBER(5) NOT NULL,
Rice   VARCHAR2(20) NOT NULL,
CONSTRAINT Rice_Dish_PK PRIMARY KEY(RDishID),
CONSTRAINT Rice_DISH_FK FOREIGN KEY(RDishID) REFERENCES Dish(DishID)
);

CREATE TABLE Noodle_Dish(
NDishID    NUMBER(5) NOT NULL,
Noodle   VARCHAR2(20) NOT NULL,
CONSTRAINT Noodle_Dish_PK PRIMARY KEY(NDishID),
CONSTRAINT Noodle_Dish_FK FOREIGN KEY(NDishID) REFERENCES Dish(DishID)
);

CREATE TABLE Sandwich(
SDishID    NUMBER(5) NOT NULL,
Bread   VARCHAR2(20) NOT NULL,
CONSTRAINT Sandwich_PK PRIMARY KEY(SDishID),
CONSTRAINT Sandwich_FK FOREIGN KEY(SDishID) REFERENCES Dish(DishID)
);

CREATE TABLE Renovation(
RenovationID   NUMBER(5),
Cost        NUMBER(20),
ExtraIncomeEarned NUMBER(20),
CONSTRAINT Renovation_PK PRIMARY KEY(RenovationID)
);

CREATE TABLE Promotion(
PromotionID   NUMBER(5) NOT NULL,
Promotion     VARCHAR2(20),
CONSTRAINT Promotion_PK PRIMARY KEY(PromotionID)
);

CREATE TABLE Advertisement(
APromotionID   NUMBER(5) NOT NULL,
Cost NUMBER(20),
ExtraIncomeEarned NUMBER(20),
CONSTRAINT Advertisement_PK PRIMARY KEY(APromotionID),
CONSTRAINT Advertisement_FK  FOREIGN KEY(APromotionID) REFERENCES Promotion(PromotionID)
);

CREATE TABLE Customer_Deal(
CPromotionID   NUMBER(5) NOT NULL,
Cost NUMBER(20),
ExtraIncomeEarned NUMBER(20),
CONSTRAINT Customer_Deal_PK PRIMARY KEY(CPromotionID),
CONSTRAINT Customer_Deal_FK  FOREIGN KEY(CPromotionID) REFERENCES Promotion(PromotionID)
);

CREATE TABLE Financial_Advisor(
FinancialAdvisorID  NUMBER(5) NOT NULL,
DateHired          DATE DEFAULT SYSDATE NOT NULL,
RenovationID       NUMBER(5)  NOT NULL,
PromotionID        NUMBER(5)  NOT NULL,
PhoenixPhoID       NUMBER(5)  NOT NULL,
CONSTRAINT FinancialAdvisor_PK PRIMARY KEY (FinancialAdvisorID),
CONSTRAINT FinancialAdvisor_FK1 FOREIGN KEY(RenovationID) REFERENCES Renovation(RenovationID),
CONSTRAINT FinancialAdvisor_FK2 FOREIGN KEY(PromotionID) REFERENCES Promotion(PromotionID),
CONSTRAINT FinancialAdvisor_FK3 FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID)
);

CREATE TABLE Drink(
DrinkID     NUMBER(5)    NOT NULL,
DrinkName   VARCHAR2(10) NOT NULL,
DrinkCost   NUMBER(2)    NOT NULL,
PhoenixPhoID   NUMBER(5) NOT NULL,
CONSTRAINT Drink_PK PRIMARY KEY (DrinkID),
CONSTRAINT Drink_FK FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID)
);

CREATE TABLE Phoenix_Pho_Customer(
CustomerID		VARCHAR2(20)	NOT NULL,
Name			VARCHAR2(20),
PhoenixPhoID	NUMBER(5) 		NOT NULL,
DishID          NUMBER(5)       NOT NULL,
DrinkID         NUMBER(5),
CONSTRAINT Phoenix_Pho_Customer_PK PRIMARY KEY(CustomerID),
CONSTRAINT Phoenix_Pho_Customer_FK1 FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID),
CONSTRAINT Phoenix_Pho_Customer_FK2 FOREIGN KEY(DishID) REFERENCES Dish(DishID),
CONSTRAINT Phoenix_Pho_Customer_FK3 FOREIGN KEY(DrinkID) REFERENCES Drink(DrinkID)
);

CREATE TABLE EXPENSE(
ExpenseID		VARCHAR2(20)	NOT NULL,
PhoenixPhoID 	NUMBER(5)		NOT NULL,
CONSTRAINT Expense_PK PRIMARY KEY(ExpenseID),
CONSTRAINT Expense_FK FOREIGN KEY(PhoenixPhoID) REFERENCES Phoenix_Pho(PhoenixPhoID)
);

CREATE TABLE Employee_Payment(
EExpenseID		VARCHAR2(20)	NOT NULL,
AmountSpent		NUMBER(5),
CONSTRAINT Employee_Payment_PK PRIMARY KEY(EExpenseID),
CONSTRAINT Employee_Payment_FK FOREIGN KEY(EExpenseID) REFERENCES EXPENSE(ExpenseID)
);

CREATE TABLE MAINTENANCE(
MExpenseID		VARCHAR2(20)	NOT NULL,
AmountSpent		NUMBER(5),
CONSTRAINT Maintenance_PK PRIMARY KEY(MExpenseID),
CONSTRAINT Maintenance_FK FOREIGN KEY(MExpenseID) REFERENCES EXPENSE(ExpenseID)
);

CREATE TABLE INGREDIENT_COST(
IExpenseID		VARCHAR2(20)	NOT NULL,
AmountSpent		NUMBER(5),
CONSTRAINT Ingredient_Cost_PK PRIMARY KEY(IExpenseID),
CONSTRAINT Ingredient_Cost_FK FOREIGN KEY(IExpenseID) REFERENCES EXPENSE(ExpenseID)
);

CREATE TABLE Full_Time_Employee(
FEmployeeID		NUMBER(5)	NOT NULL,
WorkDays		VARCHAR2(20),
WorkHours		VARCHAR2(20),
Wage			NUMBER(5),
CONSTRAINT Full_Time_Employee_PK PRIMARY KEY(FEmployeeID),
CONSTRAINT Full_Time_Employee_FK FOREIGN KEY(FEmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Part_Time_Employee(
PEmployeeID		NUMBER(5)	NOT NULL,
WorkDays		VARCHAR2(20),
WorkHours		VARCHAR2(20),
Wage			NUMBER(5),
CONSTRAINT Part_Time_Employee_PK PRIMARY KEY(PEmployeeID),
CONSTRAINT Part_Time_Employee_FK FOREIGN KEY(PEmployeeID) REFERENCES Employee(EmployeeID)
);

