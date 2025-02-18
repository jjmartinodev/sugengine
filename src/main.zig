const std = @import("std");
const ziglua = @import("ziglua");

const Lua = ziglua.Lua;

fn fad(lua: *Lua) i32 {
    const a = lua.toInteger(1) catch 0;
    const b = lua.toInteger(2) catch 0;
    lua.pushInteger(a + b);
    return 1;
}

pub fn main() anyerror!void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer _ = gpa.deinit();

    var lua = try Lua.init(allocator);
    defer lua.deinit();

    lua.openBase();

    lua.pushFunction(ziglua.wrap(fad));
    lua.setGlobal("fad");

    try lua.doString("print(fad(1,2))");
}
