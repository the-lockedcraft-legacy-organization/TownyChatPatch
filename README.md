## Description
A quick MethodScript to selectively send TownyChat across bungee. 

## Background
 - [TownyChat](https://github.com/TownyAdvanced/TownyChat) is a chat management plugin by LlmDl
 - It is the only chat plugin with true integration for towny's features, however, it is not (by default) bungee compatible.
 - Some bungee servers have a central "network" channel to enable cross-server communication.
 - Many chat plugins allow communications across bungee proxies, but only with other instances of themselves
   - In most cases, it is not practical to have another chat plugin operating alongside BungeeChat within the same instance.
 - For small servers such as hubs, tools such as [BungeeChatBridge](https://gitlab.com/ranull/minecraft/bungeechatbridge/) can be used to foward all chat to other servers.
   - This works for *receiving* network chat on a TownyChat-powered server, but does not allow *sending* chat.
     - Attempting to send messages from towny across the network with BCB will display *all* messages, including staff chats.
 - This is a MethodScript to selectively foward text from a selected Towny channel across all servers on the proxy.
  - By default, MethodScript has no way to directly tap into TownyChat's channels, and to get around this, PlaceHolderAPI is used.

### Instructions
1. Sender.ms goes in the main.ms of your Towny server.
2. Receiver.ms goes in the main.ms of all other servers on the proxy.
3. the `@preface`, `@afterface`, `@world`, and `@channel` tags in Sender.ms will need to be customized for your implementation.

# Depends on
__All Instances__
- [Methodscript](https://builds.enginehub.org/job/commandhelper)

__Towny Instance__
- [Methodscript](https://builds.enginehub.org/job/commandhelper)
  - [The Vault Extension](https://letsbuild.net/jenkins/job/CHVault/)
  - [The Placeholder API Extension](https://letsbuild.net/jenkins/job/CHPlaceholderAPI/)
- [Placeholder API](https://github.com/PlaceholderAPI/PlaceholderAPI/releases)
  - [The TownyChat Expansion](https://api.extendedclip.com/expansions/townychat/)
  
  ## Changelog
  #### [Version 1.0]
  - Wrote and tested this script.
  - Released to github.
  
