SELECT * FROM `rogue`.`searches`;

SELECT * FROM `rogue`.`restock`;

SELECT * FROM `rogue`.`items`;

DELETE FROM `rogue`.`searches` ;

SELECT C.num_searches, S.* FROM searches S, 
(SELECT COUNT(*) num_searches from searches
group by user_id) C
WHERE item_name='plate cal';