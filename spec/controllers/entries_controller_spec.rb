require 'rails_helper'

RSpec.describe EntriesController, type: :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
  describe "POST create" do
    context "With valid attributes" do
      it "creates a new entry" do
        expect { post :create, entry: FactoryGirl.attributes_for(:entry)
        }.to change(Entry, :count).by(1)
      end
    end
  end
end
