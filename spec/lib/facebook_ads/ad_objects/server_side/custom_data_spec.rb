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


RSpec.describe 'FacebookAds::ServerSide::CustomData' do
  it 'normalize works' do
    value = 0.1
    net_revenue = 0.05
    currency = 'usd'
    content_name = 'content-name-1'
    content_category = 'content-category-2'
    content_ids = ['cid-1', 'cid-2']
    contents = [FacebookAds::ServerSide::Content.new(product_id: 'product-id-1')]
    content_type = 'content-type-3'
    order_id = 'order-id-4'
    predicted_ltv = 5.99
    num_items = 6
    status = 'status-7'
    search_string = 'search-string-8'
    item_number = 'item-number-9'
    delivery_category = 'curbside'
    custom_properties = {'custom10' => 'property10'}
    custom_data = FacebookAds::ServerSide::CustomData.new(
      value: value,
      net_revenue: net_revenue,
      currency: currency,
      content_name: content_name,
      content_category: content_category,
      content_ids: content_ids,
      contents: contents,
      content_type: content_type,
      order_id: order_id,
      predicted_ltv: predicted_ltv,
      num_items: num_items,
      status: status,
      search_string: search_string,
      item_number: item_number,
      delivery_category: delivery_category,
      custom_properties: custom_properties,
    )

    expect(custom_data.normalize).to eq(custom_properties.merge(
      'value' => value,
      'net_revenue' => net_revenue,
      'currency' => currency,
      'content_name' => content_name,
      'content_category' => content_category,
      'content_ids' => content_ids,
      'contents' => [{'id' => 'product-id-1'}],
      'content_type' => content_type,
      'order_id' => order_id,
      'predicted_ltv' => predicted_ltv,
      'num_items' => num_items,
      'status' => status,
      'item_number' => item_number,
      'search_string' => search_string,
      'delivery_category' => delivery_category,
    ))
  end

  it 'normalizes currency' do
    expect(FacebookAds::ServerSide::Util).to receive(:normalize)
        .with('USD', 'currency')
        .and_return('normalized-currency')
    custom_data = FacebookAds::ServerSide::CustomData.new(currency: 'USD')
    normalized = custom_data.normalize

    expect(normalized).to eq('currency' => 'normalized-currency')
  end

  it 'equals works' do
    custom_data1 = FacebookAds::ServerSide::CustomData.new()
    custom_data2 = FacebookAds::ServerSide::CustomData.new()
    expect(custom_data1).to eq(custom_data2)
    expect(custom_data1.hash).to eq(custom_data2.hash)

    custom_data1 = FacebookAds::ServerSide::CustomData.new(
      value: 0.1,
      net_revenue: 0.05,
      currency: 'usd',
      content_name: 'content-name-1',
      content_category: 'content-category-2',
      content_ids: ['cid-1', 'cid-2'],
      contents: [FacebookAds::ServerSide::Content.new(product_id: 'product-id-1')],
      content_type: 'content-type-3',
      order_id: 'order-id-4',
      predicted_ltv: 5.99,
      num_items: 6,
      status: 'status-7',
      search_string: 'search-string-8',
      item_number: 'item-number-9',
      custom_properties: {'custom10' => 'property10'},
      delivery_category: 'curbside',
    )
    custom_data2 = FacebookAds::ServerSide::CustomData.new(
      value: 0.1,
      net_revenue: 0.05,
      currency: 'usd',
      content_name: 'content-name-1',
      content_category: 'content-category-2',
      content_ids: ['cid-1', 'cid-2'],
      contents: [FacebookAds::ServerSide::Content.new(product_id: 'product-id-1')],
      content_type: 'content-type-3',
      order_id: 'order-id-4',
      predicted_ltv: 5.99,
      num_items: 6,
      status: 'status-7',
      search_string: 'search-string-8',
      item_number: 'item-number-9',
      custom_properties: {'custom10' => 'property10'},
      delivery_category: 'curbside',
    )
    expect(custom_data1).to eq(custom_data2)
    expect(custom_data1.hash).to eq(custom_data2.hash)
  end

  it 'not equals works' do
    custom_data1 = FacebookAds::ServerSide::CustomData.new(
      value: 0.1,
      net_revenue: 0.05,
      currency: 'usd',
      content_name: 'content-name-1',
      content_category: 'content-category-2',
      content_ids: ['cid-1', 'cid-2'],
      contents: [FacebookAds::ServerSide::Content.new(product_id: 'product-id-1')],
      content_type: 'content-type-3',
      order_id: 'order-id-4',
      predicted_ltv: 5.99,
      num_items: 6,
      status: 'status-7',
      search_string: 'search-string-8',
      item_number: 'item-number-9',
      custom_properties: {'custom10' => 'property10'},
      delivery_category: 'curbside',
    )
    custom_data2 = FacebookAds::ServerSide::CustomData.new(
      value: 0.1,
      net_revenue: 0.03,
      currency: 'usd',
      content_name: 'content-name-1',
      content_category: 'content-category-2',
      content_ids: ['cid-1', 'cid-2'],
      contents: [FacebookAds::ServerSide::Content.new(product_id: 'product-id-1')],
      content_type: 'content-type-3',
      order_id: 'order-id-4',
      predicted_ltv: 5.99,
      num_items: 6,
      status: 'status-7',
      search_string: 'search-string-8',
      # no item_number
      custom_properties: {'custom10' => 'property10'},
    )

    expect(custom_data1).to_not eq(custom_data2)
    expect(custom_data1.hash).to_not eq(custom_data2.hash)
  end
end
