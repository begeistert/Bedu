## Ejercicios Sesión 2

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Aplicar los conceptos adquiridos durante la sesión.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de `JetBrains DataGrip` por comodidad).

### 3. Desarrollo :rocket:

Todas las consultas que realices deberás mantenerlas dentro del editor de textos de MySQL Workbench. Al finalizar, guarda este archivo, llendo al menú `File` > `Save script`. 

1. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con `A`.

```sql
# Respuesta
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE 'A%';               
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |employeeNumber|lastName|firstName|
|---|--------------|--------|---------|
|1  |1143          |Bow     |Anthony  |
|2  |1611          |Fixter  |Andy     |

</p>
</details>

---

2. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyo apellido termina con `on`.

```sql
# Respuesta
SELECT employeeNumber, lastName, firstName 
FROM employees
WHERE lastName LIKE '%on';                 
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |employeeNumber|lastName |firstName|
|---|--------------|---------|---------|
|1  |1056          |Patterson|Mary     |
|2  |1088          |Patterson|William  |
|3  |1166          |Thompson |Leslie   |
|4  |1216          |Patterson|Steve    |

</p>
</details>

---

3. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena `on`.

```sql
# Respuesta
SELECT employeeNumber,lastname,firstname 
FROM employees 
WHERE firstname LIKE '%on%';                 
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |employeeNumber|lastname|firstname|
|---|--------------|--------|---------|
|1  |1143          |Bow     |Anthony  |
|2  |1286          |Tseng   |Foon Yue |

</p>
</details>

---

4. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyos nombres tienen seis letras e inician con `G`.

```sql
# Respuesta
SELECT employeeNumber, lastName, firstName 
FROM employees
WHERE firstName LIKE 'G_____';                 
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |employeeNumber|lastName |firstName|
|---|--------------|---------|---------|
|1  |1102          |Bondur   |Gerard   |
|2  |1323          |Vanauf   |George   |
|3  |1370          |Hernandez|Gerard   |

</p>
</details>

---

5. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre *no* inicia con `B`.

```sql
# Respuesta
SELECT employeeNumber, lastName, firstName 
FROM employees
WHERE firstName NOT LIKE 'B%';                
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |employeeNumber|lastName |firstName|
|---|--------------|---------|---------|
|1  |1002          |Murphy   |Diane    |
|2  |1056          |Patterson|Mary     |
|3  |1076          |Firrelli |Jeff     |
|4  |1088          |Patterson|William  |
|5  |1102          |Bondur   |Gerard   |
|6  |1143          |Bow      |Anthony  |
|7  |1165          |Jennings |Leslie   |
|8  |1166          |Thompson |Leslie   |
|9  |1188          |Firrelli |Julie    |
|10 |1216          |Patterson|Steve    |
|11 |1286          |Tseng    |Foon Yue |
|12 |1323          |Vanauf   |George   |
|13 |1337          |Bondur   |Loui     |
|14 |1370          |Hernandez|Gerard   |
|15 |1401          |Castillo |Pamela   |
|16 |1501          |Bott     |Larry    |
|17 |1611          |Fixter   |Andy     |
|18 |1612          |Marsh    |Peter    |
|19 |1619          |King     |Tom      |
|20 |1621          |Nishi    |Mami     |
|21 |1625          |Kato     |Yoshimi  |
|22 |1702          |Gerard   |Martin   |


</p>
</details>

---

6. Dentro de la tabla `products`, obten el código de producto y nombre de los productos cuyo código incluye la cadena `_20`.

```sql
# Respuesta
SELECT productCode, productName 
FROM products
WHERE productCode LIKE '%_20%';               
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |productCode|productName                              |
|---|-----------|-----------------------------------------|
|1  |S10_2016   |1996 Moto Guzzi 1100i                    |
|2  |S18_3320   |1917 Maxwell Touring Car                 |
|3  |S24_2000   |1960 BSA Gold Star DBD34                 |
|4  |S24_2011   |18th century schooner                    |
|5  |S24_2022   |1938 Cadillac V-16 Presidential Limousine|
|6  |S24_3420   |1937 Horch 930V Limousine                |
|7  |S24_4620   |1961 Chevrolet Impala                    |
|8  |S32_2206   |1982 Ducati 996 R                        |
|9  |S32_3207   |1950's Chicago Surface Lines Streetcar   |
|10 |S700_2047  |HMS Bounty                               |

