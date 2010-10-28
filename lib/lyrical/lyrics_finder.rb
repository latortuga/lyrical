module Lyrical
  class LyricsFinder
    def self.find(query)
      finder = query.gsub(/\s/, '+').downcase
      url = GoogleUrl.gsub('?query', finder)
      # Search for nodes by css
      Hpricot(open(url)).search('h3.r a.l').map {|link| link.inner_html}
    end
  end
end
