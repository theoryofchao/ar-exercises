class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :annual_revenue, presence: true
  validates :mens_apparel, :womens_apparel, inclusion: {in: [true, false]}
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal: 0}
  validate :must_carry_men_or_women
  

  def must_carry_men_or_women
    if(!womens_apparel && !mens_apparel)
      errors.add(:mens_apparel, "Must have men or women apparel")
    end
  end
end
