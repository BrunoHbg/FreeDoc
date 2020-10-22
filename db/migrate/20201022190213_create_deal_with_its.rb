class CreateDealWithIts < ActiveRecord::Migration[6.0]
  def change
    create_table :deal_with_its do |t|

    add_reference :appointments, :city, foreign_key: true
    add_reference :patients, :city, foreign_key: true
    add_reference :doctors, :city, foreign_key: true
    t.timestamps
    end
  end
end
