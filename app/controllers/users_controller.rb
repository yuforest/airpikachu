class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @rooms = @user.rooms

    # the guest reviews to host(if user is host)
    @guest_reviews = Reviews.where(type: "GuestReview", host_id: @user.id)

    @host_reviews = Review.where(type: "HostReview", guest_id: @user.id)
  end

end
