%test script lorenz
preVlor=zeros(100,1);
for i=1:100
    preV = localpredictmultistep(xlorenz.e00(1:500),399+i,1,5,1,11,0,'~');
    preVlor(i,1)=preV;
end
nrmse_lorenz=nrmse(xlorenz.e00(401:500),preVlor(:,1));
plot(401:500,xlorenz.e00(401:500))
hold on
plot(401:500,preVlor(:,1))
hold off