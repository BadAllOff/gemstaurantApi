class ItemSerializer < ActiveModel::Serializer
  attributes(*Item.attribute_names.map(&:to_sym))
end
