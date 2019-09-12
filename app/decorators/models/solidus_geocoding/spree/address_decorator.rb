module SolidusGeocoding
  module Spree
    module AddressDecorator
      def self.prepended(base)
        base.include ::Spree::Address::Geocoding
      end

      ::Spree::Address.prepend self
    end
  end
end
