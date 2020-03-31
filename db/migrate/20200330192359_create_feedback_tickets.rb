class CreateFeedbackTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :feedback_tickets do |t|
      t.string :name
      t.string :email
      t.text :response
      t.integer :status, default: 0
      t.string :version
      t.boolean :notify
      t.integer :category, default: 0
      t.integer :priority
      t.string :reported_version
      t.datetime :closed_at
      t.string :title
      t.integer :confidence
      t.integer :impact
      t.integer :ease
      t.integer :ice_score
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
