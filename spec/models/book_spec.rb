
require 'rails_helper'

RSpec.describe 'Book', type: :model do
 describe '$B%"%=%7%(!<%7%g%s$N%F%9%H(B' do
    context 'User$B%b%G%k$H$N4X78(B' do
      it 'belongs_to user$B$H$J$k(B' do
        expect(Book.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end
  describe '$B%P%j%G!<%7%g%s$N%F%9%H(B' do
    let(:user) { create(:user) }
    let!(:book) { build(:book, user_id: user.id) }

    context 'title$B%+%i%`(B' do
      it '$B6uMs$G$J$$$3$H(B' do
        book.title = ''
        expect(book.valid?).to eq false
      end
    end
    context 'body$B%+%i%`(B' do
      it '$B6uMs$G$J$$$3$H(B' do
        book.body = ''
        expect(book.valid?).to eq false
      end
      it '200$BJ8;z0J2<$G$"$k$3$H(B' do
        book.body = Faker::Lorem.characters(number:201)
        expect(book.valid?).to eq false
      end
    end
  end
  
end
