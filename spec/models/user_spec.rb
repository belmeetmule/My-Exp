require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { User.new(name: 'Mulugeta M', email: 'mulie@gmail.com', password: '12345678') }

  context 'validation' do
    it 'user has name' do
      expect(user1).to be_valid
    end

    it 'fails with no name' do
      user1.name = nil
      expect(user1).to_not be_valid
    end

    it 'fails with no email' do
      user1.email = nil
      expect(user1).to_not be_valid
    end

    it 'fails with no password' do
      user1.email = nil
      expect(user1).to_not be_valid
    end
  end

  context 'association' do
    describe User do
      it { should have_many(:expenses) }
      it { should have_many(:categories) }
    end
  end
end
