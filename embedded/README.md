Embedded System
Responsible for collecting data via connected sensors, and transmitting wirelessly. the system also provides modular architecture for future hardware expansion.

Platform:
Mircocontroller: ESP32 - 
Will serve as the main processing unit due to its wifi capabilities, low power consumption and compact build design, and support for a range of GPIOs.

Simulation:
Wokwi. - 
will be used to simulate the ESP32 and connected sensors to help further develop and improve the system along with its firmware and debugging.

Purpose:
Environmental Monitoring by gathering data from the sensors attached to the system and to visualize and analize the conditions.

Sensors:
Temperature
Humidity
Light

additional sensors may be added during development process and will be updated accordingly and depending on the finished output.

Communication:
WiFi - used to connect the device to the local network
MQTT - lightweight messaging protocol for transmitting sensor data.

Firmware Responsibilities
The embedded firmware will:

- Initialize connected sensors.
- Periodically collect environmental data.
- Validate sensor readings.
- Publish data to the MQTT broker.
- Handle Wi-Fi connectivity and automatic reconnection.
- Report device status for monitoring and diagnostics.

Future Enhancements
Potential improvements include:

- Support for additional environmental sensors.
- Local data buffering during network outages.
- Over-the-Air (OTA) firmware updates.
- Low-power operation for battery-powered deployments.
- Sensor calibration and fault detection.
