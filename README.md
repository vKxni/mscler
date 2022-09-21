## <p align="center">Mscler</p>

[![Discord](https://img.shields.io/discord/823720615965622323.svg?style=for-the-badge)](https://discord.gg/UDNcTrBagN)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/vkxni)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)](https://github.com/alelievr/Mixture/blob/master/LICENSE)

<p align="center">
<img src="https://media.discordapp.net/attachments/967869551293370451/1020969841131261962/Susanne_biceps_9a650a0b-84da-4edf-b206-154a8ba2b996.png?width=590&height=590"  alt="sqlt" width="200" height="200"/></a>
<p>

<p align="center"> 
<strong>
Get stronger at the Gym, with Mscler.
</strong>
</p> 

--- 

A few simple functions to help you get stronger at the gym.

- get exercises for specific muscle groups
- explanations, three different levels of difficulty, equipment needed
- seven different types of exercises

and more ...

---

#### Parameters

`name` (optional) - name of exercise. This value can be partial (e.g. press will match Dumbbell Bench Press)

`type` (optional) - exercise type. Possible values are:
```
  cardio
  olympic_weightlifting
  plyometrics
  powerlifting
  strength
  stretching
  strongman
``` 

`muscle` (optional) - muscle group targeted by the exercise. Possible values are:
```
  abdominals
  abductors
  adductors
  biceps
  calves
  chest
  forearms
  glutes
  hamstrings
  lats
  lower_back
  middle_back
  neck
  quadriceps
  traps
  triceps
``` 

`difficulty` (optional) - difficulty level of the exercise. Possible values are:

```
  beginner
  intermediate
  advanced
```

`offset` (optional) - number of results to offset for pagination. Default is 0.

---

#### Usage 

> Random responses
```
iex> Mscler.getName

iex> Mscler.getType

iex> Mscler.getMuscle

iex> Mscler.getDifficulty

iex> Mscler.getEquipment

iex> Mscler.getInstructions
```

> Specific muscles 

`Mscler.<muscle>.<function>`
```
iex> Mscler.Abdominals.getName

iex> Mscler.Biceps.getIntructions

iex> Mscler.Chest.getEquipment

...
``` 

© Mscler 2022, [MIT Licence](/LICENSE), by [@vKxni](https://github.com/vKxni).
