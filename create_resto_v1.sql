-- Datos de muestra para la tabla 'ingrediente'
INSERT IGNORE INTO `RestoAppDB`.`ingrediente` (`nombre`, `cantidad`, `unidad`) VALUES
('Harina', 10000, 'g'),
('Azúcar', 15000, 'g'),
('Sal', 5000, 'g'),
('Leche', 20000, 'ml'),
('Huevos', 12, 'unidades'),
('Chocolate', 8000, 'g'),
('Aceite', 18000, 'ml');

-- Datos de muestra para la tabla 'carta'
INSERT IGNORE INTO `RestoAppDB`.`carta` (`id`) VALUES
(1);

-- Datos de muestra para la tabla 'receta'
INSERT IGNORE INTO `RestoAppDB`.`receta` (`nombre`, `precio`, `descripcion`, `ingrediente_id`, `carta_id`, `peligro`) VALUES
('Torta de Chocolate', 10, 'Deliciosa torta de chocolate', 6, 1, 'Posibles alergenos o advertencias'),
('Panqueques', 8, 'Clásicos panqueques', '1, 2, 5', 1, 'Posibles alergenos o advertencias'),
('Ensalada César', 12, 'Fresca ensalada con pollo', '3, 4', 1, 'Posibles alergenos o advertencias'),
('Salmón al Horno', 15, 'Salmón fresco cocido al horno', 7, 1, 'Posibles alergenos o advertencias');

-- Datos de muestra para la tabla 'ingrediente_has_receta'
INSERT IGNORE INTO `RestoAppDB`.`ingrediente_has_receta` (`ingrediente_id`, `receta_id`, `receta_ingrediente_id`, `cantidad`) VALUES
(6, 1, 6, 200), -- 200 gramos de chocolate para la Torta de Chocolate
(1, 2, 1, 250), -- 250 gramos de harina para los Panqueques
(2, 2, 2, 100), -- 100 gramos de azúcar para los Panqueques
(5, 2, 5, 3),   -- 3 huevos para los Panqueques
(3, 3, 3, 5),   -- 5 gramos de sal para la Ensalada César
(4, 3, 4, 100), -- 100 mililitros de leche para la Ensalada César
(7, 4, 7, 300); -- 300 mililitros de aceite para el Salmón al Horno

-- Datos de muestra para la tabla 'mesa'
INSERT IGNORE INTO `RestoAppDB`.`mesa` (`comensales`, `carta_id`) VALUES
(4, 1),
(6, 1),
(2, 1);
