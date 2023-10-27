class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    #@average_age = Comedian.average(:age)
    #there is already a method made for average_age in the model, so it should use that
    @average_age = Comedian.average_age
  end

  def show
    @comedian = Comedian.find(params[:id])
    # @average_special_runtime = @comedian.average_special_runtime
    # @average_special_runtime = @comedian.average_special_runtime.round(2)
    #this is good because it separates calculation to a model method
    # @longest_special = @comedian.longest_special
    # @longest_special = @comedian.specials.order(runtime: :desc).first
    #this is not good because ordering, like calculating, should be a model method
  end
end
