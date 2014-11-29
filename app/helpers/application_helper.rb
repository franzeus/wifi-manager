module ApplicationHelper

	def full_title(page_title)
		base_title = "WiFi Manager"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"

		end
	end

	def start_connection(host, username, password)
		require "net/ssh/telnet"

		session = Net::SSH.start(host,username, :password => password)
		conn = Net::SSH::Telnet.new("Session" => session)
		result_ssid = conn.cmd('wl ssid')
		#result_eth1_status = conn.cmd('wl -i eth1 status')
		#result_eth2_status = conn.cmd('wl -i eth2 status')
		result_arp = conn.cmd('cat /proc/net/arp')
		ssid = result_ssid.split("\n")
	#	return ssid[1]
			
		return result_arp
	#	return result_eth2_status
	#	conn.close
	end
end
