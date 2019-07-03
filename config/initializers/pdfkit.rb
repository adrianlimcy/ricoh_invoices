PDFKit.configure do |config|
  config.default_options = {
    page_size: 'A4',
    print_media_type: true,
    dpi: 300,
    margin_top: '30',
    margin_bottom: '23',
    margin_left: '10',
    margin_right: '10',
    header_spacing: '0',
    # header_html: render_header_footer("header"),
    # header_html: "#{Rails.root}/app/views/invoices/header.html.slim",
    # header_html: "#{Rails.root}/app/assets/images/ricoh.png",
    footer_spacing: '2',
    # footer_html: render_header_footer("footer"),
    # footer_html: 'app/views/invoices/footer.html.slim',
    quiet: true,
    no_outline: true,
    :'user-style-sheet' => "#{Rails.root}/vendor/stylesheets/pdfkit.scss"
  }
  # Use only if your external hostname is unavailable on the server.
  # config.root_url = "http://localhost"
end
#
# def render_header_footer(type)
#   compiled = ERB.new(File.read("#{Rails.root}/app/views/invoices/#{type}.html.slim")).result(binding)
#   file = Tempfile.new(["#{type}",".html"])
#   file.write(compiled)
#   file.rewind
#   file.path
# end
