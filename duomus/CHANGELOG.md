# Changelog

## [v0.1.3] - 2026-04-21

- Check if the ttyAMA3 device exists for the UART. If not, use ttyAMA0.

## [v0.1.2] - 2026-04-14

- Increase the max body size for the nginx proxy configuration to 2MB. Needed for the firmware upload.
- Check if the ttyS0 device exists for the UART. If not, use ttyACM0.

## [v0.1.1] - 2026-03-04

Allow the addon to access the UART on a Raspberry Pi (/dev/ttyS0).

## [v0.1.0] - 2026-02-10

Initial beta release.
Updated: ssh server configuration for the addon (allow sftp).

## [v0.0.7] - 2026-02-10

Added: ssh server configuration for the addon.

## [v0.0.6] - 2026-02-10

Updated the nginx proxy configuration.

## [v0.0.5] - 2026-02-03

Updated the nginx configuration.

## [v0.0.4] - 2026-02-03

Added ingress configuration.

## [v0.0.3] - 2026-02-03

Added scripts for flash and monitor the ESP.

## [v0.0.1] - 2026-02-03

Initial release

### Changed
