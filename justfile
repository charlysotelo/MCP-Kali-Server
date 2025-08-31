setup_kali:
    test -d kali_venv || (python3 -m venv kali_venv && . kali_venv/bin/activate && pip install --upgrade pip && pip install -r kali_server_requirements.txt)

setup_mcp:
    test -d mcp_venv || (python3 -m venv mcp_venv && . mcp_venv/bin/activate && pip install --upgrade pip && pip install -r mcp_server_requirements.txt)

run_kali_server: setup_kali
    . kali_venv/bin/activate && python kali_server.py

run_mcp_server: setup_mcp
    . mcp_venv/bin/activate && python mcp_server.py

clean:
    rm -rf kali_venv
    rm -rf mcp_venv
