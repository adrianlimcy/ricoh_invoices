require "render_anywhere"

class InvoicePdf < ApplicationRecord
  include RenderAnywhere

  def initialize(invoice)
    @invoice = invoice
  end

  def to_pdf
    # kit = PDFKit.new(as_html, page_size: 'A4', dpi: 300, no_outline: true)
    kit = PDFKit.new(as_html)
    # kit.stylesheets << "#{Rails.root}/vendor/stylesheets/pdfkit.scss"
    kit.to_file("#{Rails.root}/public/invoice.pdf")
  end

  def filename
    "Invoice #{invoice.id}.pdf"
  end

  private
    attr_reader :invoice

    def as_html
      render template: "invoices/pdf", layout: "invoice_pdf", locals: {invoice: invoice}
    end
end
