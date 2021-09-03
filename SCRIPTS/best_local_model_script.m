%best local model script για διαφορες τιμες κ,m με κ απο 5 μεχρι 24 και m
%απο 2 μεχρι 5
nrmse_km=zeros(20,4);
preVloc=zeros(100,1);
for k=1:20
    for m=1:4
        for i=1:100
            preV = localpredictmultistep(bstat_win(1:459),358+i,1,m+1,1,k+4,7,'~');
    
            preVloc(i,1)=preV;
        end
        nrmse_km(k,m)=nrmse(bstat_win(360:459,1),preVloc(:,1));
    end
    
end
