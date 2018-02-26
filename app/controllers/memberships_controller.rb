class MembershipsController < ApplicationController
  def index
    @memberships = Membership.includes(:player, :league)
  end
end