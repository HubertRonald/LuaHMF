# LuaHMF
Lua Helper Math Functions (LuaHMF) is a small library which offers a clean, minimalistic but powerful API for greatest common divisor, least common multiple for two or more numbers and coming soon more functions.

## Usage
Add [LuaHMF.lua](https://github.com/HubertRonald/LuaHMF/blob/master/LuaHMF.lua) file inside your project.<br/>
Call it using __require__ function.</br>
It will return a table containing a set of functions.

## Full API Overview

* gcd = function (m, n)                   : helper greatest common divisor
* lcm = function (m, n)                   : helper least common multiple
* mgcd = function (list)                  : greatest common divisor for two and more than two numbers
* mlcm = function                         : least common multiple for two and more than two numbers

## Sample

```
--[[
--------------------------------------------
  sample
--------------------------------------------
]]
local hmf = require(dirLuaHMF)
print( hmf.mgcd({72,9}) )
-- 72,9: 9

print( hmf.mgcd({72,9,12,6,54}) )
-- 72,9,12,6,54: 3

print( hmf.mlcm({72,9,12,6,54}) )
-- 72,9,12,6,54: 216

print( hmf.mlcm({9,12}) )
-- 9,12: 36
--------------------------------------------
```

## Built With

* [Visual Studio Code](https://code.visualstudio.com/) - The web framework used

## Authors
* **paulogp** - *Initial work* - [paulogp](https://github.com/paulogp/Lua/tree/master/math)
* **Hubert Ronald** - [HubertRonald](https://github.com/HubertRonald)

See also the list of [contributors](https://github.com/HubertRonald/LuaHMF/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
