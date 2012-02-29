-- expects siteId, returns all sites in #all_sites

SELECT * INTO #all_sites FROM Webs WHERE Webs.SiteId = @siteId

