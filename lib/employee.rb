class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal: 40, less_than_or_equal: 200}
  belongs_to :store
end
