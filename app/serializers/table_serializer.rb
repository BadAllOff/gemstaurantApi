class TableSerializer < ActiveModel::Serializer
  attributes(*Table.attribute_names.map(&:to_sym))
  has_many :orders
end
