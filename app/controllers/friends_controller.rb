class FriendsController < ApplicationController

    def create
        @friendship = Friend.new(friend_params)
        @friendship.save
        redirect_to i_tweets_path
    end

    private

    def friend_params
        params.require(:friend).permit(:user_id, :friend_id)
    end

end