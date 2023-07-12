echo 设置轻触模式，优化触控
settings put system vtouch_switch 1
# -1为关，0常开，1自动，1.0和ocean是-1，3.0是1
echo 垂直同步关
settings put global debug.cpurend.vsync false
settings put global hwui.disable_vsync true
echo 加快渲染速度:
settings put global debug.sf.enable_gl_backpressure 1
echo 使用二重缓冲区
settings put global ro.surface_flinger.max_frame_buffer_acquired_buffers 2
echo 锁定缓冲区
settings put global debug.sf.latch_unsignaled 1
echo 禁用三缓
settings put global ro.sf.disable_triple_buffer 1

echo 已关闭极致性能模式
settings put system power_save_type_performance 0
settings put secure speed_mode_enable 0
echo 已开启原生墓碑-暂停执行已缓存的应用
settings put global "cached_apps_freezer" "device_enabled"
echo 原生墓碑
settings put global "cached_apps_freezer" "enabled"
echo 渲染改为skiavulkan
settings put global debug.hwui.renderer skiavulkan
echo 开启睡眠模式，减少夜间待机耗电（官方这样说的）
settings put system power_sleep_mode_enabled 1
echo 已开启运动模糊、实时模糊，优化视觉显示效果
settings put system motion_blur_state 1
#运动模糊
settings put system realtime_blur_state 1
#实时模糊
settings put global disable_window_blurs 0
#允许窗口级模糊处理
settings put system reduced_dynamic_effects 0
#关闭“减弱动态效果”
echo 开启应用待机:
settings put global "app_standby_enabled" "1"
echo 自适应睡眠:
settings put secure "adaptive_sleep" "valid"
echo
settings put system gamewatch_game_target_fps 0
echo 已关闭 GameWatch 帧率上限
settings put global enable_gpu_debug_layers 0
echo 已开启GPU加速
settings put system debug.composition.type dyn
echo 关闭应用内存压缩:
settings put global "app_memory_compression" "0"
echo 关闭游戏加速引擎
settings put system vivo_gamethermal_switch 0
echo 游戏加速
settings put global game_accelerator_state 1
echo 游戏模式
settings put system is_game_mode 1
echo 关闭ai加速引擎
settings put system ai_turbo_enabled 0
echo
settings put global debug.gralloc.enable_fb_ubwc 1
echo 已降低屏幕功耗，利用UBWC
settings put global persist.sys.purgeable_assets 1
echo 已启用内存回收优化
echo 关闭ZRAM，游戏加载速率提升
settings put global zram_enabled 0