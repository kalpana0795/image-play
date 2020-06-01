require 'rails_helper'

describe PlaygamesController do
  it 'should create a playgame' do
    expect(PlayGame.count).to be(0)
    image = Image.create(file: Rack::Test::UploadedFile.new("#{Rails.root}/spec/data/avatar.jpg", "mime/type"))
    post :create, params: { playgame: {
        count: 1,
        image_url: Rails.application.routes.url_helpers.url_for(image.file)
      }, format: :js
    }
    expect(PlayGame.count).to be(1)
  end

  it 'should not create a play if count is lessthan 1' do
    expect(PlayGame.count).to be(0)
    image = Image.create(file: Rack::Test::UploadedFile.new("#{Rails.root}/spec/data/avatar.jpg", "mime/type"))
    post :create, params: { playgame: {
        count: 0,
      image_url: Rails.application.routes.url_helpers.url_for(image.file)
      }, format: :js
    }
    expect(PlayGame.count).to be(0)
  end
end
