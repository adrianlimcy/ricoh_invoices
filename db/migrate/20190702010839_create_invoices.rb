class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.date :date
      t.string :client
      t.string :notes

      t.timestamps
    end
  end
end
