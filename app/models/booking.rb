class Booking < ActiveRecord::Base
validates :credit_card_number, presence: true
validates :credit_card_type, presence: true
validates :cost, presence: true
validates :credit_card_number, uniqueness: true
belongs_to :user
has_many :tickets, :dependent => :destroy
end
