class CreateInvoicePdfs < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_pdfs do |t|

      t.timestamps
    end
  end
end
