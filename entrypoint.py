import sys
import hashlib

inp = sys.stdin.readlines()
hash_func = inp[0].strip()
message = '\n'.join(inp[1:]).strip()

h = hashlib.new(hash_func)
message = message.decode('iso-8859-2'')
h.update(str.encode(message))

print h.hexdigest()