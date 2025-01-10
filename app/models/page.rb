# app/models/page.rb
class Page < ApplicationRecord
  has_rich_text :content
  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
  
  before_validation :generate_slug
  
  private
  
  def generate_slug
    self.slug = title.parameterize if title.present?
  end
end