class QueriesController < ApplicationController
  # The landing page: an empty box for any SQL.
  def new
  end

  # Every file in queries/, run fresh on each refresh.
  def index
    @query_files = QueryFile.all
  end

  # The box on the landing page. Runs whatever is typed into it, changes included.
  def create
    @query = Query.new(params[:sql]).run
  end
end
