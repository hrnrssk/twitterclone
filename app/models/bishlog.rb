class Bishlog < ApplicationRecord
    validates :content, length: { in: 1..140 }
    validates :user, presence: true
end
