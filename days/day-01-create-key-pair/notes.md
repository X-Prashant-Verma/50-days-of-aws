# Day 01 — Create Key Pair

## What Problem This Solves
AWS EC2 instances don't use passwords for SSH access.
Key pairs = asymmetric encryption. AWS stores public key,
you keep private key (.pem). Without it, no shell access.

## What I Did
- Created a Key Pair via AWS Console → EC2 → Key Pairs
- Chose RSA, .pem format (for Linux/Mac SSH)
- Downloaded .pem file immediately (AWS never stores private key again)

## Key Concepts
| Term | Meaning |
|------|---------|
| Key Pair | Public + private key set for EC2 SSH |
| .pem | Private key format for OpenSSH |
| .ppk | PuTTY format (Windows) |
| RSA | Encryption algorithm used |

## Real-World Pattern
DevOps engineer creates one key pair per environment
(dev-key, prod-key). Never reuse prod keys in dev.

## TIL
- Once created, AWS only lets you download .pem ONCE
- Lose it = lose SSH access, must replace key on instance
- Store in `~/.ssh/` with `chmod 400` or SSH rejects it

## Mistake to Avoid
Don't commit .pem to GitHub. Ever.
Add `*.pem` to `.gitignore` immediately.
