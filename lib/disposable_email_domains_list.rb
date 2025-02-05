# frozen_string_literal: true

require 'json'
require_relative "disposable_email_domains/version"

module DisposableEmailDomainList
  class << self
    def domains_file
      File.join(__dir__, 'disposable_email_domains', 'domains.json')
    end

    def disposable?(domain)
      domains.include?(domain.downcase)
    end

    private

    def domains_file
      File.expand_path('../data/domains.json', __dir__)
    end
  end
end