# BandPassFilter
I was experimenting with a personal DSP project by recording myself talking while crumbling a piece of paper.
My Windows PC stored the voice recording in a .m4a format. I used Matlab R2021a to first read in samples of
the audio file and also store the sampling frequency. When I took the discrete-time Fourier Transform of the
data, the solution was far too large to store, so I decided to use a smaller frequency. Of course this cuts
the quality of the sound, but there is no way I can process over 3TB of data (no joke, over 3TB). I plotted
the data and used the chart to estimate the optimal cutoff frequencies to filter out the noise of the 
crumbling paper. I adjusted the value inputs to the butter function and was able to successfully filter the
noise completely.
