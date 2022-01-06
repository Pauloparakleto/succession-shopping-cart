# frozen_string_literal: true

RSpec.describe ShoppingCart::Item do
  it "has a version number" do
    expect(ShoppingCart::VERSION).not_to be nil
  end

 context 'when initialize' do
  let!(:item_ids){[1, 2, 2, 3]}

  it 'has items ids' do
    expect(described_class.new(item_ids).product_ids).to eq(item_ids)
  end 

  it 'has unique item ids' do
    expect(described_class.new(item_ids).product_unique_ids).to eq([1, 2, 3])
  end
 end
end
