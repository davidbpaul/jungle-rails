require 'rails_helper'

  RSpec.describe User, type: :model do
    describe 'Validations' do
      # validation tests/examples here
      it { is_expected.to validate_presence_of(:password) }
      it { is_expected.to validate_presence_of(:password_confirmation) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }

    end

    context "description" do
      let(:password) {"Map123456"}
      let(:password_confirmation) {"Map123456"}
      let(:email) {"davidpaul23@homtail.com"}
      let(:first_name) {"David"}
      let(:last_name) {"Paul"}

      let(:user) { User.create(
      password: password,
      password_confirmation: password_confirmation,
      email: email,
      first_name: first_name,x
      last_name: last_name
      ) }

      it "password should = password_confirmation" do
        expect(user.password).to eq(user.password_confirmation)
      end
      it "password length must have a length of 8" do
        expect((user.password).length >= 8)
      end
    end
  end
