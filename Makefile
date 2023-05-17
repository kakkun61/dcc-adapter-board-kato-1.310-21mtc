.PHONY: rename_gerber_elecrow
rename_gerber_elecrow:
	rename_gerber_elecrow.bat dcc-adapter-board-kato-1.310-21mtc

.PHONY: archive_elecrow
archive_elecrow:
	pwsh -Command "& { Compress-Archive -Path dcc-adapter-board-kato-1.310-21mtc_elecrow\* -DestinationPath dcc-adapter-board-kato-1.310-21mtc_elecrow.zip -Force }"
