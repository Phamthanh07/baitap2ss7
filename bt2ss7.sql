CREATE DATABASE vip_db;
USE vip_db;

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    amount INT
);

INSERT INTO Payments (student_id, amount) VALUES
(1, 5000000),
(1, 6000000),
(2, 3000000),
(2, 2000000),
(3, 8000000),
(3, 4000000);

SELECT SUM(total_spent)
FROM (
    SELECT student_id, SUM(amount) as total_spent
    FROM Payments
    GROUP BY student_id
    HAVING SUM(amount) > 10000000
) AS vip_students;