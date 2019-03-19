UBLUEPY_MOD_DIR := $(USERMOD_DIR)

CFLAGS_USERMOD += $(addprefix -I$(UBLUEPY_MOD_DIR)/, \
    . \
)


# Sources
SRC_USERMOD += $(addprefix $(UBLUEPY_MOD_DIR)/, \
        modubluepy.c \
        ubluepy_peripheral.c \
        ubluepy_service.c \
        ubluepy_characteristic.c \
        ubluepy_uuid.c \
        ubluepy_delegate.c \
        ubluepy_constants.c \
        ubluepy_descriptor.c \
        ubluepy_scanner.c \
        ubluepy_scan_entry.c \
        ble_drv.c \
)

CFLAGS_USERMOD += -I$(UBLUEPY_MOD_DIR) -DMODULE_UBLUEPY_ENABLED=1 -DRF_STACK_ENABLED=ble_drv_stack_enabled
