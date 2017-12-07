class OrderItemSerializer < ActiveModel::Serializer
  attributes(*OrderItem.attribute_names.map(&:to_sym))
  belongs_to :order
  belongs_to :item
end
