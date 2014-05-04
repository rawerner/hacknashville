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
  describe '.interest' do
    before do
      Mentee.new(email: 'jane@example.com', password: 'password', interest: ['ruby, rails']).save
      Mentee.new(email: 'sara@example.com', password: 'password', interest: ['javascript']).save
    end
    it 'mentees interest should be in db' do
      interest = Mentee.all.map(&:interest)
      interest.should == [['ruby, rails'], ['javascript']]
    end
    it 'should return mentees interest' do
      mentee = Mentee.create(email: 'sally@example.com', password: 'password', interest: ['ruby, rails'])
      mentee.interests.should == ['ruby, rails']
    end
  end
end