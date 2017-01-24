class CreateAccountLines < ActiveRecord::Migration
  def change
    create_table :account_lines do |t|
      t.string :name
      t.references :account
      t.references :target_account, references: :accounts
      t.references :source_account, references: :accounts
      t.datetime :transaction_date      
      t.datetime :debit_date
      t.references :third_party
      t.float :amount
      t.references :label

      t.boolean :activated

      t.timestamps
    end
  end
end
