require 'obstruct'

attributes = {}
item = OpenStruct.new(attributes)

class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    pp @items.map { |item| item[:name] }.sort
  end

  def cheap
   pp  @items.select { |item| item[:price] < 30}
  end

  def out_of_stock
    pp @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    pp @items.detect { |item| item[:name] == name }.fetch(:quantity_by_size)
  end

  def total_stock
    pp @items.map { |item| item[:quantity_by_size].values.sum }.sum
  end

  private
  attr_reader :items
end
