export MODEL=llama-30b
export INTERVENTION=few_shot
export EVALKWARGS='{"per_device_batch_size": 2}'
export TRAINKWARGS='{}'

CATEGORY=$1
sbatch --gpus 1 --job-name "$CATEGORY-$MODEL-$INTERVENTION" --output "logs/$CATEGORY-$MODEL-$INTERVENTION.out" scripts/compute_generalization_metrics.sh "$MODEL" "$INTERVENTION" "$EVALKWARGS" "$TRAINKWARGS" "$CATEGORY"