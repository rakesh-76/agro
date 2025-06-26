INSERT INTO users (first_name, last_name, username, user_password, email, address, profile_pic)
SELECT 
  CONCAT(first_name, '_seller_', FLOOR(RAND() * 1000)), 
  last_name, 
  CONCAT(username, '_s_', FLOOR(RAND() * 100000)), 
  user_password, 
  CONCAT('seller_', FLOOR(RAND()*100000), '@gmail.com'), 
  address, 
  NULL
FROM users
WHERE user_id BETWEEN 1 AND 20
ORDER BY RAND()
LIMIT 50;

INSERT INTO listing (user_id, title, category, description, starting_value, auction_active, winner_id, image)
SELECT 
  u.user_id,
  CONCAT(title_options.title_prefix, ' - Lot ', FLOOR(RAND() * 1000)),
  title_options.category,
  title_options.description,
  ROUND(1000 + (RAND() * 2000), 2),
  TRUE,
  NULL,
  NULL
FROM (
  SELECT 'Fresh Tomatoes' AS title_prefix, 'Vegetables' AS category, 'Naturally grown tomatoes.' AS description
  UNION
  SELECT 'Chana Dal', 'Pulses', 'polished chana dal.'
  UNION
  SELECT 'Tamarind', 'Spices', 'Sun-dried tamarind.'
  UNION
  SELECT 'Cotton', 'Cash Crops', 'Cleaned cotton.'
  UNION
  SELECT 'Organic Onions', 'Vegetables', 'No pesticide onions.'
  UNION
  SELECT 'Paddy Rice', 'Grains', 'Raw paddy for milling.'
  UNION
  SELECT 'Turmeric Root', 'Spices', 'Fresh turmeric.'
  UNION
  SELECT 'Dry Coconut', 'Cash Crops', 'Sun-dried coconuts.'
  UNION
  SELECT 'Sesame Seeds', 'Oil Seeds', 'Unpolished black sesame.'
  UNION
  SELECT 'Green Chillies', 'Vegetables', 'Spicy and fresh chillies.'
) AS title_options
JOIN users u ON u.user_id > 30
ORDER BY RAND()
LIMIT 75;

INSERT INTO users (first_name, last_name, username, user_password, email, address, profile_pic)
SELECT 
  CONCAT(first_name, '_buyer_', FLOOR(RAND() * 1000)),
  last_name,
  CONCAT(username, '_b_', FLOOR(RAND() * 100000)),
  user_password,
  CONCAT('buyer_', FLOOR(RAND()*100000), '@example.com'),
  address,
  NULL
FROM users
WHERE user_id BETWEEN 21 AND 30
ORDER BY RAND()
LIMIT 50;

INSERT INTO users (first_name, last_name, username, user_password, email, address, profile_pic)
SELECT 
  CONCAT(first_name, '_buyer_', FLOOR(RAND() * 10000)),
  last_name,
  CONCAT(username, '_b_', FLOOR(RAND() * 1000000)),
  user_password,
  CONCAT('buyer_', FLOOR(RAND()*1000000), '@gmail.com'),
  address,
  NULL
FROM users
WHERE user_id BETWEEN 21 AND 30
ORDER BY RAND()
LIMIT 50;

SELECT COUNT(*) 
FROM users u
JOIN listing l ON l.auction_active = TRUE
WHERE u.user_id >= 63;

INSERT INTO bids (user_id, listing_id, bid_value)
SELECT 
  u.user_id,
  l.listing_id,
  ROUND(l.starting_value + (RAND() * 500), 2)
FROM users u
JOIN listing l ON l.auction_active = TRUE
WHERE u.user_id >= 63
ORDER BY RAND()
LIMIT 300;

SELECT 
    b.bid_id,
    u.user_id,
    u.username,
    l.listing_id,
    l.title AS listing_title,
    b.bid_value
FROM bids b
JOIN users u ON b.user_id = u.user_id
JOIN listing l ON b.listing_id = l.listing_id
ORDER BY b.bid_id;
