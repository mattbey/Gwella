class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all

    render("profiles/index.html.erb")
  end

  def show
    @profile = Profile.find_by(user_id: params[:id])

    render("profiles/show.html.erb")
  end

  def new
    @profile = Profile.new

    render("profiles/new.html.erb")
  end

  def create
    @profile = Profile.new

    @profile.username = params[:username]
    @profile.city = params[:city]
    @profile.state = params[:state]
    @profile.country = params[:country]
    @profile.interests = params[:interests]
    @profile.user_id = params[:user_id]
    @profile.image = params[:image]

    save_status = @profile.save

    if save_status == true
      redirect_to("/profiles/#{@profile.id}", :notice => "Profile created successfully.")
    else
      render("profiles/new.html.erb")
    end
  end

  def edit
    @profile = Profile.find(params[:id])

    render("profiles/edit.html.erb")
  end

  def update
    @profile = Profile.find(params[:id])

    @profile.username = params[:username]
    @profile.city = params[:city]
    @profile.state = params[:state]
    @profile.country = params[:country]
    @profile.interests = params[:interests]
    @profile.user_id = params[:user_id]

    save_status = @profile.save

    if save_status == true
      redirect_to("/profiles/#{@profile.id}", :notice => "Profile updated successfully.")
    else
      render("profiles/edit.html.erb")
    end
  end

  def destroy
    @profile = Profile.find(params[:id])

    @profile.destroy

    if URI(request.referer).path == "/profiles/#{@profile.id}"
      redirect_to("/", :notice => "Profile deleted.")
    else
      redirect_to(:back, :notice => "Profile deleted.")
    end
  end
end
