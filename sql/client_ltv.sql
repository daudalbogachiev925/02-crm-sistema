SELECT c.id, c.name,
       COUNT(d.id) AS deals,
       SUM(d.amount) AS ltv,
       AVG(d.amount) AS avg_deal,
       MAX(d.closed_at) AS last_deal
FROM clients c
LEFT JOIN deals d ON d.client_id = c.id
GROUP BY c.id
ORDER BY ltv DESC NULLS LAST;
