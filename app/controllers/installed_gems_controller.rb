class InstalledGemsController < ApplicationController

  def show
    @installed_gem = InstalledGem.find(params[:id])
  end
end