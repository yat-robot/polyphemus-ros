
# Polyphemus ROS2 environment

## Run ROS2 agent

```sh
ros2 run micro_ros_agent micro_ros_agent [parameters]
```

Available arguments (per transport):
- COMMON
    - -h/--help.
    - -m/--middleware <value> (ced, dds, rtps) [default: 'dds'].
    - -r/--refs <value>.
    - -v/--verbose <value> ( - ) [default: ''].
    - -d/--discovery <value> [default: '7400'].
- IPvX (udp4, udp6, tcp4, tcp6)
    - -p/--port <value>.
- SERIAL (serial, multiserial, pseudoterminal)
    - -b/--baudrate <value> [default: '115200'].
    - -D/--dev <value>.  * CAN FD (canfd)
    - -D/--dev <value>

Serial connection example:

```sh
ros2 run micro_ros_agent micro_ros_agent --baudrate 115200 --dev /dev/ttyACM0
```

## Basic usage

```sh
ros2 topic list
ros2 topic echo /cubemx_publisher
```