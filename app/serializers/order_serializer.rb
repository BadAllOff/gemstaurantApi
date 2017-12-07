class OrderSerializer < ActiveModel::Serializer
  # attributes :id, :name, :email, :total_amount
  attributes(*Order.attribute_names.map(&:to_sym), :total_amount)
  belongs_to :table
  has_many :order_items
  has_many :items, through: :order_items
end
