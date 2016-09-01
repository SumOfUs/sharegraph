# Track shares
class TrackingController < ApplicationController
  before_action :share

  # GET /track/:uuid
  def redirect
    return head :not_found unless share

    # track...

    redirect_to share.resource_uri
  end

  private

  def share
    @share ||= Share.find_by(uuid: params[:uuid])
  end
end
