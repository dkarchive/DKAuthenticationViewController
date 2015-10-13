
Pod::Spec.new do |s|

  s.name         = "DKAuthenticationViewController"
  s.version      = "0.2.1"
  s.summary      = "Simple iOS authentication view controller"

  s.homepage     = "https://github.com/dkhamsing/DKAuthenticationViewController"

  s.license      = { :type => "MIT", :file => "LICENSE" }
 
  s.author             = { "dkhamsing" => "dkhamsing8@gmail.com" }
  s.social_media_url   = "http://twitter.com/dkhamsing" 

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/dkhamsing/DKAuthenticationViewController.git", :tag => s.version.to_s }
 
  s.source_files  = "DKAuthenticationViewController/*"
   
  s.requires_arc = true
  
  s.dependency 'DKTwitterReverseAuth', '~> 0.1'

end
