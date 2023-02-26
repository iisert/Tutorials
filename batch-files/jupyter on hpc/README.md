# Directions
1. Keep the file `sshtunneltohpc.sh` on your local machine and edit the `masterpass=` parameter accordingly. if you have the keys setup, comment lines accordingly to avoid exposing the pass.
2. Copy the files `sshtunneltonode.sh` and `start-jupyter.sh` to your masternode.
3. Go to the terminal of your local machine and just run ```bash sshtunneltohpc.sh```
4. This will connect your local machine to hpc, and then execute the `sshtunneltonode.sh` script automatically.
5. The `sshtunneltonode.sh` script will connect to the first **"free"** node and execute `start-jupyter.sh` automatically.
6. You'll be shown a url at the end, just open that and you'll be connected to compute node running your instance of Jupyterlab

