CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    username VARCHAR(50) UNIQUE,
    user_password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    address TEXT,
    profile_pic MEDIUMBLOB DEFAULT NULL
);

CREATE TABLE Listing (
    listing_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(64),
    category VARCHAR(32),
    description VARCHAR(512),
    starting_value DECIMAL(10,2),
    auction_active BOOLEAN DEFAULT TRUE,
    winner_id INT,
    image MEDIUMBLOB DEFAULT NULL,
    -- Foreign Keys
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (winner_id) REFERENCES Users(user_id)
);

CREATE TABLE watch (
	watch_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    listing_id INT,
    -- Foreign keys
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (listing_id) REFERENCES Listing(listing_id)
);

CREATE TABLE bids (
	bid_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    listing_id INT,
    bid_value DECIMAL(10,2),
    -- Foreign keys
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (listing_id) REFERENCES listing(listing_id)
    );
    
    CREATE TABLE comments (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    listing_id INT,
    comment_text TEXT,
    -- Foreign keys
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (listing_id) REFERENCES listing(listing_id)
);



