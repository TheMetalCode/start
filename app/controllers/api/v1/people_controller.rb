class Api::V1::PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]
  respond_to :json

  # GET /people
  def index
    respond_with Person.all
  end

  # GET /people/1
  def show
    respond_with @person
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      respond_with @person, status: :created, location: [:api, :v1, @person]
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      respond_with @person, status: :ok, location: [:api, :v1, @person]
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def person_params
    params.require(:person).permit(:name, :age)
  end
end
