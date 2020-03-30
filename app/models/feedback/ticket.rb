module Feedback
  class Ticket < ApplicationRecord
    belongs_to :user
    belongs_to :owner
    has_many :comments

    attr_accessor :author_name
    belongs_to :author, class_name: "User"

    before_validation :set_author

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
    def set_author
      self.author = User.find_by(name: author_name)
    end

  end
end
