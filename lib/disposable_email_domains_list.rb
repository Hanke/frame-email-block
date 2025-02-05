# frozen_string_literal: true

require 'json'
require_relative "disposable_email_domains/version"

module DisposableEmailDomainList
  class << self
    def domains
      @domains ||= JSON.parse(File.read(domains_file))
    end

    def disposable?(domain)
      domains.include?(domain.downcase)
    end

    private

    def domains_file
      File.expand_path('./lib/disposable_email_domains/domains.json', __dir__)
    end
  end
end