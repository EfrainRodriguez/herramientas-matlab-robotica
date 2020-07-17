
function draw_inverted_delta(points)

    %points
    A = points.A;
    B = points.B;
    C = points.C;
    D = points.D;

    
    
    %draw base
    Dibujar_Linea(A(1,:),A(2,:),[1,0,1],0.8);
    Dibujar_Linea(A(2,:),A(3,:),[1,0,1],0.8);
    Dibujar_Linea(A(3,:),A(1,:),[1,0,1],0.8);
    
    plot3(A(1,1),A(1,2),A(1,3),'ob')
    
    %draw movable platform
    Dibujar_Linea(B(1,:),B(2,:),[1,0,1],0.8);
    Dibujar_Linea(B(2,:),B(3,:),[1,0,1],0.8);
    Dibujar_Linea(B(3,:),B(1,:),[1,0,1],0.8);
    
    plot3(B(1,1),B(1,2),B(1,3),'ob')
    
    %draw pivot
    Dibujar_Linea(A(1,:),D(1,:),[1,0,1],0.8);
    Dibujar_Linea(A(2,:),D(2,:),[1,0,1],0.8);
    Dibujar_Linea(A(3,:),D(3,:),[1,0,1],0.8);
    
    plot3(D(1,1),D(1,2),D(1,3),'ob')
    
    %draw arms
    Dibujar_Linea(D(1,:),C(1,:),[1,0,1],0.8); Dibujar_Linea(B(1,:),C(1,:),[1,0,1],0.8);
    Dibujar_Linea(D(2,:),C(2,:),[1,0,1],0.8); Dibujar_Linea(B(2,:),C(2,:),[1,0,1],0.8);
    Dibujar_Linea(D(3,:),C(3,:),[1,0,1],0.8); Dibujar_Linea(B(3,:),C(3,:),[1,0,1],0.8);
    
    plot3(C(1,1),C(1,2),C(1,3),'ob')
    
    axis([-20 20 -20 20 -2 10]);
    hold on;

end
