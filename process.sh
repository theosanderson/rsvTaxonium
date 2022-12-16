flowalign --reference areference.fasta sequences.fasta  > aligned.fa
# do python bit to get filtered.fa
faToVcf -ref=KJ627695 -includeRef filtered.fa filtered.vcf
faToVcf -ref=KJ627695 -includeRef aligned.fa all.vcf
usher -t nextstrain.nwk -v seqs.vcf -o global_assignments.pb -c
usher --vcf all.vcf --load-mutation-annotated-tree global_assignments.pb