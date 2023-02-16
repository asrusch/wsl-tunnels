### Get started with Tunnels on WSL without lots of overhead

#### Prerequisites
1. WSL Ubuntu installed
2. SSH key created
3. SSH private key has been added to ~/.ssh and correct permissions applied
    - Example: `chmod 600 ~/.ssh/id_ed25519`
4. Github account created
5. SSH public key has been added to Github profile
6. Clone repo to ~/
    - git clone git@github.com:asrusch/wsl-tunnels.git
7. Run bootstrap script
    - `~/wsl-tunnel/wsl-bootstrap/bootstrap.sh`
    - Enter user password when prompted
    - You will not see any feedback (like *) when entering characters
8. SSH keys have been added to the various tunnel hosts
9. Close and re-open your terminal session for the various changes to take effect
10. Set up Tunnels profile in Firefox
    - Open Firefox and enter `about:profiles` in the URL bar
    - Create a new profile called "Tunnels"
    - Close/re-open Firefox with the Tunnels profile
        - Preferences -> General -> Network Settings -> Manual proxy configuration
            -  SOCKS HOST: localhost
            -  Port: 2080
            -  SOCKS v5: check

#### Cool stuff you get
- TUNNELS!
    - `tunnels clientname` (supports tab completion!)
- Dig aliases for quick lookups:
    - `mx outsideopen.com`
    - `spf outsideopen.com`
    - `dkim outsideopen.com`
- Chromaterm built into ssh (colorized SSH sessions, highlighting things like IP addresses, errors, etc)
- Other misc things
