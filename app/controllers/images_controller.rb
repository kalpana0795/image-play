class ImagesController < ApplicationController
  def index
    @images = image_array_genrator(Image.random)
    @playgames = PlayGame.all
  end

  def new
    @images = Image.all
  end

  def create
    begin
      Image.transaction do
        params[:images][:files].each do |file|
          Image.create!(file: file)
        end
      end
      flash[:success] = "Image uploaded successfully"
      redirect_to images_path
    rescue
      flash[:danger] = "please upload a valid image"
      redirect_to new_image_path
    end
  end

  private

  def image_array_genrator(images)
    return [] if images.blank?
    urls = images.map { |img| Rails.application.routes.url_helpers.url_for(img.file) }
    urls += urls while urls.count < 10
    urls.first(10)
  end

  def images_params
    params.require(:images).permit(files: [])
  end
end
