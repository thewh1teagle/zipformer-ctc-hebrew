uv venv -p3.12
uv pip install ~/Documents/wheels/k2-1.24.4.dev20260128+cuda13.0.torch2.10.0-cp312-cp312-linux_aarch64.whl 
uv pip install -U git+https://github.com/lhotse-speech/lhotse@e0a36f
uv pip install -U torch torchaudio --index-url https://download.pytorch.org/whl/cu130

uv run python -c "import torch; print('torch:', torch.__version__); print('cuda available:', torch.cuda.is_available()); print('cuda device:', torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'none')"
uv run python -c "import k2; print('k2:', k2.__dev_version__)"

source .venv/bin/activate

git clone https://github.com/k2-fsa/icefall.git
cd icefall/egs/librispeech/ASR