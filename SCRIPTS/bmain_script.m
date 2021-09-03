%%meleti b
dat22.Properties.VariableNames{1} = 'x';
bwin=zeros(459,1);
bstat_win=zeros(459,1);
bav=zeros(459,1);
for i=1:459
    bwin(i)=(dat22.x(6*i)+dat22.x(6*i-1)+dat22.x(6*i-2)+dat22.x(6*i-3)+dat22.x(6*i-4)+dat22.x(6*i-5))/6;
end
%% make it stationary
method=input('Method- 1 MA 2 Polynomialfit 3 Diferences 4 log: ');
disp('');
if (method==1)
    order=input('Give order: ');
    bav=movingaveragesmooth2(bwin,order);
    for i=1:459
        bstat_win(i)=bwin(i)-bav(i);
    end
elseif (method==2)
    order=input('Give order: ');
    bav=polynomialfit(bwin,order);
    for i=1:459
        bstat_win(i)=bwin(i)-bav(i);
    end
elseif (method==3)
    for i=1:458
        bstat_win(i)=bwin(i+1)-bwin(i);
    end
elseif (method==4)
    for i=1:458
        bstat_win(i)=log(bwin(i+1))-log(bwin(i));
    end        
else
    disp('Wrong Choice')
end
bac=autocorrelation(bstat_win(:), 50, '', 'd');
bstat_est=movingaveragesmooth2(bstat_win(:),22);
%aytosysxetisi
figure(1)
stem(0:50,bac(:,2))
hline1 = refline([0 0.0914]);
hline1.Color = 'r';
hline2 = refline([0 -0.0914]);
hline2.Color = 'r';
title('Αυτοσυσχέτιση')
figure(2)
plot(bstat_win(:))
title('Στάσιμη χρονοσειρά- Με κόκκινη γραμμή συμβολίζω την προσέγγιση με MA(22)')
hold on
plot(bstat_est)
hold off


