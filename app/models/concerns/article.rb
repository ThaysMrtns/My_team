class Article < ApplicationRecord
    validates :nome, presence: true
    validates :email, presence: true
    validates :cargo, presence: true
    validates :salario, presence: true
end