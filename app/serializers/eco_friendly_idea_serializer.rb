class EcoFriendlyIdeaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :user_id
end
