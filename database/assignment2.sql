INSERT INTO account (account_firstname,account_lastname,account_email,account_password)
Values ('Tony','Stark','tony@starkent.com','Iam1ronM@n');

UPDATE account 
SET account_type = 'Admin'
WHERE account_email = 'tony@starkent.com';

DELETE FROM account
WHERE account_email = 'tony@starkent.com';

UPDATE inventory
SET inv_description = REPLACE(inv_description,'the small interiors','a huge interior')
WHERE inv_make = 'GM';

SELECT inv_make, inv_model, classification.classification_name
FROM inventory
INNER JOIN classification ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport';

UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');