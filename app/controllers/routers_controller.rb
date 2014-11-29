class RoutersController < ApplicationController
	before_action :set_router, only: [:show, :edit, :update, :destroy]
        skip_before_action :verify_authenticity_token	

	def index
		@routers = Router.all
	end

	def show 
	end
	def edit
	end

	def new
		@router = Router.new
	end

	def update
		if @router.update(router_params)
			redirect_to routers_path
		else
			render "edit"
		end
	end

	def router_params
		params.require(:router).permit(:building_id, :location, :ip, :building_name)
	end
	def create
		@router = Router.new(router_params)

		if @router.save
			redirect_to routers_path
		else
			render "new"
		end
	end
	def destroy
		Router.find(params[:id]).destroy
		redirect_to routers_path
	end
	
	def turn_off
		require "net/ssh/telnet"

		s = Net::SSH.start("192.168.1.1", "root", :password=>"admin")
		c = Net::SSH::Telnet.new("Session" => s)
		c.cmd('wl radio off')
		c.close
		redirect_to routers_path
	end

	def change_ssid
		require "net/ssh/telnet"
#		@router = Router.find(params[:id])
		s = Net::SSH.start("192.168.1.1", "root", :password=>"admin")
		c = Net::SSH::Telnet.new("Session" => s)
		new_ssid = params[:ssid]
		c.cmd("wl ssid #{new_ssid}")
		c.close
		redirect_to routers_path
	end

	def reboot
		require "net/ssh/telnet"
		s = Net::SSH.start("192.168.1.1", "root", :password=>"admin")
		c = Net::SSH::Telnet.new("Session" => s)
		c.cmd('reboot')
		c.close
		redirect_to routers_path
	end

	def set_router
		@router = Router.find(params[:id])
	end
	
end
