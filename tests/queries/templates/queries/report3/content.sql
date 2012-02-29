declare @siteId uniqstring = %(siteId)s
declare @docId uniqstring = %(docId)s

{% include "all_sites.sql" %}
{% include "all_docs.sql" %}

SELECT Title, Url FROM #all_sites 
LEFT JOIN #all_docs
WHERE Url <> ''
