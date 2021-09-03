w=input('Give Window number 1-11 :');
disp('');
method=input('Method- 1 MA 2 Polynomialfit 3 Diferences 4 log: ');
disp('');
if (method==1)
    order=input('Give order: ');
    av(:,w)=movingaveragesmooth2(win(:,w),order);
    for i=1:250
        stat_win(i,w)=win(i,w)-av(i,w);
    end
elseif (method==2)
    order=input('Give order: ');
    av(:,w)=polynomialfit(win(:,w),order);
    for i=1:250
        stat_win(i,w)=win(i,w)-av(i,w);
    end
elseif (method==3)
    for i=1:249
        stat_win(i,w)=win(i+1,w)-win(i,w);
    end
elseif (method==4)
    for i=1:249
        stat_win(i,w)=log(win(i+1,w))-log(win(i,w));
    end        
else
    disp('Wrong Choice')
end
stat_est=movingaveragesmooth2(stat_win(:,w),22);
figure(1)
plot(win(:,w))



ac=autocorrelation(stat_win(:,w), 10, '', 'd');
figure(2)
stem(0:10,ac(:,2))
hline1 = refline([0 0.1239]);
hline1.Color = 'r';
hline2 = refline([0 -0.1239]);
hline2.Color = 'r';
title('Αυτοσυσχέτιση- Με κόκκινη γραμμή συμβολιζω τη σταθμη σημαντικοτητας')
figure(3)
plot(stat_win(:,w))
title('Στάσιμη χρονοσειρά- Με κόκκινη γραμμή συμβολίζω την προσέγγιση με MA(22)')
hold on
plot(stat_est)
hold off

    