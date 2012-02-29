declare @siteId uniqstring 
set @siteId = %(siteId)s

declare @docId uniqstring 
set @docId = %(docId)s

{% include "all_sites.sql" %}
{% include "all_docs.sql" %}

-- needs #all_documnets and #all_sites tables
-- returns Sites with Titles and Urls

SELECT Title, Url FROM #all_sites 
LEFT JOIN #all_documents
WHERE Url <> ''
