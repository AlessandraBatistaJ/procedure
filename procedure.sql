DELIMITER $$

CREATE PROCEDURE RelatorioComprasDiarias()
BEGIN
    SELECT 
        DataCompra, 
        COUNT(*) AS QuantidadeCompras, 
        SUM(Quantidade) AS TotalJogosVendidos
    FROM Compras
    GROUP BY DataCompra
    ORDER BY DataCompra DESC;
END$$

DELIMITER ;

CALL RelatorioComprasDiarias();
