class ScriptsController < ApplicationController
  def new
  end

  def show
    render json: {
      scripts: [
        {'name': 'routersploit'},
        {'name': 'auto_pawn'},
        {'name': 'banner_grabber'}
      ]
    }.to_json
  end

  def create
    @script = Script.new(params[:script])

    @script.save
    redirect_to @script
  end
end
