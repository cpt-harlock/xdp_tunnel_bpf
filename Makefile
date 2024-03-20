kern:
	clang -O2 -target bpf -c xdp_tx_iptunnel_kern.c -o xdp_tx_iptunnel_kern.o
user:
	clang xdp_tx_iptunnel_user.c -o xdp_tx_iptunnel_user.o -lbpf
all: kern user
