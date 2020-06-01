require 'rails_helper'

describe ImagesController do
  it 'should render new action' do
    get :new
    response.should render_template 'new'
  end

  it 'should render index action' do
    get :index
    response.should render_template 'index'
  end

  it 'should upload the images' do
    expect(Image.count).to be(0)
    post :create, params: { images: {
        files: [Rack::Test::UploadedFile.new("#{Rails.root}/spec/data/avatar.jpg", "mime/type")]
      }
    }
    expect(Image.count).to be(1)
    response.should redirect_to '/images'
  end
end
