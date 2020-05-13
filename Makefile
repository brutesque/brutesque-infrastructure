deploy:
	pip3 install --upgrade pip
	pip3 install --upgrade -r requirements.txt

	ansible \
		--forks 1 \
		--module-name ping \
		all

	ansible-playbook playbook.yml
