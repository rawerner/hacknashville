require 'spec_helper'

describe Mentee do
  describe '.all' do
    context 'with no mentee in the database' do
      it 'should return an empty array' do
        Mentee.all.should == []
      end
    end
    context 'with multiple people in the database' do
      before do
        Mentee.new(email: 'jane@example.com', password: 'password').save
        Mentee.new(email: 'sara@example.com', password: 'password').save
      end
      it 'should return all of the people' do
        Mentee.all.count.should == 2
      end
      it 'should return the right entries' do
        emails = Mentee.all.map(&:email)
        emails.should == ["jane@example.com", "sara@example.com"]
      end
    end
  end
end