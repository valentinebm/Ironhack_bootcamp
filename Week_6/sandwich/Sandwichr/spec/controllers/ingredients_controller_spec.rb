require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do

  describe "GET #index" do
    it "should return a success code(200)" do
      get :index
      expect(response.code).to eq("200")
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end


  describe "GET #show" do
    it "shows an ingredient" do
      ingredient = Ingredient.create(name: 'tomato', calories: 85)
      get :show, {id: ingredient.id}
      expect(response).to be_success
      ingredient.destroy
    end

    it "return 404 when ingredient does not exist" do
      get :show, {id:100}
      expect(response.code).to eq("404")
    end
  end


  describe "POST #create" do
    it "creates a new ingredient" do
      expect {
        post :create, {ingredient: {name: 'mozzarella', calories: 100}}
      }.to change(Ingredient, :count).by(1)

      expect(Ingredient.last.name).to eq('mozzarella')
    end
  end

  describe "DELETE #destroy" do
    it "deletes an ingredient" do
      ingredient = Ingredient.create(name: 'salt', calories: 10)

      expect {delete :destroy, {id: ingredient.id}}.to change(Ingredient, :count).by(-1)
      expect(response).to be_success
    end
  end

end
