{%- set apples = ["Gala", "Red Delicious", "Fuji", "McIntosh"," Honeycrisp"] -%}

{% for apple in apples %}

  {% if apple != "McIntosh" %}

    {{ apple }} is my favorite apple!

  {% else %}

    I hate {{ apple }} apples.

  {% endif %}
  
{% endfor %}