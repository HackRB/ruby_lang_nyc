class GuidesController < ApplicationController
  def index
    @guides = Guide.all

    render "index"
  end

  def show
    @guide = Guide.find(params[:id])
    raise ActionController::RoutingError, "Unknown guide: #{params[:id]}" unless @guide

    render "guides/#{@guide.slug}"
  end
end
