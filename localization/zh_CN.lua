--除非你清楚自己在做什么，否则请勿复制此本地化文件的结构
--或许可以去试试查看其他模组的？

--非常感谢 @一人之下、@:)、@一朵小花 等人对汉化错误的指正和修改！

if not joy_load_localization then SMODS.load_file("localization/load_localization.lua", "JoyousSpring")() end

return joy_load_localization("zh_CN")
