# SpaceShooter

<h1> Design Document </h1>

<b> Gameplay </b>
Top-down space shooter. Maneuver around and shoot back at enemies who is trying to destroy you. The game is point based. Objective is to kill as many enemies as you can while surviving for as long as possible. 


<b> Controls </b>
Control the player with the help of the WASD keys. W is forward throttle, S is reverse, A and D rotates the ship. If you reach the edge of the screen you are either stopped of forced back. You shoot with Space Bar and if you die, you reset the game with R.


<b> Features: </b>
* Powerups
* Enemy types
* Health Drops


<b> Powerups: </b>

<b> Shield </b>
An ellipse that appears around the player’s ship. Protects you from x amount of shots. The StrokeWeight of the ellipse is reduced depending on how much hp the shield has left.

<b> Multishot </b>
When you shoot you fire three shots at once in a spreading fashion. The first shot is straight while the other two are in a 45 degree angle out from the first.

<b> Machinegun mode </b>
For a limited time, your fire rate is tripled. While this effect is active your ship flashes in a different color.

<b> Health Drop </b>
Restores x amount of health to the player.


<b> Enemy types: </b>

Standard base enemy. 
3 HP, movement speed 2.
Tries to stay a certain distance from the player and moves away if it gets close.

Tanky but slow enemy. 
10 HP, movement speed 1.
Moves towards the player ship without stopping and tries to crash into it. If it does it’s pushed back a bit and slowly starts to follow the player again.

Fragile but fast enemy. 
1 HP, movement speed 4. Actively tries to avoid getting hit.
Moves in closer to the player than the standard enemy but stays at a distance.



<h1> Credits </h1>

Music: https://opengameart.org/content/5-chiptunes-action

Player Spaceship model: https://opengameart.org/content/spaceship-4

EnemyStandard model: https://opengameart.org/content/spaceship-tutorial-0

EnemyFast model: https://opengameart.org/content/spaceship-5

EnemyTank model: https://opengameart.org/content/asteroid-generator-and-a-set-of-generated-asteroids


<h1> How to import sound to processing </h1>

Open Processing

Go to Sketch > Import Library > Add Library

Search for sound and install
