class User < ApplicationRecord
  has_many :eco_friendly_ideas

  before_create :urlify

  def urlify
    self.name_url_form = name.parameterize
  end
end
