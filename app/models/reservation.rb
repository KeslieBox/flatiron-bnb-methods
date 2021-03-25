class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review

  validates_presence_of :checkin, :checkout

 def duration
  (checkout - checkin).to_i
 end

 def total_price
  listing.price * duration
 end

end
