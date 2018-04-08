require "appium_lib"

def caps
  {caps: {
      deviceName: :"Name",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "ultimate_converter.apk")),
      appPackage: "com.physphil.android.unitconverterultimate",
      appAcrivity: "com.physphil.android.unitconverterultimate.MainActivity",
      newCommanrTimeout: "3600"
  }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

def select_menu_item(value)
  current_screen = get_source
  previwes_screen = ""
  until (exist { find_element(id: design_navigation_view).find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']")}) || (current_screen==previwes_screen)do
    Appium::TouchAction.new.swipe(start_x: 0.5,start_y: 0.8,end_x: 0.5 ,end_y: 0.2,duration: 500).perform
    previwes_screen=current_screen
    current_screen=get_source
  end
  if exist { find_element(id: design_navigation_view).find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']")}
    find_element(id: design_navigation_view).find_element(xpath: "//android.widget.CheckedTextView[@text='#{value}']").click
    fail ("Element #{value} was found ")
    end
end