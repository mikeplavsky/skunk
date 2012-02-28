
SELECT * FROM T1, T2
WHERE T1.i = T2.i = Table1

JOIN SELECT * FROM Table1 WHERE siteId = @siteId


SELECT * FROM T1, T2
WHERE T1.i = T2.i = Table2

JOIN SELECT * FROM Table2 WHERE siteId = @siteId


SELECT * FROM T1, T2
WHERE T1.i = T2.i = Table3

JOIN SELECT * FROM Table3 WHERE siteId = @siteId

