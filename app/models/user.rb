class User
  include ActiveModel::Model
  attr_accessor :name
  validates :name, length: { is: 2 }
end
