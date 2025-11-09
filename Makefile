plasmoid: clean
	mkdir -p build/contents/ui build/contents/config
	cp -r src/* build/contents/ui/
	mv build/contents/ui/config.qml build/contents/ui/main.xml build/contents/config/
	mv build/contents/ui/metadata.json build/
	cd build && zip -r pinots.kickoff-with-submenus.plasmoid *
	mv build/pinots.kickoff-with-submenus.plasmoid .
clean:
	rm -rf build/* *.plasmoid

