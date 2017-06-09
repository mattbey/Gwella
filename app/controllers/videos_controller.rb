class VideosController < ApplicationController

  def my_favorites
      @videos = current_user.favorites
    end

  def index
    @q = Video.ransack(params[:q])
    @videos = @q.result
  end

  def show
    @video = Video.find(params[:id])

    render("videos/show.html.erb")
  end

  def new
    @video = Video.new

    render("videos/new.html.erb")
  end

  def create
    @video = Video.new

    @video.title = params[:title]
    @video.url = params[:url]
    @video.description = params[:description]
    @video.user_id = params[:user_id]

    save_status = @video.save

    if save_status == true
      redirect_to("/videos/#{@video.id}", :notice => "Video created successfully.")
    else
      render("videos/new.html.erb")
    end
  end

  def edit
    @video = Video.find(params[:id])

    render("videos/edit.html.erb")
  end

  def update
    @video = Video.find(params[:id])

    @video.title = params[:title]
    @video.url = params[:url]
    @video.description = params[:description]
    @video.user_id = params[:user_id]

    save_status = @video.save

    if save_status == true
      redirect_to("/videos/#{@video.id}", :notice => "Video updated successfully.")
    else
      render("videos/edit.html.erb")
    end
  end

  def destroy
    @video = Video.find(params[:id])

    @video.destroy

    if URI(request.referer).path == "/videos/#{@video.id}"
      redirect_to("/", :notice => "Video deleted.")
    else
      redirect_to(:back, :notice => "Video deleted.")
    end
  end
end
