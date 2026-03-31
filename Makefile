# ============================================================
# CS 4373/6373 - Pthreads Programming Projects
# Chapter 4: Four_Pi_pth.c | Four_Task_pth.c
# ============================================================

CC      = gcc
CFLAGS  = -Wall -Wextra -O2 -g
LIBS    = -lpthread -lm

TARGETS = Four_Pi_pth Four_Task_pth

.PHONY: all clean

all: $(TARGETS)

# ------------------------------------------------------------
# 4.2 - Pi Estimation
# ------------------------------------------------------------
Four_Pi_pth: Four_Pi_pth.c
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)

# ------------------------------------------------------------
# 4.5 - Task Queue
# ------------------------------------------------------------
Four_Task_pth: Four_Task_pth.c
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)

# ------------------------------------------------------------
# Utility targets
# ------------------------------------------------------------
clean:
	rm -f $(TARGETS)
