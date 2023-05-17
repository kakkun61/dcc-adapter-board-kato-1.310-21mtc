.PHONY: archive_elecrow
archive_elecrow: rename_gerber_elecrow
	pwsh -Command "& { Compress-Archive -Path dcc-adapter-board-kato-1.310-21mtc_elecrow\* -DestinationPath dcc-adapter-board-kato-1.310-21mtc_elecrow.zip -Force }"

.PHONY: rename_gerber_elecrow
rename_gerber_elecrow:
	rename_gerber_elecrow.bat dcc-adapter-board-kato-1.310-21mtc

.PHONY: clean
clean:
	-clean_gerber.bat dcc-adapter-board-kato-1.310-21mtc
