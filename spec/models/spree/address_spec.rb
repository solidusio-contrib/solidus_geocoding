# frozen_string_literal: true

require 'spec_helper'

describe Spree::Address do
  subject { address }

  let(:address) { build(:address) }

  it 'includes the Spree::Address::Geocoding module' do
    expect(described_class.included_modules).to include Spree::Address::Geocoding
  end

  it 'is geocoded by :full_address' do
    expect(described_class.geocoder_options[:user_address]).to be :full_address
  end

  describe Spree::Address::Geocoding do
    context 'when validations have been run' do
      it 'calls geocode' do
        expect(address).to receive(:geocode)
        address.valid?
      end
    end

    describe '#full_address' do
      it { is_expected.to respond_to :full_address }

      it 'returns the full address' do
        # rubocop:disable Metrics/LineLength
        target = "#{address.address1}, #{address.address2}, #{address.city}, #{address.state_text}, #{address.country.try(:iso)}"
        # rubocop:enable Metrics/LineLength
        #
        expect(address.full_address).to eql target
      end
    end
  end
end
