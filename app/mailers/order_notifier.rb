class OrderNotifier < ActionMailer::Base
  default from: 'Depot <depot.ruby@gmail.com>'

  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end
  
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
