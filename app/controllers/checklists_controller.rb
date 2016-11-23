class ChecklistsController < ApplicationController
  def index
    @checklists = Checklist.all

    render("checklists/index.html.erb")
  end

  def show
    @item = Item.new
    @checklist = Checklist.find(params[:id])

    render("checklists/show.html.erb")
  end

  def new
    @checklist = Checklist.new

    render("checklists/new.html.erb")
  end

  def create
    @checklist = Checklist.new

    @checklist.trip_id = params[:trip_id]
    @checklist.name = params[:name]

    save_status = @checklist.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/checklists/new", "/create_checklist"
        redirect_to("/checklists")
      else
        redirect_back(:fallback_location => "/", :notice => "Checklist created successfully.")
      end
    else
      render("checklists/new.html.erb")
    end
  end

  def edit
    @checklist = Checklist.find(params[:id])

    render("checklists/edit.html.erb")
  end

  def update
    @checklist = Checklist.find(params[:id])

    @checklist.trip_id = params[:trip_id]
    @checklist.name = params[:name]

    save_status = @checklist.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/checklists/#{@checklist.id}/edit", "/update_checklist"
        redirect_to("/checklists/#{@checklist.id}", :notice => "Checklist updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Checklist updated successfully.")
      end
    else
      render("checklists/edit.html.erb")
    end
  end

  def destroy
    @checklist = Checklist.find(params[:id])

    @checklist.destroy

    if URI(request.referer).path == "/checklists/#{@checklist.id}"
      redirect_to("/", :notice => "Checklist deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Checklist deleted.")
    end
  end
end
