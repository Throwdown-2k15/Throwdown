require 'rails_helper'

RSpec.describe TdownsController, type: :controller do

  describe '#index' do
    before do
      FactoryGirl.create(:tdown)
      sign_in FactoryGirl.create(:user)
    end
    it 'gets all throwdowns' do
      get :index
      expect(assigns(:tdowns).size).to eq(1)
    end
  end

  describe "#create" do
    let(:attributes) {FactoryGirl.attributes_for(:tdown) }
    let(:post_data) {post :create, tdown: attributes}

    context "when logged in" do
      let(:user) { FactoryGirl.create(:user) }
      before { sign_in user }

      context "with valid attributes" do

        it 'saves a new tdown' do
          expect {post_data}.to change {Tdown.count}
        end

        it 'redirects to the dashboard'
        it 'associates the throwdown with current_user' do
          post_data
          expect(assigns(:tdown).user.id).to eq(user.id)
        end
      end
      context "with invalid attributes" do
        it 'sets a flash error message'
        it 'does not save to the database'
        it 'renders the new page'
      end
    end
    context "when not signed in" do
      it 'redirects to user dashboard'
      it 'does not save to the database' do
        expect {post_data}.to_not change {Tdown.count}
      end
    end
  end

end
