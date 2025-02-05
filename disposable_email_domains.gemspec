require_relative "lib/disposable_email_domains/version"

Gem::Specification.new do |spec|
  spec.name = "disposable_email_domains"
  spec.version = DisposableEmailDomains::VERSION
  spec.authors = ["Your Name"]
  spec.email = ["your@email.com"]

  spec.summary = "Check for disposable email domains"
  spec.description = "A Ruby gem to check if an email domain is from a disposable email service"
  spec.homepage = "https://github.com/yourusername/disposable_email_domains"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.glob("{lib,data}/**/*") + ["README.md"]
  spec.require_paths = ["lib"]
  
  spec.add_dependency "json"
end