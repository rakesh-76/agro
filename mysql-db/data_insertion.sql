INSERT INTO Users 
(first_name, last_name, username, user_password, email, address, profile_pic)
VALUES
('Ramesh', 'Naidu', 'ramesh_n', 'rn1234', 'ramesh.naidu@gmail.com', 'Vijayawada, Andhra Pradesh', NULL),
('Sita', 'Reddy', 'sita_r', 'sr3245542', 'sita.reddy@gmail.com', 'Guntur, Andhra Pradesh', NULL),
('Mohan', 'Krishna', 'mohan_k', 'mk35428', 'mohan.krishna@gmail.com', 'Nellore, Andhra Pradesh', NULL),
('Lakshmi', 'Devi', 'lakshmi_d', 'ld423987', 'lakshmi.devi@gmail.com', 'Tirupati, Andhra Pradesh', NULL),
('Anand', 'Yadav', 'anand_y', 'ay23475', 'anand.yadav@gmail.com', 'Kurnool, Andhra Pradesh', NULL),
('Padma', 'Rao', 'padma_r', 'pr23457', 'padma.rao@gmail.com', 'Bapatla, Andhra Pradesh', NULL),
('Harsha', 'Babu', 'harsha_b', 'hb54687', 'harsha.babu@gmail.com', 'Rajahmundry, Andhra Pradesh', NULL),
('Sravani', 'Kiran', 'sravani_k', 'sk5467', 'sravani.kiran@gmail.com', 'Vijayawada, Andhra Pradesh', NULL),
('Venkat', 'Rao', 'venkat_r', 'vr194820', 'venkat.rao@gmail.com', 'Guntur, Andhra Pradesh', NULL),
('Nandini', 'Rani', 'nandini_r', '876345nr', 'nandini.rani@gmail.com', 'Nellore, Andhra Pradesh', NULL),
('Ajay', 'Verma', 'ajay_v', 'av7645', 'ajay.verma@gmail.com', 'Hyderabad, Telangana', NULL),
('Pavani', 'Das', 'pavani_d', 'pd543785', 'pavani.das@gmail.com', 'Warangal, Telangana', NULL),
('Kiran', 'Mohan', 'kiran_m', 'km4732', 'kiran.mohan@gmail.com', 'Vijayawada, Andhra Pradesh', NULL),
('Sandeep', 'Yadav', 'sandeep_y', 'sy42374', 'sandeep.yadav@gmail.com', 'Guntur, Andhra Pradesh', NULL),
('Anusha', 'Rao', 'anusha_r', 'ar32747', 'anusha.rao@gmail.com', 'Ongole, Andhra Pradesh', NULL),
('Ravi', 'Teja', 'ravi_teja', 'rt42387', 'ravi.teja@gmail.com', 'Kadapa, Andhra Pradesh', NULL),
('Bhavana', 'Murthy', 'bhavana_m', 'bm48324', 'bhavana.murthy@gmail.com', 'Tenali, Andhra Pradesh', NULL),
('Surya', 'Narayan', 'surya_n', 'sn4985', 'surya.narayan@gmail.com', 'Vizag, Andhra Pradesh', NULL),
('Priya', 'Sree', 'priya_s', 'ps8432', 'priya.sree@gmail.com', 'Karimnagar, Telangana', NULL),
('Teja', 'Reddy', 'tejas_r', 'tr4298545', 'teja.reddy@gmail.com', 'Nizamabad, Telangana', NULL),
('Akhil', 'Chopra', 'akhil_c', 'ac31284', 'akhil.chopra@gmail.com', 'Nagpur, Maharashtra', NULL),
('Rekha', 'Sharma', 'rekha_s', 'rsajfj22', 'rekha.sharma@gmail.com', 'Indore, Madhya Pradesh', NULL),
('Zaheer', 'Khan', 'zahid_k', 'zkrw323', 'zaheer.khan@gmail.com', 'Hyderabad, Telangana', NULL),
('Meera', 'Das', 'meera_d', 'mr42398', 'meera.das@gmail.com', 'Cuttack, Odisha', NULL),
('Govind', 'Joshi', 'govind_j', 'gj424ffa', 'govind.joshi@gmail.com', 'Delhi NCR', NULL),
('Latika', 'Menon', 'latika_m', 'lm428347', 'latika.menon@gmail.com', 'Chennai, Tamil Nadu', NULL),
('Rajeev', 'Bansal', 'rajeev_b', 'rb423482', 'rajeev.bansal@gmail.com', 'Bhopal, Madhya Pradesh', NULL),
('Farhan', 'Ali', 'farhan_a', 'f3reufd', 'farhan.ali@gmail.com', 'Lucknow, Uttar Pradesh', NULL),
('Nisha', 'Kaur', 'nisha_k', 'nk43284', 'nisha.kaur@gmail.com', 'Amritsar, Punjab', NULL),
('Amit', 'Sen', 'amit_s', 'ssff342', 'amit.sen@gmail.com', 'Kolkata, West Bengal', NULL);

