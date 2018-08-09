

--
-- Base de datos: `supervideos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato`
--

CREATE TABLE `formato` (
  `cod_form` int(11) NOT NULL,
  `nom_form` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `formato`
--

INSERT INTO `formato` (`cod_form`, `nom_form`) VALUES
(1, 'DVD'),
(4, 'BLUE RAY'),
(5, 'VCD'),
(6, 'VHS'),
(7, 'ATA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `cod_gen` int(11) NOT NULL,
  `nom_gen` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`cod_gen`, `nom_gen`) VALUES
(1, 'Accion'),
(7, 'Comedia'),
(9, 'Terror'),
(10, 'Infantil'),
(11, 'Drama'),
(12, 'Ficcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `cod_pel` int(11) NOT NULL,
  `nom_pel` varchar(55) NOT NULL,
  `prot_pel` int(11) NOT NULL,
  `gen_pel` int(11) NOT NULL,
  `form_pel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`cod_pel`, `nom_pel`, `prot_pel`, `gen_pel`, `form_pel`) VALUES
(1, 'Rambo I', 14, 1, 1),
(2, 'Nico', 2, 1, 1),
(3, 'La Mascara', 16, 7, 5),
(4, 'Rocky I', 14, 1, 5),
(5, 'Manos de Tijera', 13, 10, 6),
(6, 'El Vengador Fantasma', 15, 9, 1),
(7, 'El Mariachi', 11, 1, 5),
(8, 'Titanic', 12, 11, 4),
(9, 'Se Busca', 18, 1, 4),
(10, 'Rocky II La Revancha', 14, 1, 6),
(11, 'Ice Ventura', 16, 7, 5),
(12, 'La balada del pistolero', 11, 1, 5),
(13, 'Pandillas de New York', 12, 11, 5),
(14, 'Azul Marino', 2, 1, 5),
(15, 'El mago de Oz', 13, 10, 1),
(16, 'Mentiroso Mentiroso', 16, 7, 1),
(17, 'Mi pobre angelito', 10, 10, 6),
(18, 'El Rey de la Guerra', 15, 9, 1),
(19, 'La fortaleza', 1, 1, 5),
(20, 'Doctor Dolitle', 3, 7, 1),
(21, 'La Revancha', 1, 1, 1),
(22, 'Exterminador', 5, 1, 6),
(23, 'Lara Croft', 18, 1, 4),
(24, 'Los Invencibles', 14, 1, 1),
(25, 'Guerra de pandillas', 20, 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `protagonistas`
--

CREATE TABLE `protagonistas` (
  `cod_prot` int(11) NOT NULL,
  `nom_prot` varchar(55) NOT NULL,
  `nal_prot` varchar(55) NOT NULL,
  `gen_prot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `protagonistas`
--

INSERT INTO `protagonistas` (`cod_prot`, `nom_prot`, `nal_prot`, `gen_prot`) VALUES
(1, 'Jean Claude Van Dame', 'Frances', 1),
(2, 'Steven Seagal', 'EEUU', 1),
(3, 'Eddy Murphy', 'EEUU', 7),
(5, 'Arnold Schwarzenegger', 'EEUU', 1),
(10, 'Macaulay Culkin', 'EEUU', 10),
(11, 'Antonio Banderas', 'EspaÃ±ol', 1),
(12, 'Leonardo Di Caprio', 'EEUU', 11),
(13, 'Jhonny Depp', 'EEUU', 10),
(14, 'Silvestre Stallone', 'Italiano', 1),
(15, 'Nicolas Cage', 'EEUU', 9),
(16, 'Jim Carrey', 'EEUU', 7),
(17, 'Salma Hayek', 'Mexico', 1),
(18, 'Angelina Jolie', 'EEUU', 1),
(19, 'Wesley Snipes', 'EEUU', 9),
(20, 'Jhon Leguizamo', 'Colombiano', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formato`
--
ALTER TABLE `formato`
  ADD PRIMARY KEY (`cod_form`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`cod_gen`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`cod_pel`);

--
-- Indices de la tabla `protagonistas`
--
ALTER TABLE `protagonistas`
  ADD PRIMARY KEY (`cod_prot`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `cod_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `cod_gen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `cod_pel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `protagonistas`
--
ALTER TABLE `protagonistas`
  MODIFY `cod_prot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
