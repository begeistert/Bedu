## Reto 3: Agrupamientos

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuántos registros hay por cada uno de los puestos?

```sql
# Respuesta
SELECT nombre, count(*) cantidad
FROM puesto
GROUP BY nombre
ORDER BY cantidad DESC;                
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-03/Captura-01.png">
  </a>
</p>
</details>

|#  |nombre                              |cantidad|
|---|------------------------------------|--------|
|1  |Nurse Practicioner                  |16      |
|2  |Marketing Manager                   |16      |
|3  |Project Manager                     |15      |
|4  |Research Associate                  |14      |
|5  |Editor                              |14      |
|6  |Business Systems Development Analyst|14      |
|7  |Data Coordiator                     |13      |
|8  |Physical Therapy Assistant          |13      |
|9  |Assistant Professor                 |13      |
|10 |Financial Advisor                   |12      |
|11 |Sales Representative                |12      |
|12 |Executive Secretary                 |12      |
|13 |VP Marketing                        |12      |
|14 |Compensation Analyst                |12      |
|15 |VP Quality Control                  |12      |
|16 |Product Engineer                    |12      |
|17 |General Manager                     |11      |
|18 |Clinical Specialist                 |11      |
|19 |Occupational Therapist              |11      |
|20 |Recruiting Manager                  |11      |
|21 |Mechanical Systems Engineer         |11      |
|22 |Electrical Engineer                 |11      |
|23 |Marketing Assistant                 |11      |
|24 |Paralegal                           |11      |
|25 |Social Worker                       |10      |
|26 |Structural Engineer                 |10      |
|27 |Senior Editor                       |10      |
|28 |Speech Pathologist                  |10      |
|29 |Help Desk Technician                |10      |
|30 |Community Outreach Specialist       |10      |
|31 |Environmental Tech                  |10      |
|32 |Nurse                               |10      |
|33 |Senior Cost Accountant              |10      |
|34 |VP Accounting                       |10      |
|35 |Pharmacist                          |10      |
|36 |Associate Professor                 |10      |
|37 |Professor                           |10      |
|38 |Staff Scientist                     |9       |
|39 |Teacher                             |9       |
|40 |Recruiter                           |9       |
|41 |Quality Control Specialist          |9       |
|42 |Senior Quality Engineer             |9       |
|43 |Nuclear Power Engineer              |9       |
|44 |Internal Auditor                    |9       |
|45 |Account Executive                   |9       |
|46 |Technical Writer                    |9       |
|47 |Environmental Specialist            |9       |
|48 |Analog Circuit Design manager       |8       |
|49 |Junior Executive                    |8       |
|50 |Director of Sales                   |8       |
|51 |Graphic Designer                    |8       |
|52 |Senior Financial Analyst            |8       |
|53 |Cost Accountant                     |8       |
|54 |Sales Associate                     |8       |
|55 |Librarian                           |8       |
|56 |Software Consultant                 |8       |
|57 |Chief Design Engineer               |8       |
|58 |Quality Engineer                    |8       |
|59 |Actuary                             |8       |
|60 |Information Systems Manager         |7       |
|61 |Dental Hygienist                    |7       |
|62 |VP Sales                            |7       |
|63 |Chemical Engineer                   |7       |
|64 |Assistant Manager                   |7       |
|65 |Geological Engineer                 |7       |
|66 |Help Desk Operator                  |7       |
|67 |VP Product Management               |7       |
|68 |Human Resources Manager             |6       |
|69 |Financial Analyst                   |6       |
|70 |Biostatistician IV                  |6       |
|71 |Tax Accountant                      |6       |
|72 |Account Coordinator                 |6       |
|73 |Legal Assistant                     |6       |
|74 |Developer II                        |6       |
|75 |Senior Developer                    |6       |
|76 |Operator                            |6       |
|77 |Assistant Media Planner             |6       |
|78 |Desktop Support Technician          |5       |
|79 |Web Designer IV                     |5       |
|80 |Civil Engineer                      |5       |
|81 |Media Manager III                   |5       |
|82 |Administrative Assistant III        |5       |
|83 |GIS Technical Architect             |5       |
|84 |Payment Adjustment Coordinator      |5       |
|85 |Analyst Programmer                  |5       |
|86 |Budget/Accounting Analyst IV        |5       |
|87 |Food Chemist                        |5       |
|88 |Budget/Accounting Analyst III       |4       |
|89 |Safety Technician IV                |4       |
|90 |Design Engineer                     |4       |
|91 |Biostatistician I                   |4       |
|92 |Administrative Officer              |4       |
|93 |Senior Sales Associate              |4       |
|94 |Accountant IV                       |4       |
|95 |Computer Systems Analyst I          |4       |
|96 |Biostatistician III                 |4       |
|97 |Automation Specialist III           |4       |
|98 |Developer III                       |4       |
|99 |Statistician I                      |4       |
|100|Structural Analysis Engineer        |4       |
|101|Engineer IV                         |4       |
|102|Database Administrator IV           |4       |
|103|Accounting Assistant III            |3       |
|104|Staff Accountant IV                 |3       |
|105|Software Test Engineer III          |3       |
|106|Human Resources Assistant I         |3       |
|107|Human Resources Assistant II        |3       |
|108|Registered Nurse                    |3       |
|109|Software Engineer I                 |3       |
|110|Staff Accountant II                 |3       |
|111|Programmer II                       |3       |
|112|Systems Administrator III           |3       |
|113|Accounting Assistant II             |3       |
|114|Engineer II                         |3       |
|115|Office Assistant III                |3       |
|116|Health Coach IV                     |3       |
|117|Developer IV                        |3       |
|118|Staff Accountant I                  |3       |
|119|Computer Systems Analyst III        |3       |
|120|Research Nurse                      |3       |
|121|Geologist III                       |3       |
|122|Web Developer II                    |3       |
|123|Database Administrator III          |3       |
|124|Geologist II                        |3       |
|125|Health Coach I                      |3       |
|126|Statistician IV                     |3       |
|127|Health Coach III                    |3       |
|128|Statistician III                    |3       |
|129|Engineer III                        |3       |
|130|Programmer Analyst II               |2       |
|131|Computer Systems Analyst II         |2       |
|132|Software Engineer IV                |2       |
|133|Database Administrator II           |2       |
|134|Programmer III                      |2       |
|135|Programmer Analyst IV               |2       |
|136|Research Assistant IV               |2       |
|137|Web Developer IV                    |2       |
|138|Geologist IV                        |2       |
|139|Administrative Assistant II         |2       |
|140|Database Administrator I            |2       |
|141|Automation Specialist II            |2       |
|142|Statistician II                     |2       |
|143|Media Manager IV                    |2       |
|144|Programmer Analyst III              |2       |
|145|Accountant I                        |2       |
|146|Human Resources Assistant III       |2       |
|147|Safety Technician III               |2       |
|148|Automation Specialist I             |2       |
|149|Media Manager II                    |2       |
|150|Web Designer I                      |2       |
|151|Web Designer III                    |2       |
|152|Office Assistant IV                 |2       |
|153|Account Representative IV           |2       |
|154|Account Representative II           |2       |
|155|Web Developer III                   |1       |
|156|Safety Technician I                 |1       |
|157|Accountant III                      |1       |
|158|Accounting Assistant I              |1       |
|159|Software Test Engineer I            |1       |
|160|Administrative Assistant I          |1       |
|161|Health Coach II                     |1       |
|162|Office Assistant II                 |1       |
|163|Account Representative III          |1       |
|164|Web Developer I                     |1       |
|165|Software Test Engineer IV           |1       |
|166|Systems Administrator IV            |1       |
|167|Software Test Engineer II           |1       |
|168|Automation Specialist IV            |1       |
|169|Research Assistant III              |1       |
|170|Web Designer II                     |1       |
|171|Engineer I                          |1       |
|172|Office Assistant I                  |1       |
|173|Human Resources Assistant IV        |1       |
|174|Budget/Accounting Analyst II        |1       |
|175|Biostatistician II                  |1       |
|176|Systems Administrator II            |1       |
|177|Research Assistant II               |1       |
|178|Budget/Accounting Analyst I         |1       |
|179|Computer Systems Analyst IV         |1       |
|180|Programmer IV                       |1       |
|181|Geologist I                         |1       |

</p>
</details>

---

- ¿Cuánto dinero se paga en total por puesto?

```sql
# Respuesta
SELECT nombre, sum(salario) total
FROM puesto
GROUP BY nombre
ORDER BY total DESC;                 
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-03/Captura-02.png">
  </a>