</p>
</details>

---

7. Dentro de la tabla `orderdetails`, obten el total de cada orden.

```sql
# Respuesta
SELECT nombre
SELECT orderNumber, SUM(priceEach) 
FROM orderdetails
GROUP BY orderNumber;                 
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |orderNumber|SUM(priceEach)|
|---|-----------|--------------|
|1  |10100      |301.84        |
|2  |10101      |352.00        |
|3  |10102      |138.68        |
|4  |10103      |1520.37       |
|5  |10104      |1251.89       |
|6  |10105      |1479.71       |
|7  |10106      |1427.28       |
|8  |10107      |793.21        |
|9  |10108      |1432.86       |
|10 |10109      |700.89        |
|11 |10110      |1338.47       |
|12 |10111      |460.16        |
|13 |10112      |282.26        |
|14 |10113      |325.23        |
|15 |10114      |909.72        |
|16 |10115      |515.99        |
|17 |10116      |60.28         |
|18 |10117      |1307.47       |
|19 |10118      |86.15         |
|20 |10119      |1081.44       |
|21 |10120      |1322.67       |
|22 |10121      |439.17        |
|23 |10122      |1598.27       |
|24 |10123      |396.08        |
|25 |10124      |976.51        |
|26 |10125      |227.76        |
|27 |10126      |1623.71       |
|28 |10127      |1601.39       |
|29 |10128      |350.86        |
|30 |10129      |754.23        |
|31 |10130      |168.34        |
|32 |10131      |577.67        |
|33 |10132      |80.00         |
|34 |10133      |628.49        |
|35 |10134      |747.93        |
|36 |10135      |1494.86       |
|37 |10136      |407.73        |
|38 |10137      |385.54        |
|39 |10138      |970.09        |
|40 |10139      |714.16        |
|41 |10140      |1093.98       |
|42 |10141      |857.52        |
|43 |10142      |1570.77       |
|44 |10143      |1227.49       |
|45 |10144      |56.41         |
|46 |10145      |1412.17       |
|47 |10146      |191.24        |
|48 |10147      |997.50        |
|49 |10148      |1374.90       |
|50 |10149      |925.52        |
|51 |10150      |1096.90       |
|52 |10151      |976.09        |
|53 |10152      |336.44        |
|54 |10153      |1304.68       |
|55 |10154      |134.50        |
|56 |10155      |1084.82       |
|57 |10156      |121.28        |
|58 |10157      |475.12        |
|59 |10158      |67.79         |
|60 |10159      |1687.00       |
|61 |10160      |562.16        |
|62 |10161      |1162.60       |
|63 |10162      |782.94        |
|64 |10163      |651.79        |
|65 |10164      |758.85        |
|66 |10165      |1794.94       |
|67 |10166      |285.66        |
|68 |10167      |1271.62       |
|69 |10168      |1472.50       |
|70 |10169      |1130.70       |
|71 |10170      |410.22        |
|72 |10171      |463.18        |
|73 |10172      |716.82        |
|74 |10173      |1310.96       |
|75 |10174      |574.38        |
|76 |10175      |1074.91       |
|77 |10176      |1133.56       |
|78 |10177      |909.30        |
|79 |10178      |989.95        |
|80 |10179      |702.84        |
|81 |10180      |1226.65       |
|82 |10181      |1760.39       |
|83 |10182      |1360.43       |
|84 |10183      |1143.90       |
|85 |10184      |1205.41       |
|86 |10185      |1605.19       |
|87 |10186      |729.73        |
|88 |10187      |710.79        |
|89 |10188      |777.15        |
|90 |10189      |138.57        |
|91 |10190      |254.82        |
|92 |10191      |853.76        |
|93 |10192      |1541.08       |
|94 |10193      |1294.46       |
|95 |10194      |1110.74       |
|96 |10195      |911.46        |
|97 |10196      |978.59        |
|98 |10197      |1109.13       |
|99 |10198      |506.86        |
|100|10199      |189.66        |
|101|10200      |505.54        |
|102|10201      |725.37        |
|103|10202      |506.36        |
|104|10203      |1107.92       |
|105|10204      |1619.73       |
|106|10205      |347.45        |
|107|10206      |1065.55       |
|108|10207      |1560.08       |
|109|10208      |1438.31       |
|110|10209      |646.57        |
|111|10210      |1443.06       |
|112|10211      |1399.57       |
|113|10212      |1541.83       |
|114|10213      |240.59        |
|115|10214      |623.43        |
|116|10215      |916.49        |
|117|10216      |133.94        |
|118|10217      |638.71        |
|119|10218      |262.87        |
|120|10219      |306.16        |
|121|10220      |982.07        |
|122|10221      |490.22        |
|123|10222      |1389.51       |
|124|10223      |1304.29       |
|125|10224      |472.32        |
|126|10225      |1392.48       |
|127|10226      |694.52        |
|128|10227      |1220.54       |
|129|10228      |658.67        |
|130|10229      |1246.31       |
|131|10230      |788.41        |
|132|10231      |340.32        |
|133|10232      |723.90        |
|134|10233      |204.75        |
|135|10234      |775.05        |
|136|10235      |926.24        |
|137|10236      |224.07        |
|138|10237      |810.42        |
|139|10238      |794.15        |
|140|10239      |471.61        |
|141|10240      |396.75        |
|142|10241      |1097.13       |
|143|10242      |36.52         |
|144|10243      |142.74        |
|145|10244      |744.69        |
|146|10245      |956.28        |
|147|10246      |1006.78       |
|148|10247      |757.24        |
|149|10248      |1263.34       |
|150|10249      |344.64        |
|151|10250      |1146.61       |
|152|10251      |660.49        |
|153|10252      |733.69        |
|154|10253      |1469.39       |
|155|10254      |983.52        |
|156|10255      |172.63        |
|157|10256      |146.32        |
|158|10257      |408.39        |
|159|10258      |624.48        |
|160|10259      |1259.09       |
|161|10260      |1152.26       |
|162|10261      |726.83        |
|163|10262      |1217.38       |
|164|10263      |1078.19       |
|165|10264      |526.81        |
|166|10265      |198.25        |
|167|10266      |1556.31       |
|168|10267      |495.98        |
|169|10268      |924.64        |
|170|10269      |152.90        |
|171|10270      |1087.20       |
|172|10271      |1054.03       |
|173|10272      |696.54        |
|174|10273      |1309.01       |
|175|10274      |376.05        |
|176|10275      |1455.41       |
|177|10276      |1285.44       |
|178|10277      |93.28         |
|179|10278      |1034.86       |
|180|10279      |494.03        |
|181|10280      |1518.10       |
|182|10281      |1224.88       |
|183|10282      |1426.43       |
|184|10283      |1107.44       |
|185|10284      |985.48        |
|186|10285      |1170.23       |
|187|10286      |51.60         |
|188|10287      |1801.52       |
|189|10288      |1144.49       |
|190|10289      |320.19        |
|191|10290      |164.12        |
|192|10291      |1347.49       |
|193|10292      |1074.32       |
|194|10293      |1004.59       |
|195|10294      |98.32         |
|196|10295      |446.80        |
|197|10296      |1079.12       |
|198|10297      |594.71        |
|199|10298      |166.43        |
|200|10299      |976.32        |
|201|10300      |798.48        |
|202|10301      |1084.81       |
|203|10302      |574.41        |
|204|10303      |92.61         |
|205|10304      |1479.94       |
|206|10305      |1378.68       |
|207|10306      |1612.26       |
|208|10307      |741.25        |
|209|10308      |1334.48       |
|210|10309      |563.75        |
|211|10310      |1656.26       |
|212|10311      |1033.82       |
|213|10312      |1494.19       |
|214|10313      |1088.17       |
|215|10314      |1549.34       |
|216|10315      |568.27        |
|217|10316      |1375.59       |
|218|10317      |69.55         |
|219|10318      |846.35        |
|220|10319      |742.37        |
|221|10320      |551.11        |
|222|10321      |1535.56       |
|223|10322      |1345.23       |
|224|10323      |185.16        |
|225|10324      |1319.42       |
|226|10325      |955.80        |
|227|10326      |517.70        |
|228|10327      |665.06        |
|229|10328      |1054.80       |
|230|10329      |1445.10       |
|231|10330      |385.78        |
|232|10331      |1451.43       |
|233|10332      |1347.08       |
|234|10333      |811.28        |
|235|10334      |657.49        |
|236|10335      |159.71        |
|237|10336      |1357.70       |
|238|10337      |813.03        |
|239|10338      |311.22        |
|240|10339      |1274.96       |
|241|10340      |580.85        |
|242|10341      |1003.19       |
|243|10342      |1063.74       |
|244|10343      |514.45        |
|245|10344      |573.86        |
|246|10345      |38.98         |
|247|10346      |515.95        |
|248|10347      |1240.73       |
|249|10348      |817.43        |
|250|10349      |1083.64       |
|251|10350      |1412.82       |
|252|10351      |434.87        |
|253|10352      |271.25        |
|254|10353      |685.32        |
|255|10354      |1285.99       |
|256|10355      |796.66        |
|257|10356      |795.62        |
|258|10357      |1060.42       |
|259|10358      |1297.97       |
|260|10359      |829.24        |
|261|10360      |1524.68       |
|262|10361      |1052.87       |
|263|10362      |458.28        |
|264|10363      |1352.37       |
|265|10364      |38.22         |
|266|10365      |267.06        |
|267|10366      |376.35        |
|268|10367      |1072.73       |
|269|10368      |401.41        |
|270|10369      |746.80        |
|271|10370      |898.11        |
|272|10371      |1116.35       |
|273|10372      |941.08        |
|274|10373      |1320.42       |
|275|10374      |617.75        |
|276|10375      |1299.10       |
|277|10376      |98.65         |
|278|10377      |633.58        |
|279|10378      |847.09        |
|280|10379      |503.79        |
|281|10380      |1034.10       |
|282|10381      |923.04        |
|283|10382      |1426.01       |
|284|10383      |1155.30       |
|285|10384      |386.20        |
|286|10385      |140.83        |
|287|10386      |1352.06       |
|288|10387      |79.91         |
|289|10388      |767.12        |
|290|10389      |747.53        |
|291|10390      |1479.36       |
|292|10391      |911.23        |
|293|10392      |263.10        |
|294|10393      |1067.87       |
|295|10394      |556.06        |
|296|10395      |487.22        |
|297|10396      |778.38        |
|298|10397      |351.72        |
|299|10398      |1355.03       |
|300|10399      |787.39        |
|301|10400      |741.11        |
|302|10401      |886.70        |
|303|10402      |238.79        |
|304|10403      |793.27        |
|305|10404      |771.80        |
|306|10405      |500.04        |
|307|10406      |375.54        |
|308|10407      |1074.29       |
|309|10408      |41.03         |
|310|10409      |132.13        |
|311|10410      |743.35        |
|312|10411      |946.47        |
|313|10412      |1034.15       |
|314|10413      |763.06        |
|315|10414      |1163.89       |
|316|10415      |324.13        |
|317|10416      |1084.48       |
|318|10417      |671.33        |
|319|10418      |727.23        |
|320|10419      |1471.56       |
|321|10420      |1014.01       |
|322|10421      |211.86        |
|323|10422      |138.88        |
|324|10423      |403.05        |
|325|10424      |612.75        |
|326|10425      |1231.98       |


</p>
</details>

---

8. Dentro de la tabla `orders` obten el número de órdenes por año.

```sql
# Respuesta
SELECT YEAR(orderDate), count(*)
FROM orders
GROUP BY YEAR(orderDate);                
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |YEAR(orderDate)|count(*)|
|---|---------------|--------|
|1  |2003           |111     |
|2  |2004           |151     |
|3  |2005           |64      |

