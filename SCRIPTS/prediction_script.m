%erwtima A4
preV=zeros(100,1);
w=input('Give window for prediction  : ');
[~,~,phiV,thetaV] = predictARMAnrmse(stat_win(:,w),5,0,1,150,w);
for i=1:100
    x1 = phiV(1) + phiV(2)*stat_win(149+i,w) + phiV(3)*stat_win(148+i,w) + phiV(4)*stat_win(147+i,w) + phiV(5)*stat_win(146+i,w) + phiV(6)*stat_win(145+i,w);
    preV(i,1)=x1;
end
nrmse_ar5=nrmse(stat_win(151:250,w),preV(:,1));
