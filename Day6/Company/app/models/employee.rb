class Employee < ApplicationRecord
    has_many :customers
    has_many :appointments, through: :customers
end
