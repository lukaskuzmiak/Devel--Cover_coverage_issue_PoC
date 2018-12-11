test:
	prove -l

coverage:
	cover -t +select ^lib +ignore ^
