require 'rails_helper'

RSpec.describe TdownsController, type: :controller do

  describe '#index' do
    before do
      FactoryGirl.create(:tdown)
    end
    it 'gets all throwdowns' do
      get :index
      expect(assigns(:tdowns).size).to eq(1)
    end
  end

  describe "#create" do
    context "when logged in" do
      before { sign_in FactoryGirl.create(:user) }

      let(:attributes) {FactoryGirl.attributes_for(:tdown) }
      context "with valid attributes" do
        let(:post_data) {post :create, tdown: attributes}
        it 'saves a new tdown' do
          expect {post_data}.to change {Tdown.count}
        end
        it 'redirects to the dashboard'
      end
      context "with invalid attributes" do
        it 'sets a flash error message'
        it 'does not save to the database'
        it 'renders the new page'
      end
    end
  end

end
