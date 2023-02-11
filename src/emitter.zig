const std = @import("std");

pub fn emitter() [8]u8 {
    const magic_module_header = [4]u8{ 0x00, 0x61, 0x73, 0x6d };
    const module_version = [4]u8{ 0x01, 0x00, 0x00, 0x00 };

    return magic_module_header ++ module_version;
}

test "expect emitter returns header and version" {
    try std.testing.expect(emitter().len == 8);
}
