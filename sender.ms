bind('async_player_chat', null , null, @event) {
	set_timeout(50, closure(){
	
		@player = @event['player'];
		@channel = set_placeholders(@player, '%townychat_channel_name%');
		
		#This is the channel to send messages from.
		if(@channel == 'general') {
		
			@compiled = byte_array();
			@payload = byte_array();
			
			@chat = @event['message'];
			#This goes before the messages sent out from your server
			@preface = '&8[&7ServerName&8] &7[&f@&7] '
			#This goes between the senders' username and their message
			@afterface = '&8: &7'
			#This is a world on your server.
			@world = 'world';
			@tag = vault_user_prefix(@world, @player);
			
			@message = @preface.@tag.@player.@afterface.@chat;
					
			ba_put_string(@payload, @message);
		
			ba_put_string(@compiled, 'Forward');
			ba_put_string(@compiled, 'ALL');
			ba_put_string(@compiled, 'Chat');
			ba_put_short(@compiled, array_size(@payload));
			
			ba_put_bytes(@compiled, @payload);
	
			if(is_channel_registered('BungeeCord')) {
				send_plugin_message(@player, 'BungeeCord', @compiled);
				unregister_channel('BungeeCord');
			} else {
				register_channel('BungeeCord');
				send_plugin_message(@player, 'BungeeCord', @compiled);
				unregister_channel('BungeeCord');
			}
		}
	})
}
