#Orthology Script

This script is designed to process the output of HaMStR and do an initial orthology determination. A simple bash file is provided in the repository that can be used (probably will modification) to concatenate genes from fa_dir_* directories from HaMStR output

The following programs/scripts are required to be in your path before running:

-GNU Parallel (http://www.gnu.org/software/parallel/)

-uniqhaplo.pl (http://raven.iab.alaska.edu/~ntakebay/teaching/programming/perl-scripts/uniqHaplo.pl)

-nentferner.pl (https://github.com/mptrsen/HaMStRad/blob/master/nentferner.pl)

-AlignmentCompare (https://github.com/DamienWaits/Alignment_Compare). Class file must be compiled

-MAFFT for sequence alignment (http://mafft.cbrc.jp/alignment/software/)

-FastTree (http://www.microbesonline.org/fasttree/)

-Aliscore (https://www.zfmk.de/en/research/research-centres-and-groups/aliscore)

-Alicut (https://www.zfmk.de/en/research/research-centres-and-groups/utilities)

-PhyloTreePruner (http://sourceforge.net/projects/phylotreepruner/)

#Required Input
This script requires homologous genes as determined by HaMStR in fasta format. Please make sure the file suffix for each file is ".fa"
Variables at top of script must also be modified before running. Please read through script before running to understand what is happenening and to make sure all programs are in your path. The script is commented before each major step.
