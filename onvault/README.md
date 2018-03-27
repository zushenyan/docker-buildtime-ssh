# Onvault

Install a small utility during image build time. It's called `onvault`. Basically what it does is using `curl` to fetch the SSH keys from another container's volume before executing the main command like `npm install`, and remove the key upon done.

With this technique in a single `RUN` command you could cache a layer without leaking SSH keys.

### Pros
- Cache files in layers without leaking SSH keys.
- `docker history` won't exploit SSH keys in output.

### Cons
- Might need some network tweaks.
- If you have passphrase, it will still be printed as part of the output.