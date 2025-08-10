Create database Business_store;

use Business_store;


CREATE TABLE Categories(
Category_ID BIGINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
Category_name VARCHAR(50) NOT NULL
);

Insert into Categories (Category_name)
values
('Electronics'),
('Toys'),
('Notebooks'),
('Fashion'),
('kitchen'),
('House Essentials'),
('Sports'),
('Media'),
('Furniture'),
('Beauty and personal care');

create table products(
Product_ID BIGINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
Product_name VARCHAR(50),
Price INT,
Description VARCHAR(250),
Tags INT,
Supplier VARCHAR(50),
Category_ID BIGINT UNSIGNED,
	FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);

Alter table products modify column Tags varchar(255);

insert into products(Product_name, Price, Description, Category_ID, Tags, Supplier)
values

-- Electronics (Category_ID = 1)
('Bluetooth Speaker', 1499.00, 'Portable speaker with rich bass and voice control', 1, "audio,electronics,portable", 'EchoTech'),
('Smart Watch', 3999.00, 'Fitness tracking and notifications with OLED display', 1, 'wearable,electronics,smartwatch', 'PulseGear'),
('Wireless Keyboard', 1299.00, 'Compact wireless keyboard with rechargeable battery', 1, 'keyboard,electronics,office', 'ClickPoint'),
('Noise Cancelling Headphones', 2999.00, 'Over-ear headphones with ambient sound mode', 1, 'headphones,audio,electronics', 'SoundMax'),
('HD Webcam', 1599.00, '1080p webcam with autofocus and built-in mic', 1, 'camera,electronics,video', 'VisionCore'),

-- Toys (Category_ID = 2)
('Robot Dinosaur Toy', 1899.00, 'Interactive dinosaur with sound and movement', 2, 'toys,kids,electronic', 'PlayWorks'),
('Mini Drone', 2499.00, 'Drone with camera and auto-hover functionality', 2, 'drone,toys,flying', 'SkyTrack'),
('Magic Cube Puzzle', 349.00, '3x3 twist puzzle with bright colors', 2, 'toys,puzzle,brain', 'CubeCraft'),
('Plush Teddy Bear', 499.00, 'Soft teddy bear with embroidered paws', 2, 'toys,soft,cute', 'SnuggleJoy'),
('Water Gun Blaster', 699.00, 'High-pressure water gun for outdoor fun', 2, 'toys,summer,outdoor', 'SplashTime'),

-- Notebooks (Category_ID = 3)
('A4 Spiral Notebook', 239.00, '100-page ruled notebook for notes and sketches', 3, 'notebook,stationery,school', 'WriteRight'),
('Grid Notebook', 259.00, 'Graph paper notebook for technical drawings', 3, 'stationery,math,notebook', 'DraftTech'),
('Pocket Diary', 199.00, 'Compact daily planner with elastic closure', 3, 'diary,journal,stationery', 'NoteNest'),
('Eco-friendly Notebook', 289.00, 'Recycled paper notebook with minimalist cover', 3, 'eco,notes,stationery', 'GreenScribe'),
('Notebook Set', 549.00, 'Set of 3 notebooks with themed covers', 3, 'stationery,notebook,set', 'PageBuddy'),

-- Fashion (Category_ID = 4)
('Men\'s Casual Shirt', 899.00, 'Cotton shirt with checkered design', 4, 'fashion,men,shirt', 'TrendWear'),
('Women\'s Maxi Dress', 1499.00, 'Flowy ankle-length dress for summer', 4, 'fashion,women,dress', 'StyleCore'),
('Running Shoes', 2799.00, 'Breathable sneakers with shock absorption', 4, 'footwear,sports,fashion', 'TrackStep'),
('Leather Wallet', 1099.00, 'Genuine leather wallet with RFID protection', 4, 'accessory,wallet,fashion', 'CarryWell'),
('Hoodie Jacket', 1699.00, 'Fleece hoodie with zip and kangaroo pocket', 4, 'fashion,casual,jacket', 'UrbanZip'),

