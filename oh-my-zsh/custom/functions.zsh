for fn in "${0:a:h}/functions/"*; do
    autoload "$fn"
done