</p>
</details>

---

9. Obten el apellido y nombre de los empleados cuya oficina está ubicada en `USA`.

```sql
# Respuesta
SELECT lastName,firstName 
FROM employees 
WHERE officeCode IN (
		SELECT officeCode 
		FROM offices 
		WHERE country = 'USA');                 
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |lastName |firstName|
|---|---------|---------|
|1  |Murphy   |Diane    |
|2  |Patterson|Mary     |
|3  |Firrelli |Jeff     |
|4  |Bow      |Anthony  |
|5  |Jennings |Leslie   |
|6  |Thompson |Leslie   |
|7  |Firrelli |Julie    |
|8  |Patterson|Steve    |
|9  |Tseng    |Foon Yue |
|10 |Vanauf   |George   |

</p>
</details>

---

10. Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.

```sql
# Respuesta
SELECT customerNumber, checkNumber, amount 
FROM payments 
ORDER BY amount DESC 
LIMIT 1;                  
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |customerNumber|checkNumber|amount   |
|---|--------------|-----------|---------|
|1  |141           |JE105477   |120166.58|

</p>
</details>

---

11. Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.

```sql
# Respuesta
SELECT customerNumber, checkNumber, amount
FROM payments
WHERE amount > (
    SELECT avg(amount)
    FROM payments
    )
GROUP BY customerNumber, checkNumber;                 
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |customerNumber|checkNumber|amount   |
|---|--------------|-----------|---------|
|1  |112           |HQ55022    |32641.98 |
|2  |112           |ND748579   |33347.88 |
|3  |114           |GG31455    |45864.03 |
|4  |114           |MA765515   |82261.22 |
|5  |114           |NR27552    |44894.74 |
|6  |119           |LN373447   |47924.19 |
|7  |119           |NG94694    |49523.67 |
|8  |121           |DB889831   |50218.95 |
|9  |121           |MA302151   |34638.14 |
|10 |124           |AE215433   |101244.59|
|11 |124           |BG255406   |85410.87 |
|12 |124           |ET64396    |83598.04 |
|13 |124           |HI366474   |47142.70 |
|14 |124           |HR86578    |55639.66 |
|15 |124           |KI131716   |111654.40|
|16 |124           |LF217299   |43369.30 |
|17 |124           |NT141748   |45084.38 |
|18 |128           |FH668230   |33820.62 |
|19 |131           |MA724562   |50025.35 |
|20 |131           |NB445135   |35321.97 |
|21 |141           |AU364101   |36251.03 |
|22 |141           |DB583216   |36140.38 |
|23 |141           |DL460618   |46895.48 |
|24 |141           |HJ32686    |59830.55 |
|25 |141           |ID10962    |116208.40|
|26 |141           |IN446258   |65071.26 |
|27 |141           |JE105477   |120166.58|
|28 |141           |JN355280   |49539.37 |
|29 |141           |JN722010   |40206.20 |
|30 |141           |KT52578    |63843.55 |
|31 |141           |MC46946    |35420.74 |
|32 |144           |IR846303   |36005.71 |
|33 |145           |JJ246391   |53959.21 |
|34 |146           |FP549817   |40978.53 |
|35 |146           |FU793410   |49614.72 |
|36 |146           |LJ160635   |39712.10 |
|37 |148           |BI507030   |44380.15 |
|38 |148           |KM172879   |105743.00|
|39 |151           |BF686658   |58793.53 |
|40 |151           |IP568906   |58841.35 |
|41 |151           |KI884577   |39964.63 |
|42 |157           |HI618861   |35152.12 |
|43 |157           |NN711988   |63357.13 |
|44 |161           |BR478494   |50743.65 |
|45 |161           |NI908214   |38675.13 |
|46 |166           |BQ327613   |38785.48 |
|47 |166           |DC979307   |44160.92 |
|48 |167           |GN228846   |85024.46 |
|49 |171           |IL104425   |42783.81 |
|50 |172           |CE51751    |51209.58 |
|51 |172           |EH208589   |33383.14 |
|52 |175           |PI15215    |42044.77 |
|53 |177           |CI381435   |47177.59 |
|54 |181           |OH367219   |44400.50 |
|55 |186           |AK412714   |37602.48 |
|56 |186           |KA602407   |34341.08 |
|57 |187           |AM968797   |52825.29 |
|58 |187           |BQ39062    |47159.11 |
|59 |187           |KL124726   |48425.69 |
|60 |189           |NM916675   |32538.74 |
|61 |201           |OO846801   |37258.94 |
|62 |202           |HI358554   |36527.61 |
|63 |202           |IQ627690   |33594.58 |
|64 |204           |GC697638   |51152.86 |
|65 |205           |LL562733   |50342.74 |
|66 |205           |NM739638   |39580.60 |
|67 |209           |BOAF82044  |35157.75 |
|68 |209           |PH785937   |36069.26 |
|69 |211           |BJ535230   |45480.79 |
|70 |216           |MM342086   |40473.86 |
|71 |227           |MQ413968   |36164.46 |
|72 |227           |NU21326    |53745.34 |
|73 |239           |NQ865547   |80375.24 |
|74 |240           |IF245157   |46788.14 |
|75 |242           |AF40894    |33818.34 |
|76 |249           |IJ399820   |33924.24 |
|77 |249           |NE404084   |48298.99 |
|78 |256           |HE84936    |53116.99 |
|79 |259           |EU280955   |61234.67 |
|80 |260           |IO164641   |37527.58 |
|81 |276           |KM841847   |38547.19 |
|82 |276           |LE432182   |41554.73 |
|83 |278           |BJ483870   |37654.09 |
|84 |278           |GP636783   |52151.81 |
|85 |278           |NI983021   |37723.79 |
|86 |282           |JT819493   |35806.73 |
|87 |286           |DR578578   |47411.33 |
|88 |286           |KH910279   |43134.04 |
|89 |298           |AJ574927   |47375.92 |
|90 |298           |LF501133   |61402.00 |
|91 |299           |AD304085   |36798.88 |
|92 |311           |DG336041   |46770.52 |
|93 |311           |FA728475   |32723.04 |
|94 |314           |LQ244073   |45352.47 |
|95 |319           |HL685576   |42339.76 |
|96 |319           |OM548174   |36092.40 |
|97 |320           |HO576374   |41016.75 |
|98 |320           |MU817160   |52548.49 |
|99 |321           |DJ15149    |85559.12 |
|100|321           |LA556321   |46781.66 |
|101|323           |AL493079   |75020.13 |
|102|323           |ES347491   |37281.36 |
|103|323           |PQ803830   |39440.59 |
|104|324           |HB150714   |37455.77 |
|105|334           |CS435306   |45785.34 |
|106|339           |DA98827    |34606.28 |
|107|350           |CI471510   |50824.66 |
|108|353           |CO351193   |49705.52 |
|109|353           |HJ618252   |46656.94 |
|110|357           |NB291497   |36442.34 |
|111|363           |HL575273   |50799.69 |
|112|363           |PN238558   |55425.77 |
|113|379           |FR499138   |32680.31 |
|114|382           |CC871084   |35826.33 |
|115|382           |PH29054    |42813.83 |
|116|385           |EK785462   |51001.22 |
|117|386           |DO106109   |38524.29 |
|118|386           |HG438769   |51619.02 |
|119|398           |AJ478695   |33967.73 |
|120|398           |KB54275    |48927.64 |
|121|406           |HJ217687   |49165.16 |
|122|412           |GH197075   |35034.57 |
|123|448           |KR822727   |48809.90 |
|124|450           |EF485824   |59551.38 |
|125|455           |HA777606   |38139.18 |
|126|458           |DD995006   |33145.56 |
|127|458           |OO606861   |57131.92 |
|128|462           |PE176846   |48355.87 |
|129|471           |CO645196   |35505.63 |
|130|475           |PB951268   |36070.47 |
|131|484           |JH546765   |47513.19 |
|132|486           |HS86661    |45994.07 |
|133|495           |BH167026   |59265.14 |
|134|496           |MN89921    |52166.00 |

</p>
</details>

---

12. Obten el nombre de aquellos clientes que no han hecho ninguna orden.

```sql
# Respuesta
SELECT customerName 
FROM customers
WHERE customerNumber NOT IN 
   (SELECT customerNumber
   FROM orders);               
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |customerName                  |
|---|------------------------------|
|1  |Havel & Zbyszek Co            |
|2  |American Souvenirs Inc        |
|3  |Porto Imports Co.             |
|4  |Asian Shopping Network, Co    |
|5  |Natürlich Autos               |
|6  |ANG Resellers                 |
|7  |Messner Shopping Network      |
|8  |Franken Gifts, Co             |
|9  |BG&E Collectables             |
|10 |Schuyler Imports              |
|11 |Der Hund Imports              |
|12 |Cramer Spezialitäten, Ltd     |
|13 |Asian Treasures, Inc.         |
|14 |SAR Distributors, Co          |
|15 |Kommission Auto               |
|16 |Lisboa Souveniers, Inc        |
|17 |Precious Collectables         |
|18 |Stuttgart Collectable Exchange|
|19 |Feuer Online Stores, Inc      |
|20 |Warburg Exchange              |
|21 |Anton Designs, Ltd.           |
|22 |Mit Vergnügen & Co.           |
|23 |Kremlin Collectables, Co.     |
|24 |Raanan Stores, Inc            |

