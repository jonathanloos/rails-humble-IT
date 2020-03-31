class CreateFeedbackComments < ActiveRecord::Migration[6.0]
  def change
    create_table :feedback_comments do |t|
      # t.references :feedback_ticket, null: false, foreign_key: true
      t.integer :ticket_id
      t.references :user, null: false, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
