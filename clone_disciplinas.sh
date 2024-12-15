#!/bin/bash

cd git/
git clone git@github.com:IgorAvilaPereira/scripts.git
git clone git@github.com:IgorAvilaPereira/teste.git

git clone git@github.com:IgorAvilaPereira/pbd2025_1sem.git
git clone git@github.com:IgorAvilaPereira/pbd2025_1sem.wiki.git

git clone git@github.com:IgorAvilaPereira/tbd2025_1sem.git
git clone git@github.com:IgorAvilaPereira/tbd2025_1sem.wiki.git

git clone git@github.com:IgorAvilaPereira/iobd2025_1sem.git
git clone git@github.com:IgorAvilaPereira/iobd2025_1sem.wiki.git

git clone git@github.com:IgorAvilaPereira/ppp2025_1sem.git
git clone git@github.com:IgorAvilaPereira/ppp2025_1sem.wiki.git

git clone git@github.com:IgorAvilaPereira/pmbd2025_1sem.git
git clone git@github.com:IgorAvilaPereira/pmbd2025_1sem.wiki.git

cp teste/nova_aula.sh pbd2025_1sem/
cp teste/atualizar.sh pbd2025_1sem/
cd pbd2025_1sem/
git add * 
git commit -m 'ok'
git push
cd ..

cp teste/nova_aula.sh tbd2025_1sem/
cp teste/atualizar.sh tbd2025_1sem/
cd tbd2025_1sem/
git add * 
git commit -m 'ok'
git push
cd ..


cp teste/nova_aula.sh iobd2025_1sem/
cp teste/atualizar.sh iobd2025_1sem/
cd iobd2025_1sem/
git add * 
git commit -m 'ok'
git push
cd ..


cp teste/nova_aula.sh ppp2025_1sem/
cp teste/atualizar.sh ppp2025_1sem/
cd ppp2025_1sem/
git add * 
git commit -m 'ok'
git push
cd ..


cp teste/nova_aula.sh pmbd2025_1sem/
cp teste/atualizar.sh pmbd2025_1sem/
cd pmbd2025_1sem/
git add * 
git commit -m 'ok'
git push
cd ..
