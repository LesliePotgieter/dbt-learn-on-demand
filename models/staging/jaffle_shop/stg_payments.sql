with payments as (
    
    select
        ID as payment_id,
        ORDERID as order_id,
        PAYMENTMETHOD as payment_method,
        status,
        -- amount is stored in cents, convert it to dollars
        {{ cents_to_dollars('amount') }} as amount,
        CREATED as created_at
    from {{ source('stripe','payment') }}
)

select * from payments