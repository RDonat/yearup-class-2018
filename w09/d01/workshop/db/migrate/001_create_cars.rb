class CreateCars < ActiveRecord::BaseMigration[5.0]
    def up
        create_table :cars do |t|
        t.string :make
        t.string :model
        t.integer :year
        t.integer :cost_price
        t.integer :sale_markup
    end
end
def down
    drop_table :cars
end