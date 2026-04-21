## Admin Commands
ADC (ADmin Commands) are commands for managing players. 

### Banning a player
Banning a player is done by calling the function `legitermoose:adc/ban_player` with argument `reason`.

```
/execute as <player to be banned> run function legitermoose:adc/ban_player {reason:"<reason>"}
```

### Unbanning a player
Unbanning a player is done by calling the function `legitermoose:adc/unban_player` without arguments

```
/execute as <player to be unbanned> run function legitermoose:adc/unban_player
```