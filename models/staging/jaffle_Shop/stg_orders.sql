with orders as (
    
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from raw.jaffle_shop.orders
    -- completed, shipped, returned, placed, return_pending
)

select * from orders

