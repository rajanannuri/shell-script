#!/bin/bash
# defining variable
while read -r name version _;do
#string comparision
echo "${name}==${version}"
done < input.txt
###########
#!/bin/bash
input="pandas 1.0.4 pypi
numpy 1.19.5 pypi"
# using conditions
 while read line;do
name=$(echo "$line" | awk '{print $1}')
version=$(echo "$line" | awk '{print $2}')
echo "${name}==${version}"
done <<< $input
