class Note < ApplicationRecord

  has_many :notes
  profanity_filter :body, :method => 'vowels'

  validates :body, presence: true, length: {maximum: 250}, uniqueness: true
  
end
