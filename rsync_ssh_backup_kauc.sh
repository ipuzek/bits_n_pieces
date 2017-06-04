# CIJELA IvanP ide u backups - OK za prvi put

#rsync -av IvanP administrator@192.168.23.24:backups

# za inkrementalni backup ovako
# sve promjene se evidentiraju u folderu s odgovarajućim datumom, koji se nalazi unutar glavnog (IvanP) foldera
# unutar tog foldera se formira "tree" s izmjenama od tog datuma - vrlo pregledno

rsync --backup --backup-dir=`date +%Y.%m.%d` -a /home/ivan/IvanP/ ivan@192.168.5.13:backups/IvanP/



