class ReceiptSerializer < ActiveModel::Serializer
  belongs_to :order
end
