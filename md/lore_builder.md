# Lore Builder 

## Format

>\<item name>   
Skills:  
\<[new line seperated skill list](#skill-list)>  
\<rarity> (\<rarity number>)

## skill list
> [skill name] - [mana cost]❁ [cast time]\<symbol>

A newline sepeated list of all skills the item has

## skill object
|  Name | Type  | Description |
| :---: | :---: | ---         |
| `id`    | int   | numerical id of the skill
| `name`  | string | name skill, all lowercase, underscore seperated
| `displayName` | string | string to display when the skill is selected
| `mana` | int | amount of mana needed to cast the spell
| `time` | int | amount of time in ticks it takes to "charge" up and cast the spell
