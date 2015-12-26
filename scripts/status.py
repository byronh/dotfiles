import i3pystatus
import netifaces
import os
import pwd
import socket


status = i3pystatus.Status(standalone=True)

default_color = '#d8ad4c'
inactive_color = '#3b3b3b'

username = pwd.getpwuid(os.getuid()).pw_name
hostname = socket.gethostname()
interfaces = netifaces.interfaces()
if 'lo' in interfaces:
    interfaces.remove('lo')

# pip: pyalsaaudio netifaces colour keyring basiciw psutil
# aur: i3pystatus-git
status.register('alsa')
status.register('clock', format='%T %p')
status.register('clock', format='%a %B %d %Y')
status.register('weather', location_code='USCA0517', interval=60)
status.register('text', text='{}@{}'.format(username, hostname))
status.register('load', format='load {avg1}')
status.register('mem',
                format='mem {percent_used_mem}%',
                round_size=0,
                color=default_color)
status.register('cpu_usage', format='cpu {usage}%')
for interface in interfaces:
    status.register('network',
                    interface=interface,
                    format_up='{interface}={v4}',
                    format_down='{interface}',
                    color_up=default_color,
                    color_down=inactive_color)

status.run()
