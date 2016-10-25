require 'spec_helper'

describe Spree::Address do
  let(:address) { build(:address) }
  subject { address }

  it 'should include the Spree::Address::Geocoding module' do
    expect(described_class.included_modules).to include Spree::Address::Geocoding
  end

  it 'should be geocoded by :full_address' do
    expect(described_class.geocoder_options[:user_address]).to eql :full_address
  end

  describe Spree::Address::Geocoding do
    context 'After validations have been run' do
      it 'should call geocode' do
        expect(address).to receive :geocode
        address.valid?
      end
    end

    describe '#full_address' do
      it { is_expected.to respond_to :full_address }

      it 'should return the full address' do
        target = "#{address.address1}, #{address.address2}, #{address.city}, #{address.state_text}, #{address.country.try(:iso)}"
        expect(address.full_address).to eql target
      end
    end
  end
end
