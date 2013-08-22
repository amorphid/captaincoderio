class EntriesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to entry_path(@entry), notice: "Entry created successfully"
    else
      render "new"
    end
  end

  def destroy
    @entry.destroy
    redirect_to entries_path, notice: "Entry deleted successfully"
  end

  def edit
  end

  def index
    @entries = Entry.all.order(:created_at).reverse_order
  end

  def new
    @entry = Entry.new
  end

  def show
  end

  def update
    if @entry.update_attributes(entry_params)
      redirect_to entry_path(@entry), :notice => "Entry updated successfully"
    else
      render "edit"
    end
  end

private

  def set_entry
    @entry = Entry.friendly.find(params[:id])
  end

  def entry_params
    params[:entry].permit(:title, :body)
  end
end
