class Category < ApplicationRecord
  has_many :events, dependent: :destroy
  before_create :add_slug

  private

  def add_slug
    self.slug = name.parameterize
  end
end
