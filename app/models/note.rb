class Note < ApplicationRecord

  has_many :notes
  # profanity_filter :body, :method => 'vowels'

  validates :body, presence: true, length: {minimum: 1, maximum: 400}

  def to_param
    id.to_s + "-" + body.parameterize
  end

end
