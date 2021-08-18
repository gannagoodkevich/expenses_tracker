require "rails_helper"

RSpec.describe PlannedExpensesController, :type => :controller do
  describe "GET show planned_expense" do
    let(:user) { User.create name: "Ann_test", username: "ann@test", password: "123456" }
    let(:planned_expense) { PlannedExpense.create title: 'Whatever', description: "this is a description",
                                                    due_date:  2.days.from_now,
                                                    user_id: user.id}
    before(:each) do
      get :show, params: { id: planned_expense.id }

      @document = JSON.parse response.body.gsub('=>', ':')
    end

    it "has a 200 status code" do
        expect(response).to have_http_status(:ok)
    end

    it "checks the presence of attributes" do
      expect(@document).to include('_id', 'title', 'description', 'due_date', 'user_id')
    end

    it "serializes properly" do
      expect(@document).to eq(YAML.load(planned_expense.to_json))
    end
  end

  describe "POST create planned_expense" do
    before do
      @user = User.create(name: "Ann_test_create", username: "create@test", password: "123456")

      post :create, params: { planned_expense: { title: 'create_test', description: "this is a description",
                             due_date:  2.days.from_now, tags: ['book'], amount: 1.234,
                             user_id: @user.id } }

      @document = JSON.parse response.body.gsub('=>', ':')
    end

    it "has a 200 status code" do
      expect(response).to have_http_status(:created)
    end

    it "checks the presence of attributes" do
      expect(@document).to include('_id', 'title', 'description', 'due_date', 'user_id', 'tags', 'amount')
    end

    it "checks if params are created correctly" do
      expect(@document).to include({"title" => 'create_test', "description" => "this is a description",
                               "user_id" => { "$oid"=> @user.id.to_s } })
    end
  end
end
