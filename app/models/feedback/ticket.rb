module Feedback
  class Ticket < ApplicationRecord
    has_many :comments, class_name: "Feedback::Comment"

    belongs_to :user, optional: true
  end
end
