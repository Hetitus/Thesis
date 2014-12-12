CVr = 0.5;
CVd = 0.38;

cvXPC = 0.36;
cvTFIIH = 0.32;
cvXPG = 0.36;
cvXPF = 0.38;
cvXPA = 0.33;
cvRPA = 0.43;
cvPCNA = 0.36;

cvVecSquare = [cvXPC^2,cvTFIIH^2,cvXPG^2,cvXPF^2,cvXPA^2 , cvRPA^2 , cvPCNA^2];

%                XPC   TFIIH XPG  XPF   XPA  RPA   PCNA

CorrMat = [  1      0.58  0.7   0.8 0.52 0.87  0.7;...
                    0.58 1       0.7   0.71 0.7   0.7    0.7;...
                    0.7   0.7    1      0.7   0.7   0.7    0.7;...
                    0.8 0.71  0.5   1      0.75 0.7    0.7;...
                    0.52 0.7    0.7   0.75   1    0.59  0.7;...
                    0.87 0.7    0.7   0.7   0.59 1       0.7;...
                    0.7   0.7    0.7   0.7   0.5   0.7    1];



%              XPC        TFIIH        XPG     XPF        XPA         RPA           PCNA

%XPC                      0.0747                  0.125 0.0628       0.1249

%TFIIH    0.0747                                  0.115

%XPG

%XPF      0.125      0.115                              0.0915

%XPA        0.0628                             0.0915                  0.1089

%RPA       0.1249                                          0.1089

%PCNA

covXPC_TFIIH = 0.747;
covXPC_XPG = 0.1;
covXPC_XPF = 0.125;
covXPC_XPA = 0.0628;
covXPC_RPA = 0.1249;
covXPC_PCNA = 0.1;
covTFIIH_XPG = 0.1;
covTFIIH_XPF = 0.115;
covTFIIH_XPA = 0.1;
covTFIIH_RPA = 0.1;
covTFIIH_PCNA = 0.1;
covXPG_XPF = 0.1;
covXPG_XPA = 0.1;
covXPG_RPA = 0.1;
covXPG_PCNA = 0.1;
covXPF_XPA  = 0.0915;
covXPF_RPA = 0.1;
covXPF_PCNA = 0.1;
covXPA_RPA = 0.1089;
covXPA_PCNA = 0.1;
covRPA_PCNA = 0.1;

covVec = [covXPC_TFIIH,covXPC_XPG,covXPC_XPF,covXPC_XPA,covXPC_RPA,covXPC_PCNA,covTFIIH_XPG,covTFIIH_XPF,covTFIIH_XPA,covTFIIH_RPA,covTFIIH_PCNA,covXPG_XPF,covXPG_XPA, ...
    covXPG_RPA, covXPG_PCNA,covXPF_XPA,covXPF_RPA,covXPF_PCNA,covXPA_RPA,covXPA_PCNA,covRPA_PCNA];



R = sqrt((CVr^2-CVd^2)/( sum( cvVecSquare) + sum(covVec) )); 

VIF = diag(inv(CorrMat))'