</p>
</details>

|#  |nombre                              |total             |
|---|------------------------------------|------------------|
|1  |Project Manager                     |319920.94999999995|
|2  |Marketing Manager                   |314634.11000000004|
|3  |Nurse Practicioner                  |296384.04         |
|4  |Editor                              |295937.8          |
|5  |Business Systems Development Analyst|287700.92000000004|
|6  |Data Coordiator                     |270557.2          |
|7  |Assistant Professor                 |259330.11999999997|
|8  |Sales Representative                |258233.40000000002|
|9  |Physical Therapy Assistant          |250663.83000000002|
|10 |Product Engineer                    |250642.59         |
|11 |Executive Secretary                 |249026.86         |
|12 |Recruiting Manager                  |244284.58000000002|
|13 |VP Marketing                        |238134.47         |
|14 |Research Associate                  |232990.91999999998|
|15 |VP Quality Control                  |228367.74         |
|16 |Financial Advisor                   |223188.32         |
|17 |Internal Auditor                    |217184.47999999998|
|18 |Community Outreach Specialist       |213180.26         |
|19 |Electrical Engineer                 |213060.25000000003|
|20 |Senior Cost Accountant              |209741.45         |
|21 |Mechanical Systems Engineer         |205871.29999999996|
|22 |Recruiter                           |205388.24         |
|23 |Associate Professor                 |202747.07         |
|24 |Marketing Assistant                 |201814.22999999998|
|25 |Professor                           |197438.65         |
|26 |Occupational Therapist              |197312.52         |
|27 |Structural Engineer                 |196719.8          |
|28 |Compensation Analyst                |196647.86         |
|29 |Help Desk Technician                |195488.10000000003|
|30 |Technical Writer                    |195144.9          |
|31 |Senior Editor                       |194293.35         |
|32 |Account Executive                   |192631.74000000002|
|33 |Paralegal                           |191828.56         |
|34 |General Manager                     |187447.10000000003|
|35 |Environmental Specialist            |187148.25999999998|
|36 |Actuary                             |185081.38         |
|37 |Nuclear Power Engineer              |183194.26999999996|
|38 |Speech Pathologist                  |181719.12         |
|39 |Clinical Specialist                 |180402.31000000003|
|40 |Analog Circuit Design manager       |179310.18000000002|
|41 |Quality Engineer                    |177159.88         |
|42 |Pharmacist                          |177045.75999999998|
|43 |VP Accounting                       |176440.37         |
|44 |Quality Control Specialist          |176435.7          |
|45 |Teacher                             |176137.90999999997|
|46 |Environmental Tech                  |170871.14         |
|47 |Social Worker                       |168107.81         |
|48 |Librarian                           |167132.47         |
|49 |Senior Quality Engineer             |165311.53         |
|50 |Sales Associate                     |161259.63         |
|51 |Information Systems Manager         |158606.63999999998|
|52 |Nurse                               |158288.41         |
|53 |Staff Scientist                     |157528.98         |
|54 |Junior Executive                    |156846.26         |
|55 |Graphic Designer                    |155582.24000000002|
|56 |Cost Accountant                     |155524.81         |
|57 |Senior Financial Analyst            |155378.73         |
|58 |Geological Engineer                 |154718.74000000002|
|59 |Software Consultant                 |148500.93         |
|60 |Help Desk Operator                  |144664.22         |
|61 |Senior Developer                    |144510.99999999997|
|62 |VP Sales                            |144019.28         |
|63 |Assistant Media Planner             |142575.78999999998|
|64 |VP Product Management               |139063            |
|65 |Assistant Manager                   |137498.36         |
|66 |Director of Sales                   |136630.69         |
|67 |Dental Hygienist                    |134625.13999999998|
|68 |Human Resources Manager             |134137.89         |
|69 |Chemical Engineer                   |124725.29         |
|70 |Food Chemist                        |122822.52999999998|
|71 |Legal Assistant                     |116887.06         |
|72 |Biostatistician IV                  |115855.77         |
|73 |Chief Design Engineer               |113435.31         |
|74 |Administrative Assistant III        |109978.81999999999|
|75 |Analyst Programmer                  |109022.78         |
|76 |Payment Adjustment Coordinator      |108237.15         |
|77 |Operator                            |107162.24         |
|78 |Media Manager III                   |106493.16         |
|79 |Tax Accountant                      |104793.26999999999|
|80 |Financial Analyst                   |103102.69         |
|81 |Developer II                        |100616.11         |
|82 |GIS Technical Architect             |98169.16          |
|83 |Civil Engineer                      |96309.17          |
|84 |Structural Analysis Engineer        |96282.49          |
|85 |Account Coordinator                 |95365.31          |
|86 |Web Designer IV                     |94720.48999999999 |
|87 |Desktop Support Technician          |92315.22          |
|88 |Budget/Accounting Analyst IV        |86841.65          |
|89 |Automation Specialist III           |85265.81          |
|90 |Accounting Assistant II             |82846.92          |
|91 |Biostatistician I                   |81166.53          |
|92 |Design Engineer                     |80445.94          |
|93 |Engineer IV                         |80252.93000000001 |
|94 |Accounting Assistant III            |78947.08          |
|95 |Developer III                       |78804.54          |
|96 |Database Administrator IV           |78122.02          |
|97 |Research Nurse                      |74760.48000000001 |
|98 |Safety Technician IV                |73772             |
|99 |Computer Systems Analyst III        |73510.64000000001 |
|100|Accountant IV                       |73295.34          |
|101|Engineer II                         |72390.38          |
|102|Biostatistician III                 |72168.98999999999 |
|103|Web Developer II                    |70273.68000000001 |
|104|Budget/Accounting Analyst III       |70107.77          |
|105|Computer Systems Analyst I          |69487.33          |
|106|Health Coach IV                     |68818.7           |
|107|Statistician I                      |66762.22          |
|108|Programmer II                       |66738.28          |
|109|Administrative Officer              |65457.009999999995|
|110|Systems Administrator III           |65249.71          |
|111|Database Administrator III          |65130.479999999996|
|112|Health Coach I                      |64201.719999999994|
|113|Senior Sales Associate              |59430.57          |
|114|Statistician IV                     |59128.3           |
|115|Software Engineer I                 |58684.06          |
|116|Registered Nurse                    |58365.799999999996|
|117|Health Coach III                    |57582.14000000001 |
|118|Statistician III                    |56597.75          |
|119|Human Resources Assistant II        |56561.19          |
|120|Human Resources Assistant I         |54443.1           |
|121|Geologist II                        |52602.93          |
|122|Staff Accountant IV                 |52206.27          |
|123|Programmer Analyst III              |50695.97          |
|124|Engineer III                        |49341.4           |
|125|Staff Accountant I                  |48534.89000000001 |
|126|Office Assistant III                |46695.299999999996|
|127|Administrative Assistant II         |46447.15          |
|128|Software Test Engineer III          |46299.53          |
|129|Media Manager IV                    |45136.490000000005|
|130|Geologist III                       |44991.45          |
|131|Web Designer I                      |44976.29          |
|132|Automation Specialist II            |44760.58          |
|133|Programmer Analyst IV               |44548.759999999995|
|134|Account Representative IV           |44136.37          |
|135|Web Designer III                    |44085.04          |
|136|Database Administrator II           |43489.34          |
|137|Web Developer IV                    |42071.9           |
|138|Geologist IV                        |41916.28          |
|139|Developer IV                        |41890.75          |
|140|Safety Technician III               |40913.68          |
|141|Automation Specialist I             |39900.479999999996|
|142|Research Assistant IV               |38957.619999999995|
|143|Software Engineer IV                |37258.75          |
|144|Database Administrator I            |36415.3           |
|145|Account Representative II           |36270.86          |
|146|Office Assistant IV                 |35898.479999999996|
|147|Programmer Analyst II               |35658.78          |
|148|Computer Systems Analyst II         |35160             |
|149|Programmer III                      |35091.17          |
|150|Staff Accountant II                 |33694.94          |
|151|Human Resources Assistant III       |32617.61          |
|152|Media Manager II                    |31757.510000000002|
|153|Accountant I                        |30567.079999999998|
|154|Accounting Assistant I              |29770             |
|155|Administrative Assistant I          |28952.63          |
|156|Statistician II                     |28752.649999999998|
|157|Budget/Accounting Analyst II        |28698.82          |
|158|Research Assistant III              |27359.54          |
|159|Automation Specialist IV            |27356.99          |
|160|Engineer I                          |27155.44          |
|161|Programmer IV                       |27148.8           |
|162|Computer Systems Analyst IV         |25803.45          |
|163|Software Test Engineer IV           |25062.1           |
|164|Web Developer I                     |23536.3           |
|165|Software Test Engineer I            |22150.18          |
|166|Accountant III                      |21880.07          |
|167|Systems Administrator IV            |21007.3           |
|168|Office Assistant II                 |21000.56          |
|169|Office Assistant I                  |20506.16          |
|170|Biostatistician II                  |20196.05          |
|171|Health Coach II                     |18672.07          |
|172|Web Designer II                     |18487.79          |
|173|Systems Administrator II            |16712.29          |
|174|Budget/Accounting Analyst I         |16579.18          |
|175|Research Assistant II               |15982.36          |
|176|Safety Technician I                 |15855.96          |
|177|Web Developer III                   |15457.03          |
|178|Software Test Engineer II           |13084.31          |
|179|Human Resources Assistant IV        |12946.33          |
|180|Geologist I                         |11719.36          |
|181|Account Representative III          |10926.89          |

