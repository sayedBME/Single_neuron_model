clc
clear all
close all
I=100;
C=1;
R=50;
V=0;
tstop=50;
abs_ref=5;
ref=0;
V_trace=[];
V_th=10;
for t=1:tstop
    if ~ref
        V=V-(V/(R*C))+(I/C);
    else
        ref=ref-1;
        V=0.2*V_th;
    end
    if (V>V_th)
        V=50;
        ref=abs_ref;
    end
    V_trace=[V_trace V];
end

plot(V_trace);
xlabel('Time[s]');
ylabel('Membrane Potential [mV]');