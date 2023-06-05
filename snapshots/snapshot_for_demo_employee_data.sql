{% snapshot snapshot_for_demo_employee_data %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='customer_id',
          check_cols=['salary', 'department'],
        )
    }}

    select * from {{ ref('demo_employee_data') }}

{% endsnapshot %}
