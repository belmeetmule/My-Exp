require 'rails_helper'

RSpec.describe User, type: :model do
  let(:the_user) { User.new(full_name: 'Mulugeta M', email: 'mulie@gmail.com', password: '12345678') }

  context 'validation' do
    it 'user has name' do
      expect(the_user.full_name).to_be eq("Mulugeta M.")
    end

    it 'fails with no name' do
      the_user.full_name = nil
      expect(the_user).to_not be_valid
    end

    it 'fails with no email' do
      the_user.email = nil
      expect(the_user).to_not be_valid
    end

    it 'fails with no password' do
      the_user.email = nil
      expect(the_user).to_not be_valid
    end
  end
end
