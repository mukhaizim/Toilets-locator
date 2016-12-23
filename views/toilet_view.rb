model ToiletView

  def self.show_menu_options
    options = <<<-TEXT
    Please select option 1 or 2 (type 'quit' to quit):
      1. Show all toilets in a borough
      2. Show all toilets open year round
      TEXT
      puts options
  end

  def display_results(results)
  end
end
