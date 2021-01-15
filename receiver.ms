register_channel('BungeeCord');
bind('plugin_message_received', null, null, @event) {
	@type = ba_get_string(@event['bytes']);
	
	if(@type == 'Chat') {
		@origmsg = ba_get_string(@event['bytes']);
		@modfmsg = substr(@origmsg, 2);
		@output = colorize(@modfmsg);
		broadcast(@output);
	}
}
