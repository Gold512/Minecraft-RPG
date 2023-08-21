# Info

`ID` system 
>1 digit type  
>2 digit element/weapon(for melee)   
>3 digit attack  

## formulas

### Cooldown 
> the cooldown will scale linearly with the casting as it ascends to _`F`<sub>`t`</sub>_

cooldown =  _`B`<sub>`t`</sub>_ `-` `[`_`B`<sub>`t`</sub>_ `-` _`F`<sub>`t`</sub>_`]` `/` `[`_`F`<sub>`c`</sub>_ `-` _`B`<sub>`c`</sub>_`]` `*` `min(`_`x`_ `-` _`B`<sub>`c`</sub>_`, `_`F`<sub>`c`</sub>_ `-` _`B`<sub>`c`</sub>_`)`

> note: _`B`<sub>`t`</sub>_ `>` _`F`<sub>`t`</sub>_ since as the player's casting increasess, the cast time will decrease

_`B`<sub>`t`</sub>_ = Base time  
_`B`<sub>`c`</sub>_ = Base casting  
_`F`<sub>`t`</sub>_ = Final time  
_`F`<sub>`c`</sub>_ = Final casting  
_`x`_ = current casting

### level xp 

`L(`_`a`_`, `_`b`_`) = `_`b`_`(`_`b`_` + 1) + 18`_`b`_` - [ `_`a`_`(`_`a`_`+1) + 18`_`a`_` ]`
> Simplified : `L(`_`a`_`, `_`b`_`) = - `_`a`_`^2 + `_`b`_`^2 -19`_`a`_` + 19`_`b`_

since the amount of xp to go from level `0` to level _`n`_ is given by `f(n) = n*(n + 1)`, `L(`_`a`_`, `_`b`_`) = f(b) - f(a)`

## Definitions
### Tier
> Global system serving as a rough guide of the resource consumption and power of a spell/skill

### Category
> Subdivision, mostly applying to spells (ie fire and soulfire)

# Quick Nav
- [magic [`1`]...](#magic)
    - [fire  [`101`]...](#fire-101)
        - [category 1](#category-1-fire-1011)
        - [category 2](#category-2-soulfire-1012)
    - [wind [`101`]...](#fire-102)
        - [category 1](#category-1-wind-1021)
        - [category 2](#category-2-wind-1022)

# Magic `1`...
id   | element 
---: | ---
`1`  | fire 
`2`  | water
`3`  | air 
`4`  | earth
`5`  | light
`6`  | dark
`7`  | ender

## Fire: `101`...
### Category 1 (Fire) `1011`...
id       | name            | tier |  mana | ct    | ct (max)
-------: | --------------- | ---- | ----: | ----: | ---: 
`101101` | small_fireball  |    1 |    10 |     2 | 
`101102` | fire_beam       |    2 |    25 |     4 | 
`101103` | eruption        |    3 |    80 |     5 | 
`101104` | large_fireball  |    3 |    60 |     7 | 
`101105` | flame_spray     |    3 |    45 |     6 |
`101106` | meteor          |    8 | 10000 |    30 |

### Category 2 (SoulFire) `1012`...
id       | name               | mana | ct    | ct (max)
-------: | ---------------    | ---: | ----: | ---: 
`101201` | soulfire_beam      |  120 |    10 |  
`101202` | soulfire_shockwave |  350 
`101203` | soulfire_blast     |  250 |    12 | 
`101204` | soulfire_spray     |  400
`101204` | recursive_sf_beam  |  500 |

> Note recursive soulfire beam might be moved to water 

### Category 3 (DragonFire) `1013`...
id       | name               | mana | ct    | ct (max)
-------: | ---------------    | ---: | ----: | ---: 
`101301` | dragon_fireball    | 2500 |    40 | 
`101301` | dragon_fire_beam   | 6000 |    80 | 
`101302` | dragon_breath
---
## Water: `102`...
### Category 1 (Water) `1021`...
id       | name            | tier | mana | ct    | ct (max)
-------: | --------------- | ---- | ---: | ----: | ---: 
`102101` | water_beam      |      |   40 |     5 | 
`102102` | water_missile   |      |   80 |     3 | 

---
## Air: `103`...

### Category 1 (Wind) `1031`
id       | name            | tier | mana | ct    | ct (max)
-------: | --------------- | ---- | ---: | ----: | ---: 
`103101` | boost           |      |   60 |     4 | 
`103102` | wind_blade      |      |   20 |     3 | 
`103103` | whirlwind       |      |   75 |     6 | 
`103104` | wind_blast      |      |   50 |     5 | 

### Category 2 (Wind) `1032`
id       | name            | tier | mana | ct    | ct (max)
-------: | --------------- | ---- | ---: | ----: | ---: 
`103201` | dash
`103202`

## Earth: `104`...
### Category 1 (Earth) `1041`

id       | name            | tier | mana | ct    | ct (max)
-------: | --------------- | ---- | ---: | ----: | ---: 
`104101` | dripstone_drop  |      |   40 |     3 | 
`104102` | spike_launch    |      |   50 |     8 |
`104103` | earth_shield    |      |   80 |     6 | 

## Light: `105`...
### Category 1 (Light) `1051`

id       | name            | tier | mana | ct    | ct (max)
-------: | --------------- | ---- | ---: | ----: | ---: 
`105101` | light_ray       |      |   30 |     3 | 
`105102` | lesser_healing  |      |  150 |    20 | 