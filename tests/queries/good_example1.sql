declare @siteId uniqstring 
set @siteId = %(siteId)s

declare @docId uniqstring 
set @docId = %(docId)s

-- expects siteId, returns all sites in #all_sites

SELECT INTO #all_sites FROM Webs WHERE Webs.SiteId = @siteId

-- expects Document Library Name in @docLib
-- returns all Documents

SELECT * INTO #all_documents FROM Documents WHERE Id = @docLib

-- needs #all_documnets and #all_sites tables
-- returns Sites with Titles and Urls

SELECT Title, Url FROM #all_sites 
LEFT JOIN #all_documents
WHERE Url <> ''