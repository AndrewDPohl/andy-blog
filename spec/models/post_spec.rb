require 'rails_helper'
require 'ffaker'

RSpec.describe Post, type: :model do
  
    before do
      post_params = Hash.new
      post_params[:first_name] = FFaker::Name.first_name
      post_params[:last_name] = FFaker::Name.last_name
      post_params[:email] = FFaker::Internet.email
      post_params[:password] = FFaker::Lorem.words(2).join
      post_params[:password_confirmation] = post_params[:password]
      @post = Post.create(post_params)
    end
  
end
