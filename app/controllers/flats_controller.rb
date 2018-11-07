class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = seek
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to @flat, notice: 'Who knew heaven was a place on Earth?'
    else
      render :new
    end
  end

  def edit
    @flat = seek
  end

  def update
    @flat = seek
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @flat = seek
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address)
  end

  def seek
    Flat.find(params[:id])
  end
end
