# Plan: Zipformer CTC Blank Skip

## TODO
- [ ] Blocked by https://github.com/k2-fsa/k2/issues/1344 — need to do a POC on DGX Spark first.
- [ ] Blocked by datasets at https://huggingface.co/ivrit-ai — not organized; determine which datasets are needed.
- [ ] Create scripts to download and organize datasets for training.
- [ ] Icefall recipe setup is hard; review and improve the setup: https://icefall.readthedocs.io/en/latest/recipes/Non-streaming-ASR/librispeech/zipformer_ctc_blankskip.html
- [ ] Validate training with a small subset and a single step/epoch.
- [ ] After validation, export to ONNX and verify it works before heavy training.
