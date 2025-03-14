# Finnick4's Ice Boat Racing
This datapack enables server administrators to create an ice boat racing event for their SMP (or other server), allowing checkpoints, highscores, seasonal leaderboards and more! It must however be set up by someone with op.

## Features
- Easily setup your track for this datapack
- Unaffected vanilla gameplay
- Ensure players follow the correct path on your track
- Prevention of players leaving the boat
- Use the built in timer with 2 decimal point accuracy automaticly
- Keep track of everyones highscore
- Prevent players getting stuck in water
- View everyone's highscore in a panel
- Lag efficient design
- Seasonal leaderboard
- Built in advancements (that don't affect vanilla behaviour)

## How to use the datapack

First anyone with OP has to set this datapack up. See heading setup for this!

### Playing the race

To start a race, head towards the start of the race, seat yourself in a boat and hit the text of the starting checkpoint. Row over the start line and the timer begins. Follow the track by getting checkpoints *(pro tip: the next checkpoint is highlighted with golden particles)*. Once you get a new checkpoint, you will be notified about your current time and the checkpoint is saved.
If you finish the race (get the final checkpoint) your time is saved. If you achieved a new personal best, you will also be notified about that. The difference is directly calculated and told to you.

### Edgecases

If you...
- activate a checkpoint that you already have or isn't chronologically next, you will be returned to your last valid checkpoint.
- get stuck in water you will get returned to your last checkpoint as well
- leave the boat at any time for whatever reason, the race is canceled for you. You have to go back to the start and begin anew.

### Player panel

To interact with the datapack, every player has a panel under `/trigger iceboat`. Here they can...

- **View** *(their)* **stats**: See how many races you have started, finished, what your personal all-time and seasonal record is and many more pieces of information in regards to their ice boating career.
- **Show PBs**: See the personal bests of everyone online. The leaderboard only allows for 5 people to be mentioned. Maybe you want to know the time of someone specific that is online.
- **Show leaderboard**: See the leaderboard. Get the top 5 all-time times with whoever got them. Each player can only have one entry and only the best time is displayed here!
- **Show seasonal leaderboard**: A feature of this datapack are the possibility for seasons, in which you have a new leaderboard independent of the all-time leaderboard. You may have achieved a time of 45 seconds in season 1, making this your PB, however to have this time displayed on the seasonal leaderboard of season 2, you have to achieve it again. If you can only manage 50 seconds, this will be your seasonal time.
- **Start race**: If you do not want to hit the start every time, you can use this option. If you only want to type in one command, use `/trigger iceboat set 105`!
- **View credits**: Lets everyone view the credits and who made the datapack. Includes a link to the official [Modrinth page](https://modrinth.com/datapack/f4boats) and [GitHub repo](https://github.com/Finnick4/f4boats/) of this project!

### Admin panel

To ease with setting the datapack up and managing it, there exists an admin panel. To access it, type `/function finnick4:f4boats/admin-panel` Here are the uses for all options mentioned there:

- **Initiate new season**: Immediately end the current season and start a new season. This means the seasonal record of everyone and the seasonal leaderboard is reset. Also applies to offline players.
- **View global statistics**: View the global stats of the server. Adds everything except times from the player menu from each player. Also works when some people are offline.
- **Set highscore**: If you need to overwrite a highscore, use the given command that is then given to you. Change the name of the player in `execute as PLAYERNAME` and set the duration of the new PB in `{d:NEWLENGTH}`. This length is in ticks. To convert seconds to ticks, multiply the number of seconds by 20.
- **Create new checkpoint**: Used for the setup process of a track. View the section for setup for this.
- **Find help**: When in need for help, use this command to get a link to the official [Modrinth page](https://modrinth.com/datapack/f4boats), [GitHub repo](https://github.com/Finnick4/f4boats/) and official Discord server to ask for help.
- **Remove all checkpoints**: Using this kills every loaded checkpoint entity. To complete a clean uninstall, use this. See section uninstalling for more. Also useful for when you messed up whilest spawning checkpoints. You have to manually load every chunk that contains an checkpoint entity to remove them!
- **Datapack Uninstall**: Removes every stored data and scoreboard. See section uninstalling.

## How to use this for events

If you want to host an ice boat racing event on your SMP or server, you have multiple options. There obviously is the common way of saying whoever has the best time wins, but you can also do this with seasons. At the beginning of the event, create a new season in the admin panel and then view the seasonal leaderboard to define the winner or to get whoever was the fastest since the beginning of the season (-> since the beginning of the event).
There is also the possibility of playing the track together, having a tournament and then getting the fastest time by starting a new season before the start of the round. This however you will have to organise yourself.

## Setup

To start using this datapack, download it from the official [Modrinth page](https://modrinth.com/datapack/f4boats), place it in the datapack folder of your world / server and `/reload`.
To detect if a player is at a checkpoint, the datapack checks if a participant is currently two blocks over bedrock. Thus you need to place bedrock under each intended checkpoint. A width of 4 blocks is recommended as to not slide over the checkpoint without triggering it.
Alternatively you can also edit this block in `f4boats/data/finnick4/function/f4boats/on-racers.mcfunction`by editing line 4 to `execute on vehicle at @s if block ~ ~-2 ~ <block id> on passengers (...)`.

Initialise all checkpoints by spawning the entities with the command provided in the admin panel under **create new checkpoint**. To do this, stand on the ice, look into the direction of the following track and execute the command. The direction you face when spawning the checkpoints the direction in which players are rotated when returned to a checkpoint.

> **IMPORTANT**: By design, once a player crosses a checkpoint whilest playing the datapack looks for the **nearest checkpoint within 40 blocks**. Meaning if you have two checkpoints next to another, make sure that there is no possibilities of the edges checking with the other checkpoint. Otherwise it may count it as an invalid checkpoint and return you although you were on track.

If you messed up and want to restart with spawning entities, utilise the remove all checkpoints function from the admin panel. Here again the reminder that you have to load each chunk in which there is a checkpoint entity to kill said entity.

Make sure to also place a checkpoint on the start and finish line. These are automatically detected as start and finish. Once you have done everything mentioned here, the track is ready to go!

## Uninstalling

If you (for whatever reason) want to uninstall this datapack from the world, follow these steps:

### I. Remove checkpoint entities

For the checkpoint system, the game spawns a few entities. To remove them, use the remove all checkpoints option from the admin panel. Reminder: For a clean uninstall you **have** to load every chunk a checkpoint entity is present in. Otherwise it will not get removed.

### (II. Remove bedrock)

In the meantime, you could also remove the for checkpoints necessary bedrock underneath the ice below checkpoints. There is no function to help you there.

### III. Use uninstall function

Use the uninstall function given to you from the admin panel. This removes all data in data storage and all scoreboards. These scoreboards data will reappear once reloaded with the datapack still installed.

### IV. Final step

Remove the datapack from your datapacks folder. If you want to you can join the Discord server and tell me why you got rid of the datapack to maybe improve it in the future.

