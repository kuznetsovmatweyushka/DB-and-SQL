SELECT Brand, Model, Count 
FROM telephone.phones
WHERE ProductCount > 2;

SELECT Model 
FROM telephone.phones
WHERE Brand = 'Samsung';