class InstructionSerializer < ActiveModel::Serializer
  attributes :id, :step, :stepnum
  has_one :recipe
end
