-- test by Danewalker

local lpeg = require "lpeg"
local P = lpeg.P
local V = lpeg.V

local next = next

local proto_tbl = { "PROTO" }

local k, v = next(patterns)
local p = V(k)
proto_tbl[k] = v --- Error
