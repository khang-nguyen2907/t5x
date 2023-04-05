# Model dir to save logs, ckpts, etc. in "gs://model_dir" format.
export MODEL_DIR="..."
export T5X_DIR="..."  # directory where the T5X repo is cloned.
export TFDS_DATA_DIR="..."

python3 ${T5X_DIR}/t5x/train.py \
  --gin_file="$T5X_DIR/t5x/examples/t5/t5_1_1/examples/test.gin" \
  --gin.MODEL_DIR=\"${MODEL_DIR}\" \
  --tfds_data_dir=${TFDS_DATA_DIR}