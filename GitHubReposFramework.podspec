Pod::Spec.new do |spec|

  spec.name         = "GitHubReposFramework"
  spec.version      = "1.0.0"
  spec.summary      = "Awesome Github Service Framework"
  spec.description  = "Awesome Github Service Framework to get repos by username"
  spec.homepage     = "https://github.com/Wassmd/GitHubReposFramework.git"
  spec.license      = "MIT"
  spec.author       = { "Wasim" => "wassmd@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/Wassmd/GitHubReposFramework.git", :tag => "#{spec.version}" }

  spec.source_files  = "GitHubReposFramework/**/*.{h,m}"
  spec.public_header_files = "GitHubReposFramework/**/*.h"

  spec.dependency "AFNetworking", "~> 4.0"

end
