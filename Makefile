KICAD_PATH = "C:\Program Files\KiCad\7.0"

.PHONY: archive_elecrow
archive_elecrow: rename_gerber_elecrow
	pwsh -Command "& { Compress-Archive -Path dcc-adapter-board-kato-1.310-21mtc_elecrow\* -DestinationPath dcc-adapter-board-kato-1.310-21mtc_elecrow.zip -Force }"

.PHONY: rename_gerber_elecrow
rename_gerber_elecrow: create_gerber
	rename_gerber_elecrow.bat dcc-adapter-board-kato-1.310-21mtc

.PHONY: create_gerber
create_gerber:
	$(KICAD_PATH)\bin\python create_gerber.py dcc-adapter-board-kato-1.310-21mtc

.PHONY: clean
clean:
	-clean_gerber.bat dcc-adapter-board-kato-1.310-21mtc
