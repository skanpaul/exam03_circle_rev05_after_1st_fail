NAME = mini_paint

CC = gcc
CFLAGS = -Wall -Wextra -Werror

RM = rm -f

SRC = mini_paint.c
OBJ = $(SRC:.c=.o)


all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -lm -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all