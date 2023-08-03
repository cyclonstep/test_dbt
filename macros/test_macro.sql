{% macro ci_set_warehouse() %}

    {{ (log("target_name: " ~ target_name, info=True)) }}
    {% set target_warehouse = 'QA_WH' %} 

    {%- if target.name == 'ci' -%}
        {{ (log("Change Snowflake warehouse to: " ~ target_warehouse, info=True)) }}
        {% call statement('ci_set_warehouse', fetch_result=True, auto_begin=False) -%}
            USE WAREHOUSE {{ target_warehouse }}
        {%- endcall -%}
        {{ (log(load_result('ci_set_warehouse'), info=True))}}
    {%- else -%}
        {{ (log("Using default warehouse", info=True))}}
    {%- endif -%}

{% endmacro %}
