{% macro create_stage(stage_name, url=None, storage_integration=None) %}
  {% set sql %}
    create or replace stage {{ stage_name }}
    {% if url is not none %} url='{{ url }}' {% endif %}
    {% if storage_integration is not none %} storage_integration={{ storage_integration }} {% endif %}
  {% endset %}
  
  {{ return(sql) }}
{% endmacro %}


