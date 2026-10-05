SELECT stage,
       COUNT(*) AS deals,
       SUM(amount) AS total,
       ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 1) AS pct
FROM deals
WHERE closed_at >= NOW() - INTERVAL '90 days'
GROUP BY stage
ORDER BY total DESC;
