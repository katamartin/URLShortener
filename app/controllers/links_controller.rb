class LinksController < ApplicationController
  def shorten
    @link = Link.new(long_url: params[:url])
    if @link.save
      render :show
    else
      flash.now[:errors] = @link.errors.full_messages
    end
  end

  def redirect

  end
end
