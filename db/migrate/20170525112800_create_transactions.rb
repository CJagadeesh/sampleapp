class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string  :type
      t.string  :description
      t.decimal :amount

      t.timestamps
    end
  end
end
