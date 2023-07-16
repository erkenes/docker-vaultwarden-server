# Vaultwarden with Traefik

This repository helps to host your own [Vaultwarden](https://github.com/dani-garcia/vaultwarden) instance on your
server or a raspberry-pi.

## Usage

Edit your settings in the `.env` file.

Start the containers with

```shell
docker-compose up -d
```

:warning: You have to install [Traefik](https://github.com/erkenes/docker-traefik) as well. 

## Settings

In the docker-compose.yml file the admin-token is disabled. If this setting is disabled you are not able to open the
admin page (`yourhost.local/admin`).

## Configuration for environment variables

### SIGNUPS_ALLOWED

By default, anyone who can access your instance can register for a new account. To disable this, set the
`SIGNUPS_ALLOWED` env variable to false.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Disable-registration-of-new-users)

### SIGNUPS_DOMAINS_WHITELIST

You can restrict registration to email addresses from certain domains by setting `SIGNUPS_DOMAINS_WHITELIST` accordingly.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Disable-registration-of-new-users#restricting-registrations-to-certain-email-domains)

### SIGNUPS_VERIFY

Require email verification to finish the registration.

### REQUIRE_DEVICE_EMAIL

Require new device emails. When a user logs in an email is required to be sent.

### INVITATIONS_ALLOWED

Even when registration is disabled (`SIGNUPS_ALLOWED`), organization administrators or owners can invite users to join
organization.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Disable-invitations)

### ADMIN_TOKEN

Activated the admin page. This page allows server administrators to view all the registered users and to delete them. It
also shows inviting
new users, even when registration is disabled.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Enabling-admin-page)

[Secure the ADMIN_TOKEN](https://github.com/dani-garcia/vaultwarden/wiki/Enabling-admin-page#secure-the-admin_token)

### DISABLE_ADMIN_TOKEN

If you have another method to authenticate the admin page then you can set the `DISABLE_ADMIN_TOKEN` variable to true.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Disable-admin-token)

### DOMAIN

The domain of your vaultwarden instance (should be the same as `VIRTUAL_HOST`).

This is required for U2F and FIDO2 WebAuthn authentication.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Enabling-U2F-%28and-FIDO2-WebAuthn%29-authentication)

### YubiKey OTP Authentication

You need a `YUBICO_CLIENT_ID` and `YUBICO_SECRET_KEY` to allow authentication with a Yubikey.

If `YUBICO_SERVER` is not set the default YubiCloud servers are used.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Enabling-Yubikey-OTP-authentication)

### SMTP Configuration

- `SMTP_HOST`: The host server of the mail server
- `SMTP_FROM`: the mail address which should be used for sending mails
- `SMTP_FROM_NAME`: the name which should be used for sending mails
- `SMTP_PORT`: the port of the smtp server
- `SMTP_SECURITY`: the protocol that should be used (default: starttls, options: force_tls, off, starttls)
- `SMTP_USERNAME`: the username of the smtp user
- `SMTP_PASSWORD`: the password of the smtp user
- `SMTP_EMBED_IMAGES`: embed images as email attachments

This requires to set the `DOMAIN` variable.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/SMTP-Configuration)

### SHOW_PASSWORD_HINT

Usually, password hints are sent by email. But as vaultwarden is made with small or personal deployment in mind,
hints are also available from the password hint page, so you don't have to configure an email service.

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Password-hint-display)

### Logging

- `LOG_LEVEL`: options are: "trace", "debug", "info", "warn", "error" or "off". NOTE: Using the log level "warn" or "error" still allows Fail2Ban to work properly.
- `USE_SYSLOG`
- `EXTENDED_LOGGING`

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Logging)

### Syncing users from LDAP 

[More information](https://github.com/dani-garcia/vaultwarden/wiki/Syncing-users-from-LDAP)

### Push Notifications

To enable the push notifications you have to get a [Hosting Installation id and Key from here](https://bitwarden.com/host/).

```text
PUSH_ENABLED=true
PUSH_INSTALLATION_ID=CHANGEME
PUSH_INSTALLATION_KEY=CHANGEME
```

### SENDS_ALLOWED

Controls whether users are allowed to create Bitwarden Sends.

### EMERGENCY_ACCESS_ALLOWED

Controls whether users can enable emergency access to their accounts.
