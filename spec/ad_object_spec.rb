# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

RSpec.describe FacebookAds::AdObject do
  describe 'field :object_id remapping' do
    # Post is a real ad object that declares `field :object_id, 'string'`
    let(:post) do
      FacebookAds::Post.new({ id: '123', object_id: 'fb_obj_456' })
    end

    it 'reads the Facebook object_id field via fb_object_id' do
      expect(post.fb_object_id).to eq('fb_obj_456')
    end

    it 'round-trips writes through fb_object_id=' do
      post.fb_object_id = 'updated_789'
      allow(post).to receive(:load!)
      expect(post.fb_object_id).to eq('updated_789')
    end

    it 'serializes with the original :object_id key for the API' do
      post.fb_object_id = 'updated_789'
      allow(post).to receive(:load!)
      expect(post.to_hash[:object_id]).to eq('updated_789')
    end
  end
end
