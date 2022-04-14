class Message < ApplicationRecord
    belongs_to :user2
    validates :body, presence: true
end
