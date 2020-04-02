module Feedback
  class Ticket < ApplicationRecord
    has_many :comments
    has_rich_text :text
    has_many_attached :attachments

    belongs_to :user, optional: true

    enum status: {
        pending: 0,
        in_progress: 1,
        closed: 2,
        need_more_info: 3,
    }

    enum category: {
        uncategorized: 0,
        bug: 1,
        feature: 2,
        question: 3,
        support: 4,
    }

    enum priority: {
        low: 1,
        medium: 2,
        high: 3,
        urgent: 4,
    }

  end
end
