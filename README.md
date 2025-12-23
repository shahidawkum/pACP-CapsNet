# pACP-CapsNet

Shahid Akbar, Ali Raza, Matee Ullah, Wajdi Alghamdi, Mukhtaj Khan, Quan Zou  
Deep Capsule Neural Network for Identifying Anticancer Peptides Using Sequence to Image Transformation based Local Embedded Features

---

## Overview
- pACP-CapsNet is a deep learning framework for anticancer peptide (ACP) prediction.
- The method combines peptide-to-2D embedding image transformation with a deep Capsule Neural Network.
- Feature extraction is performed using SMR- and RECM-based descriptors, followed by SFLA-based feature selection.

---

## Repository Structure

### 1_Datasets
Three datasets are provided.

#### (i) Training Dataset
- File: ACP_Training Dataset.txt
- Contains:
  - 911 anticancer peptides (ACPs)
  - 1,891 non-ACP peptide samples

#### (ii) Independent Test Datasets
- Independent_ACP740.txt
  - 740 peptide sequences
  - 376 positive (ACP) samples
  - 364 negative (non-ACP) samples

- Independent_ACP240.txt
  - 240 peptide sequences
  - 129 positive (ACP) samples
  - 111 negative (non-ACP) samples

---

### 2_FeatureExtractionCode
This folder contains MATLAB code for feature extraction.

Main MATLAB files:
- RECM_based_Feature_Extraction.m
- SMR_based_Feature_Extraction.m

These scripts load the peptide sequences and generate embedded feature vectors saved in XLSX format.

Extracted features include:
- RECM_DCT
- RECM_CLBP
- DWT_SMR
- HOG_SMR

---

### 3_SFLA_based_Feature_Selection
This folder contains:
- Selected feature sets for the training datasets
- Python implementation of the Shuffled Frog Leaping Algorithm (SFLA)

Main file:
- SFLA_FS.ipynb

---

### 4_CapsNet_Trained_Model
This folder includes Python code for training the deep Capsule Neural Network.

Main notebook:
- CapsNet_Classifier.ipynb

---

## Requirements
- MATLAB (for feature extraction)
- Python 3.x

Recommended Python libraries:
- numpy
- pandas
- scikit-learn
- tensorflow / keras

---

## Usage Workflow
1. Prepare peptide sequence datasets
2. Extract SMR- and RECM-based features using MATLAB scripts
3. Apply SFLA-based feature selection
4. Train and evaluate the CapsNet classifier

---

## Contact
If you are interested in this work or have any questions or suggestions, please contact:

Email: shahid.akbar@awkum.edu.pk

---

## Citation
If you use this code or datasets in your research, please cite the corresponding paper.
