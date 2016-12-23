require 'json'
require 'open-uri'
require 'pry'

$toilets = JSON.parse(open('https://data.cityofnewyork.us/resource/r27e-u3sy.json').read)


class Toilet

  def initialize(args={})
    @name = args.fetch('name', 'none')
    @location = args.fetch('location', 'none')
    @open_year_round = args.fetch('open_year_round', 'none')
    @handicap_accessible = args.fetch('handicap_accessible', 'none')
    @borough = args.fetch('borough', 'none')
  end

  $toilets.map! { |toilet| Toilet.new(toilet) }

  def search_borough(borough)
    $toilets.select{|toilet| toilet.borough == borough}
    p $toilets
  end

  def search_open
    toilets.select{|toilet| toilet.open_year_round == 'yes'}
  end


end



