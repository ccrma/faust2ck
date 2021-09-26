// chuck --chugin-path:/home/cc/faust2ck/src test-ck/osci.ck

osci osc => dac;
osc.volume(-10.0); // dB -96, 0
osc.freq(1000.0); // 20, 24000
1::day => now;
