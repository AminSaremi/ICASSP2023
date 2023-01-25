# CochlearMechanics-model

License and disclaimer:
The attached source code is provided under General Public License (GPL) version 3. Accordingly, the source code is provided ‘AS IT IS’ for general use. The creator(s) of the source code do NOT guarantee the feasibility or accuracy of the code for any application. The code can be modified and used for public and research purposes. This code cannot be used for industrial nor business-related purposes and it cannot be part of any privately-owned product unless otherwise agreed by the copy-right holder(s). 

Content:
The cochlear model can be run using ‘Saremi2015.m’ script. This script yields the frequency response and the position-frequency map of the cochlea. The fundamentals of this model have been described in Saremi and Stenfelt (2013). However, the code has evolved significantly since that publication.
‘diagnosis_HL.m’ script takes in an audiogram as an input runs the Nelder-Maud optimization method to find cochlear pathologies that have caused the given hearing threshold elevations, according to the model.

How to run the codes?
1)  [F_active,Bf_active,freq]=Saremi2015(segnum,LdB,fac) generates the amplitude of the frequency response of the model ('F_active') at LdB intensity, and for the number of cochlear partitions specified in 'segnum'. The OHC integrity can be specified for each partition using 'fac'. 

2) 'Reproduce_OHC_diagnosis’ script is used for specifying the input audiogram for the similified optimization method illustrated in Figure A of the ICASSP 2023 paper. The script plots the detected underlying OHC lesions that are linked to the input audiogram. This script calls 'diagnose_HL (inp_audiogram)' function which contains the actual optimization algorithm based on 'fminsearch'. This 'diagnose_HL (inp_audiogram)' function also contains the initial guesses. The initial guesses used in this work are motivated by biological data but users can try different initializations. 

Examples: 
1)	‘IO_Saremi.m’ script produces cochlear input/output functions (defined as the RMS output at the CF as a function of input intensity) for healthy cochlea versus a passive (dead) cochlea as shown in Fig. 7 of Saremi and Stenfet (2022) article. 

2)	‘Reproduce_OHC_diagnosis’ runs the ‘diagnosis_HL.m’ for real-world clinical cases and shows how the model relates hearing loss (in form of audiometric threshold elevations) to a specific configuration of OHC lesions. This script can produce the plots shown in Fig. 2 and Fig. 3 of our ICASSP 2023 article. 


    
