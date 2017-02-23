require 'csv'

target_customer_id = ARGV[0]
page_ids = []

CSV.open('data/log_data.csv').each_with_index do |row, index|
	next if index < 1
	customer_id = row[1].strip

  if customer_id == target_customer_id
		page_id = row[2]
		page_ids << page_id
  end
end

puts "Your Page Ids are: #{page_ids.join(', ')}"
