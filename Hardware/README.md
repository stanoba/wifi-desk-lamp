# WiFi Controlled Desk Lamp - Electronic

Electronic is built around **Wemos D1 Mini** which act as brain of the desk lamp. On the PCB we can also find **74HC125D** for 3.3V-5V level-shifting, **MAX4466** as audio input and **TSOP38238** as IR input. Electronic is powered from 5V 2A power adapter and protected by ~1.6A glass fuse (depends on led stripe).

<a href="PCB1.jpg" target="_blank"><img src="PCB1.jpg" width="350" alt="Schematic"></a> <a href="PCB2.jpg" target="_blank"><img src="PCB2.jpg" width="350" alt="Schematic"></a>

---
## Schematic
<a href="schematic.pdf" target="_blank"><img src="schematic.png?raw=true" width="700" alt="Schematic"></a>



## PCB

PCB was designed in Eagle 9.6.2:

<img src="PCB.png" width="350" alt="PCB"> <img src="PCB_components.png" width="350" alt="PCB">


---

## BoM

| **Part** | **Value** | **Package** |
| ---- | ----- | ------- |
| C1 | 1500uF | PANASONIC_G |
| C2, C3 | 100nF | C0603 |
| R1 | 470 | R0603 |
| R2 | 4k7 | R0603 |
| R3 | 10k | R0603 |
| D1, D2, D3 | SS24 | SMB |
| FUSE | 1.6A | 5x20 |
| IC1 | 74HC125D | SO14 |
| IC3 | DS18B20 | TO92 |
| S1 | BTN1 | B3F-31XX |
| JP1 | 1X01 | pinhead |
| LEDS_1 | 1X03 | pinhead |
| LEDS_2 | 1X04 | pinhead |
| MICROPHONE | 1X03 | pinhead |
| PWR_JACK | SPC4077 | con-jack |
| U$1 | WEMOS-D1-MINI | WEMOS-D1-MINI |
| U$2 | TSOP38238 | TSOP18XX |
| U$3 | MAX4466 | module |


