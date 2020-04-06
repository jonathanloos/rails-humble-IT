module Feedback
  class Ticket < ApplicationRecord
    include PgSearch::Model

    has_many :comments
    has_rich_text :text
    has_many_attached :attachments

    belongs_to :user, optional: true

    pg_search_scope :search_all,
                    using: {
                        tsearch: { prefix: true },
                        trigram: { threshold: 0.3 },
                    },
                    associated_against: {
                        rich_text_text: [:body],
                        # feedback_comments: [:text]
                    }

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

    private
    def calculate_ice_score
      self.ice_score = (self.impact || 0) + (self.confidence || 0) + (self.ease || 0)
    end
  end
end
