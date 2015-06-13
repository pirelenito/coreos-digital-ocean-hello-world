# CoreOS Digital Ocean Hello World

Very simple provisioning of a machine running [CoreOS](http://coreos.com/) with a [Hello World Docker Container](https://registry.hub.docker.com/u/google/nodejs-hello/).

## Running

You will require a `TOKEN` environment variable with a Digital Ocean [Personal Access Token](https://cloud.digitalocean.com/settings/applications).

And a `SSH_KEY_ID` the a valid ID to a SSH key of yours.

To get a list of your SSH keys through Digital Ocean's API:

```bash
curl --request GET "https://api.digitalocean.com/v2/account/keys" \
     --header "Authorization: Bearer $TOKEN"
```

And then, to provision a machine (this will cost you money):

```bash
./provision.sh
```

## References

- https://coreos.com/docs/running-coreos/cloud-providers/digitalocean/
