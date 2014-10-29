results_path = '/Users/theinemann/Documents/Doktorarbeit/2014/Thesis/matlab/Plots/';
labelfontsizeAxis = 22;
figure(1)
clf;
x = [1:0.01:15];
y = x.^2-15*x;
plot(x,y,'-b','Linewidth',2,'Markersize',15);
hold on;
clear x;
x = [1:2:15];
z = x - x -52.41;


plot(x,z,'--r','Linewidth',2,'Markersize',15);
plot(7.5,-56.25,'*r','Linewidth',2,'Markersize',15)

axis([0 14 -57 -26.25])
set(gca,'FontSize',labelfontsizeAxis);
box off
xlabel( 'log_{10} (p_1)','fontsize',24,'FontWeight','bold')
legend('boxoff');
set(gca,'LineWidth',1.1)

set(gca,'XTickLabel',{'0.2','0.3','0.4'})

set(gca,'YTickLabel', {'0','10','20','30'})
% set(gca,'xtick',[])
set(gca,'ytick',[-56.25, -46.25, -36.25, - 26.25])
h = gcf;
print2eps(char(strcat(results_path,'PLE_identifiable')),h);




figure(2)
clf;
x = [1:0.01:7.5];
y = x.^2-15*x;
plot(x,y,'-b','Linewidth',2,'Markersize',15);
hold on;
clear x;
x = [7.5:0.01:15];
y = 7.5.^2-15*7.5;
plot(x,y,'-b','Linewidth',2,'Markersize',15);
clear x;
x = [1:2:15];
z = x - x -52.41;


plot(x,z,'--r','Linewidth',2,'Markersize',15);
plot(7.5,-56.25,'*r','Linewidth',2,'Markersize',15)
axis([0 14 -57 -26.25])
set(gca,'FontSize',labelfontsizeAxis);
box off
xlabel( 'log_{10} (p_2)','fontsize',24,'FontWeight','bold')
legend('boxoff');
set(gca,'LineWidth',1.1)
set(gca,'XTickLabel',{'-0.2','-0.1','0'})
set(gca,'YTickLabel', {'0','10','20','30'})
% set(gca,'xtick',[])
set(gca,'ytick',[-56.25, -46.25, -36.25, - 26.25])
h = gcf;
print2eps(char(strcat(results_path,'PLE_pNonidentifiable')),h);



figure(3)
clf;
% x = [1:0.01:7.5];
% y = x.^2-15*x;
% plot(x,y,'-b','Linewidth',2,'Markersize',15);
hold on;
clear x;
x = [1:0.01:15];
y = 7.5.^2-15*7.5;
plot(x,y,'-b','Linewidth',2,'Markersize',15);
clear x;
x = [1:2:15];
z = x - x -52.41;


plot(x,z,'--r','Linewidth',2,'Markersize',15);
plot(7.5,-56.25,'*r','Linewidth',2,'Markersize',15)
axis([0 14 -57 -26.25])
set(gca,'FontSize',labelfontsizeAxis);
box off
xlabel( 'log_{10} (p_3)','fontsize',24,'FontWeight','bold')
legend('boxoff');
set(gca,'LineWidth',1.1)
set(gca,'XTickLabel',{'-3','-1','1'})
set(gca,'YTickLabel', {'0','10','20','30'})
% set(gca,'xtick',[])
set(gca,'ytick',[-56.25, -46.25, -36.25, - 26.25])
h = gcf;
print2eps(char(strcat(results_path,'PLE_Nonidentifiable')),h);