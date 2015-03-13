# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  album_id   :integer          not null
#  name       :string           not null
#  track_type :string           not null
#  lyrics     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ActiveRecord::Base
  TRACK_TYPES = %w(regular bonus)
  validates :album_id, uniqueness: {scope: :name}
  validates :album_id, :name, :track_type, presence: true
  validates :track_type, inclusion: { in: TRACK_TYPES }
  
  belongs_to :album
  has_one :band, through: :album, source: :band
end
