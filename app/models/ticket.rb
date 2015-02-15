class Ticket < ActiveRecord::Base
validates :price, presence: true
belongs_to :booking
belongs_to :concert
end
