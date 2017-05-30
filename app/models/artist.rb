class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_one :photo, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  def self.order_by(sort_order)
   if sort_order == "Name A-Z"
     order(name: :asc)
   elsif sort_order == "Name Z-A"
     order(name: :desc)
   else
     order(created_at: :asc)
   end
  end

end
