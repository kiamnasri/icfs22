# icfs22

The paper titled "Hardware Implementation of Fuzzy Controller Using the Lookup Table in 8-bit Microcontroller for the Stability of Inverted Pendulum System" focuses on stabilizing an inverted pendulum—a classic example of a multi-variable, nonlinear, and inherently unstable system—using a fuzzy logic controller implemented on an 8-bit microcontroller. 

_________________________________________________________________________________
Key Highlights:

 * Controller Design: The fuzzy logic controller was developed within the MATLAB toolbox environment. Notably, the mathematical model of the inverted pendulum was considered unknown during the design phase.

* Parameter Tuning: A straightforward tuning algorithm was employed, enabling users to adjust the control system's parameters without delving into the system's dynamics or foundational fuzzy logic concepts.

* Hardware Implementation: The control strategy was transformed into a lookup table and implemented on an 8-bit microcontroller. This approach demonstrated effective real-time fuzzy control of the inverted pendulum.

* Performance Evaluation: Empirical test results indicated that the microcontroller-based fuzzy controller successfully stabilized the inverted pendulum. Moreover, it showcased advantages over traditional classical controllers in this domain.

This research underscores the potential of integrating fuzzy logic controllers into low-cost microcontrollers for managing complex, nonlinear systems like the inverted pendulum.
___________________________________________________________________________________
Usage Instructions
The provided code follows a three-step process, utilizing MATLAB Simulink, MATLAB m-files, and the BASCOM AVR compiler. Follow these steps to execute the code properly:

1. Fuzzy Logic Setup in MATLAB:
    -Open the FUZZY_INVP_v4.fis file in MATLAB's Fuzzy Logic Toolbox.
    -Apply the necessary settings and adjustments before proceeding.
2. MATLAB Code Execution:
    -Run the FUZZY_INVP.m script in MATLAB.
    -This script takes FUZZY_INVP_v4.fis as input and generates a text file named table.txt as output.
3. BASCOM AVR Compilation:
    -Copy the generated table.txt file into the avr code folder.
    -Open and compile the inv_fuzzy.bas file in the BASCOM AVR compiler.
    -The compilation process generates a binary file with a .bin extension.
    -Finally, use an AVR programmer to upload the .bin file to the AVR microcontroller.
   
By following these steps, the fuzzy controller will be successfully implemented on the AVR microcontroller.

____________________________________________________________________________________

 Reference Link:
 APA: Rahmani, S., Nasri, K., & Jafari, A. H. (2023). Hardware implementation of fuzzy controller using the lookup table in 8-bit microcontroller for the stability of inverted pendulum system. In Proceedings of the 22nd Iranian Conference on Fuzzy Systems (pp. 1-10). Kerman, Iran. 

 IEEE: S. Rahmani, K. Nasri, and A. H. Jafari, "Hardware implementation of fuzzy controller using the lookup table in 8-bit microcontroller for the stability of inverted pendulum system," in Proceedings of the 22nd Iranian Conference on Fuzzy Systems, Kerman, Iran, 2023, pp. 1-10. 

 Chicago: Rahmani, Somayeh, Kiam Nasri, and Amir Homayoun Jafari. "Hardware Implementation of Fuzzy Controller Using the Lookup Table in 8-bit Microcontroller for the Stability of Inverted Pendulum System." In Proceedings of the 22nd Iranian Conference on Fuzzy Systems, 1-10. Kerman, Iran, 2023. 

 Vancouver: Rahmani S, Nasri K, Jafari AH. Hardware implementation of fuzzy controller using the lookup table in 8-bit microcontroller for the stability of inverted pendulum system. In: Proceedings of the 22nd Iranian Conference on Fuzzy Systems; 2023; Kerman, Iran. p. 1-10. 

