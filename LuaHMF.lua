--[[
	------------------------------------------
	-- change "LuaHMF" in your project
	-- if you need specific another directory
	------------------------------------------
]]
local dirLuaHMF = "LuaHMF"

return {

-- helper greatest common divisor
gcd = function (m, n)
    while n ~= 0 do
		 m, n = n, m%n
	 end
    return m
end

-- helper least common multiple
lcm = function (m, n)
    local hmf = require(dirLuaHMF) -- auto reference
    return (m ~= 0 and n ~= 0) and m * n / hmf.gcd(m, n) or 0
end

-- greatest common divisor for two and more than two numbers
mgcd = function (list)
  local hmf = require(dirLuaHMF) -- auto reference
  local r = #list>=2 and hmf.gcd(list[1],list[2]) or false
  if #list>2 then
      for i=3, #list do r=hmf.gcd(r,list[i]) end
  end
  return r
end

-- least common multiple for two and more than two numbers
mlcm = function (list)
  local hmf = require(dirLuaHMF) -- auto reference
  local r = #list>=2 and hmf.lcm(list[1],list[2]) or false
  if #list>2 then
      for i=3, #list do r=hmf.lcm(r,list[i]) end
  end
  return r
end
}

--[[
local hmf = require(dirLuaHMF)
print( hmf.mgcd({72,9}) )
-- 72,9: 9

print( hmf.mgcd({72,9,12,6,54}) )
-- 72,9,12,6,54: 3

print( hmf.mlcm({72,9,12,6,54}) )
-- 72,9,12,6,54: 216

print( hmf.mlcm({9,12}) )
-- 9,12: 36

]]
