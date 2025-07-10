class Order
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def calculate_total(pricing_strategy)
    pricing_strategy.calculate_total(@items)
  end
end

class StandardPricing
  def calculate_total(items)
    items.sum(&:price)
  end
end

class DiscountPricing
  def initialize(discount)
    @discount = discount
  end

  def calculate_total(items)
    total = items.sum(&:price)
    total - (total * @discount)
  end
end

class EmailService
  def send_confirmation(email)
    # Lógica para enviar un correo electrónico
    puts "Email enviado a #{email}"
  end
end

class OrderPrinter
  def print(order)
    order.items.each do |item|
      puts "Item: #{item.name} - Price: #{item.price}"
    end
  end
end

class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

# Uso:
items = [Item.new("Laptop", 1000), Item.new("Mouse", 50)]
order = Order.new(items)
total = order.calculate_total(StandardPricing.new)
email_service = EmailService.new
email_service.send_confirmation("customer@example.com")
order_printer = OrderPrinter.new
order_printer.print(order)
