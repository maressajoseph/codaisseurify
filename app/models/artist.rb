class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_one :photo

  validates :name, presence: true, uniqueness: true

  def self.order_by_name
  @artist = Artist.order(:name)
  end

end
