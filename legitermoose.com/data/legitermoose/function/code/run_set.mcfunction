execute unless data storage legitermoose:code code.instructions[] run return 1

data modify storage legitermoose:code code.instruction set from storage legitermoose:code code.instructions[0]
data remove storage legitermoose:code code.instructions[0]

function legitermoose:code/run_instruction

function legitermoose:code/run_set