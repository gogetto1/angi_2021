require 'rails_helper'

describe Words::RandomWord do
  describe '#call' do
    subject { described_class.new.call }

    context 'When word deos not have any translations' do
      let!(:word) { create(:word) }

      it do
        expect(subject).to eq(nil)
      end
    end

    context 'When word has some translations' do
      let!(:word) { create(:word) }

      before do
        word.translations << create(:word)
      end

      it do
        expect(subject).to eq(word)
      end
    end
  end
end