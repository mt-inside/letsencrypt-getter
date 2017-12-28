./certbot-auto \
    certonly \
    --no-bootstrap \
    --noninteractive \
    --agree-tos \
    --no-eff-email \
    --standalone \
    --email="desborough@gmail.com" \
    --domains="sun.empty.org.uk" \

# Ideally want a certs with sun's local names in the SANs
# You are allowed to only verify on a subset of domains, like below
# However they must all be public - the below fails as the last two names
# don't have "public suffixes".
# Other options are:
# - Self-sign the cert, but then it can't be exported to the internet, and
# it's hard to teach phones, xboxes, etc new CA certs
# - always address it as sun.empty.org.uk, even internally
#./certbot-auto \
#    certonly \
#    --no-bootstrap \
#    --noninteractive \
#    --agree-tos \
#    --no-eff-email \
#    --standalone \
#    --email="desborough@gmail.com" \
#    --domains="sun.empty.org.uk, sun.lan, sun" \
#    --expand \
#    --allow-subset-of-names
