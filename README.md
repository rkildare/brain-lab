# brain-lab
BrainFuck interpreter written in MatLab/Octave

I don't know, why not?

If you want to use it as a function to call from another script, use the BF.m file and call as shown: BF('input_string'); BF.m will output directly to the console. An example of this is shown in the BF_test.m file.

Note: You must have the BF.m file in the same folder as the file that calls the BF function.

BF_standalone.m is a version that asks for user input but is functionally the same.

<b>NOTE: Due to limitations of MatLab/Octave, this does not support multi-line input. The interpreter works fine with comments but please input the BF code as a single line.
