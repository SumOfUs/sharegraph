require 'rails_helper'

describe 'Share Resource Analytics' do

  it 'is true' do
    assert true
  end

  describe 'share_count' do
    subject { ShareResource.new }
    it 'returns the total number of shares' do
      expect(subject.share_count).to be(0)
    end
  end
end
