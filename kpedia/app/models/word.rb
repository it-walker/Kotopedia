class Word < ApplicationRecord
    # タイトルは必須。
    validates :title, presence: true
end