</p>
</details>

---

- ¿Cuál es el número total de ventas por vendedor?

```sql
# Respuesta
SELECT id_empleado, count(*) cantidad
FROM venta
GROUP BY id_empleado
ORDER BY cantidad DESC;                 
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-03/Captura-03.png">
  </a>
</p>
</details>

|#  |id_empleado|cantidad|
|---|-----------|--------|
|1  |510        |6       |
|2  |12         |5       |
|3  |227        |5       |
|4  |544        |5       |
|5  |15         |4       |
|6  |142        |4       |
|7  |216        |4       |
|8  |233        |4       |
|9  |379        |4       |
|10 |396        |4       |
|11 |413        |4       |
|12 |446        |4       |
|13 |476        |4       |
|14 |507        |4       |
|15 |529        |4       |
|16 |682        |4       |
|17 |747        |4       |
|18 |769        |4       |
|19 |791        |4       |
|20 |895        |4       |
|21 |41         |3       |
|22 |51         |3       |
|23 |56         |3       |
|24 |69         |3       |
|25 |86         |3       |
|26 |104        |3       |
|27 |107        |3       |
|28 |155        |3       |
|29 |173        |3       |
|30 |178        |3       |
|31 |185        |3       |
|32 |190        |3       |
|33 |205        |3       |
|34 |228        |3       |
|35 |240        |3       |
|36 |242        |3       |
|37 |255        |3       |
|38 |256        |3       |
|39 |260        |3       |
|40 |287        |3       |
|41 |318        |3       |
|42 |344        |3       |
|43 |364        |3       |
|44 |381        |3       |
|45 |393        |3       |
|46 |398        |3       |
|47 |414        |3       |
|48 |427        |3       |
|49 |461        |3       |
|50 |489        |3       |
|51 |511        |3       |
|52 |542        |3       |
|53 |558        |3       |
|54 |562        |3       |
|55 |646        |3       |
|56 |678        |3       |
|57 |680        |3       |
|58 |725        |3       |
|59 |737        |3       |
|60 |756        |3       |
|61 |761        |3       |
|62 |772        |3       |
|63 |773        |3       |
|64 |774        |3       |
|65 |784        |3       |
|66 |785        |3       |
|67 |802        |3       |
|68 |805        |3       |
|69 |811        |3       |
|70 |823        |3       |
|71 |872        |3       |
|72 |944        |3       |
|73 |946        |3       |
|74 |948        |3       |
|75 |951        |3       |
|76 |976        |3       |
|77 |994        |3       |
|78 |2          |2       |
|79 |3          |2       |
|80 |6          |2       |
|81 |18         |2       |
|82 |23         |2       |
|83 |31         |2       |
|84 |32         |2       |
|85 |36         |2       |
|86 |37         |2       |
|87 |39         |2       |
|88 |45         |2       |
|89 |60         |2       |
|90 |67         |2       |
|91 |74         |2       |
|92 |83         |2       |
|93 |85         |2       |
|94 |90         |2       |
|95 |92         |2       |
|96 |94         |2       |
|97 |108        |2       |
|98 |115        |2       |
|99 |122        |2       |
|100|123        |2       |
|101|128        |2       |
|102|134        |2       |
|103|135        |2       |
|104|141        |2       |
|105|148        |2       |
|106|149        |2       |
|107|153        |2       |
|108|156        |2       |
|109|170        |2       |
|110|177        |2       |
|111|183        |2       |
|112|188        |2       |
|113|192        |2       |
|114|193        |2       |
|115|196        |2       |
|116|198        |2       |
|117|202        |2       |
|118|208        |2       |
|119|209        |2       |
|120|223        |2       |
|121|230        |2       |
|122|236        |2       |
|123|237        |2       |
|124|243        |2       |
|125|252        |2       |
|126|259        |2       |
|127|263        |2       |
|128|265        |2       |
|129|267        |2       |
|130|270        |2       |
|131|278        |2       |
|132|286        |2       |
|133|291        |2       |
|134|292        |2       |
|135|298        |2       |
|136|299        |2       |
|137|301        |2       |
|138|303        |2       |
|139|304        |2       |
|140|305        |2       |
|141|312        |2       |
|142|325        |2       |
|143|342        |2       |
|144|349        |2       |
|145|354        |2       |
|146|359        |2       |
|147|360        |2       |
|148|370        |2       |
|149|378        |2       |
|150|383        |2       |
|151|389        |2       |
|152|390        |2       |
|153|394        |2       |
|154|395        |2       |
|155|401        |2       |
|156|412        |2       |
|157|417        |2       |
|158|423        |2       |
|159|428        |2       |
|160|435        |2       |
|161|438        |2       |
|162|444        |2       |
|163|448        |2       |
|164|449        |2       |
|165|452        |2       |
|166|453        |2       |
|167|459        |2       |
|168|460        |2       |
|169|467        |2       |
|170|477        |2       |
|171|485        |2       |
|172|491        |2       |
|173|499        |2       |
|174|502        |2       |
|175|509        |2       |
|176|516        |2       |
|177|517        |2       |
|178|520        |2       |
|179|528        |2       |
|180|531        |2       |
|181|538        |2       |
|182|554        |2       |
|183|557        |2       |
|184|565        |2       |
|185|568        |2       |
|186|572        |2       |
|187|575        |2       |
|188|576        |2       |
|189|578        |2       |
|190|582        |2       |
|191|586        |2       |
|192|587        |2       |
|193|596        |2       |
|194|607        |2       |
|195|608        |2       |
|196|627        |2       |
|197|630        |2       |
|198|637        |2       |
|199|648        |2       |
|200|651        |2       |
|201|664        |2       |
|202|675        |2       |
|203|676        |2       |
|204|677        |2       |
|205|679        |2       |
|206|683        |2       |
|207|684        |2       |
|208|688        |2       |
|209|690        |2       |
|210|694        |2       |
|211|697        |2       |
|212|707        |2       |
|213|714        |2       |
|214|716        |2       |
|215|722        |2       |
|216|726        |2       |
|217|733        |2       |
|218|740        |2       |
|219|745        |2       |
|220|758        |2       |
|221|760        |2       |
|222|765        |2       |
|223|766        |2       |
|224|775        |2       |
|225|776        |2       |
|226|779        |2       |
|227|812        |2       |
|228|813        |2       |
|229|826        |2       |
|230|831        |2       |
|231|835        |2       |
|232|839        |2       |
|233|850        |2       |
|234|856        |2       |
|235|866        |2       |
|236|869        |2       |
|237|878        |2       |
|238|880        |2       |
|239|881        |2       |
|240|885        |2       |
|241|888        |2       |
|242|891        |2       |
|243|898        |2       |
|244|904        |2       |
|245|905        |2       |
|246|906        |2       |
|247|910        |2       |
|248|915        |2       |
|249|922        |2       |
|250|925        |2       |
|251|935        |2       |
|252|941        |2       |
|253|958        |2       |
|254|962        |2       |
|255|982        |2       |
|256|986        |2       |
|257|4          |1       |
|258|5          |1       |
|259|22         |1       |
|260|25         |1       |
|261|26         |1       |
|262|28         |1       |
|263|29         |1       |
|264|30         |1       |
|265|34         |1       |
|266|38         |1       |
|267|42         |1       |
|268|47         |1       |
|269|50         |1       |
|270|52         |1       |
|271|54         |1       |
|272|55         |1       |
|273|59         |1       |
|274|63         |1       |
|275|64         |1       |
|276|70         |1       |
|277|71         |1       |
|278|72         |1       |
|279|75         |1       |
|280|77         |1       |
|281|88         |1       |
|282|89         |1       |
|283|91         |1       |
|284|95         |1       |
|285|96         |1       |
|286|97         |1       |
|287|98         |1       |
|288|100        |1       |
|289|101        |1       |
|290|103        |1       |
|291|112        |1       |
|292|113        |1       |
|293|114        |1       |
|294|116        |1       |
|295|117        |1       |
|296|119        |1       |
|297|120        |1       |
|298|124        |1       |
|299|126        |1       |
|300|127        |1       |
|301|131        |1       |
|302|137        |1       |
|303|138        |1       |
|304|144        |1       |
|305|145        |1       |
|306|146        |1       |
|307|150        |1       |
|308|152        |1       |
|309|158        |1       |
|310|160        |1       |
|311|161        |1       |
|312|162        |1       |
|313|163        |1       |
|314|165        |1       |
|315|168        |1       |
|316|169        |1       |
|317|174        |1       |
|318|176        |1       |
|319|180        |1       |
|320|187        |1       |
|321|195        |1       |
|322|200        |1       |
|323|203        |1       |
|324|204        |1       |
|325|206        |1       |
|326|207        |1       |
|327|210        |1       |
|328|211        |1       |
|329|212        |1       |
|330|214        |1       |
|331|215        |1       |
|332|218        |1       |
|333|220        |1       |
|334|222        |1       |
|335|225        |1       |
|336|229        |1       |
|337|231        |1       |
|338|238        |1       |
|339|239        |1       |
|340|246        |1       |
|341|248        |1       |
|342|251        |1       |
|343|258        |1       |
|344|261        |1       |
|345|264        |1       |
|346|266        |1       |
|347|269        |1       |
|348|271        |1       |
|349|272        |1       |
|350|273        |1       |
|351|277        |1       |
|352|279        |1       |
|353|280        |1       |
|354|281        |1       |
|355|282        |1       |
|356|284        |1       |
|357|285        |1       |
|358|288        |1       |
|359|289        |1       |
|360|293        |1       |
|361|294        |1       |
|362|295        |1       |
|363|296        |1       |
|364|297        |1       |
|365|300        |1       |
|366|308        |1       |
|367|309        |1       |
|368|311        |1       |
|369|314        |1       |
|370|315        |1       |
|371|316        |1       |
|372|319        |1       |
|373|321        |1       |
|374|322        |1       |
|375|324        |1       |
|376|330        |1       |
|377|331        |1       |
|378|335        |1       |
|379|337        |1       |
|380|338        |1       |
|381|340        |1       |
|382|341        |1       |
|383|343        |1       |
|384|345        |1       |
|385|346        |1       |
|386|347        |1       |
|387|351        |1       |
|388|353        |1       |
|389|355        |1       |
|390|356        |1       |
|391|357        |1       |
|392|361        |1       |
|393|369        |1       |
|394|371        |1       |
|395|373        |1       |
|396|375        |1       |
|397|377        |1       |
|398|380        |1       |
|399|382        |1       |
|400|384        |1       |
|401|387        |1       |
|402|388        |1       |
|403|397        |1       |
|404|400        |1       |
|405|405        |1       |
|406|406        |1       |
|407|407        |1       |
|408|408        |1       |
|409|409        |1       |
|410|410        |1       |
|411|415        |1       |
|412|416        |1       |
|413|418        |1       |
|414|421        |1       |
|415|422        |1       |
|416|424        |1       |
|417|425        |1       |
|418|426        |1       |
|419|429        |1       |
|420|430        |1       |
|421|431        |1       |
|422|432        |1       |
|423|434        |1       |
|424|436        |1       |
|425|440        |1       |
|426|441        |1       |
|427|447        |1       |
|428|456        |1       |
|429|458        |1       |
|430|463        |1       |
|431|464        |1       |
|432|465        |1       |
|433|466        |1       |
|434|468        |1       |
|435|471        |1       |
|436|473        |1       |
|437|474        |1       |
|438|475        |1       |
|439|478        |1       |
|440|483        |1       |
|441|487        |1       |
|442|492        |1       |
|443|494        |1       |
|444|495        |1       |
|445|496        |1       |
|446|497        |1       |
|447|498        |1       |
|448|500        |1       |
|449|501        |1       |
|450|503        |1       |
|451|505        |1       |
|452|506        |1       |
|453|519        |1       |
|454|523        |1       |
|455|525        |1       |
|456|526        |1       |
|457|527        |1       |
|458|534        |1       |
|459|539        |1       |
|460|543        |1       |
|461|545        |1       |
|462|546        |1       |
|463|552        |1       |
|464|555        |1       |
|465|561        |1       |
|466|563        |1       |
|467|564        |1       |
|468|569        |1       |
|469|571        |1       |
|470|573        |1       |
|471|574        |1       |
|472|577        |1       |
|473|579        |1       |
|474|580        |1       |
|475|581        |1       |
|476|583        |1       |
|477|584        |1       |
|478|585        |1       |
|479|588        |1       |
|480|589        |1       |
|481|591        |1       |
|482|593        |1       |
|483|594        |1       |
|484|595        |1       |
|485|597        |1       |
|486|598        |1       |
|487|599        |1       |
|488|602        |1       |
|489|603        |1       |
|490|604        |1       |
|491|605        |1       |
|492|606        |1       |
|493|609        |1       |
|494|611        |1       |
|495|612        |1       |
|496|614        |1       |
|497|621        |1       |
|498|623        |1       |
|499|628        |1       |
|500|629        |1       |
|501|631        |1       |
|502|633        |1       |
|503|635        |1       |
|504|636        |1       |
|505|638        |1       |
|506|640        |1       |
|507|643        |1       |
|508|644        |1       |
|509|649        |1       |
|510|654        |1       |
|511|655        |1       |
|512|657        |1       |
|513|662        |1       |
|514|663        |1       |
|515|666        |1       |
|516|668        |1       |
|517|670        |1       |
|518|671        |1       |
|519|672        |1       |
|520|673        |1       |
|521|681        |1       |
|522|685        |1       |
|523|686        |1       |
|524|689        |1       |
|525|693        |1       |
|526|696        |1       |
|527|698        |1       |
|528|699        |1       |
|529|700        |1       |
|530|701        |1       |
|531|702        |1       |
|532|705        |1       |
|533|706        |1       |
|534|709        |1       |
|535|710        |1       |
|536|713        |1       |
|537|719        |1       |
|538|720        |1       |
|539|723        |1       |
|540|727        |1       |
|541|728        |1       |
|542|732        |1       |
|543|735        |1       |
|544|736        |1       |
|545|738        |1       |
|546|739        |1       |
|547|741        |1       |
|548|743        |1       |
|549|744        |1       |
|550|748        |1       |
|551|750        |1       |
|552|755        |1       |
|553|759        |1       |
|554|763        |1       |
|555|768        |1       |
|556|770        |1       |
|557|771        |1       |
|558|778        |1       |
|559|780        |1       |
|560|786        |1       |
|561|787        |1       |
|562|788        |1       |
|563|793        |1       |
|564|795        |1       |
|565|796        |1       |
|566|797        |1       |
|567|801        |1       |
|568|803        |1       |
|569|804        |1       |
|570|807        |1       |
|571|808        |1       |
|572|810        |1       |
|573|816        |1       |
|574|819        |1       |
|575|820        |1       |
|576|824        |1       |
|577|825        |1       |
|578|828        |1       |
|579|830        |1       |
|580|834        |1       |
|581|836        |1       |
|582|838        |1       |
|583|840        |1       |
|584|841        |1       |
|585|842        |1       |
|586|844        |1       |
|587|845        |1       |
|588|847        |1       |
|589|848        |1       |
|590|854        |1       |
|591|855        |1       |
|592|862        |1       |
|593|863        |1       |
|594|867        |1       |
|595|868        |1       |
|596|870        |1       |
|597|871        |1       |
|598|873        |1       |
|599|876        |1       |
|600|879        |1       |
|601|882        |1       |
|602|886        |1       |
|603|887        |1       |
|604|894        |1       |
|605|896        |1       |
|606|903        |1       |
|607|911        |1       |
|608|912        |1       |
|609|918        |1       |
|610|919        |1       |
|611|923        |1       |
|612|924        |1       |
|613|926        |1       |
|614|929        |1       |
|615|930        |1       |
|616|936        |1       |
|617|937        |1       |
|618|938        |1       |
|619|939        |1       |
|620|947        |1       |
|621|949        |1       |
|622|953        |1       |
|623|955        |1       |
|624|957        |1       |
|625|963        |1       |
|626|967        |1       |
|627|969        |1       |
|628|975        |1       |
|629|977        |1       |
|630|979        |1       |
|631|980        |1       |
|632|981        |1       |
|633|983        |1       |
|634|985        |1       |
|635|987        |1       |
|636|989        |1       |
|637|990        |1       |
|638|992        |1       |
|639|995        |1       |
|640|997        |1       |
|641|999        |1       |
|642|1000       |1       |

</p>
</details>

---

- ¿Cuál es el número total de ventas por artículo?

```sql
# Respuesta
SELECT id_articulo, count(*) cantidad
FROM venta
GROUP BY id_articulo
ORDER BY cantidad DESC;                
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-03/Captura-04.png">
  </a>
