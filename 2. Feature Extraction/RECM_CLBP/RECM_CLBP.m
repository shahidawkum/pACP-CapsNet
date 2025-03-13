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
    
    
    %%%%%%%%%%% RECM-CLBP %%%%%%%%%%%%%%%%
     FF=clbp(P);
     RECM_CLBP_features(i,:)=FF;
   end

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%
RECM_CLBP_features_ACP=[RECM_CLBP_features];

save RECM_CLBP_features_ACP RECM_CLBP_features_ACP;

%%%% To Create CSV sheet for the data %%%%%%%%%
   
csvwrite('RECM_CLBP_features_ACP.csv',RECM_CLBP_features_ACP);


