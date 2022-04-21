require 'rails_helper'

describe User, type: :model do
  subject(:user) { described_class.new(username: username) }

  let(:username) { 'R0XxOr' }

  describe '#valid?' do
    subject(:valid?) { user.valid? }

    5_000.times do
      it { is_expected.to be true }
    end

    context 'without a username' do
      let(:username) { nil }

      5_000.times do
        it { is_expected.to be false }
      end
    end
  end

  describe '#save!' do
    subject(:save!) { user.save! }

    5_000.times do
      it 'creates a User' do
        expect { save! }.to change(User, :count).by(1)
      end
    end

    context 'without a username' do
      let(:username) { nil }

      5_000.times do
        it 'raises a validation error' do
          expect { save! }.to raise_error(ActiveRecord::RecordInvalid)
        end
      end
    end
  end
end
