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
As a bowler
so that I can start a new game
I'd like an empty scorecard

As a bowler
so that I know how well I've played
I'd like to input my scores and see the result

As a bowler
so that I can increase my score for a frame
I'd like to receive a bonus for bowling a spare

As a bowler
so that I can maximise my score
I'd like to receive a bonus for bowling a strike

As a bowler
so that I can score highly or bowl a perfect game
I'd like spare and stike bonuses to apply in the 10th frame
```
</details><br>

## Getting started

### Installation

### Usage example

## Testing

