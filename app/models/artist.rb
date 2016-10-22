class Artist < ApplicationRecord
  has_many :songs

  scope :by_name,     -> {order(:name)}
  scope :created_at,   -> { order(:created_at) }

  def self.order_by_name
      order(:name)
  end

  def self.order_by_created_at
      order(:created_at)
  end

end
