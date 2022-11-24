class Friend < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :hobbies, :zodiac_sign],
  associated_against: {
    user: [:first_name, :last_name, :gender, :age, :nationality]
  },
  using: {
    tsearch: { prefix: true }
  }
end
