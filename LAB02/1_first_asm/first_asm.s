.syntax unified            # Thumb2的格式名稱

.word 0x20000100           # 初始化MSP的intial value(一個address) 
.word _start               # Reset Vector，存在0x0004，告訴硬體要跳到_start

.global _start             # 全域變數
.type _start, %function    # 指定為funtion
_start:
	b _start               # 持續branch到_start
