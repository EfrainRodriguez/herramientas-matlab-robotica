
function str = inverse_inverted_delta(p)

    %initilizing robot
    prm = init_inverted_delta();
    R = prm.R; r = prm.r; tetha = prm.tetha;
    p0 = prm.origin;
    l1 = prm.l1;
    
    
    %offset
    for i=1:3
        p(i) = p(i) + p0(i);
    end

    %base platform
    for i=1:3
        str.A(i,:) = [p0(1) + R*cos(tetha(i)), p0(2) + R*sin(tetha(i)), p0(3)];
    end
    
    %mobile platform
    for i=1:3
        str.B(i,:) = [p(1) + r*cos(tetha(i)), p(2) + r*sin(tetha(i)), p(3)];
    end
    
    %shadow
    for i=1: 3
        str.shadow = sqrt((str.A(i,1) - str.B(i,1))^2 + (str.A(i,2) - str.B(i,2))^2);
    end
    
    for i=1:3
        alpha(i) = atan2(str.A(i,2) - str.B(i,2), str.A(i,1) - str.B(i,1));
    end
    
    %solving equations
    m = (2*str.shadow)/(2*p(3));
    n = ((str.shadow^2)/(2*p(3)));
    
    u = 1 + (m^2);
    v = 2*m*n;
    w = (n^2)-(l1^2);
    
    a = ((-v) - sqrt((v^2) - (4*u*w))) / (2*u)
    
    a = abs(a);
    
    b = sqrt(l1^2 - a^2)
    
    %elbow
    for i=1:3
        str.C(i,:) = [str.B(i,1) + a * cos(alpha(i)), str.B(i,2) + a * sin(alpha(i)), p(3) + b];
    end
    
    %pivot
    for i=1:3
        str.D(i,:) = [str.A(i,1) + prm.pivot * cos(alpha(i)), str.A(i,2) + prm.pivot * sin(alpha(i)), p0(3)];
    end

end