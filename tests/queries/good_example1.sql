declare @siteId uniqstring = %(siteId)s
declare @docId uniqstring = %(docId)s

-- expects siteId, returns all sites in #all_sites

SELECT INTO #all_sites FROM Webs WHERE Webs.SiteId = @siteId

-- expects Document Library Name in @docLib
-- returns all Documents

SELECT * INTO #all_documents FROM Documents WHERE Id = @docLib

SELECT Title, Url FROM #all_sites 
LEFT JOIN #all_docs
WHERE Url <> ''
