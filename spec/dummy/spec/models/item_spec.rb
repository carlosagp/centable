require 'spec_helper'

RSpec.describe Item, :type => :model do

  it {
    # expect(Item.public_instance_methods.include?(:cost)).to be_true
    expect(Item.public_instance_methods.include?(:cost)).to be_truthy
  }
  context 'When using any _cent attributes via Centable' do
    # let(:item) { create(:item) }
    #
    # it { expect(item.method_defined?(:cost)).to be_true }
    # it { expect(item.method_defined?(:price)).to be_true }
  end
end
