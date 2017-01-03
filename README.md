# litecoin-docker
Docker Repo for Litecoind.

## Usage Instructions

**Mandatory Requirement**: Must use a local mount volume and config file.

Example:

```
sudo docker run -it --name=litecoin-docker \   
-v /path/to/local/litecoin/dir:/opt/litecoin \   
-p 127.0.0.1:9332:9332 sreekanthgs/litecoin-docker:latest
```

**Config file is read from**: `/opt/litecoin/litecoind.conf`, i.e., `/path/to/local/litecoin/dir/litecoind.conf`

##Storing of Data

You can store data within `/opt/litecoin/data` or any directory within `/opt/litecoin`.

This will inturn store your data within `/path/to/local/litecoin/dir` described above. 

Hence, to store within a different local dir, create a hard symlink for any other directory inside `/path/to/local/litecoin/dir` and then use that directory as `datadir` in `litecoind.conf`

###Example

If your host directory is `/usr/local/litecoin` and want to store data in `/var/litecoin`, do the following:

```
mkdir -p /usr/local/litecoin
mkdir -p /var/litecoin
ln -s /var/litecoin /usr/local/litecoin/data
```

and use `/opt/litecoin/data` as your data dir inside the `litecoind.conf`

```
#litecoind.conf
datadir=/opt/litecoin/data
```
