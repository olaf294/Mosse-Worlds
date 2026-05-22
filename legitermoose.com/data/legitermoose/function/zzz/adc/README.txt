## Admin Commands
ADC (ADmin Commands) are commands for managing players. 


### Banning a player
Banning a player is done by calling the function `legitermoose:adc/ban_player` with argument `reason`.


```
/execute as <player to be banned> run function legitermoose:adc/ban_player {reason:"<reason>"}
```


### Unbanning a player
Unbanning a player is done by calling the function `legitermoose:adc/unban_player` without arguments.

```
/execute as <player to be unbanned> run function legitermoose:adc/unban_player
```


### Featuring a World
Featuring a world is done by calling the function `legitermoose:adc/feature_world` with arguments `int world_id` and `string date`.

```
/function legitermoose:adc/feature_world {world_id:1,date:"1/1/26"}
```


### Unfeaturing a World
Unfeaturing a world is done by calling the function `legitermoose:adc/unfeature_world` with argument `int world_id`.

```
/function legitermoose:adc/unfeature_world {world_id:1}
```
