install:
	install -m 0755 java-selector /usr/bin
	install -m 0644 java-mappings /etc
	update-alternatives --install /usr/bin/java java /usr/bin/java-selector 5
	@echo
	@echo
	@echo "Now installed."
	@echo
	@echo "Activate with:"
	@echo "$ sudo update-alternatives --set java /usr/bin/java-selector"
	@echo
	@echo "Add mappings to /etc/java-mappings"
