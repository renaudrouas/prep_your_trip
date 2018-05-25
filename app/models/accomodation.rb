class Accomodation < ApplicationRecord
  has_many :stays, dependent: :destroy
  enum kind: [ :tbd, :hotel, :camping, :auberge, :b_b, :habitant ]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
