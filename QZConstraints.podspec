Pod::Spec.new do |s|
  s.name         = "QZConstraints"
  s.version      = "0.0.1"
  s.summary      = "A library for more easily constructing autolayout constraints."

  s.description  = <<-DESC
                   A longer description of QZConstraints in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/MarkQSchultz/QZConstraints"
  s.license      = { :type => "MIT", :file => "LICENSE" }
 
  s.author             = { "Mark Schultz" => "mark@qzerolabs.com" }
  s.social_media_url   = "http://twitter.com/MarkQSchultz"

  s.platform     = :ios

  s.source       = { :git => "https://github.com/MarkQSchultz/QZConstraints.git", :tag => "0.0.1" }

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  s.public_header_files = "Classes/**/*.h"

  s.framework  = "UIKit"

  s.requires_arc = true

end