</p>
</details>

|#  |id_articulo|cantidad|
|---|-----------|--------|
|1  |966        |5       |
|2  |32         |4       |
|3  |43         |4       |
|4  |98         |4       |
|5  |289        |4       |
|6  |313        |4       |
|7  |322        |4       |
|8  |343        |4       |
|9  |419        |4       |
|10 |554        |4       |
|11 |583        |4       |
|12 |677        |4       |
|13 |899        |4       |
|14 |984        |4       |
|15 |26         |3       |
|16 |46         |3       |
|17 |53         |3       |
|18 |56         |3       |
|19 |65         |3       |
|20 |88         |3       |
|21 |89         |3       |
|22 |94         |3       |
|23 |115        |3       |
|24 |133        |3       |
|25 |141        |3       |
|26 |143        |3       |
|27 |177        |3       |
|28 |197        |3       |
|29 |199        |3       |
|30 |233        |3       |
|31 |244        |3       |
|32 |261        |3       |
|33 |271        |3       |
|34 |284        |3       |
|35 |291        |3       |
|36 |304        |3       |
|37 |309        |3       |
|38 |311        |3       |
|39 |329        |3       |
|40 |355        |3       |
|41 |358        |3       |
|42 |399        |3       |
|43 |404        |3       |
|44 |405        |3       |
|45 |408        |3       |
|46 |434        |3       |
|47 |448        |3       |
|48 |462        |3       |
|49 |469        |3       |
|50 |480        |3       |
|51 |486        |3       |
|52 |500        |3       |
|53 |501        |3       |
|54 |505        |3       |
|55 |511        |3       |
|56 |514        |3       |
|57 |539        |3       |
|58 |543        |3       |
|59 |564        |3       |
|60 |572        |3       |
|61 |633        |3       |
|62 |635        |3       |
|63 |636        |3       |
|64 |641        |3       |
|65 |648        |3       |
|66 |656        |3       |
|67 |659        |3       |
|68 |663        |3       |
|69 |683        |3       |
|70 |684        |3       |
|71 |687        |3       |
|72 |693        |3       |
|73 |701        |3       |
|74 |702        |3       |
|75 |721        |3       |
|76 |726        |3       |
|77 |730        |3       |
|78 |739        |3       |
|79 |742        |3       |
|80 |747        |3       |
|81 |767        |3       |
|82 |786        |3       |
|83 |799        |3       |
|84 |800        |3       |
|85 |807        |3       |
|86 |816        |3       |
|87 |844        |3       |
|88 |864        |3       |
|89 |925        |3       |
|90 |927        |3       |
|91 |930        |3       |
|92 |942        |3       |
|93 |972        |3       |
|94 |995        |3       |
|95 |4          |2       |
|96 |13         |2       |
|97 |38         |2       |
|98 |39         |2       |
|99 |49         |2       |
|100|55         |2       |
|101|93         |2       |
|102|95         |2       |
|103|104        |2       |
|104|105        |2       |
|105|111        |2       |
|106|121        |2       |
|107|125        |2       |
|108|126        |2       |
|109|132        |2       |
|110|135        |2       |
|111|139        |2       |
|112|145        |2       |
|113|148        |2       |
|114|149        |2       |
|115|150        |2       |
|116|156        |2       |
|117|173        |2       |
|118|183        |2       |
|119|189        |2       |
|120|190        |2       |
|121|191        |2       |
|122|200        |2       |
|123|202        |2       |
|124|205        |2       |
|125|207        |2       |
|126|223        |2       |
|127|229        |2       |
|128|234        |2       |
|129|242        |2       |
|130|254        |2       |
|131|257        |2       |
|132|258        |2       |
|133|272        |2       |
|134|279        |2       |
|135|280        |2       |
|136|282        |2       |
|137|295        |2       |
|138|296        |2       |
|139|302        |2       |
|140|310        |2       |
|141|323        |2       |
|142|326        |2       |
|143|332        |2       |
|144|335        |2       |
|145|340        |2       |
|146|345        |2       |
|147|346        |2       |
|148|347        |2       |
|149|348        |2       |
|150|352        |2       |
|151|357        |2       |
|152|361        |2       |
|153|373        |2       |
|154|374        |2       |
|155|376        |2       |
|156|385        |2       |
|157|386        |2       |
|158|391        |2       |
|159|396        |2       |
|160|397        |2       |
|161|409        |2       |
|162|411        |2       |
|163|413        |2       |
|164|418        |2       |
|165|420        |2       |
|166|421        |2       |
|167|431        |2       |
|168|436        |2       |
|169|438        |2       |
|170|439        |2       |
|171|440        |2       |
|172|444        |2       |
|173|461        |2       |
|174|463        |2       |
|175|465        |2       |
|176|484        |2       |
|177|492        |2       |
|178|495        |2       |
|179|499        |2       |
|180|506        |2       |
|181|527        |2       |
|182|528        |2       |
|183|532        |2       |
|184|536        |2       |
|185|540        |2       |
|186|541        |2       |
|187|547        |2       |
|188|555        |2       |
|189|557        |2       |
|190|560        |2       |
|191|578        |2       |
|192|579        |2       |
|193|588        |2       |
|194|597        |2       |
|195|607        |2       |
|196|609        |2       |
|197|610        |2       |
|198|614        |2       |
|199|616        |2       |
|200|619        |2       |
|201|621        |2       |
|202|631        |2       |
|203|632        |2       |
|204|642        |2       |
|205|644        |2       |
|206|646        |2       |
|207|651        |2       |
|208|665        |2       |
|209|668        |2       |
|210|670        |2       |
|211|695        |2       |
|212|698        |2       |
|213|700        |2       |
|214|703        |2       |
|215|705        |2       |
|216|711        |2       |
|217|714        |2       |
|218|718        |2       |
|219|720        |2       |
|220|728        |2       |
|221|729        |2       |
|222|731        |2       |
|223|733        |2       |
|224|749        |2       |
|225|750        |2       |
|226|764        |2       |
|227|768        |2       |
|228|785        |2       |
|229|789        |2       |
|230|792        |2       |
|231|798        |2       |
|232|801        |2       |
|233|805        |2       |
|234|824        |2       |
|235|825        |2       |
|236|828        |2       |
|237|830        |2       |
|238|835        |2       |
|239|838        |2       |
|240|847        |2       |
|241|848        |2       |
|242|861        |2       |
|243|863        |2       |
|244|866        |2       |
|245|869        |2       |
|246|900        |2       |
|247|902        |2       |
|248|905        |2       |
|249|912        |2       |
|250|914        |2       |
|251|915        |2       |
|252|916        |2       |
|253|917        |2       |
|254|918        |2       |
|255|920        |2       |
|256|921        |2       |
|257|932        |2       |
|258|933        |2       |
|259|937        |2       |
|260|945        |2       |
|261|947        |2       |
|262|956        |2       |
|263|963        |2       |
|264|968        |2       |
|265|970        |2       |
|266|974        |2       |
|267|978        |2       |
|268|983        |2       |
|269|987        |2       |
|270|989        |2       |
|271|990        |2       |
|272|994        |2       |
|273|999        |2       |
|274|2          |1       |
|275|3          |1       |
|276|8          |1       |
|277|10         |1       |
|278|11         |1       |
|279|12         |1       |
|280|15         |1       |
|281|18         |1       |
|282|20         |1       |
|283|21         |1       |
|284|22         |1       |
|285|24         |1       |
|286|28         |1       |
|287|29         |1       |
|288|30         |1       |
|289|33         |1       |
|290|34         |1       |
|291|36         |1       |
|292|45         |1       |
|293|48         |1       |
|294|50         |1       |
|295|52         |1       |
|296|59         |1       |
|297|61         |1       |
|298|66         |1       |
|299|68         |1       |
|300|70         |1       |
|301|73         |1       |
|302|76         |1       |
|303|78         |1       |
|304|80         |1       |
|305|84         |1       |
|306|85         |1       |
|307|86         |1       |
|308|92         |1       |
|309|96         |1       |
|310|99         |1       |
|311|100        |1       |
|312|101        |1       |
|313|102        |1       |
|314|106        |1       |
|315|112        |1       |
|316|113        |1       |
|317|114        |1       |
|318|117        |1       |
|319|118        |1       |
|320|120        |1       |
|321|123        |1       |
|322|124        |1       |
|323|127        |1       |
|324|130        |1       |
|325|131        |1       |
|326|136        |1       |
|327|138        |1       |
|328|140        |1       |
|329|142        |1       |
|330|144        |1       |
|331|152        |1       |
|332|153        |1       |
|333|154        |1       |
|334|155        |1       |
|335|159        |1       |
|336|160        |1       |
|337|170        |1       |
|338|172        |1       |
|339|174        |1       |
|340|176        |1       |
|341|179        |1       |
|342|180        |1       |
|343|181        |1       |
|344|182        |1       |
|345|185        |1       |
|346|192        |1       |
|347|193        |1       |
|348|194        |1       |
|349|211        |1       |
|350|212        |1       |
|351|215        |1       |
|352|218        |1       |
|353|221        |1       |
|354|226        |1       |
|355|227        |1       |
|356|231        |1       |
|357|232        |1       |
|358|235        |1       |
|359|236        |1       |
|360|238        |1       |
|361|243        |1       |
|362|245        |1       |
|363|246        |1       |
|364|247        |1       |
|365|250        |1       |
|366|251        |1       |
|367|256        |1       |
|368|259        |1       |
|369|263        |1       |
|370|264        |1       |
|371|267        |1       |
|372|268        |1       |
|373|274        |1       |
|374|276        |1       |
|375|277        |1       |
|376|281        |1       |
|377|283        |1       |
|378|286        |1       |
|379|290        |1       |
|380|292        |1       |
|381|293        |1       |
|382|297        |1       |
|383|299        |1       |
|384|300        |1       |
|385|303        |1       |
|386|306        |1       |
|387|307        |1       |
|388|312        |1       |
|389|318        |1       |
|390|319        |1       |
|391|327        |1       |
|392|330        |1       |
|393|331        |1       |
|394|333        |1       |
|395|339        |1       |
|396|342        |1       |
|397|344        |1       |
|398|349        |1       |
|399|351        |1       |
|400|353        |1       |
|401|354        |1       |
|402|356        |1       |
|403|359        |1       |
|404|364        |1       |
|405|365        |1       |
|406|369        |1       |
|407|370        |1       |
|408|377        |1       |
|409|383        |1       |
|410|388        |1       |
|411|392        |1       |
|412|393        |1       |
|413|406        |1       |
|414|410        |1       |
|415|414        |1       |
|416|415        |1       |
|417|416        |1       |
|418|425        |1       |
|419|426        |1       |
|420|432        |1       |
|421|433        |1       |
|422|441        |1       |
|423|442        |1       |
|424|445        |1       |
|425|446        |1       |
|426|447        |1       |
|427|452        |1       |
|428|455        |1       |
|429|456        |1       |
|430|457        |1       |
|431|458        |1       |
|432|459        |1       |
|433|467        |1       |
|434|481        |1       |
|435|482        |1       |
|436|483        |1       |
|437|485        |1       |
|438|487        |1       |
|439|489        |1       |
|440|494        |1       |
|441|496        |1       |
|442|498        |1       |
|443|503        |1       |
|444|507        |1       |
|445|509        |1       |
|446|513        |1       |
|447|515        |1       |
|448|516        |1       |
|449|519        |1       |
|450|520        |1       |
|451|524        |1       |
|452|525        |1       |
|453|526        |1       |
|454|530        |1       |
|455|531        |1       |
|456|533        |1       |
|457|534        |1       |
|458|538        |1       |
|459|544        |1       |
|460|549        |1       |
|461|552        |1       |
|462|561        |1       |
|463|562        |1       |
|464|567        |1       |
|465|571        |1       |
|466|573        |1       |
|467|576        |1       |
|468|577        |1       |
|469|580        |1       |
|470|585        |1       |
|471|587        |1       |
|472|589        |1       |
|473|591        |1       |
|474|596        |1       |
|475|599        |1       |
|476|601        |1       |
|477|603        |1       |
|478|611        |1       |
|479|612        |1       |
|480|613        |1       |
|481|615        |1       |
|482|618        |1       |
|483|622        |1       |
|484|623        |1       |
|485|627        |1       |
|486|628        |1       |
|487|634        |1       |
|488|637        |1       |
|489|638        |1       |
|490|639        |1       |
|491|640        |1       |
|492|643        |1       |
|493|645        |1       |
|494|654        |1       |
|495|657        |1       |
|496|662        |1       |
|497|664        |1       |
|498|666        |1       |
|499|673        |1       |
|500|675        |1       |
|501|676        |1       |
|502|678        |1       |
|503|688        |1       |
|504|689        |1       |
|505|690        |1       |
|506|691        |1       |
|507|694        |1       |
|508|696        |1       |
|509|697        |1       |
|510|707        |1       |
|511|709        |1       |
|512|710        |1       |
|513|712        |1       |
|514|715        |1       |
|515|716        |1       |
|516|722        |1       |
|517|725        |1       |
|518|734        |1       |
|519|737        |1       |
|520|740        |1       |
|521|741        |1       |
|522|743        |1       |
|523|745        |1       |
|524|746        |1       |
|525|748        |1       |
|526|755        |1       |
|527|756        |1       |
|528|759        |1       |
|529|762        |1       |
|530|765        |1       |
|531|770        |1       |
|532|771        |1       |
|533|773        |1       |
|534|774        |1       |
|535|775        |1       |
|536|777        |1       |
|537|778        |1       |
|538|783        |1       |
|539|784        |1       |
|540|790        |1       |
|541|791        |1       |
|542|795        |1       |
|543|802        |1       |
|544|803        |1       |
|545|804        |1       |
|546|806        |1       |
|547|808        |1       |
|548|809        |1       |
|549|810        |1       |
|550|813        |1       |
|551|814        |1       |
|552|815        |1       |
|553|820        |1       |
|554|822        |1       |
|555|823        |1       |
|556|827        |1       |
|557|832        |1       |
|558|833        |1       |
|559|837        |1       |
|560|843        |1       |
|561|845        |1       |
|562|846        |1       |
|563|853        |1       |
|564|855        |1       |
|565|858        |1       |
|566|859        |1       |
|567|860        |1       |
|568|862        |1       |
|569|868        |1       |
|570|870        |1       |
|571|872        |1       |
|572|874        |1       |
|573|877        |1       |
|574|878        |1       |
|575|881        |1       |
|576|885        |1       |
|577|887        |1       |
|578|894        |1       |
|579|896        |1       |
|580|897        |1       |
|581|898        |1       |
|582|901        |1       |
|583|903        |1       |
|584|908        |1       |
|585|909        |1       |
|586|910        |1       |
|587|913        |1       |
|588|919        |1       |
|589|922        |1       |
|590|923        |1       |
|591|924        |1       |
|592|926        |1       |
|593|928        |1       |
|594|931        |1       |
|595|934        |1       |
|596|935        |1       |
|597|936        |1       |
|598|938        |1       |
|599|941        |1       |
|600|943        |1       |
|601|946        |1       |
|602|949        |1       |
|603|950        |1       |
|604|951        |1       |
|605|952        |1       |
|606|953        |1       |
|607|958        |1       |
|608|959        |1       |
|609|960        |1       |
|610|961        |1       |
|611|964        |1       |
|612|965        |1       |
|613|973        |1       |
|614|977        |1       |
|615|979        |1       |
|616|992        |1       |
|617|996        |1       |
|618|998        |1       |

</p>
</details>


<br/>


###### [Iván Montiel Cardona](https://github.com/begeistert)
