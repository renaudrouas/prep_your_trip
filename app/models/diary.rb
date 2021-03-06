# frozen_string_literal: true

class Diary < ApplicationRecord
  belongs_to :trip
  has_many :photos, dependent: :destroy
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
  validates :start_date, presence: true
end
