% FILE: pd1graph.m
function [snr, pd] = pd1graph(pfa)



		global temp % Make alpha global to pass it to funtion1.
		
		threshold = sqrt(-2*(log(pfa))) ;
		
		snr = 0:0.1:18 ;
		lrl = length(snr);
		
		
		
		for j = 1 : lrl
		% In the function1, the SNR is defined as a voltage ratio
		% Here SNR is a power ratio. To convert form decibels to voltage ration and take square root at the same time.
		temp = sqrt(2) * 10.^((snr(j)) / 20);
		
		
		pd(j) = 1 - quad('function1', 0, threshold);
		end
		
		pd=pd.*100;
