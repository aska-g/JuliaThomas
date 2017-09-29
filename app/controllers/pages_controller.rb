class PagesController < ApplicationController
  def home
    @wedding = Wedding.first
    @bride = User.find_by(role: "Bride")
    @groom = User.find_by(role: "Groom")
  end
end
