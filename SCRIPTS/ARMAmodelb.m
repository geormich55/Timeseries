%κατάλληλο γραμμικο μοντελο
for p=0:9
    for q=0:9
        [~,~,~,~,armafit(p+1,q+1),~,~]=fitARMA(bstat_win(:),p,q,1);
    end
end
