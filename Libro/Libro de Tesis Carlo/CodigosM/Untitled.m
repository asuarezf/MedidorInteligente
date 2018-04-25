map = [-2.5, 0;
       -7, -34.5;
       40, -43.5;
      % 124, -61;
      % 112, -113
      ];

center = [-7, -34.5];
figure(1)
plot(map(:,1),map(:,2),'ro-');
hold on;
set(gca, 'fontsize', 24);%%%%%%%%%%%%setea el tamaño de los números de los ejes
axis equal;
plot(center(:,1),center(:,2),'r*');
plot(CirculoExterno(:,3),CirculoExterno(:,4),'b');
ylabel ('Ordenadas [m]','FontSize',24.0);
xlabel ('Abscisas [m]','FontSize',24.0);
title ('Mapa nuevo formato','FontSize',30.0);