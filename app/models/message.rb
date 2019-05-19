class Message < ApplicationRecord
    belongs_to :user
    belings_to :group
    validates :content, presence: true, unless: :image?
end
