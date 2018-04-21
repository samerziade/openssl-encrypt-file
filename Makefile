KEY_FILE="secret.pem"
KEY_LEN=8192
FILE=

key:
	openssl rand -base64 $(KEY_LEN) > $(KEY_FILE)

encrypt:
ifeq ($(FILE),)
	$(error Missing FILE)
else
	openssl enc -aes-256-cbc -salt -in $(FILE) -out $(FILE).enc -pass file:$(KEY_FILE)
endif

decrypt:
ifeq ($(FILE),)
	$(error Missing FILE)
else
	openssl enc -d -aes-256-cbc -in $(FILE).enc -out $(FILE) -pass file:$(KEY_FILE)
endif
