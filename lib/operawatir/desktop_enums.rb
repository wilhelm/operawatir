module OperaWatir
  # @private
  # Documentation doesn't work with these dynamic enums so just leave them out
  module DesktopEnums

    # Enum for the key/mouse modifiers
    KEYMODIFIER_ENUM_MAP = SystemInputProtos::ModifierPressed.constants.inject({}) do |acc, const|
      acc[const.to_s.downcase.to_sym] = SystemInputProtos::ModifierPressed.const_get(const)
      acc
    end
    
    # Enum for the mouse buttons
    MOUSEBUTTON_ENUM_MAP = SystemInputProtos::MouseInfo::MouseButton.constants.inject({}) do |acc, const|
      acc[const.to_s.downcase.to_sym] = SystemInputProtos::MouseInfo::MouseButton.const_get(const)
      acc
    end

    # Enum for the widget types
    WIDGET_ENUM_MAP = DesktopWmProtos::QuickWidgetInfo::QuickWidgetType.constants.inject({}) do |acc, const|
      acc[const.to_s.downcase.to_sym] = DesktopWmProtos::QuickWidgetInfo::QuickWidgetType.const_get(const)
      acc
    end
    
    # Enum for window types
    WINDOW_ENUM_MAP = DesktopWmProtos::DesktopWindowInfo::DesktopWindowType.constants.inject({}) do |acc, const|
      acc[const.to_s.downcase.to_sym] = DesktopWmProtos::DesktopWindowInfo::DesktopWindowType.const_get(const)
      acc
    end
    
    # Enum for search types
    WIDGET_SEARCHTYPE_ENUM_MAP = DesktopWmProtos::QuickWidgetSearch::QuickWidgetSearchType.constants.inject({}) do |acc, const|
      acc[const.to_s.downcase.to_sym] = DesktopWmProtos::QuickWidgetSearch::QuickWidgetSearchType.const_get(const)
      acc
    end

    # Enum for drop position types for dropping a widget onto another
    DROPPOSITION_ENUM_MAP = QuickWidget::DropPosition.constants.inject({}) do |acc, const|
      acc[const.to_s.downcase.to_sym] = QuickWidget::DropPosition.const_get(const)
      acc
    end 
end
end
