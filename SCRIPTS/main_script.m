dat22.Properties.VariableNames{1} = 'x';
win=zeros(250,11);
for j=1:11
    for i=1:250
        win(i,j)=dat22.x((j-1)*250+i);
    end
end
av=zeros(250,11);
stat_win=zeros(250,11);