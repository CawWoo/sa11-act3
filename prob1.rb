#Objective: Develop a Ruby program to extract all URLs from a block of text.
#Your program should be able to recognize URLs that start with http, https, or ftp,
#and could contain various domain names and paths.

def extract_urls(text)
  extractor = %r{\b(?:http|https|ftp)://\S+\b}

  text.scan(extractor) do |url|
    puts url
  end
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
