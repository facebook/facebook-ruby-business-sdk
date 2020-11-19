# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


RSpec.describe 'FacebookAds::ServerSide::Content' do
  it 'normalizes the fields' do
    content = FacebookAds::ServerSide::Content.new(
      product_id: 'A123',
      title: '',
      quantity: 0,
      brand: nil,
      delivery_category: 'curbside'
    )

    expect(content.normalize).to eq(
      'id' => 'A123',
      'title' => '',
      'quantity' => 0,
      'delivery_category' => 'curbside'
    )
  end

  it 'objects are equal if their contents match' do
    content1 = FacebookAds::ServerSide::Content.new(
      product_id: 'A123',
      quantity: 100,
      item_price: 1.23456,
      title: 't',
      description: 'd',
      brand: 'b',
      category: 'c'
    )
    content2 = FacebookAds::ServerSide::Content.new(
      product_id: 'A123',
      quantity: 100,
      item_price: 1.23456,
      title: 't',
      description: 'd',
      brand: 'b',
      category: 'c'
    )

    expect(content1 == content2).to eq(true)
  end

  it 'objects are not equal if their contents do not match' do
    [:product_id, :title, :description, :brand, :category].each do |string_field|
      content1 = FacebookAds::ServerSide::Content.new(
        string_field => 'A',
      )
      content2 = FacebookAds::ServerSide::Content.new(
        string_field => 'B',
      )

      expect(content1 == content2).to eq(false)
    end

    # numeric fields
    content1 = FacebookAds::ServerSide::Content.new(
      quantity: 1,
    )
    content2 = FacebookAds::ServerSide::Content.new(
      quantity: 2,
    )

    expect(content1 == content2).to eq(false)

    content1 = FacebookAds::ServerSide::Content.new(
      item_price: 1.99,
    )
    content2 = FacebookAds::ServerSide::Content.new(
      item_price: 2.99,
    )

    expect(content1 == content2).to eq(false)
  end

  it 'normalize raises an error when the delivery_category is not valid' do
    content = FacebookAds::ServerSide::Content.new(
      delivery_category: 'unsupported-category'
    )

    expect{content.normalize}.to raise_error(ArgumentError)
  end
end
