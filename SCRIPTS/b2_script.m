%b2 ��������� �,�,�

%���������� ���� 3d ����
xM= embeddelays(bstat_win, 3, 1);
%����������� �� 2 ��� 3 ����������
figure(1)
scatter(xM(:,1),xM(:,2))
figure()
scatter3(xM(:,1),xM(:,2),xM(:,3))
%�������� ���������, ������� ��������
fnnM = falsenearest(bstat_win,1,8,15,0,'~');
%�������� ���������� ��� �������� ����� ��� m(����� �� ���� ��� ����������)
[~,~,~,~,nuM] = correlationdimension(bstat_win,1,10,'~',5,-5,5);





