class PersonController < ApplicationController
  def create
    if params[:people]=='actor'
      @actor = Actor.new(person_params)

      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end
    end
    if params[:people]=='director'
      @director = Director.new(person_params)

      respond_to do |format|
        if @director.save
          format.html { redirect_to @director, notice: 'Director was successfully created.' }
          format.json { render :show, status: :created, location: @director }
        else
          format.html { render :new }
          format.json { render json: @director.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def person_params
    params.permit( :first_name, :last_name, :birth_date, :description)
  end

end
