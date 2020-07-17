x = 0;
y = 0;
for i = pi/4:0.2:(pi/4)+(pi/2)
    
    for j = 0:2:25
    
        for k = -pi/2:0.2:pi/2
            
            [x,y]=puma2D(i,j,k);
            plot(x,y)
            hold on

        end
    end

end

