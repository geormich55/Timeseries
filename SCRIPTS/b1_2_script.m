%script για το ερωτημα Β1.2
%σφαλμα προσαρμογης στο ΑR(5)
[nrmseV,~,~,~,~,~,~]=fitARMA(bstat_win(:),5,0,1);
%NRMSE για προβλεψη ενος βηματος με την AR(5) θεωρωντας τα πρωτα 359
%δειγματα ως συνολο εκμαθησης και τα υπολοιπα 100 ως συνολο αξιολογησης 
preV=zeros(100,1);
[~,~,phiV,thetaV] = predictARMAnrmse(bstat_win(:),5,0,1,359,'~');
for i=1:100
    x1 = phiV(1) + phiV(2)*bstat_win(358+i) + phiV(3)*bstat_win(357+i) + phiV(4)*bstat_win(356+i) + phiV(5)*bstat_win(355+i) + phiV(6)*bstat_win(354+i);
    preV(i,1)=x1;
end
nrmse_ar5=nrmse(bstat_win(360:459,1),preV(:,1));