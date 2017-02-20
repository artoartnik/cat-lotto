require 'acceptance_helper'

resource "Cats" do
  post "/api/v1/cats" do
    parameter :name, "Cat name"
    parameter :picture, "Cat picture"

    example "Post a cat picture" do
      do_request(cat: { name: "Opomuc", picture: Rack::Test::UploadedFile.new("spec/fixtures/files/cat.jpg", "image/jpeg") } )

      expect(status).to eq 200
    end
  end

  get "api/v1/cats/random" do
    example "Get random cat pic" do
      Cat.create(name: "Opomuc", picture: Rack::Test::UploadedFile.new("spec/fixtures/files/cat.jpg", "image/jpeg"))
      do_request

      expect(status).to eq 200
    end
  end
end
