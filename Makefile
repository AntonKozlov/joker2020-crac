all : startup.png startup0.png quarkus0.png quarkus.png 

quarkus0.png : perf0.plot quarkus.data 
	gnuplot -e 'title = "Quarkus"' \
		-e 'datafile = "quarkus.data"' \
		-e 'output = "$@"' \
		$<

quarkus.png : perf.plot quarkus.data 
	gnuplot -e 'title = "Quarkus"' \
		-e 'datafile = "quarkus.data"' \
		-e 'output = "$@"' \
		$<

startup0.png startup.png : %.png : %.plot startup.data 
	gnuplot $<

clean:
	rm -f *.png
