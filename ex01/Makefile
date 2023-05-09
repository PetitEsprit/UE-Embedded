# Makefile for GHDL on Windows WSL
#
# /!\ TestBench entity name must be the same as the TestBench File without .vhd
#

SRCS = circuit.vhd
SRCS_TB = circuit_tb.vhd
ENTITY_TB = $(SRCS_TB:.vhd=)

GHDL = ghdl
GTKWAVE = gtkwave
all: $(SRCS) $(SRCS_TB)
	$(GHDL) -a $^
	$(GHDL) -r $(ENTITY_TB) --vcd=wave.vcd
	$(GTKWAVE) wave.vcd
clean:
	rm -f *.cf

fclean: clean
	rm -f wave.vcd

re: fclean all

.PHONY: all clean fclean re