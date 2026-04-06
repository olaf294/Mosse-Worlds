data modify storage legitermoose:code code.temp.op set from storage legitermoose:code code.instruction[1]

execute if data storage legitermoose:code code{temp:{op:0}} run function legitermoose:code/instructions/zzzprivate/compare/equals
execute if data storage legitermoose:code code{temp:{op:1}}
execute if data storage legitermoose:code code{temp:{op:2}}
execute if data storage legitermoose:code code{temp:{op:3}}
execute if data storage legitermoose:code code{temp:{op:4}}
execute if data storage legitermoose:code code{temp:{op:5}}

execute if data storage legitermoose:code code