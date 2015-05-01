select Customer.name, Product.name as product_name, oh.order_date, od.quantity
from Customer
inner join OrdeHistory as oh
on Customer.customerId=oh.customerId
inner join OrderDetails as od
on oh.orderhistoryId=od.orderhistoryId
inner join Product
on od.productId=Product.productId
