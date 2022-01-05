# wsl-browsertunnel
Use this program to create SSH tunnels to predefined hosts and open a set of webpages with Firefox using the proxy.

## Prerequisites
- WSL with autossh package installed
- Firefox 64-bit installed (Windows)
- WSL Username and pubkey are on the destination hosts
- Firefox profile "Tunnels" is configured with SOCKS Proxy on port 2080:
    - Go to `about:profiles` in the URL bar
    - Create a new profile called "Tunnels"
    - Open Firefox with the "Tunnels" profile
    - Go to Preferences -> General -> Network Settings -> Manual proxy configuration
        - SOCKS HOST: ''localhost''
        - Port: ''2080''
        - SOCKS v5: check

## Usage
Modify tunnels.conf with the Location/pretty name, hostname, and URLs to open. Run `tunnels <location>` to start.
Modify tunnels and rdptunnels with config file locations.

Tunnels:
`tunnels <location>` to open tunnel and Firefox window.
`tunnels` to view status.
`tunnels stop` to stop the tunnel.
`tunnels ssh` to start an ssh session to the established tunnel hostname.

RDP Tunnels:
`rdptunnels <location>` to open tunnel and launch RDP session.
`rdptunnels stop` to stop the tunnel.
