class Concert < ActiveRecord::Base
validates :act_name, presence: true
validates :capacity, presence: true
has_many :tickets, :dependent => :destroy
end
