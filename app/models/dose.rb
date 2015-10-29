class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates_presence_of :cocktail
  validates_presence_of :ingredient

  validates :description, presence: true
  validates_uniqueness_of :cocktail, scope: :ingredient
end
