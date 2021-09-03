%b2 ερωτηματα α,β,γ

%διανυσματα στον 3d χωρο
xM= embeddelays(bstat_win, 3, 1);
%διαγραμματα σε 2 και 3 διαστασεις
figure(1)
scatter(xM(:,1),xM(:,2))
figure()
scatter3(xM(:,1),xM(:,2),xM(:,3))
%διασταση εμβυθισης, ψευδεις γειτονες
fnnM = falsenearest(bstat_win,1,8,15,0,'~');
%διασταση συσχετισης για διαφορες τιμες του m(τιμες με βαση τις σημειωσεις)
[~,~,~,~,nuM] = correlationdimension(bstat_win,1,10,'~',5,-5,5);





