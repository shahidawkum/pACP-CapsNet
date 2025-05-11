# pACP-CapsNet 
The code is the implementation of our method described in the paper “ Shahid Akbar, Ali Raza, Matee Ullah, Quan Zou, pACP-CapsNet: predicting anticancer peptides using embedding image transformation based peptide to two-dimensional transformation with deep capsule neural network”.
## (I) 1_FeatureExtractionCode
### (1)	data
There are three datasets:
#### (i)	Train dataset
The benchmark training dataset "ACP_Training dataset.txt", contains 2225 positive and 2250 negative peptide samples.
#### (ii)	Independent datasets
The first independent dataset, "ACP_Independent_I.txt" contains 740  peptide sequences (376 positive and 364 negative samples). <br />
The second independent dataset "ACP_Independent_II.txt" contains 240 peptide sequences (129 positive and 111 negative non-ACP samples). <br />
### (2)	lib
lib folder contains all the features extraction related necessary codes used in this study.<br />
## (II)	2_SFLA based feature Selection
### (1)2.	Shuffled frog leaping algorithm folder contains all required files related to SFLA-based feature selection.
## (III)	3_CapsNet trained Model
3_CapsNet trained Model folder includes all the libraries used for training the deep Capsule neural network model.
## (IV)	RECM_based_Feature_Extraction.m
matlab file for extracting <br />
(1) 	RECM_CLBP (Completed Local Binary Pattern based Residue energy contact Matrix)
(2)	RECM_DCT (Discrete Cosine transformation based Residue energy contact Matrix) <br />
## (V) SMR_based_Feature_Extraction.m is the matlab file for extracting <br />

(1) HOG_SMR (Histogram of Oriented Gradients based Substitution matrix representation)
(2) DWT_SMR (Discrete Wavelet transformation based Substitution matrix representation 
 <br />

## (VI)	Contact
If you are interested in our work or if you have any suggestions and questions about our research work, please contact us. E-mail: shahid.akbar@awkum.edu.pk
