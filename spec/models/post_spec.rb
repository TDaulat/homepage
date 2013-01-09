require 'spec_helper'

describe 'Post' do
  describe 'as an instance' do
    before(:all) do
      @valid_attributes = {
        :title => 'Some title'
      }
    end

    it 'should be valid given valid attributes' do
      Post.new(@valid_attributes)
    end
    
    it 'should require a title' do
      raise "hello"
      Post.new(@valid_attributes.except(:title)).should have(1).errors_on(:title)
    end
  end
end