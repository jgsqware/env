# ATOM

## Backup
```
# Copy settings file
cp ~/.atom/*.{cson,less,coffee} .

# Extract Package List
apm list --installed --bare > packages.list
```

## Restore

## Backup
```
# Copy settings file
cp *.{cson,less,coffee} ~/.atom/

# Install Package List
apm install --packages-file packages.list
```
