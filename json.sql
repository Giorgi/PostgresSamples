CREATE TABLE product (id INT,  name VARCHAR(200),  properties JSONB);

INSERT INTO product (id, name, properties)
VALUES (1, 'Chair','{"color" : "brown", "material" : "wood", "features" : ["spin", "adjust"]}');

INSERT INTO product (id, name, properties)
VALUES (2, 'Chair','{"color":"brown", "material":"wood", "dimensions": {"height":"60cm", "width":"80cm"}}');

INSERT INTO product (id, name, properties)
VALUES (3, 'Desk',
  '{"color":"black", "material":"metal", "drawers":[{"side":"left", "height":"30cm"}, {"side":"left", "height":"40cm"}]}' );
