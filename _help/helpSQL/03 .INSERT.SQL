-- INSERT INTO --
INSERT INTO table_name
VALUES (value1, value2, value3,...); -- One value per column
/* Must provide a value for every column that does not have a default value, or does not support NULL.*/

-- A most sure way to do it --
INSERT INTO Shoes
    (id,    -- You specify where put the values
    brand,
    type,
    color,
    price
    )
VALUES
    ('1456', -- And then you give the values
    'Gucci',
    'Urban',
    'White',
    '164,99'
    )
