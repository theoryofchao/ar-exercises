class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal: 40, less_than_or_equal: 200}
  before_create :generate_random_pw_before

  private
    def generate_random_pw_before #save thing for before_save
      o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
      string = (0...8).map { o[rand(o.length)] }.join
      self.password = string
    end

    def generate_random_pw_after
      o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
      string = (0...8).map { o[rand(o.length)] }.join
      self.update_column(:password, string)
    end

end
