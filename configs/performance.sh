echo 开始轻触模式，优化触控手感
settings put system vtouch_switch 0
echo 触摸双击10
settings put secure multi_press_timeout 10
echo 触摸长按200
settings put secure long_press_timeout 200
echo 打开垂直同步
settings put global debug.cpurend.vsync true
settings put global hwui.disable_vsync false
echo 开极致性能模式
settings put secure speed_mode_enable 1
echo 小墓碑
settings put global "cached_apps_freezer" "enabled"
echo 渲染改为skiagl
settings put global debug.hwui.renderer skiaopengl
echo 开启原始睡眠模式
settings put system power_sleep_mode_enabled 1
echo 开应用待机:
settings put global "app_standby_enabled" "1"
echo 自己适应睡眠:
settings put secure "adaptive_sleep" "valid"
echo 智能CPU运行状态模式
settings put global sys_uidcpupower conservative
echo 使用3个重缓冲区
settings put global ro.surface_flinger.max_frame_buffer_acquired_buffers 3
echo 使用三个缓冲区
settings put global ro.sf.disable_triple_buffer 0
# echo 加快渲染速度
# settings put global debug.sf.enable_gl_backpressure 1
# echo SurfaceFlinger锁缓冲区
# settings put global debug.sf.latch_unsignaled 1
echo 关闭ZRAM
settings put global zram_enabled 0
echo 直通
settings put global persist.sys.fuse.passthrough.enable true
echo 开启动态补偿
settings put global ro.vendor.media.video.frc.support true
# echo 系统全局触摸加速
# settings put secure video.accelerate.hw 1
# echo 性能提高
# settings put system debug.performance.tuning 1