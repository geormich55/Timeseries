%script ��� �� ������� �1.2
%������ ����������� ��� �R(5)
[nrmseV,~,~,~,~,~,~]=fitARMA(bstat_win(:),5,0,1);
%NRMSE ��� �������� ���� ������� �� ��� AR(5) ��������� �� ����� 359
%�������� �� ������ ��������� ��� �� �������� 100 �� ������ ����������� 
preV=zeros(100,1);
[~,~,phiV,thetaV] = predictARMAnrmse(bstat_win(:),5,0,1,359,'~');
for i=1:100
    x1 = phiV(1) + phiV(2)*bstat_win(358+i) + phiV(3)*bstat_win(357+i) + phiV(4)*bstat_win(356+i) + phiV(5)*bstat_win(355+i) + phiV(6)*bstat_win(354+i);
    preV(i,1)=x1;
end
nrmse_ar5=nrmse(bstat_win(360:459,1),preV(:,1));