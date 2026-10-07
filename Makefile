.PHONY: all clean

all: index.html

index.html: index.md template.html4 style.css
	pandoc --standalone \
		--from commonmark_x \
		--output=$@ \
		--template=template.html4 \
		--css=style.css \
		$<

clean:
	rm -f index.html
