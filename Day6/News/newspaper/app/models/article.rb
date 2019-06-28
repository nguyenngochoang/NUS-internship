class Valid < ActiveModel::Validator
  def validate(record)
    if record.text.length > 10
      record.errors[:base] << "Your text is too long..."
    elsif record.title == "" || record.text == ""
      record.errors[:base] << "Please full fill those fields"
    end
  end
end

class Article < ApplicationRecord
  has_many :comments
  #   validates :title, presence: true, exclusion: { in: %w(ahuhu), message: "%{value} is not valid" }
  #   validates :title, :text, exclusion: { in: %w(ahuhu cacacacac), message: "%{value} is not valid" }
  #   validates :title, inclusion: { in: %w(oc cc), message: "%(value) is not valid" }
  validates_with Valid
end
