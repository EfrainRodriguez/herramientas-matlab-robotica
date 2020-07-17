
function str = init_inverted_delta()

    str.origin = [0,0,0];

    str.R = 10;
    str.r = 3;
    
    for i = 1: 3
        str.tetha(i) = (2*(i-1)*pi)/3;
    end
    
    str.pivot = 2;
    
    str.l1 = 8;
    str.l2 = str.l1;

end