clc
clear all
load('energy_20.mat');

feature_train=[];


[data, sequence] = fastaread('Test_Dataset.txt');

Total_Seq_train=size(sequence,2);
for i=1:(Total_Seq_train)
     i
    SEQ=sequence(i);
    SEQ=cell2mat(SEQ);
    P=SMR(SEQ,energy_20);
	P=P';
    P = uint8(255 * mat2gray(P));
	
       
    %%%%%%%%%%%%%%HOG-SMR%%%%%%%%%%%%%%%%%%%
   FF=HOG(P);
   SMR_HOG_features(i,:)=FF;
       
end

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%

SMR_HOG_features_ACP =[SMR_HOG_features];

save SMR_HOG_features_ACP SMR_HOG_features_ACP;

%%%% To Create CSV sheet for the data %%%%%%%%%
   

   csvwrite('SMR_HOG_features_ACP.csv',SMR_HOG_features_ACP);
