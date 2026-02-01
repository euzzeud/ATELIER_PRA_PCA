mkdir rep_localstack
python3 -m venv ./rep_localstack
pip install --upgrade pip && python3 -m pip install localstack && export S3_SKIP_SIGNATURE_VALIDATION=0
localstack start -d
