import subprocess
try:
    output = subprocess.check_output(['git', 'status'], stderr=subprocess.STDOUT).decode()
    with open('git_status_debug.txt', 'w') as f:
        f.write(output)
except Exception as e:
    with open('git_status_debug.txt', 'w') as f:
        f.write(str(e))
