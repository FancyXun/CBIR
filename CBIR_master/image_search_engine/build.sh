python index_features.py --dataset /Users/fancyxun/code/points/cv/data/ukbench/full --features_db output/features.hdf5

python cluster_features.py  --features_db output/features.hdf5 --codebook output/vocab.cpickle --clusters 1536 --percentage 0.25

python extract_bovw.py --features_db output/features.hdf5 --codebook output/vocab.cpickle --bovw_db output/bovw.hdf5 --idf output/idf.cpickle

python build_redis_index.py --bovw_db output/bovw.hdf5

python search.py --dataset /Users/fancyxun/code/points/cv/data/ukbench/full --features_db output/features.hdf5 --bovw_db output/bovw.hdf5 --codebook output/vocab.cpickle --query /Users/fancyxun/code/points/cv/data/ukbench/full/ukbench02575.jpg