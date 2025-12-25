-- Pipeline by stage and owner
SELECT owner, stage, SUM(amount) AS pipeline
FROM opportunities
GROUP BY owner, stage;

