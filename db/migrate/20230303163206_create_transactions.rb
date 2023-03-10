class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.decimal :amount
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :category, null: false

      t.timestamps
    end
  end
end
