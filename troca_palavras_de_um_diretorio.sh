find ./ -type f -exec sed -i 's/pg_query/$conexao->query/gI' {} \;
find ./ -type f -exec sed -i 's/pg_fetch_array($result)/$resultado->fetchArray()/gI' {} \;


