class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    render json: @entries
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      render json: @entry
    else
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:date, :distance)
  end
end
