class Item
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

# Envío de correos
class EmailSender
  def send_confirmation
    raise NotImplementedError, 'Debe implementar el método send_confirmation'
  end
end

class EmailService < EmailSender
  def send_confirmation
    puts "Email enviado a customer@example.com"
  end
end

# Sin descuento
class TotalCalculator
  def calculate(items)
    items.reduce(0) { |sum, item| sum + item.price }
  end
end

# Descuentos
class DiscountCalculator < TotalCalculator
  def initialize(discount_rate)
    @discount_rate = discount_rate
  end

  def calculate(items)
    total = super
    total - (total * @discount_rate)
  end
end

class OrderPrinter
  def print(order)
    order.items.each do |item|
      puts "Item: #{item.name} - Price: #{item.price}"
    end
  end
end

# Principal
class Order
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def total(calculator)
    calculator.calculate(@items)
  end

  def confirm(email_sender)
    email_sender.send_confirmation
  end
end
