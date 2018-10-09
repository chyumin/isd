
function freqs_plothz(w,h)

  n = length(w);
  mag = 20*log10(abs(h));
  phase = unwrap(arg(h));
  maxmag = max(mag);

  subplot(211);
  plot(w/(2*pi), mag, ";Magnitude (dB);");
  title('Frequency response plot by freqs');
  axis([w(1)/(2*pi), w(n)/(2*pi)]);
  ylabel("dB");
  xlabel("");
  grid("on");
%  if (maxmag - min(mag) > 100) # make 100 a parameter?
%    axis([w(1), w(n), maxmag-100, maxmag]);
%  else
%    axis("autoy");
%  endif

  subplot(212);
  plot(w/(2*pi), phase/(2*pi), ";Phase (radians/2pi);");
  axis("label");
  title("");
  grid("on");
  axis("autoy");
  xlabel("Frequency (Hz)");
  ylabel("Cycles");
  axis([w(1)/(2*pi), w(n)/(2*pi)]);

endfunction
