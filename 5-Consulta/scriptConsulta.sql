SELECT * 
FROM VEICULO 
WHERE cpfProprietario = '12345678901';

SELECT * 
FROM PROPRIETARIO 
WHERE nome LIKE '%Mariana%';

SELECT I.idInfracao, I.dataHora, I.velocidadeAferida, I.latitude, I.longitude,
       V.placa, V.chassi, V.corPredominante, V.anoFabricacao, V.cpfProprietario
FROM INFRACAO I
JOIN VEICULO V ON I.placaVeiculo = V.placa
WHERE I.dataHora BETWEEN '2023-01-01 00:00:00' AND '2023-01-31 23:59:59';

SELECT M.nomeModelo, COUNT(V.placa) AS numeroVeiculos
FROM VEICULO V
JOIN MODELO M ON V.idModelo = M.idModelo
GROUP BY M.nomeModelo
ORDER BY numeroVeiculos DESC;

