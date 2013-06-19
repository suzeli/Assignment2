# CS750 Assignment 2, Eliot Friedman
# Get a count of domain names appearing in an external file
# and output results

# Read the file into a variable
text = IO.read('.\assignment_two_text.txt')

# This pattern selects for email addresses and extracts domain field
email_pattern = /\w+@(\w+\.\w+)/

# Print the output header
puts "Domain Results\n==============================="

domains_hash = Hash.new(0)

# Scan the text for each occurrence of an email address
text.scan(email_pattern) {
  # And increment the corresponding domain name counter in the hash
  domains_hash[$1] += 1
}

# For every value in the hash, output the formatted results
domains_hash.sort.each do |key, array|
  printf("%20s: %d time(s)\n", "#{key}","#{array}")
end
