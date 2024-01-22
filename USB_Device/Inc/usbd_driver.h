/*
 * usbd_driver.h
 *
 *  Created on: Jan 22, 2024
 *      Author: direc
 */

#ifndef __USBD_DRIVER_H__
#define __USBD_DRIVER_H__

#include <stdint.h>
#include "stm32f4xx.h"
#include "stm32f407xx.h"

#define USB_OTG_HS_GLOBAL ((USB_OTG_GlobalTypeDef *)(USB_OTG_HS_PERIPH_BASE + USB_OTG_GLOBAL_BASE))
#define USB_OTG_HS_DEVICE ((USB_OTG_DeviceTypeDef *)(USB_OTG_HS_PERIPH_BASE + USB_OTG_DEVICE_BASE))
#define USB_OTG_HS_PCGCCTL ((uint32_t *)(USB_OTG_HS_PERIPH_BASE + USB_OTG_PCGCCTL_BASE))

void initialize_gpio_pins(void);

void initialize_usb_core(void);

void connect(void);

void disconnect(void);




#endif /* __USBD_DRIVER_H__ */
