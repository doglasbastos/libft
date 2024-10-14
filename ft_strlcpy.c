/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: doglasbastos <marvin@42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/10 13:23:04 by doglasbas         #+#    #+#             */
/*   Updated: 2024/10/14 17:27:09 by dleite-b         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcpy(char *dest, const char *src, size_t size)
{
	unsigned int	i;
	int				c;

	c = 0;
	while (src[c])
		c++;
	i = 0;
	if (size != 0)
	{
		while (src[i] != '0' && (size -1) > i)
		{
			dest[i] = src[i];
			i++;
		}
	}
	return (c);
}
