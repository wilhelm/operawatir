module OperaWatir
  class QuickSearchField < QuickEditField

    # @private
    # Checks the type of the widget is correct
    def correct_type?
      @element.getType == WIDGET_ENUM_MAP[:search]
    end

    ######################################################################
    # Enters the search text into the search field, and waits for page 
    # loading to finish
    #
    # @param [String] url   text to search with
    #
    # @return [String] text in the address field after the page is loaded
    #                   or a blank string
    #
    def search_with_text(search_text)
      # Enters text in a field and then hits enter
      enter_text_and_hit_enter(search_text)
    end
    
  end
end