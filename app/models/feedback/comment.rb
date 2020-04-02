module Feedback
  class Comment < ApplicationRecord
    has_rich_text :text
    has_many_attached :attachments

    belongs_to :ticket
    belongs_to :user
  end
end
