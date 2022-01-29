# Bowling Challenge in Ruby

## The Task

This app will count and sum the scores of a bowling game for one player.

## Bowling — game structure

### Strikes

The player has a strike if he knocks down all 10 pins with the first roll in a frame. The frame ends immediately (since there are no pins left for a second roll). The bonus for that frame is the number of pins knocked down by the next two rolls. That would be the next frame, unless the player rolls another strike.

### Spares

The player has a spare if the knocks down all 10 pins with the two rolls of a frame. The bonus for that frame is the number of pins knocked down by the next roll (first roll of next frame).

### 10th frame

If the player rolls a strike or spare in the 10th frame they can roll the additional balls for the bonus. But they can never roll more than 3 balls in the 10th frame. The additional rolls only count for the bonus not for the regular frame count.

```
10, 10, 10 in the 10th frame gives 30 points (10 points for the regular first strike and 20 points for the bonus).
1, 9, 10 in the 10th frame gives 20 points (10 points for the regular spare and 10 points for the bonus).
```

### Gutter Game

A Gutter Game is when the player never hits a pin (20 zero scores).

### Perfect Game

A Perfect Game is when the player rolls 12 strikes (10 regular strikes and 2 strikes for the bonus in the 10th frame). The Perfect Game scores 300 points.

In the image below you can find some score examples.

More about ten pin bowling here: http://en.wikipedia.org/wiki/Ten-pin_bowling

<details><summary><b>Ten pin score example</b></summary>
![Ten Pin Score Example](images/example_ten_pin_scoring.png)</details><br>

## Approach

The focus for this challenge is to write high-quality code by applying the following:

- Use diagramming to plan your approach.
- TDD your code
- Focus on testing behaviour rather than state
- Commit often, with good commit messages
- Single Responsibility Principle and encapsulation
- Clear and readable code

<details><summary><b>User Stories</b></h2></summary>

```
1)
As a bowler
so that I can start a game of bowling
I'd like an empty scoresheet

2)
As a bowler
so that I can keep track of my score
I'd like to record the the number of pins I knock down after a roll.

3)
As a bowler
so that I can increase my score
I'd like to record 2 rolls within a frame.

4)
As a bowler
so that I can recieve bonuses
I'd like to record a spare or a strike

5)
As a bowler
so that I track an entire game
I'd like to record the my scores within 10 frames.

6)
As a bowler
so that I can maximise my score
I'd like my score to include bonuses if I get a spare or a strike.

7)
As a bowler
so that I can see the result of a game
I'd like to see my final score.

8)
As a bowler
so that I add extra points to my game
I'd like record any bonus roll I have in the 10th frame.


9)
As a bowler
so that I know what score I have
I'd like to see my current total score.

10)
As a bowler
so that I know how far into a game I am
I'd like to see the number of the frame and roll I'm currenty playing.
```
</details><br>

## Getting started

### Installation

### Usage example

## Testing

