# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  name       :string           not null
#  album_type :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  ALBUM_TYPES = %w(live studio)

  validates :band_id, :name, :album_type, presence: true
  validates :name, uniqueness: true
  validates :album_type, inclusion: { in: ALBUM_TYPES }

  belongs_to :band
  has_many :tracks, dependent: :destroy
end
