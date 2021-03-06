# item 
This document describes the structure of mcrpg data 
as well as the properties an item may have  
the root tag will be Item.tag.mcrpg 

private properties are properties that will not be set upon creation of the item but will be used within the program itself

## mcrpg object
key | type | description
--- | ---  | ---
`skills` | an `Array` of [`skill objects`](#skill-object) | what active skills the item should have
`name`     | `String` | the snakecase name of the item
`displayName` | `String` | a text component string containing the name of the item to display (with formatting etc)
`rarity` | `Int` | the rarity of the item as a number will be used for calculating rarity 
`description` | `Array` of `Text Component`s | an array of text components which will be the description of the object (each element of the array is a line)
`event` | [`event object`](#event-object) | Object describing the events that can be triggered by the item


---
private properties

key | type | description
--- | ---  | ---
`selectedSkill` | `String` | a copy of the skill object that is currently selected
`skillIndex` | `Int` | the index of the skill array that is currently selected

## skill object 
key | type | description
--- | ---  | ---
`id` | `Int` | the numerical id of the skill, see [skill ids](#skill-ids)
`name` | `String` | snakecase name of the item
`displayName` | `String` | a text component comtaining the name to display
`mana` | `Int` | the amount of mana used for the skill (this value is variable as there may be buffs or debuffs that change mana cost)
`cd` | `Int` | the amount of time in ticks that the skill's cooldown will last for (amount of time AFTER the skill is used at which no other skill may be used during this time period)
`cast` | `Int` | the amount of time in ticks that the skill takes to be used (amount of time before the skill is able to be cast (somewhat like charging a bow))
 

## event object
key | type | description
--- | ---  | ---
`right` | `Boolean` | indicates whether the item has a right click event 
`switch` | `Boolean` | indicates whether the item has a switch item event
`shiftSwitch` | `Boolean` | indicates whether the item has a shift+switch item event 

---
private properties
key | type | description
--- | ---  | ---
`currentHand` | `Int` | the current hand of the item (1 for mainhand, 2 for offhand)