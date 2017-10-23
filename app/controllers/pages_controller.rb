class PagesController < ApplicationController
  def home
    @wedding = Wedding.first
    @bride = User.find_by(role: "Bride")
    @groom = User.find_by(role: "Groom")
    @ceremony = @wedding.venues.find_by(purpose: "ceremony")
    @reception = @wedding.venues.find_by(purpose: "reception")

    @map_style = "&style=feature:all|element:geometry.fill|weight:2.00&style=feature:all|element:geometry.stroke|color:0x9c9c9c&style=feature:all|element:labels.text|visibility:on&style=feature:landscape|element:all|color:0xf2f2f2&style=feature:landscape|element:geometry.fill|color:0xffffff&style=feature:landscape.man_made|element:geometry.fill|color:0xffffff&style=feature:poi|element:all|visibility:off&style=feature:road|element:all|saturation:-100|lightness:45&style=feature:road|element:geometry.fill|color:0xeeeeee&style=feature:road|element:labels.text.fill|color:0x7b7b7b&style=feature:road|element:labels.text.stroke|color:0xffffff&style=feature:road.highway|element:all|visibility:simplified&style=feature:road.arterial|element:labels.icon|visibility:off&style=feature:transit|element:all|visibility:off&style=feature:water|element:all|color:0x46bcec|visibility:on&style=feature:water|element:geometry.fill|color:0xc8d7d4&style=feature:water|element:labels.text.fill|color:0x070707&style=feature:water|element:labels.text.stroke|color:0xffffff"
  end

  def rsvp
  end
end
