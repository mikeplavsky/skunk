{% extends "main.sql" %}

{% block select%}

SELECT Title FROM MARS

{% endblock %}

{% block where %}

{{super()}}
AND AmountOfEvil is None

{% endblock %}
