class LinksController < ApplicationController
  def new
    @link = Link.new()
    render :new
  end

  def shorten
    @link = Link.new(long_url: params[:url])
    if @link.save
      render :show
    else
      flash.now[:errors] = @link.errors.full_messages
      render :new
    end
  end

  def redirect
    @link = Link.find_by_short_url(params[:short_url])
    if @link
      redirect_to @link.long_url
    else
      flash.now[:errors] = ["#{params[:short_url]} not registered"]
      render :invalid
    end
  end
end
