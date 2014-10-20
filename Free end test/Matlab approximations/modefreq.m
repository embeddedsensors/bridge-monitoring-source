function frn = modefreq(L,n,youngs,density)
% modefreq calculates the resonant frequency for a given mode
% L = Length of cable (meter)
% n = Mode
% T = Tension (Newton)
% rhoL = Mass per unit length (kg/meter)


% c = sqrt(T/rhoL); %Sound Speed (meter/sec)
c = sqrt (youngs / density);
[frn] = ((2.*n-1)./4).*(c./L); % Resonant frequency of the nth mode