/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: min-kang <minguk.gaang@gmail.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/08 12:14:32 by min-kang          #+#    #+#             */
/*   Updated: 2022/10/08 12:16:27 by min-kang         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "client.h"

/* the maximum value of PID is 2^15 for 32 bit system and 2^22 for 64 bit system
Unfornuately, we don't have right to use the functions necessary to
figure out the bit system of host machine.
So I decided to code based on 64 bit system */
void	check_arguments(int argc, char **argv)
{
	int	i;

	if (argc != 3)
		ft_quit("Error: Wrong number of arguments.");
	i = 0;
	while (argv[0][i])
		if (!ft_isdigit(argv[1][i]))
			ft_quit("Error: Wrong PID format.");
	if (ft_atol(argv[1]) > PID_MAX_64 || ft_atol(argv[1]) < 1)
		ft_quit("Error: Wrong PID value.");
}

int	main(int argc, char **argv)
{
	check_arguments(argc, argv);
	kill(ft_atoi(argv[1]), SIGUSR1);
}
