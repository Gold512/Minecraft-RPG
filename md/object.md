# item 
This document describes the structure of mcrpg data 
as well as the properties an item may have  
the root tag will be Item.tag.mcrpg 

private properties are properties that will not be set upon creation of the item but will be used within the program itself

> Note: the skill being displayed in the item is optional and may be disabled in settings   
> this will be handled by the lore generator and consequently will not require a property to specify its state

## mcrpg object
key | type | description
--- | ---  | ---
`skills` | an `Array` of [`skill objects`](#skill-object) | what active skills the item should have
`name`     | `String` | the snakecase name of the item
`displayName` | `String` | a text component string containing the name of the item to display (with formatting etc)
`rarity` | `Int` | the rarity of the item as a number will be used for calculating rarity 
`description` | `Array` of `Text Component`s | an array of text components which will be the description of the object (each element of the array is a line)
`event` | [`event object`](#event-object) | Object describing the events that can be triggered by the item
`skillNature` | [`skill nature object`](#skill-nature-object) | object describing the properties of magic skills which will be available for use in conjunction with the item

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
`ct` | `Int` | the amount of time in ticks that the skill's cast time will take (amount of time BEFORE the skill is used at which no other skill may be used during this time period)
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

## skill nature object
> If present indicates that the item interacts with the magic system and allows access the spell selection menu

key | type | description
--- | ---- | ---
`type` | [`Compound Object`](#compound-object) | the type of the skills 
`element` | [`Compound Object`](#compound-object) | the element of the item (mostly for magic) 
`category` | `Int` | the highest category of skills that the item can use (so far mostly for magic)

## cooldown object
> Note: cooldown objects will be resolved to integers   
> The values in between final and base will be used for linear interpolation

key | type | description
--- | ---- | ----
`base_time` | `Int` | 
`final_time` | `Int` | 
`base_casting` | `Int` | 
`final_casting` | `Int` | 

## compound object 
key | type | description
--- | ---- | ---
`id` | `Int` | the numerical id of the object (mostly for internal usage)
`name` | `JSON String` | the name of the object (to display)