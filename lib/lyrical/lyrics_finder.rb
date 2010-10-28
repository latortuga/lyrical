module Lyrical
  class LyricsFinder
    def self.find(query)
      # replace spaces with pluses, lowercase it
      query.gsub!(/\s/, '+').downcase!
      url = GoogleUrl.gsub('?query', query)
      # Search for nodes by css
      Hpricot(open(url)).search('h3.r a.l').map {|link| link.inner_html}
    end
  end
end
