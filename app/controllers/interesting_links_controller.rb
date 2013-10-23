class InterestingLinksController < ApplicationController
  def index
    @interesting_links = InterestingLink.all
  end
end
