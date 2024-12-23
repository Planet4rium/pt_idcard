# pt_idcard

Instalation:
- add template/pt_idcard folder to you chat resource (Default chat > chat/dist)
- add to your chat html head:
```html
<link rel='stylesheet' type='text/css' href='pt_idcard.css'>
<link rel='stylesheet' type='text/css' href='pt_badge.css'>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=PT+Mono&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
```
- add folder to file loading to chat fxmanifest ('path_to_folder/pt_idcard/*')
- add client export (`pt_idcard.showCard`) to your card items and disable consume on use in `ox_inventory/data/items.lua`. Example:
```lua
['idcard'] = {
    label = 'Identification',
    weight = 50,
    consume = 0,
    client = {
        export = 'pt_idcard.showCard'
    },
    stack = false,
},
```