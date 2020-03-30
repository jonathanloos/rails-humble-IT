class AddAuthorToFeedbackTicket < ActiveRecord::Migration[6.0]
  def change
    add_column :feedback_tickets, :author_id, :integer
  end
end
