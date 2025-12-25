-- Activities per rep
SELECT owner, COUNT(*) AS activities
FROM activities
GROUP BY owner;

