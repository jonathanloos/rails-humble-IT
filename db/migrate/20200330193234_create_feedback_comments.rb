class CreateFeedbackComments < ActiveRecord::Migration[6.0]
  def change
    create_table :feedback_comments do |t|
      t.integer :ticket_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