-- Kitchen (Category_ID = 5)
('Non-stick Frying Pan', 899.00, 'Durable pan with heat-resistant handle', 5, 'kitchen,cookware,pan', 'ChefPro'),
('Blender', 2499.00, '500W blender with multi-speed control', 5, 'kitchen,appliance,blender', 'MixMate'),
('Digital Kitchen Scale', 699.00, 'Precision scale with LCD display', 5, 'kitchen,scale,cooking', 'WeighRight'),
('Electric Kettle', 1499.00, '1.5L kettle with auto shut-off', 5, 'kitchen,appliance,boil', 'BrewFast'),
('Cutlery Set', 1299.00, '24-piece stainless steel cutlery', 5, 'kitchen,dining,set', 'TableTop'),

-- House Essentials (Category_ID = 6)
('LED Table Lamp', 999.00, 'Adjustable brightness lamp with USB charging', 6, 'lighting,home,led', 'GlowNest'),
('Laundry Basket', 599.00, 'Foldable fabric basket with handles', 6, 'home,laundry,organize', 'NeatSpace'),
('Wall Clock', 799.00, 'Minimalist wall clock with silent sweep', 6, 'home,decor,time', 'TimeAura'),
('Scented Candles', 349.00, 'Lavender-scented candles for relaxation', 6, 'decor,fragrance,home', 'CalmEssence'),
('Doormat', 499.00, 'Rubber-backed fiber mat for entryways', 6, 'home,essentials,mat', 'StepGuard'),

-- Sports (Category_ID = 7)
('Yoga Mat', 1199.00, 'Anti-slip mat with carrying strap', 7, 'sports,yoga,fitness', 'FlexFit'),
('Skipping Rope', 299.00, 'Adjustable rope with foam handles', 7, 'exercise,sports,cardio', 'JumpStart'),
('Tennis Racket', 2999.00, 'Lightweight racket with shock-absorbing grip', 7, 'sports,tennis,equipment', 'AceStrike'),
('Football', 799.00, 'Standard size football for training and matches', 7, 'sports,ball,outdoor', 'GoalLine'),
('Water Bottle', 599.00, 'Insulated stainless steel bottle, 1L', 7, 'fitness,hydration,sports', 'HydraTech'),

-- Media (Category_ID = 8)
('Mystery Novel', 499.00, 'A thrilling detective story with unexpected twists', 8, 'book,fiction,mystery', 'ReadMore'),
('Music Album CD', 299.00, 'Compilation of acoustic indie tracks', 8, 'music,cd,album', 'TuneShelf'),
('Documentary DVD', 399.00, 'Award-winning film on ocean conservation', 8, 'media,dvd,nature', 'ViewPoint'),
('Kids Storybook', 349.00, 'Illustrated bedtime tales for children', 8, 'book,kids,reading', 'StoryNest'),
('Art Magazine', 199.00, 'Monthly edition covering contemporary artists', 8, 'media,magazine,art', 'InkMuse'),

-- Furniture (Category_ID = 9)
('Wooden Coffee Table', 5499.00, 'Minimalist table with oak finish', 9, 'furniture,livingroom,wood', 'FurniCo'),
('Office Chair', 4299.00, 'Ergonomic chair with lumbar support and wheels', 9, 'furniture,office,chair', 'SitWell'),
('Bookshelf Unit', 3599.00, '5-tier shelf for books and decor', 9, 'storage,furniture,bookshelf', 'StackSpace'),
('Shoe Rack', 1399.00, '3-level metal rack for shoes', 9, 'furniture,storage,home', 'NeatNest'),
('TV Stand', 2999.00, 'Media console with cable management slots', 9, 'furniture,media,stand', 'ViewStation'),

