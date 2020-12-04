CREATE TABLE IF NOT EXISTS primary_location (
    `primary_location_city_region_pairs` VARCHAR(7) CHARACTER SET utf8,
    `primary_location_zipcode` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO primary_location VALUES
    ('Ottawa',NULL),
    ('Ontario','K1S');
