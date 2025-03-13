%% Code to extract the RECM_LBP
clear all
clc;
[data, sequence]= fastaread('Test_Dataset.txt');

Total_Seq_train=size(sequence,2);
for i=1:(Total_Seq_train)
     i
    SEQ=sequence(i);
    SEQ=cell2mat(SEQ);
    RECM_T = RECMT(SEQ);
    RECM_T=RECM_T';
    P = uint8(255 * mat2gray(RECM_T));
    
    
%%%%%%%%%%% RECM_DCT %%%%%%%%%%%%%%%%
     
    FF=dct2(P);%matlab function
    FF=FF(1:10,1:10);
	RECM_DCT_features(i,:)=FF(:);
    
       
    
end

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%
RECM_DCT_features_ACP=[RECM_DCT_features];

save RECM_DCT_features_ACP RECM_DCT_features_ACP;

%%%% To Create CSV sheet for the data %%%%%%%%%
   
csvwrite('RECM_DCT_features_ACP.csv',RECM_DCT_features_ACP);

