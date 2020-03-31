module Feedback
  class Comment < ApplicationRecord
    has_rich_text :text

    belongs_to :ticket
    belongs_to :user
  end
end
