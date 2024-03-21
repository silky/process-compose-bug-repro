# Bug

To reproduce (from the Nix shell):

```shell
> process-compose up
```

You will see the process-compose exit immediately; but it shouldn't, as the
process is running indefinitely, which you can verify by running the command
locally:

```shell
> spago run -w -m Ex
```
