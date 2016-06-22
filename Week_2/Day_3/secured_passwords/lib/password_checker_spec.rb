require 'rspec'
require './password_checker_ruby'


describe PasswordChecker do
  subject {described_class.new("valentine.barbierm@gmail.com", "password")}

  describe '#check_password' do

    it 'checks whether the password is longer than 7 characters' do
      expect(subject.check_password('1234')).to eq(false)
    end

    it 'checks whether the password  contains at least 1 letter, 1 number and 1 symbol' do
      expect(subject.check_password('1234567a')).to eq(false)
    end

    it 'checks whether the password contains at least 1 uppercase and 1 lowercase letter' do
      expect(subject.check_password('1234567a&')).to eq(false)
    end

    it 'checks whether the password contains the name nor the domain of the email' do
      expect(subject.check_password('1234567a&Agmail')).to eq(false)
    end

  end
end
