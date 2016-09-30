#!sh

#Fix some moved bin files
if [ ! -f "/bin/sh" ]; then
  if [ ! -L "/bin/sh" ]; then
		if [ -f "/usr/bin/sh" ]; then
			ln -s /usr/bin/sh /bin/sh
		fi
  fi
fi
if [ ! -f "/bin/bash" ]; then
  if [ ! -L "/bin/bash" ]; then
		if [ -f "/usr/bin/bash" ]; then
			ln -s /usr/bin/bash /bin/bash
		fi
  fi
fi
if [ ! -f "/bin/true" ]; then
  if [ ! -L "/bin/true" ]; then
		if [ -f "/usr/bin/true" ]; then
			ln -s /usr/bin/true /bin/true
		fi
  fi
fi
if [ ! -f "/bin/false" ]; then
  if [ ! -L "/bin/false" ]; then
		if [ -f "/usr/bin/false" ]; then
			ln -s /usr/bin/false /bin/false
		fi
  fi
fi
