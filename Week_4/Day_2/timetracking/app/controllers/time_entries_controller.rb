class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:id])
    @time_entries = @project.time_entries
  end

  def new
    @project = Project.find(params[:id])
    @time_entry = @project.time_entries.new
  end

  def create
    @project = Project.find(params[:id])
    @entry = @project.time_entries.create(
    hours: params[:time_entry][:hours],
    minutes: params[:time_entry][:minutes],
    datetime: params[:time_entry][:datetime]
    )

    if @entry
      redirect_to action: 'index',
                  controller: 'time_entries',
                  project_id: @project.id

    else
      render 'new'
    end
  end

end
