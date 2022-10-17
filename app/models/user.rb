class User
  include ActiveModel::Model
  attr_accessor :user
  validates :user, presence: true
end
