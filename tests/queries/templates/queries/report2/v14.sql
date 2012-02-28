{% extends "main.sql" %}

{% block select%}

SELECT Title FROM MARS
JOIN SELECT Hit FROM SUN
JOIN SELECT Name FROM Space
JOIN SELECT Url FROM WWW

{% endblock %}
{% block where %}

{{super()}}
AND AmountOfEvil is None

{% endblock %}
