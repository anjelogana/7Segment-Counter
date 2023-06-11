Project from https://nandland.com/,

This project leverages Verilog to design a sophisticated logic system utilizing Look-Up Tables (LUTs) and Registers. 
The objective is to implement a switch-controlled counter that accurately counts from 0 to 9 and displays the count on a 7-segment display.

This project involves three essential files. 
Firstly, "Counter.v" serves as the top-level module, encompassing the counter logic register creation.
Secondly, "BinaryTo7Seg.v" handles the conversion of the counter output into the appropriate hex encoding for the 7-segment display. 
Lastly, "DebounceSwitch.v" focuses on debouncing the switch utilized in our Field-Programmable Gate Array (FPGA) setup.

By integrating these components, we achieve a comprehensive and efficient system for our project.
