require_relative '../views/toilet_view'

class ToiletController
  include ToiletView

  def initialize(toilet)
    @toilet = toilet
  end

  def run
    input = ''
    until input == 'quit'
      ToiletView.show_menu_options
      input = gets.chomp
      case input
        when "1" then results = get_boro_input
        when "2" then results = find_open
      end
      ToiletView.display_results(results)
    end
  end

  def get_boro_input
    puts "Enter a borough:"
    input = gets.chopm
    @toilets.
  end




end
