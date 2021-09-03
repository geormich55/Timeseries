w=input('choose window: ');
for p=0:9
    for q=0:9
        [~,~,~,~,armafit(p+1,q+1),~,~]=fitARMA(stat_win(:,w),p,q,1);
    end
end
         
            