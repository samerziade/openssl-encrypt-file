# File Encrypt/Decrypt

This tool can be handy to quickly encrypt and decrypt files using [OpenSSL](https://www.openssl.org/).

## Options

| Name     | Description                       | Default    |
| -------- | --------------------------------- | ---------- |
| KEY_FILE | The file name for the enc/dec key | secret.pem |
| KEY_LEN  | Length of the key generated       | 8192       |
| FILE     | The file which will be encrypted  | none       |

## Creating Keys

Create a key with default values:

```bash
make key 
```

Create a key with a sepecified length and file name:

```bash
make key KEY_FILE=custom.pem KEY_LEN=1024
```

## Encrypting Files

Once you've generated the key, you may encrypt a file. The generated filename will be the same as the input file name with `.enc` appended to it.

```bash
make encrypt FILE=secret.txt
```

## Decrypting Files

To decrypt a file, pass in the filename without the `.enc` extension.

```bash
make decrypt FILE=secret.txt
```