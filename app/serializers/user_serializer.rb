class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email

  has_many :eco_friendly_ideas
end
