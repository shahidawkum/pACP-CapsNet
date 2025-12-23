clc
clear all
load('energy_20.mat');

feature_train=[];


[data, sequence] = fastaread('ACP_Training_dataset.txt');

Total_Seq_train=size(sequence,2);
for i=1:(Total_Seq_train)
     i
    SEQ=sequence(i);
    SEQ=cell2mat(SEQ);
    P=SMR(SEQ,energy_20);
	P=P';
    P = uint8(255 * mat2gray(P));
	
  
%%%%%%%%%%% DWT-SMR %%%%%%%%%%%%%%%%
    FF=GetDWT(P);
    DWT_SMR_features(i,:)=FF;
        
   
    %%%%%%%%%%%%%%HOG-SMR%%%%%%%%%%%%%%%%%%%
   FF=HOG(P);
   HOG_SMR_features(i,:)=FF;
       
end

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%

DWT_SMR_features_ACP_training=[DWT_SMR_features];
HOG_SMR_features_ACP_training =[HOG_SMR_features];



save DWT_SMR_features_ACP_training  DWT_SMR_features_ACP_training;
save HOG_SMR_features_ACP_training  HOG_SMR_features_ACP_training;

%%%% To Create CSV sheet for the data %%%%%%%%%
   
    csvwrite('DWT_SMR_features_ACP_training.csv',DWT_SMR_features_ACP_training);
    csvwrite('HOG_SMR_features_ACP_training.csv',HOG_SMR_features_ACP_training);
   
