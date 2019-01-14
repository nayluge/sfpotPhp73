install:
ifeq ($(shell uname -s),Linux)
	sudo apt-get install python-pygments
endif
ifeq ($(shell uname -s), Darwin)
	sudo easy_install Pygments
endif

all:
	export TERM=xterm
	make intro --silent
	SCRIPT="./scripts/trailingComma.php" make runall --silent
	SCRIPT="./scripts/list.php" make runall --silent
	SCRIPT="./scripts/heredoc.php" make runall --silent
	SCRIPT="./scripts/json72.php" make run72 --silent --ignore-errors
	SCRIPT="./scripts/json.php" make run73 --silent --ignore-errors
	SCRIPT="./scripts/countable-php72.php" make run72 --silent --ignore-errors
	SCRIPT="./scripts/countable-php73.php" make run73 --silent --ignore-errors
	SCRIPT="./scripts/array.php" make run73 --silent --ignore-errors
	make perf --silent --ignore-errors
	make spoil --silent --ignore-errors
	make end --silent

intro:
	SCRIPT="./scripts/intro.php" make show --silent
	make wait --silent

runall:
	make show $(SCRIPT)
	make wait --silent
	make run72 $(SCRIPT) --ignore-errors
	make run73 $(SCRIPT) --ignore-errors

run72:
	make show $(SCRIPT)
	echo "\nOn php 7.2:\n"
	docker run --rm -v /home/cyril/PhpstormProjects/sfpot:/app -w /app php:7.2-cli php $(SCRIPT)
	make wait --silent

run73:
	make show $(SCRIPT)
	echo "\nOn php 7.3:\n"
	docker run --rm -v /home/cyril/PhpstormProjects/sfpot:/app -w /app php:7.3-cli php $(SCRIPT)
	make wait --silent

show:
	echo "\n $(SCRIPT) :\n"
	pygmentize -g  $(SCRIPT)

perf:
	./perf.sh
	./wait.sh

spoil:
	./spoiler.sh
	./wait.sh

end:
	clear
	echo "Questions ?"

json:

wait:
	./wait.sh