for filename in UCRProfile-*.htm
do
	echo $filename
	sed "3,74d" $filename  | sed -e 's/\&nbsp;//g; s/<[^>]*>//g; /<\!/,/>;/d; /^[[:space:]]*$/d;' | 
    sed "1,27d" | sed -e '/ choose a /d' -e '/Browse/d' | 
    tac | sed "1,1167d" | tac >> 'cleanedProfiles.txt'
done

