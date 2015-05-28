require 'spec_helper'

describe ActiveRecord::DefaultValues do
  before(:each) do
    @user = User.new
  end

  context 'when :first_name is nil' do
    it 'set default value to :first_name' do
      expect(@user.first_name).to eq 'John'
    end
  end

  context 'when :first_name is not nil' do
    it 'doesn\'t set default value to :first_name' do
      @user.first_name = 'Samwise'
      expect(@user.first_name).to eq 'Samwise'
    end
  end

  context 'when :last_name is nil' do
    it 'set default value to :last_name' do
      expect(@user.last_name).to eq 'Doe'
    end
  end

  context 'when :last_name is not nil' do
    it 'doesn\'t set default value to :last_name' do
      @user.last_name = 'Gamgee'
      expect(@user.last_name).to eq 'Gamgee'
    end
  end

  context 'when :active is nil' do
    it 'set default value to :active' do
      expect(@user.active).to be_falsey
    end
  end

  context 'when :active is not nil' do
    it 'doesn\'t set default value to :active' do
      @user.active = true
      expect(@user.active).to be_truthy
    end
  end

  context 'when :add_time is nil' do
    it 'set default value to :add_time' do
      expect(@user.add_time).to eq Time.at(1_432_728_429)
    end
  end

  context 'when :add_time is not nil' do
    it 'doesn\'t set default value to :add_time' do
      @user.add_time = Time.at(1_432_795_493)
      expect(@user.add_time).to eq Time.at(1_432_795_493)
    end
  end

  context 'when :age is nil' do
    it 'set default value to :age' do
      expect(@user.age).to eq 20
    end
  end

  context 'when :age is not nil' do
    it 'doesn\'t set default value to :age' do
      @user.age = 30
      expect(@user.age).to eq 30
    end
  end
end
