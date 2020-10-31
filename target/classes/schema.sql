USE springboot;
create table if not exists Ingredient (
  id varchar(4) , primary key (id),
  name varchar(25) not null,
  type varchar(10) not null
);

create table if not exists Taco (
  id bigint AUTO_INCREMENT,primary key (id),
  name varchar(50) not null,
  createdAt timestamp not null
);

create table if not exists Taco_Ingredients (
  taco bigint not null,
  ingredient varchar(4) not null
);

create table if not exists Taco_Order (
    id bigint AUTO_INCREMENT,primary key (id),
	deliveryName varchar(50) not null,
	deliveryStreet varchar(50) not null,
	deliveryCity varchar(50) not null,
	deliveryState varchar(2) not null,
	deliveryZip varchar(10) not null,
	ccNumber varchar(16) not null,
	ccExpiration varchar(5) not null,
	ccCVV varchar(3) not null,
    placedAt timestamp not null
);

create table if not exists Taco_Order_Tacos (
	tacoOrder bigint not null,
	taco bigint not null
);

ALTER TABLE Taco_Ingredients ADD FOREIGN KEY (taco) REFERENCES Taco(id);
ALTER TABLE Taco_Ingredients ADD FOREIGN KEY (ingredient) REFERENCES Ingredient(id);
ALTER TABLE Taco_Order_Tacos ADD FOREIGN KEY (taco) REFERENCES Taco(id);
ALTER TABLE Taco_Order_Tacos ADD FOREIGN KEY (tacoOrder) REFERENCES Taco_Order(id);