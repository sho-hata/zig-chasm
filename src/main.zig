const std = @import("std");
const emitter = @import("emitter.zig").emitter;

pub fn main() !void {
    const file = try std.fs.cwd().createFile("zig-chasm.wasm", .{ .read = true });
    defer file.close();

    try file.writeAll(&emitter());
}
