% Distribución incial
bel = [zeros(10, 1); 1; zeros(9, 1)];
figure(1)
subplot(13,1,1);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)') 
set(gca,'XTick',[]);

% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,2);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)') 
set(gca,'XTick',[]);

% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,3);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);

% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,4);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);

% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,5);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);

% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,6);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);

% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,7);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);

% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,8);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);

% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,9);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);


% Avanzar
bel = discrete_bayes_filter(bel, 'a');
subplot(13,1,10);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);

% Retroceder
bel = discrete_bayes_filter(bel, 'r');
subplot(13,1,11);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);

% Retroceder
bel = discrete_bayes_filter(bel, 'r');
subplot(13,1,12);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
ylabel('bel(x)')  
set(gca,'XTick',[]);


% Retroceder
bel = discrete_bayes_filter(bel, 'r');
subplot(13,1,13);
bar(bel)
pbaspect([8 1 1])
xlim([1 20])
ylim([0 1])
xlabel('x') 
ylabel('bel(x)') 