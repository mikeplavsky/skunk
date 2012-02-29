{% set tables = ['Table1', 'Table2', 'Table3'] %}
{% for table  in tables %}

SELECT * FROM T1, T2
WHERE T1.i = T2.i = {{table}}

JOIN SELECT * FROM {{table}} {%include "site.sql" %}


{% endfor %}
