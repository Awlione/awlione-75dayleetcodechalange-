SELECT
    id,
    CASE
        WHEN id % 2 = 1 AND id = (SELECT MAX(id) FROM Seat) THEN student  -- last odd, no swap
        WHEN id % 2 = 1 THEN LEAD(student) OVER (ORDER BY id)             -- odd: take next
        ELSE LAG(student) OVER (ORDER BY id)                               -- even: take prev
    END AS student
FROM Seat
ORDER BY id;