#require 'net/http'
require 'rubygems'
require 'hpricot'
require 'open-uri'

# search google
#str = STDIN.read
query = "deadbolt"

# lyric sites
urls = ['azlyrics.com', 'elyrics.net', 'musicsonglyrics.com']
url = urls.first

google_url = "http://www.google.com/search?q=#{query}+song+lyrics"

# search google
doc = Hpricot(open(google_url))

# Search for nodes by css
doc.search('h3.r a.l').each do |link|
  puts link.inner_html
end
