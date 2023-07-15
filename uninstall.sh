settings put system vivo_gamethermal_switch 1
settings delete system debug.composition.type
settings delete global hwui.disable_vsync
settings delete global debug.cpurend.vsync
settings delete global debug.sf.enable_gl_backpressure
settings delete global ro.config.hw_fast_dormancy
settings delete global persist.sys.purgeable_assets
settings delete global debug.gralloc.enable_fb_ubwc
settings delete global ro.config.hw_power_saving
settings delete global ro.config.hw_quickpoweron
settings delete global debug.hwui.renderer
settings delete system ai_turbo_enabled
settings delete global cached_apps_freezer
settings delete global debug.sf.enable_gl_backpressure
settings delete global enable_gpu_debug_layers
settings delete global app_memory_compression
settings delete secure adaptive_sleep
settings delete global app_memory_compression
settings delete global accelerated_enabled_for_all
settings delete system gamewatch_game_target_fps
settings delete global debug.sf.latch_unsignaled
settings delete global sys_uidcpupower
settings delete global rate
settings delete global cl_cmdrate
settings delete global cl_updaterate
settings delete global fps_max
settings delete global ex_interp
settings delete global gamewatch_game_target_fps
settings delete global ro.surface_flinger.max_frame_buffer_acquired_buffers
settings delete global video.accelerate.hw
settings put system is_game_mode 0
settings put global game_accelerator_state 0

if [ "$(id -u)" == "0" ]; then
pm enable --user 0 com.qualcomm.qti.qcolor
fi