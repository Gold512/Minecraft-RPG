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

## Fire: `101`...
### Category 1 (Fire) `1011`...
id       | name            | category | tier | mana | cd    | cd (max)
-------: | --------------- | ------   | ---- | ---: | ----: | ---: 
`101101` | small_fireball  |          |      |   10 |     2 | 
`101102` | fire_beam       |          |      |   25 |     4 | 
`101103` | eruption        |          |      |   80 |     5 | 
`101104` | large_fireball  |          |      |   60 |     7 | 
`101105` | flame_spray     |          |      |   45 |     6 | 

### Category 2 (SoulFire) `1012`...
id       | name               | mana | cd    | cd (max)
-------: | ---------------    | ---: | ----: | ---: 
`101201` | soulfire_beam      |  120 |       |  
`101202` | soulfire_shockwave | 
`101203` | soulfire_blast     |  250 | 
`101204` | soulfire_spray     |  
`101204` | recursive_sf_beam  |  500 |

> Note recursive soulfire beam might be moved to water 

### Category 3 (DragonFire) `1013`...
id       | name               | mana | cd    | cd (max)
-------: | ---------------    | ---: | ----: | ---: 
`101301` | dragon_fire_beam
`101302` | dragon_spray
`101303` | dragon_breath
`101304` | dragon_fireball | 12500
---
## Water: `102`...
### Category 1 () `1021`...

---
## Air: `103`...

### Category 1 (Wind) `1031`
id | name
---: | ---
`103101` | boost
`103102` | wind_blade
`103103` | whirlwind
`103104` | wind_blast

### Category 2 (Wind) `1032`
id | name
---: | ---
`103201` | dash
`103202`