-- Beauty and Personal Care (Category_ID = 10)
('Face Moisturizer', 699.00, 'Hydrating cream with aloe vera and SPF 15', 10, 'beauty,skincare,moisturizer', 'GlowCare'),
('Shampoo & Conditioner', 899.00, 'Dual pack with natural oils for hair health', 10, 'haircare,beauty,personal', 'FreshTresses'),
('Lip Balm Pack', 349.00, 'Set of 3 fruity lip balms with shea butter', 10, 'beauty,lips,personal', 'SoftSmile'),
('Perfume Spray', 1199.00, 'Long-lasting citrus fragrance with elegant bottle', 10, 'fragrance,beauty,spray', 'ScentAura'),
('Makeup Brush Set', 999.00, '10-piece brush set in travel pouch', 10, 'beauty,makeup,tools', 'BlendArt');


create table Customers(
Customer_ID BIGINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
Name VARCHAR(50),
E_mail VARCHAR(50) NOT NULL,
Phone_Number BIGINT,
	CHECK (Phone_Number BETWEEN 1000000000 AND 9999999999),
Address VARCHAR(255),
City VARCHAR(50),
Country VARCHAR (50)
);


Insert into Customers(Name, E_mail, Phone_Number, Address, City, Country)
values
('Aarav Kapoor', 'aarav.kapoor@example.com', 9876543210, '22 Lotus Rd', 'Delhi', 'India'),
('Emily Stone', 'emily.stone@example.com', 2014567890, '47 Lakeview St', 'Boston', 'USA'),
('Hiroshi Sato', 'hiroshi.sato@example.com', 9034567890, '15 Sakura Lane', 'Tokyo', 'Japan'),
('Fatima Noor', 'fatima.noor@example.com', 9812345678, '8 Palm Court', 'Lahore', 'Pakistan'),
('Lucas Bauer', 'lucas.bauer@example.com', 4912345678, '33 Lindenstrasse', 'Berlin', 'Germany'),
('Chioma Nwosu', 'chioma.nwosu@example.com', 8034567890, '12 Victoria Cres', 'Lagos', 'Nigeria'),
('Juan Delgado', 'juan.delgado@example.com', 5523456789, '75 Reforma Blvd', 'Mexico City', 'Mexico'),
('Isla Fraser', 'isla.fraser@example.com', 7712345678, '18 Heather Way', 'Glasgow', 'UK'),
('Chen Li', 'chen.li@example.com', 8612345678, '99 Dragon Rd', 'Shanghai', 'China'),
('Sofia Bianchi', 'sofia.bianchi@example.com', 3471234567, 'Via Dante 9', 'Milan', 'Italy'),
('Mohammed Ali', 'mohammed.ali@example.com', 5012345678, '20 Creek Side', 'Dubai', 'UAE'),
('Olga Ivanova', 'olga.ivanova@example.com', 9161234567, '1 Tverskaya St', 'Moscow', 'Russia'),
('James Parker', 'james.parker@example.com', 5559871234, '101 Elm St', 'Seattle', 'USA'),
('Amrita Desai', 'amrita.desai@example.com', 9123456789, '67 Nehru Rd', 'Mumbai', 'India'),
('Pedro Martinez', 'pedro.martinez@example.com', 6112345678, 'Calle Real 23', 'Madrid', 'Spain'),
('Sanaa Khalid', 'sanaa.khalid@example.com', 1002223333, '15 Nile Street', 'Cairo', 'Egypt'),
('Tomas Horak', 'tomas.horak@example.com', 6021234567, 'Karlova 42', 'Prague', 'Czech Republic'),
('Anna Zielinska', 'anna.zielinska@example.com', 5021234567, 'Warszawska 77', 'Warsaw', 'Poland'),
('Jean Martin', 'jean.martin@example.com', 6123456789, 'Rue de Provence 12', 'Paris', 'France'),
('Maya Rao', 'maya.rao@example.com', 9012345678, 'Residency Road 3', 'Bangalore', 'India'),
('George Taylor', 'george.taylor@example.com', 4001234567, 'Bondi Circle', 'Sydney', 'Australia'),
('Soo-jin Kim', 'soojin.kim@example.com', 8221234567, 'Gangnam Blvd', 'Seoul', 'South Korea'),
('Carlos Lima', 'carlos.lima@example.com', 9123456789, 'Rua Verde 11', 'São Paulo', 'Brazil'),
('Helena Andersson', 'helena.andersson@example.com', 7012345678, 'Storgatan 5', 'Stockholm', 'Sweden'),
('Nino Romano', 'nino.romano@example.com', 3319876543, 'Via Mazzini 19', 'Florence', 'Italy'),
('Linda Thompson', 'linda.thompson@example.com', 6475551234, 'King St W', 'Toronto', 'Canada'),
('Ahmed Hussain', 'ahmed.hussain@example.com', 3001234567, 'Mall Road', 'Karachi', 'Pakistan'),
('Eva Nagy', 'eva.nagy@example.com', 3012345678, 'Andrássy út 90', 'Budapest', 'Hungary'),
('Boitumelo Nkosi', 'boitumelo.nkosi@example.com', 8212345678, 'Mandela Street', 'Cape Town', 'South Africa'),
('Jasmine Wong', 'jasmine.wong@example.com', 8529123456, 'Queen’s Rd', 'Hong Kong', 'Hong Kong'),
('Matej Novak', 'matej.novak@example.com', 9123456789, 'Zagreb Center', 'Zagreb', 'Croatia'),
('Nadia Khoury', 'nadia.khoury@example.com', 9613123456, 'Hamra St', 'Beirut', 'Lebanon'),
('Ivan Dimitrov', 'ivan.dimitrov@example.com', 8812345678, 'Sofia Plaza', 'Sofia', 'Bulgaria'),
('Artem Vasiliev', 'artem.vasiliev@example.com', 5019876543, 'Kyiv Street 10', 'Kyiv', 'Ukraine'),
('Lila Tran', 'lila.tran@example.com', 9012345678, 'Le Loi Blvd', 'Ho Chi Minh City', 'Vietnam');


