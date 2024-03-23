#Create a Ruby program that parses a structured text containing multiple invoice entries and extracts key details from each entry.

def parse_invoices(invoice_data)
  invoice_lines = invoice_data.split("\n")

  invoice_lines.each do |line|
    if line =~ /^(\d{4}-\d{2}-\d{2}) - (\w+) - ([\w\s]+) - \$(\d+)/
      date, invoice_number, client_name, amount = $1, $2, $3, $4
      puts "Date: #{date}, Invoice Number: #{invoice_number}, Client: #{client_name}, Amount: $#{amount}"
    end
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