INSERT INTO Listing 
(user_id, title, category, description, starting_value, auction_active, winner_id, image)
VALUES
(1, 'Fresh Red Chilli', 'Vegetables', 'High-quality red chilli.', 1500.00, TRUE, NULL, NULL),
(2, 'Basmati Rice', 'Grains', 'Aged basmati rice.', 2200.00, TRUE, NULL, NULL),
(3, 'Groundnut Harvest', 'Pulses', 'Freshly harvested groundnuts.', 1200.00, FALSE, 4, NULL),
(4, 'Green Mangoes', 'Fruits', 'Unripened mangoes.', 1800.00, TRUE, NULL, NULL),
(5, 'Cotton Bales - 100kg', 'Cash Crops', 'Premium cotton.', 3400.00, FALSE, 7, NULL),
(6, 'Fresh Tomatoes', 'Vegetables', 'Organic tomatoes.', 1000.00, TRUE, NULL, NULL),
(7, 'Carrots', 'Vegetables', 'Organic carrots.', 900.00, TRUE, NULL, NULL),
(8, 'Tamarind', 'Spices', 'Sun-dried tamarind, seedless.', 1300.00, FALSE, 10, NULL),
(9, 'Onion', 'Vegetables', 'High-grade onions', 1100.00, TRUE, NULL, NULL),
(10, 'Maize', 'Grains', 'Cleaned maize', 1250.00, FALSE, 13, NULL),
(11, 'Organic Brinjals', 'Vegetables', 'Pesticide-free brinjals.', 950.00, TRUE, NULL, NULL),
(12, 'Sesame Seeds', 'Oil Seeds', 'Black sesame seeds, unpolished and clean.', 2100.00, TRUE, NULL, NULL),
(13, 'Green Gram', 'Pulses', 'High-yield green gram', 1600.00, FALSE, 3, NULL),
(14, 'Chana Dal', 'Pulses', 'Premium chana dal.', 2000.00, TRUE, NULL, NULL),
(15, 'Guavas', 'Fruits', 'Sweet guavas.', 1400.00, TRUE, NULL, NULL),
(16, 'Dry Coconut', 'Cash Crops', 'Sun-dried', 1750.00, TRUE, NULL, NULL),
(17, 'Paddy', 'Grains', 'Unmilled paddy', 2100.00, FALSE, 5, NULL),
(18, 'Lemons', 'Fruits', 'Fresh juicy lemons.', 1000.00, TRUE, NULL, NULL),
(19, 'Turmeric Root', 'Spices', 'Bright turmeric root.', 1950.00, FALSE, 6, NULL),
(20, 'Red Gram', 'Pulses', 'Premium split toor dal.', 2250.00, TRUE, NULL, NULL);

INSERT INTO watch (user_id, listing_id)
VALUES
(1, 5),
(2, 3),
(3, 1),
(4, 7),
(5, 2),
(6, 10),
(7, 4),
(8, 6),
(9, 9),
(10, 8);

INSERT INTO bids (user_id, listing_id, bid_value)
VALUES
(21, 1, 1550.00),
(22, 2, 2300.00),
(23, 4, 1900.00),
(24, 6, 1100.00),
(25, 7, 950.00),
(26, 9, 1200.00),
(27, 11, 990.00),
(28, 12, 2200.00),
(29, 14, 2100.00),
(30, 15, 1500.00),
(21, 16, 1800.00),
(22, 18, 1100.00),
(23, 20, 2400.00);

INSERT INTO comments (user_id, listing_id, comment_text)
VALUES
(21, 1, 'Is this chilli sun-dried or machine dried?'),
(22, 2, 'Looks good. Can you ship to Nagpur?'),
(23, 4, 'I’m looking for a larger quantity. Is bulk available?'),
(24, 6, 'What’s the pesticide usage on these tomatoes?'),
(25, 9, 'How fresh are these onions?'),
(26, 11, 'Can you send sample pics of the brinjals?'),
(27, 12, 'Interested. What’s the moisture content in these sesame seeds?'),
(28, 14, 'Can you confirm if this is unpolished chana dal?'),
(29, 15, 'Are these guavas organic or hybrid variety?'),
(30, 20, 'I need 200kg of toor dal. Can you supply that much?');

INSERT INTO comments (user_id, listing_id, comment_text)
VALUES
(21, 1, 'Is this chilli sun-dried or machine dried?'),
(22, 2, 'Looks good. Can you ship to Nagpur?'),
(23, 4, 'I’m looking for a larger quantity. Is bulk available?'),
(24, 6, 'What’s the pesticide usage on these tomatoes?'),
(25, 9, 'How fresh are these onions?'),
(26, 11, 'Can you send sample pics of the brinjals?'),
(27, 12, 'Interested. What’s the moisture content in these sesame seeds?'),
(28, 14, 'Can you confirm if this is unpolished chana dal?'),
(29, 15, 'Are these guavas organic or hybrid variety?'),
(30, 20, 'I need 200kg of toor dal. Can you supply that much?');
