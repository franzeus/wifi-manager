class Router < ActiveRecord::Base
	belongs_to :building
        after_save :update_router_building

	private
          def update_router_building 
	    @router = Router.find(self.id)
	    @where = Building.find_by_name(@router.building.name)
	    puts ":::::" + @where.name
	    unless @router.building_name != nil
	    	@router.update_attribute(:building_name, @where.name )
	    end
	  end
#	  def save_building_name
#	    @router = Router.find(self.id)
#	    @router.building_name = @router.building.name
#	    unless @router.building
#	  end
end
