require "appium_lib"

def caps
  {caps: {
      deviceName: :"Name",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__),"ultimate_converter.apk")),
      appPackage: "com.physphil.android.unitconverterultimate",
      appAcrivity: "com.physphil.android.unitconverterultimate.MainActivity",
      newCommanrTimeout: "3600"
  }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object