CREATE TABLE Orders (
    Order_ID BIGINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Customer_ID BIGINT UNSIGNED,
    Product_ID BIGINT UNSIGNED ,
    Category_ID BIGINT UNSIGNED, 
    Total_quantity INT,
    Total_amount DECIMAL(10, 2),
    Length DECIMAL(5, 2),
    Width DECIMAL(5, 2),
    Order_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Delivery_timestamp TIMESTAMP,
    payment_mode VARCHAR(50),

    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES products(Product_ID),
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);


INSERT INTO Orders (Customer_ID, Product_ID, Category_ID, Total_quantity, Total_amount, Length, Width, Order_timestamp, Delivery_timestamp, payment_mode)
VALUES
(1, 5, 1, 2, 120.50, 10.5, 7.2, NOW(), NOW() + INTERVAL 2 DAY, 'Credit Card'),
(2, 12, 3, 5, 345.00, 15.0, 10.0, NOW(), NOW() + INTERVAL 3 DAY, 'UPI'),
(3, 21, 5, 1, 49.99, 9.0, 6.0, NOW(), NOW() + INTERVAL 4 DAY, 'Cash'),
(4, 18, 4, 4, 215.75, 13.5, 9.2, NOW(), NOW() + INTERVAL 5 DAY, 'PayPal'),
(5, 27, 6, 6, 380.40, 16.0, 10.5, NOW(), NOW() + INTERVAL 6 DAY, 'Debit Card'),
(6, 32, 7, 3, 180.00, 11.0, 7.8, NOW(), NOW() + INTERVAL 2 DAY, 'Credit Card'),
(7, 9, 2, 2, 99.99, 10.0, 6.5, NOW(), NOW() + INTERVAL 4 DAY, 'UPI'),
(8, 25, 6, 7, 510.60, 19.0, 12.7, NOW(), NOW() + INTERVAL 7 DAY, 'Cash'),
(9, 11, 3, 5, 275.80, 14.5, 9.9, NOW(), NOW() + INTERVAL 3 DAY, 'PayPal'),
(10, 38, 8, 1, 44.75, 8.0, 5.2, NOW(), NOW() + INTERVAL 2 DAY, 'Debit Card'),
(11, 6, 2, 4, 210.00, 13.0, 9.0, NOW(), NOW() + INTERVAL 5 DAY, 'Credit Card'),
(12, 20, 4, 6, 360.25, 17.2, 11.3, NOW(), NOW() + INTERVAL 6 DAY, 'UPI'),
(13, 8, 2, 2, 120.00, 10.5, 7.3, NOW(), NOW() + INTERVAL 2 DAY, 'Cash'),
(14, 19, 4, 3, 150.45, 11.5, 8.0, NOW(), NOW() + INTERVAL 3 DAY, 'PayPal'),
(15, 36, 9, 5, 299.99, 14.0, 9.6, NOW(), NOW() + INTERVAL 4 DAY, 'Debit Card'),
(16, 3, 1, 7, 520.85, 18.5, 12.5, NOW(), NOW() + INTERVAL 7 DAY, 'Credit Card'),
(17, 31, 7, 1, 39.99, 8.1, 5.3, NOW(), NOW() + INTERVAL 2 DAY, 'UPI'),
(18, 45, 10, 4, 205.25, 12.8, 8.8, NOW(), NOW() + INTERVAL 5 DAY, 'Cash'),
(19, 28, 6, 3, 160.00, 11.2, 7.9, NOW(), NOW() + INTERVAL 3 DAY, 'PayPal'),
(20, 15, 3, 6, 390.50, 16.7, 10.6, NOW(), NOW() + INTERVAL 6 DAY, 'Debit Card'),
(21, 1, 1, 2, 85.00, 9.8, 6.4, NOW(), NOW() + INTERVAL 2 DAY, 'Credit Card'),
(22, 7, 2, 5, 280.35, 14.2, 9.7, NOW(), NOW() + INTERVAL 4 DAY, 'UPI'),
(23, 40, 8, 1, 48.90, 8.0, 5.0, NOW(), NOW() + INTERVAL 2 DAY, 'Cash'),
(24, 44, 10, 4, 199.99, 13.1, 8.9, NOW(), NOW() + INTERVAL 5 DAY, 'PayPal'),
(25, 13, 3, 3, 140.20, 11.3, 7.6, NOW(), NOW() + INTERVAL 3 DAY, 'Debit Card'),
(26, 33, 7, 6, 375.00, 17.0, 11.0, NOW(), NOW() + INTERVAL 6 DAY, 'Credit Card'),
(27, 2, 1, 2, 90.50, 9.7, 6.0, NOW(), NOW() + INTERVAL 2 DAY, 'UPI'),
(28, 30, 6, 5, 295.00, 14.8, 9.4, NOW(), NOW() + INTERVAL 4 DAY, 'Cash'),
(29, 39, 8, 1, 43.75, 7.9, 5.1, NOW(), NOW() + INTERVAL 2 DAY, 'PayPal'),
(30, 17, 4, 4, 209.80, 13.3, 9.1, NOW(), NOW() + INTERVAL 5 DAY, 'Debit Card'),
(31, 42, 9, 3, 145.65, 11.1, 7.2, NOW(), NOW() + INTERVAL 3 DAY, 'Credit Card'),
(32, 22, 5, 6, 395.25, 16.3, 10.8, NOW(), NOW() + INTERVAL 6 DAY, 'UPI'),
(33, 4, 1, 2, 100.00, 10.2, 6.3, NOW(), NOW() + INTERVAL 2 DAY, 'Cash'),
(34, 16, 3, 5, 310.50, 14.6, 9.5, NOW(), NOW() + INTERVAL 4 DAY, 'PayPal'),
(35, 10, 2, 1, 46.20, 8.0, 5.4, NOW(), NOW() + INTERVAL 2 DAY, 'Debit Card');


SELECT * FROM Orders;

