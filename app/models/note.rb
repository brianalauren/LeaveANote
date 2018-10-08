class Note < ApplicationRecord

  has_many :notes
  profanity_filter :body, :method => 'vowels'

end
