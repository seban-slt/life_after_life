FILE=life_256

xsm:
	xasm $(FILE).xsm -o $(FILE).xex

run:	xsm
	atari800 -nojoystick $(FILE).xex

runa:	xsm
	wine "c:\altirra\altirra.exe" $(FILE).xex

clean:
	rm -f *.xex *.zip

rel:	clean xsm
	7z -mx9 a $(FILE).zip $(FILE).xex readme.txt
