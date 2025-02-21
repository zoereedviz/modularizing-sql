with source as (

select * from {{source('stripe', 'payment')}}

)
transformed as (
    id as payment_id,
    orderid as order_id,
    amount/100 as payment_amount_$,
    created as payment_date,
    paymentmethod as payment_method,
    status as paymnet_status,
    _batched_at

 from source )

select * from transformed