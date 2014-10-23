require 'hpricot'
require 'hashie/mash'

module WebParser
  module JaluitesRu
    MAIN_PAGE_URL = 'http://www.jaluites.ru/'

    module_function

    def last_publications
      html = Hpricot(open(MAIN_PAGE_URL, &:read))
      (html/'#complaints/.ComplaintBlock/.Complaint').each_with_object([]) do |block, result|
        begin
          a_el = (block/'.Title/a').first
          pub = Hashie::Mash.new(
            title: a_el.try(:innerText),
            datetime: Time.parse((block/'.DateTime').first.try(:innerText)),
            lead: (block/'.Photo').first.try(:innerText).strip,
            link: URI.join(MAIN_PAGE_URL, a_el[:href]).to_s
          )
          result << pub
        rescue => e
          puts 'Can\'t parse publication'
          puts e.message
          puts e.backtrace
        end
      end
    rescue => e
      puts 'Parse error'
      puts e.message
      puts e.backtrace
      []
    end
  end
end
