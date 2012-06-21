echo "parametros"
echo "1=nome do diretorio a ser criado"
echo "2=lista de nomes"
echo "3=modelos/*.svg"
mkdir certificados 
cd certificados

echo ""
echo "gerando certificados..."

while read i
do 
    j=`echo $i | cut -d , -f 2`
	echo $j
	cat ../$3 | sed 's/ALUNO/'"$j"'/' > tmp.svg
	ex=".svg"
	name=$j$ex
	k=`echo $name | sed 's/ //g'`
	mv tmp.svg "$k"

done < ../$2

echo "concluido..."
cd ..
mv certificados $1
