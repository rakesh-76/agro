SELECT 
	l.listing_id,
    l.title,
    l.category,
    l.starting_value,
    count(b.bid_id) as num_bids,
    max(b.bid_value) as final_price
FROM listing l
LEFT JOIN bids b on l.listing_id = b.listing_id
WHERE auction_active = TRUE
GROUP BY l.listing_id, l.title, l.category, l.starting_value;	