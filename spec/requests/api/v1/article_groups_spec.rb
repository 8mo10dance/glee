require 'rails_helper'

RSpec.describe "Api::V1::ArticleGroups", type: :request do
  describe "GET /api/v1/article_groups" do
    subject(:get_article_groups) { get "/api/v1/article_groups" }

    before do
      create_list :article_group, 3
    end

    it "returns http success" do
      get_article_groups
      expect(response).to have_http_status(:success)
    end

    it "confirm json schema" do
      get_article_groups
      assert_response_schema_confirm(200)
    end
  end
end
