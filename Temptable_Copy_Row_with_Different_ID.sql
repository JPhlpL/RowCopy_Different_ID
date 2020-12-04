CREATE TEMPORARY TABLE tmp SELECT * FROM item_data ORDER BY id LIMIT 1;
ALTER TABLE tmp drop id;
INSERT INTO item_transact (borrower,item,cnum) SELECT 'Vera',item,cnum FROM tmp;
DROP TEMPORARY TABLE tmp;