</p>
</details>

---

13. Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.

```sql
# Respuesta
SELECT max(quantityOrdered) AS max, min(quantityOrdered) AS min, avg(quantityOrdered) AS promedio
FROM orderdetails;                 
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |max|min|promedio|
|---|---|---|--------|
|1  |97 |6  |35.2190 |

</p>
</details>

---

14. Dentro de la tabla `orders`, obten el número de órdenes que hay por cada estado.

```sql
# Respuesta
SELECT (
	  SELECT state 
		FROM customers 
		WHERE customerNumber = o.customerNumber) AS state, count(*) AS num_orders 
FROM orders AS o
GROUP BY state;                 
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |state        |num_orders|
|---|-------------|----------|
|1  |             |180       |
|2  |NV           |3         |
|3  |Victoria     |8         |
|4  |CA           |45        |
|5  |NY           |18        |
|6  |PA           |9         |
|7  |MA           |23        |
|8  |CT           |8         |
|9  |Osaka        |2         |
|10 |BC           |4         |
|11 |Québec       |3         |
|12 |Isle of Wight|2         |
|13 |NSW          |8         |
|14 |NJ           |3         |
|15 |Queensland   |3         |
|16 |NH           |3         |
|17 |Tokyo        |4         |

</p>
</details>

<br/>
