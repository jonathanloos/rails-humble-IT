class AddOwnerToFeedback < ActiveRecord::Migration[6.0]
  def change
    add_reference :feedback_tickets, :owner, references: :users, index: true
  end
end
