class User < ApplicationRecord
  has_secure_password
  has_secure_password
  has_many :songs
  has_many :playlists
  has_many :plus_songs, through: :playlists, source: :song

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :email, presence:true, length: { in: 2..20}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, presence:true, on: :create
end
