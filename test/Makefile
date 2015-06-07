SOURCES=1for.lua complex_if.lua ifs.lua locals_2.lua primitive.lua \
	breaks.lua expression.lua locals.lua loop.lua
BYTECODE=1for.luc complex_if.luc ifs.luc locals_2.luc primitive.luc \
	breaks.luc expression.luc locals.luc loop.luc

stripped: OUT_DIR=stripped/
stripped: CMD=luajit -b
stripped: $(BYTECODE)

not_stripped: OUT_DIR=not_stripped/
not_stripped: CMD=luajit -bg
not_stripped: $(BYTECODE)

.FORCE:

1for.luc: 1for.lua .FORCE
	$(CMD) 1for.lua $(OUT_DIR)1for.luc

complex_if.luc: complex_if.lua .FORCE
	$(CMD) complex_if.lua $(OUT_DIR)complex_if.luc

ifs.luc: ifs.lua .FORCE
	$(CMD) ifs.lua $(OUT_DIR)ifs.luc

locals_2.luc: locals_2.lua .FORCE
	$(CMD) locals_2.lua $(OUT_DIR)locals_2.luc

primitive.luc: primitive.lua .FORCE
	$(CMD) primitive.lua $(OUT_DIR)primitive.luc

breaks.luc: breaks.lua .FORCE
	$(CMD) breaks.lua $(OUT_DIR)breaks.luc

expression.luc: expression.lua .FORCE
	$(CMD) expression.lua $(OUT_DIR)expression.luc

locals.luc: locals.lua .FORCE
	$(CMD) locals.lua $(OUT_DIR)locals.luc

loop.luc: loop.lua .FORCE
	$(CMD) loop.lua $(OUT_DIR)loop.luc

clean:
	rm stripped/*.luc
	rm not_stripped/*.luc
