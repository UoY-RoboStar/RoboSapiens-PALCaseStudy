# RoboSapiens-PAL Case Study

This repository is designed to store all files relevant to the RoboSapiens PAL case study.

## Directory Structure

1. System Models
	1. `RoboArch`: Artifacts related to the RoboArch model capturing the architecture of the case study.
	2. `RoboChart`: Artifacts related to the RoboChart model capturing the behaviour  the case study. 
	3. `AADL`: Artifacts related to the AADL model for the case study. 
2. Documentation
	1. `Case Study Documentation`:  from the case study owner about the behaviour of the system, including the AI components if possible. This can include diagrams, descriptions, UML diagrams, anything that we can have that describes the behaviour of the system. 
	2. (Optional) `System Properties`: I propose that we create a document, stored in this directory, that describes the system-level properties we want to verify for each case study. These should be described in English only, and we can link these to where they are discharged: RoboArch, RoboChart, AADL, the legitimate component in the MAPLE-K loop, or the trustworthiness checker. This could be useful for coordinating at what level of abstraction each property that we aim to establish is discharged, or for ensuring that specific desired properties are verified somewhere.

3. Implementation
	1. (Optional) `Source Code `: This is not be strictly necessary for every case study, but I am leaving a section here to store any source code related to the case study if needed. 
	2. `AI Components`: This is where we will store the data related to the AI components for the purposes of modelling and verification. This should contain only the parameters (both hyper and adaptive or trained parameters) of the AI models in any file format, but [ONNX](https://onnx.ai/) ideally. For the purposes of modelling and verification, we do not need either training or test data related to these AI components: we seek to model only the trained AI component. 
