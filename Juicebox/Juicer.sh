source /pkg/cuda-10.2.89-1/profile


generate_site_positions.py MboI first_draft $Assembly_file

juicer.sh -g first_draft -s MboI -z $Assembly_file -y first_draft_MboI.txt -p chrom.sizes -S postproc -t 40
