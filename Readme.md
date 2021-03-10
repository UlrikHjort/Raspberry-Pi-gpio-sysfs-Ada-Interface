# Raspberry pi gpio sysfs Ada interface

## Provided functions:

- Export pin
- Unexport pin
- Set pin mode 
- Read pin state
- Write pin state
- Set active low 
- Set edge

See gpio_raspberrypi.ads for function details (parameters etc)

See main.adb for example of usage

Package works with Ada95 and above. Excludes Ada83 due to the usages of child units