class DownloadsController < ApplicationController

  def show
    respond_to do |format|
      format.pdf { send_invoice_pdf}

      # if Rails.env.development?
      #   format.html {render_sample_html}
      # end
    end
  end

  private

  def invoice_pdf
    invoice = Invoice.find(params[:invoice_id])
    InvoicePdf.new(invoice)
  end

  def send_invoice_pdf
    send_file invoice_pdf.to_pdf,
      filename: invoice_pdf.filename,
      type: "application/pdf",
      disposition: "inline"
      # disposition: "attachment"
  end

  # def render_sample_html
  #   render template: "invoices/pdf", layout:"invoice_pdf", locals: {invoice: invoice_pdf}
  # end
end
