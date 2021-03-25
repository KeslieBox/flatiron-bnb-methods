class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods
  has_many :reservations, through: :listings

  def city_openings(start_date, end_date)
    
  end

  def self.highest_ratio_res_to_listings

  end

  def self.most_res
    most = 1
    self.all.each do |c|
      if c.reservations.count > most
        most = c.reservations.count
        @city = c
      end
    end
    @city
  end
end

