class RouterManagersController < ApplicationController
  include ActionController::Live

  def send_data
	response.headers['Content-Type'] = 'text/event-stream'
	#2.times {
	#	response.stream.write "#{params[:message]}\n"
		#response.stream.write "hi"
	#	sleep 1
	#}
	response.stream.close
  end
  
  def show
	require "net/ssh/telnet"  
	$router_managed = Router.find(params[:id])
	$session = Net::SSH::Telnet.new("Host" =>  $router_managed.ip, "Username" => "root", "Password" => "admin")
	@ssid = $session.cmd('wl ssid')
  end
  def get_status
	$session.cmd("parse wl status")
  end
  def change_ssid
  end
  def get_connected_devices

  end
  def get_syslog
	  @syslog = $session.cmd('/jffs/gsyslog')
	  @syslog_per_line = @syslog.split("\n")
  end
  def get_dns_lease
  	@dns_lease = $session.cmd('/jffs/gdnslease')
	@dns_lease_per_line = @dns_lease.split("\n")
  end
  def watch_rx
    @rx = $session.cmd('/jffs/wrx_bytes')  
  end
  def get_tx_rx
  end
  def toggle_on_off
  end
  def reboot
  end
  def send_ssh_key
  end

end
