create database crop;
use crop;

create table Crop_production
(
State_Name varchar(255),
District_Name varchar(255),
Crop_year int,
Season varchar(255),
Crop varchar(255),
Area int ,
Production int
);

LOAD DATA LOCAL INFILE 'C:/Users/karan/Desktop/Ineuron Internship Crop/crop_production.csv'
INTO TABLE Crop_production
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

Alter table crop_production
add column Crop_category varchar(255);
select * from crop_production;

update crop_production
set Crop_category = 
case
    when Crop in ("Rice","Maize","Wheat","Barley","Varagu","Ragi","Bajra","Other Cereals & Millets","Small millets","Jowar")
    then "Cereal"
    when Crop in ("Moong","Urad","Arhar/Tur","Peas & beans ","Masoor","Other Kharif pulses","other misc. pulses","Ricebean(nagadal)","Rajmash Kholar","Lentil","Samai","Blackgram","Korra","Cowpea(Lobia)","Other Rabi pulses","Other Kharif pulses","Peas & beans(Pulses)")
    then "Pulses"  
    when Crop in ("Peach","Apple","Litchi","Pear","Coconut","Plums","Ber","Sapota","Lemon","Pome Granet","Other Citrus Fruit", "Mango","Papaya","Banana")
    then "Fruits"
    when Crop in ("Bean","Lab-Lab","Moth","Guar seed","Tapioca","Soyabean","Horse-gram","Gram")
    then "Beans"
    when Crop in ("Turnip" ,"Peas" ,"Beet Root" ,"Carrot" ,"Yam" ,"Ribed Guard" ,"Ash Gourd" ,"Pump Kin" ,"Redish" ,"Snak Guard" ,"Bottle Gourd" ,"Bitter Gourd" ,"Cucumber" ,"Drum Stick" ,"Cauliflower""Beans & Mutter(Vegetable)" ,"Cabbage" ,"Bhindi" ,"Tomato" ,"Brinjal" ,"Khesari" ,"Sweet potato" ,"Potato" ,"Onion")
    then "Vegetables"
    when Crop in ("Perilla" ,"Colocosia" ,"Ginger" ,"Cardamom" ,"Black pepper" ,"Dry ginger" ,"Garlic" ,"Coriander" ,"Turmeric" ,"Dry chillies")
    then "Spices"
    when Crop in ("Kapas" ,"other fibres" ,"Jute & mesta" ,"Jute" ,"Mesta" ,"Cotton(lint)")
    then "Fibres"
    when Crop in ("Arecanut" ,"Arcanut (Processed)","Atcanut (Raw)" ,"Cashewnut Processed" ,"Cashewnut Raw" ,"Cashewnut" ,"Groundnut")
    then "Nuts"
    when Crop in ("Rubber")
    then "Natural Polymer"
    when Crop in ("Sunflower" ,"other oilseeds","Safflower","Niger seed","Castor seed","Linseed","Rapeseed &Mustard" ,"Sesamum")
    then "Oil Seeds"
    when Crop in ("Coffee" ,"Tea" ,"Sugarcane" ,"Tobacco")
    then "Commercial"
    else "others"
    end;
    
select * from crop_production;

