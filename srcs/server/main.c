/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: min-kang <minguk.gaang@gmail.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/08 12:14:37 by min-kang          #+#    #+#             */
/*   Updated: 2022/10/09 11:05:44 by min-kang         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "server.h"

void	signal_handler(int sig)
{
	ft_printf("Got the signal %d!\n", sig);
}

int	main(void)
{
	ft_printf("Server launched (PID %d)\n", getpid());
	signal(SIGUSR1, signal_handler);
	while (1)
		pause();
	return (0);
}
