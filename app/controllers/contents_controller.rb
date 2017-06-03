class ContentsController < ApplicationController
  def index
    @contents = Content.all

    render("contents/index.html.erb")
  end

  def show
    @content = Content.find(params[:id])

    render("contents/show.html.erb")
  end

  def new
    @content = Content.new

    render("contents/new.html.erb")
  end

  def create
    @content = Content.new

    @content.title = params[:title]
    @content.description = params[:description]
    @content.video_id = params[:video_id]
    @content.url = params[:url]

    save_status = @content.save

    if save_status == true
      redirect_to("/contents/#{@content.id}", :notice => "Content created successfully.")
    else
      render("contents/new.html.erb")
    end
  end

  def edit
    @content = Content.find(params[:id])

    render("contents/edit.html.erb")
  end

  def update
    @content = Content.find(params[:id])

    @content.title = params[:title]
    @content.description = params[:description]
    @content.video_id = params[:video_id]
    @content.url = params[:url]

    save_status = @content.save

    if save_status == true
      redirect_to("/contents/#{@content.id}", :notice => "Content updated successfully.")
    else
      render("contents/edit.html.erb")
    end
  end

  def destroy
    @content = Content.find(params[:id])

    @content.destroy

    if URI(request.referer).path == "/contents/#{@content.id}"
      redirect_to("/", :notice => "Content deleted.")
    else
      redirect_to(:back, :notice => "Content deleted.")
    end
  end
end
