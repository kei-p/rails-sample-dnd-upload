class FilesController < ApplicationController
  def index
  end

  def create
    @upload = Upload.new(file_params)
    @upload.save
  end

  private

  def file_params
    params.require(:upload).permit(:file)
  end
end
