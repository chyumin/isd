clear
% parametros da eq de onda

A = 1;
f = 1;
t = 0:0.01:.99;
q = 0;
% -------------------------------------------------------

s = A*sin(2*pi()*f*t+q); % eq. de onda


baseline = zeros(1,200); % baseline = 0, i.e., sem ruido

sinal = [baseline s baseline]; % sinal + periodo antes e depois de baseline

ntrials = 1000; % numero de trials

ruido = 5*randn(ntrials,500); % matriz de ruido gaussiano

% loop para introduzir ruido no sinal, cada linha corresponde a 1 trial
for i = 1:ntrials
  trials(i,:) = ruido(i,:)+sinal;
end

% filtro media

for i = 2:ntrials
  smean = mean(trials(1:i,:));
  plot (smean)
  title(['numero de repeticoes: ' num2str(i)])
  pause (0.01)
endclear
% parametros da eq de onda

A = 1;
f = 1;
t = 0:0.01:.99;
q = 0;
% -------------------------------------------------------

target_db = 5;
A = 10^(target_db/20);
s = A*sin(2*pi()*f*t+q); % eq. de onda


baseline = zeros(1,200); % baseline = 0, i.e., sem ruido

sinal = [baseline s baseline]; % sinal + periodo antes e depois de baseline

ntrials = 1000; % numero de trials

ruido = 1*randn(ntrials,500); % matriz de ruido gaussiano

% loop para introduzir ruido no sinal, cada linha corresponde a 1 trial
for i = 1:ntrials
  trials(i,:) = ruido(i,:)+sinal;
end

% filtro media

for i = 2:ntrials
  smean = mean(trials(1:i,:));
  plot (smean)
  title(['numero de repeticoes: ' num2str(i)])
  pause (0.01)
end