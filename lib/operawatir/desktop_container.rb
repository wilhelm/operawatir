module OperaWatir
  module DesktopContainer
    
    ######################################################################
    # Method for accessing a button element
    #
    # @example
    #   browser.quick_button(:name, "button_OK")
    #
    # @param [String] how   Method to find the element. :name, :text or :string_id of the button
    # @param [String] what  Search text to find the element with. Currently name, text or string_id 
    #                       of the button 
    #
    # @return [Object] button object if found, otherwise nil
    #
    def quick_button(how, what)
      QuickButton.new(self, how, what, parent_widget, window_id)
    end
    
    ######################################################################
    # Method for accessing a tab button element
    #
    # @param [String] how   Method to find the element. :text and :pos is supported.
    # @param [String, FixNum] what  Search text or position to find the element with.
    #                         Currently text or position of the tab button, first tab button has position 0.
    #
    # @example
    #   browser.quick_window(:name, "Browser Window").quick_toolbar(:name, "Pagebar").quick_tab(:pos, 1)
    #   browser.quick_window(:name, "Browser Window").quick_toolbar(:name, "Pagebar").quick_tab(:text, "Connect to Debugger")
    #
    # @return [Object] tab button object if found, otherwise nil
    #
    def quick_tab(how, what)
      if how == :pos
        if what.is_a? Fixnum
          what = [0, what]
        end
      end
      QuickTab.new(self, how, what, parent_widget, window_id)
    end
       
    ######################################################################
    # Method for accessing a checkbox element
    #
    # @example
    #   browser.quick_checkbox(:name, "Enable_wand_checkbox")
    #
    # @param [String] how   Method to find the element. :name, :text or :string_id
    # @param [String] what  Search text to find element with. 
    #
    # @return [Object] checkbox object if found, otherwise nil
    #
    def quick_checkbox(how, what)
      QuickCheckbox.new(self, how, what, parent_widget, window_id)
    end

    ######################################################################
    # Method for accessing a tab on a tabbed dialog
    #
    # @example
    #   browser.quick_dialogtab(:name, "tab_prefs_forms")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text 
    # @param [String] what  Search text to find the element with.  
    #
    # @return [Object] dialog tab object if found, otherwise nil
    #
    def quick_dialogtab(how, what)
      QuickDialogTab.new(self, how, what, parent_widget, window_id)
    end

    ######################################################################
    # Method for accessing a combobox (i.e. dropdown) element
    #
    # @example
    #   browser.quick_dropdown(:name, "Startup_mode_dropdown")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with.  
    #
    # @return [Object] drop down object if found, otherwise nil
    #
    def quick_dropdown(how, what)
      QuickDropdown.new(self, how, what, parent_widget, window_id)
    end

    
    ######################################################################
    # Method for accessing an edit or multiedit element
    #
    # @example
    #   browser.quick_editfield(:name, "Startpage_edit")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with.  
    #
    # @return [Object] edit field object if found, otherwise nil
    #
    def quick_editfield(how, what)
      QuickEditField.new(self, how, what, parent_widget, window_id)
    end

    ######################################################################
    # Method for accessing a label element
    #
    # @example
    #   browser.quick_label(:name, "label_for_Popups_dropdown")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with.  
    #
    # @return [Object] label object if found, otherwise nil
    #
    def quick_label(how, what)
      QuickLabel.new(self, how, what, parent_widget, window_id)
    end

    ######################################################################
    # Method for accessing a radio button element
    #
    # @example
    #   browser.quick_radiobutton(:name, "Accept_cookies_radio")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with.  
    #
    # @return [Object] radio button object if found, otherwise nil
    #
    def quick_radiobutton(how, what)
      QuickRadioButton.new(self, how, what, parent_widget, window_id)
    end

    ######################################################################
    # Method for accessing a tree view element
    #
    # @example
    #   browser.quick_treeview(:name, "Web_search_treeview")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with. 
    #
    # @return [Object] treeview object if found, otherwise nil
    #
    def quick_treeview(how, what)
      QuickTreeView.new(self, how, what, parent_widget, window_id)
    end
    
    ######################################################################
    # Method for accessing an addressfield object
    #
    # @example
    #   browser.quick_toolbar(:name, "Document Toolbar").quick_addressfield(:name, "tba_addressfield")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with.  
    #
    # @return [Object] addressfield object if found, otherwise nil
    #
    def quick_addressfield(how, what)
        QuickAddressField.new(self, how, what, parent_widget, window_id)
    end
        
    ######################################################################
    # Method for accessing a searchfield element
    #
    # @example
    #   browser.quick_searchfield(:name, "Web_search_searchfield")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with. 
    #
    # @return [Object] searchfield object if found, otherwise nil
    #
    def quick_searchfield(how, what)
      QuickSearchField.new(self, how, what, parent_widget, window_id)
    end
    
    ######################################################################
    # Method for accessing a toolbar element
    #
    # @example
    #   browser.quick_toolbar(:name, "Document_toolbar")
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with.  
    #
    # @return [Object] toolbar object if found, otherwise nil
    #
    def quick_toolbar(how, what)
      QuickToolbar.new(self, how, what, parent_widget, window_id)
    end
    
    ######################################################################
    # Method for accessing a tree item in a treeview
    #
    # @example
    #   browser.quick_treeview(:name, "Server_treeview").quick_treeitem(:pos, [2,0])
    #
    # @param [String] how   Method to find the element. :name, :string_id or :text
    # @param [String] what  Search text to find the element with. Text or position 
    #                        of treeitem. Position is specified as [row, column]
    #
    # @return [Object] treeitem object if found, otherwise nil
    #
    def quick_treeitem(how, what)
      QuickTreeItem.new(self, how, what, parent_widget, window_id)
    end
 
   ######################################################################
   # Method for accessing a thumbnail (speeddial, thumbnail when  hovering tab groups)
   #
   # @example
   #   browser.quick_thumbnail(:name, "Thumbnail 1")
   #   browser.quick_thumbnail(:name, "Speed Dial 2")
   #
   # @param [String] how   Method to find the element. :name, :string_id or :text
   # @param [String] what  Search text to find the element with. Text or position 
   #                        of treeitem. Position is specified as [row, column]
   #
   # @return [Object] thumbnail object if found, otherwise nil
   #
    def quick_thumbnail(how, what)
      if how == :pos
         if what.is_a? Fixnum
           what = [0, what]
         end
       end
      QuickThumbnail.new(self, how, what, parent_widget, window_id)
    end

    ######################################################################
    # Method for accessing a window
    #
    # @example
    #   browser.quick_window(:name, "Browser Window")
    #   browser.quick_window(:name, "Document Window")
    #   browser.quick_window(:name, "Cycler Window")
    #
    # @param [String] how   Method to find the element. Currently only :name is supported
    # @param [String] what  or [int] window_id Search text to find the element with. Name of window
    #                       or the windows window_id
    #                         
    #
    # @return [Object] window object if found, otherwise nil
    #
    def quick_window(how, what)
      QuickWindow.new(self, how, what)
    end

  end
end

