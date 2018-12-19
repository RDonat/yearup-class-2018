class CreateTransactions < ActiveRecord::Migration[5.0]
    def up
        create_table :transactions do |t|
        t.string :car_id
        t.interger :customer_id
    end
end
def down
    drop_table :transactions
end