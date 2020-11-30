## Reto 2: Estructura básica de una consulta

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de `JetBrains DataGrip` por comodidad).

### 3. Desarrollo :rocket:

Usando la tabla `empleados`, escribe consultas que permitan responder las siguientes preguntas.

---

- ¿Cuál es el nombre de los empleados con el puesto 4?

```sql
# Respuesta
SELECT nombre
FROM empleado
WHERE id_puesto = 4;                  
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%201.png">
  </a>
</p>
</details>

|#  |nombre                       |
|---|-----------------------------|
|1  |Norrie                       |
|2  |Maxy                         |

</p>
</details>

---

- ¿Qué puestos tienen un salario mayor a $10,000?

```sql
# Respuesta
SELECT *
FROM puesto
WHERE salario > 10000;                  
```

<br />
<details><summary>Resultado (Tabla)</summary>
<p>
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%202.png">
  </a>
</p>
</details>

|#  |id_puesto                    |nombre                              |salario |
|---|-----------------------------|------------------------------------|--------|
|1  |1                            |Analog Circuit Design manager       |28500.98|
|2  |2                            |Junior Executive                    |10508.47|
|3  |3                            |Director of Sales                   |28725.56|
|4  |4                            |Staff Scientist                     |14965.31|
|5  |5                            |Desktop Support Technician          |15885.41|
|6  |6                            |Budget/Accounting Analyst III       |17131.23|
|7  |7                            |Accounting Assistant III            |29257.91|
|8  |8                            |Programmer Analyst II               |23223.95|
|9  |9                            |Nurse Practicioner                  |11483.4 |
|10 |10                           |Social Worker                       |18008.12|
|11 |11                           |Teacher                             |21472.3 |
|12 |12                           |Structural Engineer                 |10538.63|
|13 |13                           |Senior Editor                       |11255.21|
|14 |14                           |Human Resources Manager             |20746.5 |
|15 |15                           |Web Designer IV                     |24826.77|
|16 |16                           |Safety Technician IV                |27612.46|
|17 |17                           |Financial Analyst                   |10145.15|
|18 |18                           |Speech Pathologist                  |29967.17|
|19 |19                           |Recruiter                           |16302.06|
|20 |20                           |Quality Control Specialist          |22865.39|
|21 |21                           |Graphic Designer                    |19305.16|
|22 |22                           |Computer Systems Analyst II         |16606.5 |
|23 |23                           |Social Worker                       |11686.97|
|24 |24                           |Design Engineer                     |23525.5 |
|25 |25                           |Staff Accountant IV                 |18265.64|
|26 |26                           |Financial Advisor                   |12531.67|
|27 |27                           |Sales Representative                |26687.62|
|28 |28                           |Executive Secretary                 |16004.18|
|29 |29                           |VP Marketing                        |26578.02|
|30 |30                           |Software Engineer IV                |24672.81|
|31 |31                           |General Manager                     |29561.15|
|32 |32                           |Clinical Specialist                 |11845.26|
|33 |33                           |Biostatistician IV                  |29842.41|
|34 |34                           |Help Desk Technician                |16890.91|
|35 |35                           |Community Outreach Specialist       |21445.36|
|36 |36                           |Civil Engineer                      |15679.31|
|37 |37                           |Compensation Analyst                |21540.92|
|38 |38                           |Senior Financial Analyst            |11456.12|
|39 |39                           |Help Desk Technician                |29879.62|
|40 |40                           |VP Quality Control                  |13685.23|
|41 |41                           |Biostatistician I                   |27796.43|
|42 |42                           |Administrative Officer              |15580.77|
|43 |43                           |Environmental Tech                  |13814.65|
|44 |44                           |Database Administrator II           |16263.36|
|45 |45                           |Programmer III                      |15096.16|
|46 |46                           |Senior Sales Associate              |10165.54|
|47 |47                           |Project Manager                     |27133.83|
|48 |48                           |Occupational Therapist              |24735.89|
|49 |49                           |Information Systems Manager         |24466.31|
|50 |50                           |Software Test Engineer III          |15599.51|
|51 |51                           |Project Manager                     |18880.87|
|52 |52                           |Information Systems Manager         |27462.67|
|53 |53                           |Accountant IV                       |10343.33|
|54 |54                           |Dental Hygienist                    |16095.89|
|55 |55                           |Tax Accountant                      |19793.16|
|56 |56                           |Human Resources Assistant I         |29685.55|
|57 |57                           |Programmer Analyst IV               |27790.84|
|58 |58                           |Human Resources Assistant II        |15184.37|
|59 |59                           |Graphic Designer                    |24724.2 |
|60 |60                           |Account Coordinator                 |14313.52|
|61 |61                           |Web Developer III                   |15457.03|
|62 |62                           |Compensation Analyst                |21130.7 |
|63 |63                           |Structural Engineer                 |16081.45|
|64 |64                           |Research Assistant IV               |20290.75|
|65 |65                           |Cost Accountant                     |12111.31|
|66 |66                           |Budget/Accounting Analyst III       |20428.7 |
|67 |67                           |Recruiting Manager                  |22278.6 |
|68 |68                           |Data Coordiator                     |25146.25|
|69 |69                           |Research Associate                  |15087.41|
|70 |70                           |Senior Quality Engineer             |15241.47|
|71 |71                           |Registered Nurse                    |21090.19|
|72 |72                           |Senior Quality Engineer             |25607.52|
|73 |73                           |Media Manager III                   |23918.19|
|74 |74                           |Mechanical Systems Engineer         |18228.38|
|75 |75                           |Data Coordiator                     |28264.31|
|76 |76                           |Software Engineer I                 |26955.78|
|77 |77                           |Occupational Therapist              |24963.54|
|78 |78                           |Nurse                               |16884.18|
|79 |79                           |Junior Executive                    |29916.06|
|80 |80                           |Staff Scientist                     |11471.92|
|81 |81                           |Computer Systems Analyst I          |14289.68|
|82 |82                           |Information Systems Manager         |21772.24|
|83 |83                           |Web Developer IV                    |12456.52|
|84 |84                           |Nuclear Power Engineer              |12173.71|
|85 |85                           |Electrical Engineer                 |21419.93|
|86 |86                           |Speech Pathologist                  |18404.2 |
|87 |87                           |Mechanical Systems Engineer         |15601.22|
|88 |88                           |Nurse Practicioner                  |11822.42|
|89 |89                           |Legal Assistant                     |23209.28|
|90 |90                           |Data Coordiator                     |15502.32|
|91 |91                           |Research Associate                  |29800.09|
|92 |92                           |Product Engineer                    |25908.37|
|93 |93                           |VP Sales                            |23835.4 |
|94 |94                           |Compensation Analyst                |10719.88|
|95 |95                           |Occupational Therapist              |15286.05|
|96 |96                           |Marketing Assistant                 |19593.51|
|97 |97                           |Account Coordinator                 |12461.04|
|98 |98                           |Sales Associate                     |24738.74|
|99 |99                           |Physical Therapy Assistant          |23573.61|
|100|100                          |Geologist IV                        |23026.27|
|101|101                          |Chemical Engineer                   |24483.92|
|102|102                          |Recruiter                           |28929.3 |
|103|103                          |Financial Advisor                   |17153.99|
|104|104                          |Senior Cost Accountant              |20096.87|
|105|105                          |Librarian                           |24453.31|
|106|106                          |Cost Accountant                     |11834.8 |
|107|107                          |Internal Auditor                    |24476.39|
|108|108                          |Internal Auditor                    |23620.22|
|109|109                          |Staff Accountant II                 |10438.12|
|110|110                          |Administrative Assistant II         |16934.56|
|111|111                          |Software Consultant                 |21096.1 |
|112|112                          |Sales Associate                     |24096.88|
|113|113                          |Financial Advisor                   |18398.44|
|114|114                          |Senior Quality Engineer             |10677.54|
|115|115                          |Project Manager                     |28841.26|
|116|116                          |Safety Technician I                 |15855.96|
|117|117                          |Social Worker                       |20905.23|
|118|118                          |Research Associate                  |17760.49|
|119|119                          |VP Accounting                       |19769.99|
|120|120                          |Database Administrator I            |18049.94|
|121|121                          |Help Desk Technician                |14202.55|
|122|122                          |Accountant III                      |21880.07|
|123|123                          |Nurse Practicioner                  |26483.57|
|124|124                          |Biostatistician III                 |18472.94|
|125|125                          |Assistant Manager                   |23908.08|
|126|126                          |Human Resources Manager             |10579.94|
|127|127                          |Web Designer IV                     |17833.57|
|128|128                          |Biostatistician I                   |16450.44|
|129|129                          |Sales Representative                |11213.63|
|130|130                          |Desktop Support Technician          |10940.94|
|131|131                          |Speech Pathologist                  |12090.9 |
|132|132                          |Administrative Assistant II         |29512.59|
|133|133                          |Environmental Tech                  |13570.13|
|134|134                          |Geological Engineer                 |23081.04|
|135|135                          |Chemical Engineer                   |10208.84|
|136|136                          |Assistant Professor                 |27933.59|
|137|137                          |Help Desk Operator                  |10019.44|
|138|138                          |Chief Design Engineer               |13596.5 |
|139|139                          |Financial Advisor                   |20528.15|
|140|140                          |Quality Engineer                    |20829.76|
|141|141                          |VP Marketing                        |22101.9 |
|142|142                          |Developer II                        |13860.47|
|143|143                          |VP Marketing                        |16283.37|
|144|144                          |Project Manager                     |17118.57|
|145|145                          |Biostatistician I                   |24908.56|
|146|146                          |Quality Control Specialist          |22975.08|
|147|147                          |Senior Developer                    |27119.94|
|148|148                          |Tax Accountant                      |23100.57|
|149|149                          |Speech Pathologist                  |21391.61|
|150|150                          |Administrative Officer              |10013.44|
|151|151                          |Editor                              |19022.09|
|152|152                          |Junior Executive                    |29226.46|
|153|153                          |Accounting Assistant I              |29770   |
|154|154                          |Business Systems Development Analyst|20612.78|
|155|155                          |Physical Therapy Assistant          |12325.2 |
|156|156                          |Project Manager                     |25952.97|
|157|157                          |Pharmacist                          |21270.3 |
|158|158                          |Information Systems Manager         |17275.96|
|159|159                          |Assistant Manager                   |11856.4 |
|160|160                          |Account Executive                   |20688.95|
|161|161                          |Junior Executive                    |10298.53|
|162|162                          |Account Coordinator                 |13500.38|
|163|163                          |Senior Editor                       |11618.93|
|164|164                          |Community Outreach Specialist       |26782.42|
|165|165                          |Recruiting Manager                  |10217.1 |
|166|166                          |Programmer II                       |21700.62|
|167|167                          |Account Executive                   |18350.35|
|168|168                          |Product Engineer                    |29175.25|
|169|169                          |VP Accounting                       |11932.1 |
|170|170                          |Design Engineer                     |11430.73|
|171|171                          |Paralegal                           |11273.11|
|172|172                          |Desktop Support Technician          |23331.59|
|173|173                          |Financial Advisor                   |13676.73|
|174|174                          |Associate Professor                 |29040.39|
|175|175                          |Business Systems Development Analyst|28185.01|
|176|176                          |Automation Specialist III           |28551.28|
|177|177                          |Dental Hygienist                    |21317.51|
|178|178                          |VP Product Management               |20418.46|
|179|179                          |Graphic Designer                    |16366.24|
|180|180                          |Editor                              |11627.49|
|181|181                          |Automation Specialist II            |21208.29|
|182|182                          |Assistant Professor                 |19386.62|
|183|183                          |Professor                           |28789.65|
|184|184                          |Executive Secretary                 |13547.26|
|185|185                          |Project Manager                     |15289.93|
|186|186                          |Technical Writer                    |17061.35|
|187|187                          |Director of Sales                   |10232.21|
|188|188                          |Product Engineer                    |16849.51|
|189|189                          |Statistician II                     |11827.8 |
|190|190                          |Geological Engineer                 |13978.46|
|191|191                          |Nurse Practicioner                  |15674.23|
|192|192                          |Geological Engineer                 |27495.54|
|193|193                          |Quality Engineer                    |11579.64|
|194|194                          |Senior Quality Engineer             |26106.93|
|195|195                          |Systems Administrator III           |27564.69|
|196|196                          |Senior Editor                       |20178.83|
|197|197                          |Recruiter                           |24571.07|
|198|198                          |Executive Secretary                 |24300.59|
|199|199                          |General Manager                     |19104.59|
|200|200                          |Geological Engineer                 |25202.47|
|201|201                          |Cost Accountant                     |25463.4 |
|202|202                          |Marketing Manager                   |27423.32|
|203|203                          |VP Marketing                        |17990.41|
|204|204                          |Media Manager IV                    |18185.4 |
|205|205                          |Software Test Engineer I            |22150.18|
|206|206                          |Business Systems Development Analyst|18022.71|
|207|207                          |Chief Design Engineer               |18651.94|
|208|208                          |Financial Advisor                   |10102.92|
|209|209                          |Research Associate                  |19851.11|
|210|210                          |Nurse Practicioner                  |16268.7 |
|211|211                          |Community Outreach Specialist       |10117.81|
|212|212                          |Sales Representative                |22239.37|
|213|213                          |Administrative Assistant I          |28952.63|
|214|214                          |Pharmacist                          |17596.91|
|215|215                          |Accounting Assistant II             |24026.35|
|216|216                          |Account Executive                   |29552.05|
|217|217                          |Account Coordinator                 |12867.38|
|218|218                          |Help Desk Technician                |19757.64|
|219|219                          |Engineer II                         |28226.82|
|220|220                          |Executive Secretary                 |22362.26|
|221|221                          |Staff Scientist                     |29052.89|
|222|222                          |Developer III                       |11616.76|
|223|223                          |Quality Engineer                    |28489.81|
|224|224                          |Software Consultant                 |18145.49|
|225|225                          |Professor                           |15764.04|
|226|226                          |Senior Sales Associate              |15694.07|
|227|227                          |Health Coach II                     |18672.07|
|228|228                          |Software Consultant                 |19454.3 |
|229|229                          |Nurse Practicioner                  |20772.89|
|230|230                          |Dental Hygienist                    |16157.9 |
|231|231                          |Senior Editor                       |17352.22|
|232|232                          |Clinical Specialist                 |21002.02|
|233|233                          |Office Assistant II                 |21000.56|
|234|234                          |Paralegal                           |24552.65|
|235|235                          |Product Engineer                    |18836.86|
|236|236                          |Research Assistant IV               |18666.87|
|237|237                          |Marketing Manager                   |19991.83|
|238|238                          |Office Assistant III                |19717.67|
|239|239                          |Physical Therapy Assistant          |18404.58|
|240|240                          |Senior Cost Accountant              |25951.6 |
|241|241                          |Community Outreach Specialist       |23552.23|
|242|242                          |Account Representative III          |10926.89|
|243|243                          |Sales Associate                     |12709.23|
|244|244                          |Marketing Manager                   |19119.23|
|245|245                          |Safety Technician IV                |11797.44|
|246|246                          |Programmer Analyst III              |23696.02|
|247|247                          |Help Desk Technician                |16486.79|
|248|248                          |Recruiting Manager                  |22963.26|
|249|249                          |Health Coach IV                     |28344.36|
|250|250                          |Office Assistant III                |11372.35|
|251|251                          |Internal Auditor                    |10897.05|
|252|252                          |Professor                           |20506.55|
|253|253                          |VP Quality Control                  |29036.1 |
|254|254                          |Legal Assistant                     |20262   |
|255|255                          |Civil Engineer                      |16891.1 |
|256|256                          |Biostatistician III                 |18411.12|
|257|257                          |Administrative Assistant III        |20099.57|
|258|258                          |Research Associate                  |11825.92|
|259|259                          |VP Sales                            |15739.33|
|260|260                          |Administrative Officer              |25895.3 |
|261|261                          |Product Engineer                    |16050.24|
|262|262                          |Recruiter                           |17226.73|
|263|263                          |Dental Hygienist                    |17036.12|
|264|264                          |Social Worker                       |15979.23|
|265|265                          |Paralegal                           |14343.71|
|266|266                          |Professor                           |17499.14|
|267|267                          |Mechanical Systems Engineer         |20873.59|
|268|268                          |Developer IV                        |11112.31|
|269|269                          |Analog Circuit Design manager       |27289.77|
|270|270                          |Web Developer I                     |23536.3 |
|271|271                          |Accountant I                        |12971.71|
|272|272                          |Librarian                           |26845.24|
|273|273                          |Human Resources Assistant III       |14667.33|
|274|274                          |Operator                            |21448.4 |
|275|275                          |Social Worker                       |10282.27|
|276|276                          |Mechanical Systems Engineer         |14730.23|
|277|277                          |VP Accounting                       |22066.81|
|278|278                          |Tax Accountant                      |18870.37|
|279|279                          |Financial Advisor                   |28665.52|
|280|280                          |Speech Pathologist                  |12639.2 |
|281|281                          |Chemical Engineer                   |12353.62|
|282|282                          |VP Quality Control                  |23780.39|
|283|283                          |Assistant Professor                 |19990.63|
|284|284                          |Nurse                               |24474.77|
|285|285                          |Marketing Manager                   |27867.37|
|286|286                          |Staff Accountant I                  |24347.45|
|287|287                          |Civil Engineer                      |21863.46|
|288|288                          |VP Marketing                        |16105.26|
|289|289                          |Social Worker                       |10185.35|
|290|290                          |Occupational Therapist              |26179.38|
|291|291                          |VP Quality Control                  |17498.31|
|292|292                          |Human Resources Manager             |26728.41|
|293|293                          |Biostatistician IV                  |12644.9 |
|294|294                          |Desktop Support Technician          |28434.01|
|295|295                          |General Manager                     |11296.13|
|296|296                          |Accountant IV                       |28920.2 |
|297|297                          |Senior Quality Engineer             |14061.37|
|298|298                          |VP Product Management               |20456.72|
|299|299                          |Budget/Accounting Analyst III       |21590.01|
|300|300                          |Computer Systems Analyst III        |23956.63|
|301|301                          |Librarian                           |25898.19|
|302|302                          |Programmer III                      |19995.01|
|303|303                          |GIS Technical Architect             |15415.94|
|304|304                          |Research Associate                  |19436.54|
|305|305                          |Environmental Specialist            |24867.34|
|306|306                          |Clinical Specialist                 |18150.53|
|307|307                          |VP Product Management               |11975.79|
|308|308                          |Actuary                             |24139.25|
|309|309                          |Graphic Designer                    |23354.79|
|310|310                          |Social Worker                       |28955.95|
|311|311                          |Clinical Specialist                 |13608.39|
|312|312                          |Software Test Engineer IV           |25062.1 |
|313|313                          |Mechanical Systems Engineer         |19063.26|
|314|314                          |Mechanical Systems Engineer         |13792.69|
|315|315                          |Payment Adjustment Coordinator      |21559.48|
|316|316                          |Compensation Analyst                |18219.1 |
|317|317                          |Payment Adjustment Coordinator      |24316.31|
|318|318                          |Research Associate                  |18537.77|
|319|319                          |Executive Secretary                 |18688.67|
|320|320                          |Environmental Specialist            |15201.41|
|321|321                          |Chief Design Engineer               |15878.74|
|322|322                          |Senior Editor                       |12159.97|
|323|323                          |Recruiting Manager                  |24855.73|
|324|324                          |Research Nurse                      |28531.86|
|325|325                          |Help Desk Operator                  |28174.27|
|326|326                          |Geologist III                       |12783.39|
|327|327                          |Actuary                             |25367.07|
|328|328                          |Associate Professor                 |15124.94|
|329|329                          |Assistant Professor                 |15620.74|
|330|330                          |Pharmacist                          |11218.52|
|331|331                          |Quality Control Specialist          |21388.69|
|332|332                          |Chief Design Engineer               |10978.91|
|333|333                          |Assistant Professor                 |11410.54|
|334|334                          |GIS Technical Architect             |21048.14|
|335|335                          |Electrical Engineer                 |15363.76|
|336|336                          |Physical Therapy Assistant          |12030.25|
|337|337                          |Pharmacist                          |11917.11|
|338|338                          |Staff Accountant II                 |11856.09|
|339|339                          |Physical Therapy Assistant          |10964.34|
|340|340                          |Product Engineer                    |19699.09|
|341|341                          |Statistician I                      |11590.92|
|342|342                          |Environmental Tech                  |10650.89|
|343|343                          |Operator                            |16802   |
|344|344                          |Senior Cost Accountant              |24126.62|
|345|345                          |Project Manager                     |13804.71|
|346|346                          |Physical Therapy Assistant          |22370.99|
|347|347                          |Marketing Manager                   |20291.04|
|348|348                          |Compensation Analyst                |20604.72|
|349|349                          |Sales Representative                |19445.07|
|350|350                          |Safety Technician III               |25290.49|
|351|351                          |Computer Systems Analyst I          |14324.44|
|352|352                          |Product Engineer                    |10195.75|
|353|353                          |Registered Nurse                    |18948.94|
|354|354                          |Dental Hygienist                    |12481.47|
|355|355                          |Programmer Analyst IV               |16757.92|
|356|356                          |Legal Assistant                     |11989.08|
|357|357                          |Web Developer II                    |24252.13|
|358|358                          |Data Coordiator                     |23648.62|
|359|359                          |Human Resources Manager             |27260.59|
|360|360                          |Paralegal                           |27337.48|
|361|361                          |Paralegal                           |18020   |
|362|362                          |Professor                           |23306.12|
|363|363                          |Geologist III                       |10741.95|
|364|364                          |Legal Assistant                     |20182.89|
|365|365                          |VP Accounting                       |10871.56|
|366|366                          |Web Developer IV                    |29615.38|
|367|367                          |Senior Developer                    |27606.4 |
|368|368                          |Quality Control Specialist          |27513.88|
|369|369                          |Chief Design Engineer               |12334.4 |
|370|370                          |Legal Assistant                     |27994.36|
|371|371                          |VP Accounting                       |12623.55|
|372|372                          |Product Engineer                    |26665.02|
|373|373                          |Geologist IV                        |18890.01|
|374|374                          |Account Executive                   |21326.1 |
|375|375                          |Speech Pathologist                  |10097.26|
|376|376                          |Nurse Practicioner                  |12693.12|
|377|377                          |Database Administrator III          |13709.46|
|378|378                          |Media Manager III                   |24557.5 |
|379|379                          |Assistant Manager                   |14046.33|
|380|380                          |Senior Cost Accountant              |18051.96|
|381|381                          |Account Executive                   |18716.78|
|382|382                          |Account Executive                   |16782.94|
|383|383                          |Computer Systems Analyst II         |18553.5 |
|384|384                          |Actuary                             |24915.64|
|385|385                          |Automation Specialist I             |20918.93|
|386|386                          |Technical Writer                    |21601.46|
|387|387                          |Systems Administrator IV            |21007.3 |
|388|388                          |Teacher                             |15467.24|
|389|389                          |Internal Auditor                    |29318.7 |
|390|390                          |Structural Engineer                 |28578.52|
|391|391                          |Structural Analysis Engineer        |26011.94|
|392|392                          |Junior Executive                    |22313.49|
|393|393                          |Desktop Support Technician          |13723.27|
|394|394                          |Business Systems Development Analyst|19934.36|
|395|395                          |Executive Secretary                 |24735.78|
|396|396                          |Analog Circuit Design manager       |16844.28|
|397|397                          |Health Coach IV                     |13522.92|
|398|398                          |Nuclear Power Engineer              |26714.28|
|399|399                          |Human Resources Manager             |27734.25|
|400|400                          |Structural Engineer                 |18364.62|
|401|401                          |Compensation Analyst                |12675.34|
|402|402                          |Dental Hygienist                    |28411.85|
|403|403                          |Mechanical Systems Engineer         |28088.84|
|404|404                          |Engineer IV                         |27961.07|
|405|405                          |Analog Circuit Design manager       |19170.13|
|406|406                          |VP Accounting                       |27759.48|
|407|407                          |Business Systems Development Analyst|20666.93|
|408|408                          |Developer III                       |28360.7 |
|409|409                          |Occupational Therapist              |12707.21|
|410|410                          |Senior Editor                       |28710.97|
|411|411                          |General Manager                     |10866.17|
|412|412                          |Chief Design Engineer               |20075.58|
|413|413                          |Biostatistician IV                  |12726.35|
|414|414                          |Biostatistician IV                  |26289.28|
|415|415                          |Analyst Programmer                  |24632.82|
|416|416                          |Environmental Specialist            |27402.86|
|417|417                          |Senior Financial Analyst            |22725.92|
|418|418                          |Marketing Assistant                 |12110.09|
|419|419                          |Professor                           |22996.4 |
|420|420                          |Financial Advisor                   |19936.98|
|421|421                          |Chemical Engineer                   |11070.59|
|422|422                          |Senior Financial Analyst            |19296.59|
|423|423                          |Senior Quality Engineer             |22472.93|
|424|424                          |Editor                              |19864.33|
|425|425                          |Internal Auditor                    |26557.11|
|426|426                          |Social Worker                       |10699.87|
|427|427                          |Accountant IV                       |13871.9 |
|428|428                          |Software Engineer I                 |13260.68|
|429|429                          |Technical Writer                    |20173.18|
|430|430                          |Media Manager II                    |16003.7 |
|431|431                          |Senior Cost Accountant              |18825   |
|432|432                          |Computer Systems Analyst I          |29602.29|
|433|433                          |Librarian                           |26720.17|
|434|434                          |Civil Engineer                      |15396.27|
|435|435                          |Geologist II                        |18324.45|
|436|436                          |Technical Writer                    |14878.54|
|437|437                          |Help Desk Technician                |28529.58|
|438|438                          |Health Coach I                      |25581.05|
|439|439                          |VP Marketing                        |22940.47|
|440|440                          |Nurse Practicioner                  |19989.83|
|441|441                          |Paralegal                           |10432.44|
|442|442                          |VP Marketing                        |23739.69|
|443|443                          |Administrative Officer              |13967.5 |
|444|444                          |Automation Specialist II            |23552.29|
|445|445                          |Database Administrator I            |18365.36|
|446|446                          |Marketing Assistant                 |12276.4 |
|447|447                          |Graphic Designer                    |12077.16|
|448|448                          |VP Quality Control                  |16983.42|
|449|449                          |Web Designer I                      |20419.88|
|450|450                          |Physical Therapy Assistant          |17196.41|
|451|451                          |Systems Administrator III           |27226.69|
|452|452                          |Physical Therapy Assistant          |24636.79|
|453|453                          |Paralegal                           |14626.69|
|454|454                          |Nurse Practicioner                  |23518   |
|455|455                          |Sales Associate                     |12607.58|
|456|456                          |Information Systems Manager         |18858.29|
|457|457                          |Quality Engineer                    |15890.04|
|458|458                          |Nurse Practicioner                  |19450.25|
|459|459                          |Information Systems Manager         |23307.49|
|460|460                          |Engineer IV                         |20803.72|
|461|461                          |Internal Auditor                    |22411.72|
|462|462                          |VP Quality Control                  |16884.64|
|463|463                          |Research Associate                  |10103.08|
|464|464                          |Legal Assistant                     |13249.45|
|465|465                          |Dental Hygienist                    |23124.4 |
|466|466                          |Financial Analyst                   |13029.96|
|467|467                          |Account Executive                   |27186.28|
|468|468                          |Senior Financial Analyst            |12347.62|
|469|469                          |VP Marketing                        |20799.79|
|470|470                          |Senior Financial Analyst            |22421.19|
|471|471                          |Business Systems Development Analyst|23844.52|
|472|472                          |Business Systems Development Analyst|13480.53|
|473|473                          |Assistant Professor                 |22278.37|
|474|474                          |Electrical Engineer                 |14857.74|
|475|475                          |Payment Adjustment Coordinator      |18237.53|
|476|476                          |Nurse                               |12490   |
|477|477                          |Environmental Tech                  |18596.21|
|478|478                          |Statistician IV                     |17690.83|
|479|479                          |Accounting Assistant III            |28253.17|
|480|480                          |Programmer Analyst II               |12434.83|
|481|481                          |Director of Sales                   |14143.88|
|482|482                          |VP Quality Control                  |12970.54|
|483|483                          |Editor                              |11949.92|
|484|484                          |Geological Engineer                 |18462.62|
|485|485                          |Project Manager                     |21434.4 |
|486|486                          |General Manager                     |22431.9 |
|487|487                          |Analog Circuit Design manager       |29923.95|
|488|488                          |Financial Advisor                   |23208.73|
|489|489                          |Database Administrator II           |27225.98|
|490|490                          |Recruiter                           |20317.25|
|491|491                          |Staff Scientist                     |11947.8 |
|492|492                          |Actuary                             |21991.83|
|493|493                          |Product Engineer                    |15901.79|
|494|494                          |Sales Representative                |29996.58|
|495|495                          |Structural Analysis Engineer        |21362.13|
|496|496                          |Paralegal                           |12207.59|
|497|497                          |Administrative Assistant III        |27971.75|
|498|498                          |Software Test Engineer II           |13084.31|
|499|499                          |Automation Specialist IV            |27356.99|
|500|500                          |Research Assistant III              |27359.54|
|501|501                          |Technical Writer                    |29139.82|
|502|502                          |Pharmacist                          |21535.67|
|503|503                          |Staff Scientist                     |15989.53|
|504|504                          |Graphic Designer                    |19845.21|
|505|505                          |Marketing Assistant                 |14347.61|
|506|506                          |Nurse                               |12110.21|
|507|507                          |Database Administrator IV           |10834.59|
|508|508                          |Associate Professor                 |24745.7 |
|509|509                          |Developer II                        |23664.84|
|510|510                          |Research Associate                  |16292.78|
|511|511                          |Junior Executive                    |11821   |
|512|512                          |Marketing Manager                   |16014.98|
|513|513                          |Physical Therapy Assistant          |17219.16|
|514|514                          |Staff Accountant I                  |12043.79|
|515|515                          |Speech Pathologist                  |11647.84|
|516|516                          |Recruiting Manager                  |27934.21|
|517|517                          |GIS Technical Architect             |16959.14|
|518|518                          |Business Systems Development Analyst|15384.85|
|519|519                          |Engineer II                         |23057.65|
|520|520                          |Environmental Tech                  |17585.64|
|521|521                          |Biostatistician I                   |12011.1 |
|522|522                          |Quality Engineer                    |20150.93|
|523|523                          |Assistant Professor                 |20375.18|
|524|524                          |Help Desk Technician                |12652.2 |
|525|525                          |Financial Advisor                   |28842.5 |
|526|526                          |Developer II                        |12054.4 |
|527|527                          |Clinical Specialist                 |14992.44|
|528|528                          |Software Consultant                 |10694.09|
|529|529                          |Executive Secretary                 |27284.56|
|530|530                          |Budget/Accounting Analyst IV        |26113.44|
|531|531                          |Structural Analysis Engineer        |28625.06|
|532|532                          |Environmental Specialist            |21286.84|
|533|533                          |Financial Analyst                   |13650.91|
|534|534                          |Data Coordiator                     |21418.75|
|535|535                          |Data Coordiator                     |21877.42|
|536|536                          |Speech Pathologist                  |13906.57|
|537|537                          |Database Administrator IV           |13599.28|
|538|538                          |Web Designer II                     |18487.79|
|539|539                          |Health Coach III                    |17612.04|
|540|540                          |Sales Representative                |15169.34|
|541|541                          |Statistician II                     |16924.85|
|542|542                          |Marketing Manager                   |12277.31|
|543|543                          |Assistant Media Planner             |26155.71|
|544|544                          |Operator                            |13477.21|
|545|545                          |Help Desk Operator                  |12540.01|
|546|546                          |Sales Representative                |13833.83|
|547|547                          |Human Resources Manager             |21088.2 |
|548|548                          |Automation Specialist III           |13119.76|
|549|549                          |Physical Therapy Assistant          |17927   |
|550|550                          |Web Developer II                    |19845.61|
|551|551                          |Biostatistician IV                  |11777.97|
|552|552                          |Teacher                             |13077.71|
|553|553                          |Compensation Analyst                |14957.67|
|554|554                          |Director of Sales                   |14173.4 |
|555|555                          |Nurse                               |15709.06|
|556|556                          |Editor                              |25239.41|
|557|557                          |Geological Engineer                 |23173.54|
|558|558                          |Director of Sales                   |26133.1 |
|559|559                          |Office Assistant III                |15605.28|
|560|560                          |Assistant Professor                 |24994.63|
|561|561                          |Marketing Manager                   |17239.92|
|562|562                          |Engineer I                          |27155.44|
|563|563                          |Research Associate                  |10758.91|
|564|564                          |Developer III                       |19597.44|
|565|565                          |Pharmacist                          |15394.25|
|566|566                          |Compensation Analyst                |10919.82|
|567|567                          |Analyst Programmer                  |12604.52|
|568|568                          |Human Resources Assistant I         |12434.26|
|569|569                          |Quality Control Specialist          |19317.13|
|570|570                          |Professor                           |15085.24|
|571|571                          |Paralegal                           |13166.79|
|572|572                          |Media Manager IV                    |26951.09|
|573|573                          |Assistant Professor                 |11901.17|
|574|574                          |VP Marketing                        |20113.84|
|575|575                          |Teacher                             |13386.74|
|576|576                          |VP Product Management               |29719.9 |
|577|577                          |VP Accounting                       |23072.86|
|578|578                          |Teacher                             |18525.96|
|579|579                          |Editor                              |25737.85|
|580|580                          |Biostatistician IV                  |22574.86|
|581|581                          |Recruiting Manager                  |25405.1 |
|582|582                          |Cost Accountant                     |26563.06|
|583|583                          |Help Desk Operator                  |27163.3 |
|584|584                          |Biostatistician III                 |24151.76|
|585|585                          |Food Chemist                        |23047.75|
|586|586                          |Librarian                           |11160.77|
|587|587                          |Human Resources Assistant III       |17950.28|
|588|588                          |Environmental Specialist            |13729.77|
|589|589                          |Safety Technician III               |15623.19|
|590|590                          |Librarian                           |24330.42|
|591|591                          |Tax Accountant                      |10303.46|
|592|592                          |Statistician III                    |16859.53|
|593|593                          |Analog Circuit Design manager       |24751.34|
|594|594                          |Electrical Engineer                 |24657.2 |
|595|595                          |Editor                              |28975.83|
|596|596                          |Business Systems Development Analyst|29667.53|
|597|597                          |Data Coordiator                     |17497.45|
|598|598                          |Community Outreach Specialist       |27120.26|
|599|599                          |Occupational Therapist              |11880.84|
|600|600                          |Assistant Professor                 |12876.27|
|601|601                          |Marketing Assistant                 |13453.09|
|602|602                          |Payment Adjustment Coordinator      |16574.38|
|603|603                          |Executive Secretary                 |23193.52|
|604|604                          |Paralegal                           |21728.8 |
|605|605                          |Analyst Programmer                  |17074.44|
|606|606                          |Marketing Assistant                 |26820.89|
|607|607                          |Systems Administrator III           |10458.33|
|608|608                          |VP Sales                            |17563.43|
|609|609                          |Nuclear Power Engineer              |13531.34|
|610|610                          |Actuary                             |23188.73|
|611|611                          |VP Sales                            |21899.71|
|612|612                          |Technical Writer                    |23097.7 |
|613|613                          |Tax Accountant                      |16431.92|
|614|614                          |Senior Editor                       |23098.98|
|615|615                          |Quality Control Specialist          |12747.46|
|616|616                          |Administrative Assistant III        |25220.58|
|617|617                          |Marketing Assistant                 |16786.02|
|618|618                          |Social Worker                       |14596.18|
|619|619                          |Recruiting Manager                  |28885.36|
|620|620                          |Research Nurse                      |24115.47|
|621|621                          |Editor                              |18431.67|
|622|622                          |Budget/Accounting Analyst IV        |11753.07|
|623|623                          |Business Systems Development Analyst|25173.78|
|624|624                          |Geological Engineer                 |23325.07|
|625|625                          |Engineer II                         |21105.91|
|626|626                          |Associate Professor                 |21951.34|
|627|627                          |Account Coordinator                 |23285.7 |
|628|628                          |Help Desk Operator                  |23207.45|
|629|629                          |Senior Editor                       |29711.2 |
|630|630                          |Web Designer III                    |17926.96|
|631|631                          |Project Manager                     |26714.1 |
|632|632                          |Assistant Media Planner             |23506.64|
|633|633                          |Nurse Practicioner                  |17260.24|
|634|634                          |Financial Advisor                   |11899.63|
|635|635                          |Web Developer II                    |26175.94|
|636|636                          |Quality Control Specialist          |11884   |
|637|637                          |Software Test Engineer III          |13729.61|
|638|638                          |Teacher                             |17580.31|
|639|639                          |Financial Analyst                   |25272.3 |
|640|640                          |Business Systems Development Analyst|21604.8 |
|641|641                          |Community Outreach Specialist       |28178.67|
|642|642                          |Media Manager III                   |16212.54|
|643|643                          |Computer Systems Analyst I          |11270.92|
|644|644                          |Statistician IV                     |17657.32|
|645|645                          |Nurse Practicioner                  |25579.22|
|646|646                          |Nurse Practicioner                  |16605.18|
|647|647                          |Help Desk Technician                |25150.92|
|648|648                          |Senior Cost Accountant              |17303.74|
|649|649                          |Software Engineer IV                |12585.94|
|650|650                          |Editor                              |22380.65|
|651|651                          |Recruiting Manager                  |23299.79|
|652|652                          |Technical Writer                    |14331.83|
|653|653                          |General Manager                     |10491.25|
|654|654                          |Marketing Manager                   |22639.22|
|655|655                          |Editor                              |25071.68|
|656|656                          |Developer II                        |13433.86|
|657|657                          |Occupational Therapist              |13190.86|
|658|658                          |Executive Secretary                 |17745.78|
|659|659                          |Budget/Accounting Analyst IV        |10326.54|
|660|660                          |Office Assistant IV                 |10147.18|
|661|661                          |Assistant Media Planner             |10530.28|
|662|662                          |Business Systems Development Analyst|16887.69|
|663|663                          |Budget/Accounting Analyst IV        |19280.4 |
|664|664                          |Financial Advisor                   |18243.06|
|665|665                          |Assistant Professor                 |27650.12|
|666|666                          |Environmental Specialist            |26413.7 |
|667|667                          |Developer II                        |27196.55|
|668|668                          |Physical Therapy Assistant          |20688.87|
|669|669                          |Actuary                             |16361.43|
|670|670                          |Engineer IV                         |21317.37|
|671|671                          |Account Coordinator                 |18937.29|
|672|672                          |Environmental Specialist            |22044.17|
|673|673                          |Compensation Analyst                |14250.64|
|674|674                          |Associate Professor                 |14069.04|
|675|675                          |Tax Accountant                      |16293.79|
|676|676                          |Environmental Tech                  |12580.17|
|677|677                          |VP Product Management               |25531.57|
|678|678                          |Health Coach III                    |17752.7 |
|679|679                          |Structural Engineer                 |14350.9 |
|680|680                          |Staff Scientist                     |18634.99|
|681|681                          |Civil Engineer                      |26479.03|
|682|682                          |Compensation Analyst                |26389.94|
|683|683                          |Office Assistant I                  |20506.16|
|684|684                          |Sales Associate                     |11897.91|
|685|685                          |Business Systems Development Analyst|12376.59|
|686|686                          |Computer Systems Analyst III        |25328.61|
|687|687                          |Recruiting Manager                  |15470.31|
|688|688                          |Health Coach III                    |22217.4 |
|689|689                          |Marketing Manager                   |11914.42|
|690|690                          |Nurse                               |20881.46|
|691|691                          |Internal Auditor                    |27373.11|
|692|692                          |Environmental Tech                  |18146.03|
|693|693                          |Community Outreach Specialist       |25137.54|
|694|694                          |Clinical Specialist                 |19651.65|
|695|695                          |Statistician I                      |11334.02|
|696|696                          |Editor                              |28886.6 |
|697|697                          |Account Representative IV           |23823.97|
|698|698                          |Marketing Assistant                 |18616.06|
|699|699                          |Paralegal                           |24139.3 |
|700|700                          |Product Engineer                    |22760.67|
|701|701                          |Executive Secretary                 |18497.42|
|702|702                          |Mechanical Systems Engineer         |22927.52|
|703|703                          |Nurse                               |10512.77|
|704|704                          |Health Coach IV                     |26951.42|
|705|705                          |Electrical Engineer                 |18416.63|
|706|706                          |Marketing Manager                   |26186.69|
|707|707                          |Associate Professor                 |21096.43|
|708|708                          |Structural Engineer                 |29488.39|
|709|709                          |Senior Cost Accountant              |27447.79|
|710|710                          |Environmental Tech                  |21938.15|
|711|711                          |Associate Professor                 |11151.58|
|712|712                          |Statistician III                    |25505.88|
|713|713                          |Mechanical Systems Engineer         |12622.3 |
|714|714                          |Media Manager III                   |19254.64|
|715|715                          |General Manager                     |29180.99|
|716|716                          |Quality Engineer                    |26460.26|
|717|717                          |Clinical Specialist                 |15518.91|
|718|718                          |Food Chemist                        |16349.99|
|719|719                          |Teacher                             |27024.51|
|720|720                          |Executive Secretary                 |23587.2 |
|721|721                          |Quality Engineer                    |25306.08|
|722|722                          |Social Worker                       |26808.64|
|723|723                          |Speech Pathologist                  |22153.72|
|724|724                          |Media Manager III                   |22550.29|
|725|725                          |Junior Executive                    |28292.39|
|726|726                          |Human Resources Assistant I         |12323.29|
|727|727                          |Web Designer IV                     |15749.84|
|728|728                          |Actuary                             |20149.61|
|729|729                          |Director of Sales                   |10236.8 |
|730|730                          |Clinical Specialist                 |27626.02|
|731|731                          |Staff Accountant I                  |12143.65|
|732|732                          |Operator                            |21678.58|
|733|733                          |Senior Developer                    |26186.01|
|734|734                          |Recruiter                           |27401.89|
|735|735                          |Human Resources Assistant IV        |12946.33|
|736|736                          |Registered Nurse                    |18326.67|
|737|737                          |Statistician I                      |15978.71|
|738|738                          |Operator                            |10086.03|
|739|739                          |Technical Writer                    |24948.49|
|740|740                          |Automation Specialist III           |29771.91|
|741|741                          |Senior Editor                       |16392.54|
|742|742                          |Senior Cost Accountant              |16141.17|
|743|743                          |Teacher                             |22815.62|
|744|744                          |Project Manager                     |29126.11|
|745|745                          |Occupational Therapist              |19806.07|
|746|746                          |Recruiting Manager                  |15695.04|
|747|747                          |Research Associate                  |11942.04|
|748|748                          |Design Engineer                     |18964.32|
|749|749                          |Editor                              |10850.62|
|750|750                          |Structural Engineer                 |21106.55|
|751|751                          |Chief Design Engineer               |10233.93|
|752|752                          |Marketing Assistant                 |25387.77|
|753|753                          |Project Manager                     |27877.05|
|754|754                          |Food Chemist                        |27115.5 |
|755|755                          |VP Product Management               |13755.02|
|756|756                          |Project Manager                     |15970.86|
|757|757                          |Staff Scientist                     |27549.25|
|758|758                          |General Manager                     |10620.97|
|759|759                          |Financial Analyst                   |26240.26|
|760|760                          |Community Outreach Specialist       |15180.09|
|761|761                          |GIS Technical Architect             |25556.19|
|762|762                          |Senior Sales Associate              |10985.1 |
|763|763                          |Payment Adjustment Coordinator      |27549.45|
|764|764                          |VP Product Management               |17205.54|
|765|765                          |Engineer IV                         |10170.77|
|766|766                          |Human Resources Assistant II        |27632.45|
|767|767                          |Project Manager                     |23638.41|
|768|768                          |Teacher                             |26787.52|
|769|769                          |Database Administrator III          |24504.77|
|770|770                          |Staff Accountant IV                 |22534.53|
|771|771                          |Project Manager                     |14252.23|
|772|772                          |Database Administrator IV           |28262.98|
|773|773                          |Sales Representative                |23640.66|
|774|774                          |Assistant Manager                   |21399.66|
|775|775                          |Geologist III                       |21466.11|
|776|776                          |Budget/Accounting Analyst II        |28698.82|
|777|777                          |VP Quality Control                  |25264.92|
|778|778                          |Health Coach I                      |17343.96|
|779|779                          |Recruiter                           |22323.03|
|780|780                          |Nuclear Power Engineer              |12671.27|
|781|781                          |General Manager                     |19754.86|
|782|782                          |Assistant Media Planner             |25139.37|
|783|783                          |Data Coordiator                     |25125.46|
|784|784                          |Physical Therapy Assistant          |25811.34|
|785|785                          |Sales Associate                     |22586.29|
|786|786                          |Help Desk Technician                |10968.89|
|787|787                          |Nuclear Power Engineer              |17637.78|
|788|788                          |Sales Representative                |20450.88|
|789|789                          |VP Accounting                       |15151.19|
|790|790                          |Help Desk Technician                |20969   |
|791|791                          |Data Coordiator                     |27959.35|
|792|792                          |Programmer II                       |19358.4 |
|793|793                          |Librarian                           |14430.59|
|794|794                          |Business Systems Development Analyst|21858.84|
|795|795                          |Geologist II                        |22736.09|
|796|796                          |Geologist II                        |11542.39|
|797|797                          |Sales Representative                |16557.78|
|798|798                          |Assistant Manager                   |24581.97|
|799|799                          |Research Associate                  |15910.88|
|800|800                          |Assistant Media Planner             |28810.15|
|801|801                          |Health Coach I                      |21276.71|
|802|802                          |Senior Quality Engineer             |13965.65|
|803|803                          |Structural Engineer                 |12897.66|
|804|804                          |Pharmacist                          |23316.6 |
|805|805                          |Programmer Analyst III              |26999.95|
|806|806                          |Structural Engineer                 |27461.41|
|807|807                          |Product Engineer                    |23563.53|
|808|808                          |Cost Accountant                     |24705.07|
|809|809                          |VP Accounting                       |12693.5 |
|810|810                          |Food Chemist                        |26539.48|
|811|811                          |Account Representative II           |13258.77|
|812|812                          |Associate Professor                 |27293.19|
|813|813                          |Cost Accountant                     |17541.83|
|814|814                          |Project Manager                     |13885.65|
|815|815                          |Nuclear Power Engineer              |27219.18|
|816|816                          |Nuclear Power Engineer              |24279.42|
|817|817                          |General Manager                     |11916.17|
|818|818                          |Web Designer I                      |24556.41|
|819|819                          |Biostatistician II                  |20196.05|
|820|820                          |Clinical Specialist                 |11326.16|
|821|821                          |Internal Auditor                    |29391.35|
|822|822                          |Senior Financial Analyst            |26858.65|
|823|823                          |Actuary                             |28967.82|
|824|824                          |Help Desk Operator                  |28235.35|
|825|825                          |General Manager                     |12222.92|
|826|826                          |Community Outreach Specialist       |24476.29|
|827|827                          |Automation Specialist III           |13822.86|
|828|828                          |Analyst Programmer                  |28657.83|
|829|829                          |Electrical Engineer                 |21744.07|
|830|830                          |Systems Administrator II            |16712.29|
|831|831                          |Software Consultant                 |16259.46|
|832|832                          |Senior Developer                    |29130.04|
|833|833                          |Librarian                           |13293.78|
|834|834                          |Senior Developer                    |10026.46|
|835|835                          |Quality Control Specialist          |26156.56|
|836|836                          |Clinical Specialist                 |14698.98|
|837|837                          |Staff Scientist                     |13129.82|
|838|838                          |VP Sales                            |20376.64|
|839|839                          |Web Designer IV                     |15779.85|
|840|840                          |Senior Quality Engineer             |15425.89|
|841|841                          |Electrical Engineer                 |23999.57|
|842|842                          |Nurse                               |10927.32|
|843|843                          |Professor                           |27377   |
|844|844                          |Administrative Assistant III        |23986.97|
|845|845                          |Senior Developer                    |24442.15|
|846|846                          |Software Test Engineer III          |16970.41|
|847|847                          |Research Associate                  |24921.33|
|848|848                          |Sales Associate                     |26223.04|
|849|849                          |Data Coordiator                     |17466.82|
|850|850                          |Cost Accountant                     |10351.34|
|851|851                          |Staff Scientist                     |14787.47|
|852|852                          |Statistician IV                     |23780.15|
|853|853                          |Research Assistant II               |15982.36|
|854|854                          |Internal Auditor                    |23138.83|
|855|855                          |Occupational Therapist              |18730.06|
|856|856                          |VP Quality Control                  |17835.47|
|857|857                          |Chemical Engineer                   |15967.45|
|858|858                          |Information Systems Manager         |25463.68|
|859|859                          |Data Coordiator                     |13380.4 |
|860|860                          |Assistant Manager                   |23278.56|
|861|861                          |GIS Technical Architect             |19189.75|
|862|862                          |Marketing Assistant                 |15751.21|
|863|863                          |Environmental Specialist            |14803.05|
|864|864                          |Mechanical Systems Engineer         |27094.02|
|865|865                          |Marketing Assistant                 |26671.58|
|866|866                          |Chemical Engineer                   |27705.84|
|867|867                          |Editor                              |21255.9 |
|868|868                          |Cost Accountant                     |26954   |
|869|869                          |Account Executive                   |24816.63|
|870|870                          |Speech Pathologist                  |29420.65|
|871|871                          |Recruiter                           |24965.79|
|872|872                          |Data Coordiator                     |20509.49|
|873|873                          |Chief Design Engineer               |11685.31|
|874|874                          |Assistant Media Planner             |28433.64|
|875|875                          |Biostatistician III                 |11133.17|
|876|876                          |Pharmacist                          |20838.19|
|877|877                          |Director of Sales                   |18473.45|
|878|878                          |Environmental Tech                  |21668.35|
|879|879                          |Research Associate                  |10762.57|
|880|880                          |Software Consultant                 |24599.9 |
|881|881                          |VP Marketing                        |12682.01|
|882|882                          |Engineer III                        |17366.15|
|883|883                          |Senior Quality Engineer             |21752.23|
|884|884                          |Research Nurse                      |22113.15|
|885|885                          |Marketing Manager                   |18560.02|
|886|886                          |Budget/Accounting Analyst III       |10957.83|
|887|887                          |Account Executive                   |15211.66|
|888|888                          |Budget/Accounting Analyst I         |16579.18|
|889|889                          |Web Designer IV                     |20530.46|
|890|890                          |VP Sales                            |18086.93|
|891|891                          |Financial Analyst                   |14764.11|
|892|892                          |Mechanical Systems Engineer         |12849.25|
|893|893                          |Technical Writer                    |29912.53|
|894|894                          |Nurse                               |22250.22|
|895|895                          |Physical Therapy Assistant          |27515.29|
|896|896                          |Administrative Assistant III        |12699.95|
|897|897                          |Senior Sales Associate              |22585.86|
|898|898                          |Accounting Assistant II             |29724.08|
|899|899                          |VP Quality Control                  |13493.66|
|900|900                          |Assistant Manager                   |18427.36|
|901|901                          |Human Resources Assistant II        |13744.37|
|902|902                          |Nurse Practicioner                  |27338.12|
|903|903                          |Accounting Assistant III            |21436   |
|904|904                          |Statistician III                    |14232.34|
|905|905                          |Pharmacist                          |19402.19|
|906|906                          |Structural Engineer                 |17851.67|
|907|907                          |Recruiting Manager                  |27280.08|
|908|908                          |Nurse                               |12048.42|
|909|909                          |Engineer III                        |12519.02|
|910|910                          |Safety Technician IV                |13059.35|
|911|911                          |Nuclear Power Engineer              |19895.05|
|912|912                          |Clinical Specialist                 |11981.95|
|913|913                          |Pharmacist                          |14556.02|
|914|914                          |Automation Specialist I             |18981.55|
|915|915                          |Office Assistant IV                 |25751.3 |
|916|916                          |Quality Engineer                    |28453.36|
|917|917                          |Sales Representative                |29336.16|
|918|918                          |Electrical Engineer                 |28130.38|
|919|919                          |Developer IV                        |15157.46|
|920|920                          |Web Designer III                    |26158.08|
|921|921                          |Engineer III                        |19456.23|
|922|922                          |Accounting Assistant II             |29096.49|
|923|923                          |Associate Professor                 |13060.32|
|924|924                          |Design Engineer                     |26525.39|
|925|925                          |Media Manager II                    |15753.81|
|926|926                          |Accountant I                        |17595.37|
|927|927                          |Assistant Professor                 |22167.46|
|928|928                          |Analyst Programmer                  |26053.17|
|929|929                          |Editor                              |26643.76|
|930|930                          |Analog Circuit Design manager       |15993.04|
|931|931                          |Nuclear Power Engineer              |29072.24|
|932|932                          |Senior Financial Analyst            |18793.63|
|933|933                          |Sales Representative                |29662.48|
|934|934                          |Senior Cost Accountant              |24837.04|
|935|935                          |Compensation Analyst                |10953.63|
|936|936                          |Software Consultant                 |15419.53|
|937|937                          |Recruiter                           |23351.12|
|938|938                          |VP Quality Control                  |14846.64|
|939|939                          |Structural Analysis Engineer        |20283.36|
|940|940                          |Software Engineer I                 |18467.6 |
|941|941                          |Programmer II                       |25679.26|
|942|942                          |Executive Secretary                 |19079.64|
|943|943                          |Nurse Practicioner                  |19184.11|
|944|944                          |Associate Professor                 |25214.14|
|945|945                          |Safety Technician IV                |21302.75|
|946|946                          |Electrical Engineer                 |10459.32|
|947|947                          |Professor                           |16056.6 |
|948|948                          |Junior Executive                    |14469.86|
|949|949                          |VP Sales                            |26517.84|
|950|950                          |Staff Accountant IV                 |11406.1 |
|951|951                          |Chemical Engineer                   |22935.03|
|952|952                          |Developer IV                        |15620.98|
|953|953                          |Statistician I                      |27858.57|
|954|954                          |Environmental Specialist            |21399.12|
|955|955                          |Marketing Manager                   |17116.92|
|956|956                          |Computer Systems Analyst IV         |25803.45|
|957|957                          |Marketing Manager                   |24326.64|
|958|958                          |Computer Systems Analyst III        |24225.4 |
|959|959                          |Software Consultant                 |22832.06|
|960|960                          |Nurse Practicioner                  |12260.76|
|961|961                          |Data Coordiator                     |12760.56|
|962|962                          |VP Accounting                       |20499.33|
|963|963                          |Occupational Therapist              |17521.84|
|964|964                          |Budget/Accounting Analyst IV        |19368.2 |
|965|965                          |Assistant Professor                 |22744.8 |
|966|966                          |VP Quality Control                  |26088.42|
|967|967                          |Account Representative II           |23012.09|
|968|968                          |Occupational Therapist              |12310.78|
|969|969                          |Graphic Designer                    |24139.1 |
|970|970                          |Director of Sales                   |14512.29|
|971|971                          |Programmer IV                       |27148.8 |
|972|972                          |Compensation Analyst                |14285.5 |
|973|973                          |Help Desk Operator                  |15324.4 |
|974|974                          |Analog Circuit Design manager       |16836.69|
|975|975                          |Sales Associate                     |26399.96|
|976|976                          |VP Marketing                        |19149.42|
|977|977                          |Electrical Engineer                 |16758   |
|978|978                          |Product Engineer                    |25036.51|
|979|979                          |Food Chemist                        |29769.81|
|980|980                          |Database Administrator IV           |25425.17|
|981|981                          |Community Outreach Specialist       |11189.59|
|982|982                          |VP Marketing                        |19650.29|
|983|983                          |Graphic Designer                    |15770.38|
|984|984                          |Senior Editor                       |23814.5 |
|985|985                          |Marketing Manager                   |10041.21|
|986|986                          |Environmental Tech                  |22320.92|
|987|987                          |Geologist I                         |11719.36|
|988|988                          |Senior Financial Analyst            |21479.01|
|989|989                          |Account Representative IV           |20312.4 |
|990|990                          |Database Administrator III          |26916.25|
|991|991                          |Marketing Manager                   |23623.99|
|992|992                          |Accountant IV                       |20159.91|
|993|993                          |Quality Control Specialist          |11587.51|
|994|994                          |Professor                           |10057.91|
|995|995                          |Developer III                       |19229.64|
|996|996                          |Senior Cost Accountant              |16959.66|
|997|997                          |Developer II                        |10405.99|
|998|998                          |Electrical Engineer                 |17253.65|
|999|999                          |Staff Accountant II                 |11400.73|
|1000|1000                         |Operator                            |23670.02|

</p>
</details>

---

- ¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?

```sql
# Respuesta
SELECT *
FROM articulo
WHERE precio > 1000
  AND iva > 100;                 
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%203.png">
  </a>
</p>
</details>

|#  |id_articulo                  |nombre                              |precio  |iva    |cantidad|
|---|-----------------------------|------------------------------------|--------|-------|--------|
|1  |2                            |Pasta - Angel Hair                  |4391.73 |959.51 |503     |
|2  |3                            |Soup Campbells - Tomato Bisque      |2991.35 |587.59 |604     |
|3  |4                            |Wine - Valpolicella Masi            |2625.2  |770.1  |575     |
|4  |5                            |Mousse - Banana Chocolate           |3701.62 |893.46 |248     |
|5  |7                            |Nantucket - Kiwi Berry Cktl.        |5579.47 |1012.33|527     |
|6  |8                            |Wine - Fontanafredda Barolo         |2684.64 |327.16 |682     |
|7  |9                            |Lotus Rootlets - Canned             |1996.46 |324.72 |636     |
|8  |10                           |Wine - Vovray Sec Domaine Huet      |6066.99 |890.47 |397     |
|9  |11                           |Cake - Pancake                      |5271.11 |821.28 |64      |
|10 |12                           |Chocolate Liqueur - Godet White     |1616.78 |612.63 |929     |
|11 |13                           |Appetizer - Southwestern            |1771.99 |248.16 |589     |
|12 |14                           |Carbonated Water - Cherry           |3808.49 |133.03 |914     |
|13 |15                           |Jolt Cola                           |5875.28 |780.3  |437     |
|14 |16                           |Oranges                             |5005.68 |803.38 |898     |
|15 |19                           |Peppercorns - Green                 |5812.1  |357.24 |663     |
|16 |20                           |Tray - 16in Rnd Blk                 |4724.1  |311.89 |893     |
|17 |22                           |Nut - Almond, Blanched, Ground      |4086.49 |154.98 |730     |
|18 |23                           |Wine - Sake                         |3072    |526.62 |167     |
|19 |24                           |Okra                                |6466.53 |805.3  |738     |
|20 |25                           |Pork - Smoked Back Bacon            |1044.45 |716.54 |476     |
|21 |26                           |Cheese - Montery Jack               |4433.92 |562.54 |141     |
|22 |27                           |Pasta - Elbows, Macaroni, Dry       |3668.7  |253.66 |392     |
|23 |28                           |Coffee - Frthy Coffee Crisp         |1770.31 |860.79 |16      |
|24 |29                           |Mountain Dew                        |1630.22 |980.38 |52      |
|25 |30                           |Beans - Green                       |4735.16 |451.6  |247     |
|26 |31                           |Bagelers - Cinn / Brown             |1201.25 |939.77 |210     |
|27 |32                           |Puree - Guava                       |3270.65 |602.96 |263     |
|28 |34                           |Sun - Dried Tomatoes                |1716.98 |301.25 |778     |
|29 |36                           |Coffee - French Vanilla Frothy      |4261.52 |1029.47|890     |
|30 |38                           |Hipnotiq Liquor                     |6638.33 |977.32 |198     |
|31 |39                           |Beer - Alexander Kieths, Pale Ale   |6712.71 |299.59 |696     |
|32 |40                           |Puree - Kiwi                        |1558.25 |484.02 |695     |
|33 |41                           |Beef Striploin Aaa                  |4788.21 |1027.86|410     |
|34 |43                           |Energy - Boo - Koo                  |6631.4  |881.1  |806     |
|35 |44                           |Trueblue - Blueberry Cranberry      |2286.94 |1078.52|205     |
|36 |45                           |Pepper - Cayenne                    |1166.28 |594.94 |609     |
|37 |48                           |Soup - French Onion                 |2585.34 |891.52 |204     |
|38 |49                           |Crush - Orange, 355ml               |6349.73 |515.99 |831     |
|39 |50                           |Apple - Granny Smith                |6373.67 |507.58 |690     |
|40 |52                           |Foil - 4oz Custard Cup              |3958.14 |691.62 |315     |
|41 |53                           |Bread - 10 Grain Parisian           |4410.58 |771.38 |661     |
|42 |54                           |Nut - Macadamia                     |4498.54 |728.64 |657     |
|43 |55                           |Wine - White, Schroder And Schyl    |5343.02 |982.17 |764     |
|44 |57                           |Mix - Cocktail Strawberry Daiquiri  |1681.16 |835.41 |122     |
|45 |58                           |Lid Coffee Cup 8oz Blk              |3241.68 |965.66 |198     |
|46 |59                           |Lettuce - Sea / Sea Asparagus       |6514.92 |459.74 |850     |
|47 |60                           |Cookies Oatmeal Raisin              |3923.92 |963.36 |48      |
|48 |62                           |Shrimp, Dried, Small / Lb           |1425    |353.5  |514     |
|49 |63                           |Wine - Gewurztraminer Pierre        |4164.17 |103.66 |618     |
|50 |65                           |Brocolinni - Gaylan, Chinese        |3327.51 |358.34 |395     |
|51 |66                           |Dates                               |6478.49 |209.2  |632     |
|52 |67                           |Trout Rainbow Whole                 |5648.18 |586.53 |897     |
|53 |68                           |Beer - Sleemans Honey Brown         |4566.34 |885.95 |125     |
|54 |69                           |Pork - Butt, Boneless               |5633.38 |130.24 |490     |
|55 |71                           |Beef - Striploin Aa                 |2769.14 |803.92 |252     |
|56 |72                           |Table Cloth 62x120 Colour           |6951.68 |969.41 |756     |
|57 |73                           |Amaretto                            |6426.07 |939    |698     |
|58 |74                           |Kellogs Cereal In A Cup             |1545.03 |437.5  |422     |
|59 |76                           |Wine - Red, Cabernet Sauvignon      |5255.07 |592.1  |310     |
|60 |77                           |Artichoke - Bottom, Canned          |2264.04 |507.82 |156     |
|61 |78                           |Quinoa                              |3420.38 |566.2  |981     |
|62 |79                           |Cheese - Parmesan Cubes             |6677.03 |982.11 |647     |
|63 |80                           |Tuna - Yellowfin                    |2896.36 |220.97 |226     |
|64 |81                           |Wine - Pinot Noir Mondavi Coastal   |5761.45 |1085.62|140     |
|65 |83                           |Muffin - Banana Nut Individual      |3836.15 |695.9  |373     |
|66 |85                           |Squash - Acorn                      |5836.15 |238.48 |77      |
|67 |86                           |Beets - Candy Cane, Organic         |2722.76 |137.55 |82      |
|68 |88                           |Sandwich Wrap                       |2946.52 |534.03 |963     |
|69 |89                           |Green Scrubbie Pad H.duty           |1124.72 |861.86 |25      |
|70 |90                           |Sole - Fillet                       |1703.77 |515.77 |97      |
|71 |91                           |Pasta - Cheese / Spinach Bauletti   |5811.44 |619.36 |15      |
|72 |92                           |Assorted Desserts                   |5491.36 |536.25 |395     |
|73 |93                           |Foil - 4oz Custard Cup              |5732.81 |359.46 |59      |
|74 |94                           |Juice - Prune                       |5086.21 |1005.62|939     |
|75 |96                           |Cake - Cake Sheet Macaroon          |2908.95 |1088.38|69      |
|76 |97                           |Thermometer Digital                 |2863.65 |1008.89|530     |
|77 |98                           |Lobster - Canned Premium            |1350.1  |597.88 |281     |
|78 |100                          |Juice - Grape, White                |4363.84 |849.01 |385     |
|79 |101                          |Turkey - Breast, Boneless Sk On     |2779.8  |855.62 |762     |
|80 |102                          |Soup Campbells                      |2713.34 |998.28 |391     |
|81 |103                          |Yucca                               |2774.88 |852.43 |648     |
|82 |104                          |Pork - Suckling Pig                 |2338.12 |294.6  |406     |
|83 |105                          |French Kiss Vanilla                 |2055.04 |743.73 |322     |
|84 |106                          |Fish - Halibut, Cold Smoked         |1083.53 |595.53 |734     |
|85 |107                          |Pork - Smoked Back Bacon            |4229.56 |294.37 |210     |
|86 |108                          |Salmon - Atlantic, No Skin          |3239.53 |1098.88|290     |
|87 |109                          |Soup - Knorr, Veg / Beef            |6965.66 |945.81 |933     |
|88 |110                          |Pate - Peppercorn                   |2698.08 |651.87 |7       |
|89 |111                          |Evaporated Milk - Skim              |2705.85 |878.47 |417     |
|90 |112                          |Kiwano                              |2703.73 |671.89 |72      |
|91 |113                          |Papayas                             |6905.31 |464.12 |456     |
|92 |114                          |Shrimp - Black Tiger 26/30          |6297.66 |1040.84|693     |
|93 |116                          |Napkin - Beverge, White 2 - Ply     |5157.55 |330.59 |362     |
|94 |118                          |Appetizer - Cheese Bites            |5382.4  |269.23 |67      |
|95 |119                          |Wine - Sauvignon Blanc Oyster       |2504.96 |697.35 |490     |
|96 |120                          |Madeira                             |5180.88 |1027.32|607     |
|97 |121                          |Chocolate Bar - Oh Henry            |5160.28 |160.7  |472     |
|98 |123                          |Wine - Maipo Valle Cabernet         |3949.93 |889.75 |679     |
|99 |125                          |Carroway Seed                       |2799.84 |517.36 |645     |
|100|126                          |Appetiser - Bought                  |1057.27 |810.1  |342     |
|101|127                          |Crab - Soft Shell                   |3441.39 |829.46 |194     |
|102|128                          |Glass Clear 7 Oz Xl                 |6183.24 |981.34 |367     |
|103|129                          |Spice - Onion Powder Granulated     |6144.97 |521.72 |456     |
|104|130                          |Beef - Tenderloin - Aa              |2893.34 |976.78 |614     |
|105|131                          |Wine - Niagara,vqa Reisling         |1217.96 |258.33 |810     |
|106|133                          |Sauce - Cranberry                   |5341.84 |1042.59|826     |
|107|134                          |Pasta - Orzo, Dry                   |6537.91 |1113.99|906     |
|108|135                          |Corn Meal                           |5066.16 |416.38 |771     |
|109|136                          |Stock - Fish                        |6484.54 |954.69 |769     |
|110|139                          |Chicken - Whole                     |5904.6  |978.16 |255     |
|111|140                          |Bread - Crusty Italian Poly         |4299.93 |726.64 |911     |
|112|142                          |Tart Shells - Savory, 3             |2505.11 |798.4  |789     |
|113|143                          |Clams - Littleneck, Whole           |4117.54 |298.67 |643     |
|114|144                          |Mix - Cocktail Strawberry Daiquiri  |2605.67 |967.68 |79      |
|115|145                          |Sponge Cake Mix - Vanilla           |2418.52 |157.8  |593     |
|116|146                          |Coffee Caramel Biscotti             |3582.67 |626.01 |669     |
|117|147                          |Wine - Chablis 2003 Champs          |3682.62 |107.36 |722     |
|118|148                          |Cheese - Woolwich Goat, Log         |6227.8  |270.25 |741     |
|119|149                          |Bouillion - Fish                    |4013.83 |287.35 |977     |
|120|151                          |Soup - Campbellschix Stew           |1964.86 |804.86 |442     |
|121|153                          |Pork - Bacon Cooked Slcd            |4269.77 |345.49 |159     |
|122|154                          |Rabbit - Saddles                    |3891.89 |739.61 |582     |
|123|155                          |Bagel - Everything Presliced        |5546.22 |490.06 |603     |
|124|157                          |Cornish Hen                         |3965.46 |349.71 |520     |
|125|158                          |Wasabi Paste                        |4842.96 |574.49 |58      |
|126|159                          |Food Colouring - Pink               |1076.08 |118.29 |470     |
|127|160                          |Bread - Multigrain, Loaf            |2859.65 |102.7  |853     |
|128|161                          |The Pop Shoppe - Black Cherry       |4963.53 |357.85 |207     |
|129|162                          |Lettuce - Spring Mix                |6724.49 |310.59 |560     |
|130|163                          |Puff Pastry - Slab                  |5893.37 |758.78 |613     |
|131|164                          |Salmon - Atlantic, No Skin          |1067.53 |432.89 |248     |
|132|165                          |Gatorade - Lemon Lime               |6662.14 |202.32 |753     |
|133|167                          |Juice - Apple, 500 Ml               |1319.43 |254.82 |757     |
|134|169                          |Beef Flat Iron Steak                |1570.56 |947.48 |20      |
|135|170                          |Temperature Recording Station       |3879.88 |633.28 |205     |
|136|171                          |Wine - White, Riesling, Henry Of    |1034.92 |788.61 |342     |
|137|172                          |Oil - Shortening,liqud, Fry         |3838.53 |566.07 |674     |
|138|174                          |Fruit Mix - Light                   |1076.09 |273.09 |43      |
|139|175                          |Cheese - Comtomme                   |1783.09 |1035.22|406     |
|140|176                          |Bananas                             |4488.56 |268.13 |896     |
|141|177                          |Red Currants                        |2004.55 |193.39 |273     |
|142|179                          |Nantuket Peach Orange               |4075.31 |553.14 |395     |
|143|181                          |Juice - Tomato, 48 Oz               |6615.95 |772.88 |719     |
|144|182                          |Wine - Periguita Fonseca            |4157.94 |690.97 |308     |
|145|183                          |Caviar - Salmon                     |1710.06 |1039.2 |443     |
|146|184                          |Spaghetti Squash                    |4363.37 |789.43 |427     |
|147|185                          |Bread Ww Cluster                    |4182.36 |632.28 |997     |
|148|186                          |Corn Kernels - Frozen               |5956.01 |827.52 |995     |
|149|187                          |Rum - Spiced, Captain Morgan        |5832.58 |793.01 |26      |
|150|189                          |Apple - Northern Spy                |4434.06 |931.29 |655     |
|151|190                          |Lamb - Whole, Frozen                |5874.42 |1104.62|756     |
|152|191                          |Chilli Paste, Hot Sambal Oelek      |4969.7  |341.76 |100     |
|153|194                          |Nantucket Apple Juice               |4953.75 |360.25 |106     |
|154|195                          |Cookie Chocolate Chip With          |6762.52 |578.75 |904     |
|155|196                          |Soup - Campbells, Spinach Crm       |6086.1  |104.87 |296     |
|156|198                          |Iced Tea Concentrate                |1389.3  |515.69 |772     |
|157|199                          |Food Colouring - Orange             |2231.57 |134.12 |737     |
|158|201                          |Steel Wool                          |1090.28 |111.29 |44      |
|159|202                          |Bread Base - Toscano                |6652.01 |936.09 |332     |
|160|203                          |Soup - Campbells, Butternut         |6851.22 |1116.68|861     |
|161|204                          |Cakes Assorted                      |2465.29 |995.49 |785     |
|162|205                          |Lid Tray - 16in Dome                |6113.12 |1079.53|198     |
|163|206                          |Soup - Campbells - Tomato           |2998.92 |901.7  |84      |
|164|207                          |Veal - Shank, Pieces                |4716.75 |1053.93|965     |
|165|208                          |Bagelers - Cinn / Brown             |4580.55 |324.45 |739     |
|166|209                          |Soup Knorr Chili With Beans         |3913.98 |752.73 |273     |
|167|210                          |French Pastries                     |2923.68 |1063.41|486     |
|168|211                          |Veal - Insides Provini              |6057.94 |689.11 |223     |
|169|212                          |Monkfish Fresh - Skin Off           |6105.24 |316.01 |888     |
|170|213                          |Pasta - Rotini, Colour, Dry         |1830.13 |373.98 |309     |
|171|214                          |Island Oasis - Wildberry            |3236.62 |759.8  |64      |
|172|215                          |Dry Ice                             |3000.73 |117.32 |483     |
|173|216                          |Wine - White, Cooking               |2521.32 |412.79 |236     |
|174|217                          |Bacon Strip Precooked               |2721.12 |1003.89|286     |
|175|218                          |Laundry - Bag Cloth                 |2028.17 |152.02 |639     |
|176|219                          |Beer - True North Lager             |6037.02 |345.28 |792     |
|177|220                          |Ham - Virginia                      |3655.08 |346.76 |859     |
|178|221                          |Pork - Belly Fresh                  |3399.47 |945.65 |853     |
|179|222                          |Soup - Canadian Pea, Dry Mix        |3423.56 |349.99 |803     |
|180|223                          |Wine - Rioja Campo Viejo            |1871.3  |1013.4 |572     |
|181|225                          |Salmon - Atlantic, Skin On          |1339.52 |640.51 |10      |
|182|226                          |Sugar - Palm                        |4850.89 |182.32 |811     |
|183|227                          |Syrup - Kahlua Chocolate            |3590.36 |241.78 |371     |
|184|228                          |Wine - Hardys Bankside Shiraz       |3525.63 |136.95 |884     |
|185|229                          |Wine - Montecillo Rioja Crianza     |5537.33 |267.09 |390     |
|186|230                          |Tomato - Plum With Basil            |1989.07 |421.34 |415     |
|187|231                          |Dehydrated Kelp Kombo               |4765.29 |522.03 |485     |
|188|232                          |Ecolab - Solid Fusion               |2445.55 |182.66 |100     |
|189|233                          |Pasta - Cannelloni, Sheets, Fresh   |2316.37 |605.55 |307     |
|190|234                          |Bagelers - Cinn / Brown             |1133.63 |644.15 |880     |
|191|235                          |Appetizer - Veg Assortment          |5885.38 |775.9  |137     |
|192|236                          |Sauce - Hoisin                      |6608.75 |134.98 |424     |
|193|237                          |Bread - Burger                      |6451.41 |691.61 |879     |
|194|239                          |Banana                              |1079.81 |733.52 |844     |
|195|240                          |Lettuce - Spring Mix                |4806.39 |1077.76|652     |
|196|241                          |Celery                              |5931.46 |1009.37|476     |
|197|243                          |Sauce Tomato Pouch                  |1651.57 |926.74 |153     |
|198|245                          |Ecolab - Power Fusion               |3051.29 |674.61 |815     |
|199|247                          |Soup - Knorr, Ministrone            |5280.76 |119.84 |611     |
|200|248                          |Squid U5 - Thailand                 |6770.56 |678.53 |970     |
|201|250                          |Pork - Belly Fresh                  |2422.48 |430.51 |346     |
|202|251                          |Garam Masala Powder                 |5354.61 |875.19 |229     |
|203|253                          |Sole - Iqf                          |6887.94 |605.2  |692     |
|204|254                          |Soup - Chicken And Wild Rice        |2560.5  |391.27 |339     |
|205|256                          |Chocolate - Mi - Amere Semi         |2164.16 |1082.15|349     |
|206|257                          |Tuna - Salad Premix                 |1469.36 |520.13 |841     |
|207|258                          |Chocolate - Pistoles, Lactee, Milk  |1525.47 |188.5  |270     |
|208|259                          |Fish - Soup Base, Bouillon          |6029.31 |206.9  |927     |
|209|262                          |Pork Ham Prager                     |5357.88 |518.48 |628     |
|210|263                          |Wine - Rosso Toscano Igt            |1639.7  |977.03 |334     |
|211|264                          |Eel - Smoked                        |5592.18 |1015.56|302     |
|212|265                          |Wine - Pinot Noir Stoneleigh        |3162.4  |834.08 |963     |
|213|266                          |Tea - Lemon Scented                 |6039.98 |930.92 |169     |
|214|268                          |Pork Loin Cutlets                   |4781.1  |628.59 |760     |
|215|269                          |Muffin Batt - Carrot Spice          |6472.56 |616.44 |192     |
|216|270                          |Lettuce - Spring Mix                |6738.97 |1052.68|987     |
|217|271                          |Strawberries - California           |3620.47 |705.58 |173     |
|218|272                          |Sour Puss - Tangerine               |2344.8  |1094.88|177     |
|219|273                          |Wine - Saint - Bris 2002, Sauv      |5063.51 |253.85 |380     |
|220|274                          |Salmon - Atlantic, No Skin          |5993.02 |1110.18|108     |
|221|275                          |Red Pepper Paste                    |5507.55 |709.08 |608     |
|222|276                          |Liners - Baking Cups                |5918.36 |1092.06|61      |
|223|279                          |Cookie Dough - Peanut Butter        |2347.9  |341.31 |130     |
|224|280                          |Cookies - Oreo, 4 Pack              |1664.29 |877.97 |62      |
|225|281                          |Ecolab - Hobart Washarm End Cap     |1649.52 |855.14 |891     |
|226|282                          |Pear - Packum                       |5821.79 |602.07 |334     |
|227|283                          |Tomatoes - Diced, Canned            |3800.76 |351.8  |286     |
|228|284                          |Fib N9 - Prague Powder              |6519.46 |856.01 |878     |
|229|285                          |Juice - Apple, 1.36l                |4056.56 |921.17 |961     |
|230|286                          |Cheese - Asiago                     |1648.7  |618.62 |300     |
|231|287                          |Rabbit - Frozen                     |3735.19 |1105.2 |544     |
|232|288                          |Chinese Foods - Chicken Wing        |3260.48 |360.3  |32      |
|233|290                          |Glass - Wine, Plastic, Clear 5 Oz   |6677.44 |551.02 |685     |
|234|291                          |Lemon Tarts                         |2563.72 |990.42 |656     |
|235|292                          |Banana - Green                      |2408    |222.23 |130     |
|236|294                          |Bread - Flat Bread                  |5991.35 |480.74 |120     |
|237|295                          |Wine - Sauvignon Blanc Oyster       |2356.66 |527.25 |85      |
|238|296                          |Cake - Cake Sheet Macaroon          |3714.37 |153.72 |260     |
|239|297                          |Bag - Clear 7 Lb                    |1604.36 |517.17 |188     |
|240|298                          |Campari                             |2008.34 |726.89 |530     |
|241|299                          |Yogurt - Assorted Pack              |1941.55 |238.45 |446     |
|242|300                          |Wine - Rhine Riesling Wolf Blass    |1791.42 |525.77 |432     |
|243|301                          |Soup - French Can Pea               |4476.79 |349.23 |551     |
|244|304                          |Wine - Redchard Merritt             |3010.92 |677.35 |124     |
|245|307                          |Syrup - Monin - Granny Smith        |6160.58 |1060.29|797     |
|246|308                          |Cheese - Ermite Bleu                |5542.07 |855.96 |580     |
|247|309                          |Lime Cordial - Roses                |6782.88 |717.76 |380     |
|248|310                          |Ice Cream - Strawberry              |1638.8  |884.91 |753     |
|249|311                          |Beans - Long, Chinese               |1157.42 |600.53 |100     |
|250|312                          |Bread - Bagels, Plain               |4794.4  |873.07 |851     |
|251|313                          |Wine - Toasted Head                 |6885.53 |171.81 |17      |
|252|314                          |Compound - Strawberry               |4549.46 |673.59 |66      |
|253|315                          |Extract - Rum                       |3266.44 |131.29 |397     |
|254|316                          |Apron                               |1332.22 |637.23 |442     |
|255|317                          |Clams - Canned                      |6445.48 |421.18 |291     |
|256|320                          |Nougat - Paste / Cream              |1840.47 |382.42 |700     |
|257|321                          |Water - Mineral, Natural            |3069.15 |1091.82|420     |
|258|324                          |Beef - Diced                        |1226.55 |910.08 |782     |
|259|325                          |Lamb - Shanks                       |1828.75 |817.57 |849     |
|260|326                          |Crab - Soft Shell                   |1593.73 |255.16 |315     |
|261|327                          |Pasta - Cappellini, Dry             |6994.49 |766.18 |828     |
|262|328                          |Salmon - Sockeye Raw                |6799.13 |1078.97|139     |
|263|329                          |Turnip - Wax                        |2057.85 |857.53 |757     |
|264|330                          |Ezy Change Mophandle                |6790.63 |1005.66|872     |
|265|331                          |Ice Cream - Life Savers             |3973.5  |699.83 |979     |
|266|332                          |Vinegar - Red Wine                  |2983.28 |714.24 |983     |
|267|333                          |Pork - Tenderloin, Frozen           |5745.23 |413.99 |8       |
|268|334                          |Pork - Loin, Center Cut             |5524.86 |711.3  |171     |
|269|336                          |Liqueur - Melon                     |6756.69 |184.82 |737     |
|270|337                          |Pate - Liver                        |2083.26 |267.73 |808     |
|271|338                          |Pepper - Red, Finger Hot            |1252.2  |1051.2 |777     |
|272|339                          |Ice Cream Bar - Oreo Sandwich       |4037.23 |1081.05|119     |
|273|340                          |Oil - Safflower                     |6339.63 |312.17 |206     |
|274|342                          |Phyllo Dough                        |6515.03 |1111.32|790     |
|275|343                          |Yokaline                            |6054.58 |1084.46|724     |
|276|344                          |Nut - Macadamia                     |6950.39 |381.23 |73      |
|277|345                          |Tomato Puree                        |5049.2  |209.07 |860     |
|278|346                          |Sauce - Caesar Dressing             |3770.02 |354.28 |708     |
|279|348                          |Mushroom - Morels, Dry              |3512.66 |178.79 |955     |
|280|351                          |Chick Peas - Dried                  |6693.85 |650.44 |753     |
|281|352                          |Flavouring Vanilla Artificial       |2973.2  |799.44 |691     |
|282|353                          |Ginsing - Fresh                     |6572.71 |353.32 |777     |
|283|354                          |Tomato - Peeled Italian Canned      |5683.41 |848.18 |963     |
|284|356                          |Wine - Casillero Del Diablo         |2649.26 |323.45 |612     |
|285|357                          |Pate - Peppercorn                   |4799.36 |309.69 |244     |
|286|358                          |Glaze - Clear                       |1219.65 |563.89 |957     |
|287|359                          |Beer - True North Lager             |2639.51 |637.65 |641     |
|288|360                          |Scallops - 10/20                    |5522.22 |214.08 |397     |
|289|361                          |Pasta - Penne, Rigate, Dry          |2222.62 |584.88 |276     |
|290|362                          |Water - Tonic                       |5530.75 |908.41 |202     |
|291|363                          |Sugar - White Packet                |1103.97 |1036.82|82      |
|292|364                          |Beans - Long, Chinese               |5986.37 |925.41 |611     |
|293|365                          |Spice - Peppercorn Melange          |1450.84 |540    |296     |
|294|366                          |Plate Foam Laminated 9in Blk        |2811.83 |918.59 |300     |
|295|367                          |Longos - Lasagna Veg                |1258.04 |898.42 |710     |
|296|368                          |Apples - Sliced / Wedge             |6330.41 |709.13 |885     |
|297|370                          |Vanilla Beans                       |5983.27 |862.2  |621     |
|298|371                          |The Pop Shoppe - Lime Rickey        |6366.47 |475.61 |300     |
|299|372                          |Drambuie                            |5933.13 |353.41 |154     |
|300|373                          |Cheese - Havarti, Roasted Garlic    |4835.74 |814.42 |629     |
|301|376                          |Carbonated Water - Strawberry       |5386.33 |532.55 |80      |
|302|378                          |Tarragon - Fresh                    |2967.52 |760.16 |687     |
|303|379                          |Wine - Balbach Riverside            |6716.68 |708.53 |853     |
|304|380                          |Doilies - 10, Paper                 |1358.5  |914.82 |843     |
|305|381                          |Cinnamon - Ground                   |5517.82 |1083.37|395     |
|306|383                          |Scotch - Queen Anne                 |3681.24 |501.3  |583     |
|307|384                          |Lid - 16 Oz And 32 Oz               |3992.2  |146.89 |794     |
|308|385                          |Lid Coffeecup 12oz D9542b           |1844.02 |250.26 |927     |
|309|386                          |Saskatoon Berries - Frozen          |3971.74 |159.62 |547     |
|310|387                          |Cake - Dulce De Leche               |3002.98 |1015.19|89      |
|311|388                          |Knife Plastic - White               |3238.53 |1046.07|961     |
|312|389                          |Pepper - Julienne, Frozen           |4175.99 |219.45 |760     |
|313|390                          |Bananas                             |3711.98 |825.96 |342     |
|314|391                          |Mousse - Banana Chocolate           |2527.4  |217.74 |790     |
|315|392                          |Wine - Red, Gallo, Merlot           |3796.31 |261.68 |593     |
|316|393                          |Cheese - Parmesan Grated            |2181.2  |154.01 |379     |
|317|394                          |Lettuce - California Mix            |1628.48 |1042.27|976     |
|318|396                          |Juice - Mango                       |3109.15 |689.39 |758     |
|319|398                          |Nori Sea Weed                       |1090.3  |424.8  |834     |
|320|399                          |Versatainer Nc - 8288               |4756.63 |755.79 |395     |
|321|401                          |Nut - Almond, Blanched, Ground      |3778.92 |261.91 |896     |
|322|402                          |Onions - Red                        |6282.07 |150.38 |829     |
|323|403                          |Vinegar - Cider                     |6332.76 |202.19 |536     |
|324|404                          |Table Cloth 53x53 White             |5477.48 |272.52 |48      |
|325|405                          |Bagel - 12 Grain Preslice           |4609.01 |528.68 |677     |
|326|406                          |Sauce Tomato Pouch                  |6995.41 |1053.31|629     |
|327|407                          |Clementine                          |5556.38 |752.38 |518     |
|328|408                          |Arctic Char - Fresh, Whole          |1796.55 |916.76 |178     |
|329|409                          |Tea - Grapefruit Green Tea          |1558.62 |1064.53|297     |
|330|410                          |Puree - Mocha                       |6382.41 |369.09 |327     |
|331|411                          |Soap - Pine Sol Floor Cleaner       |1488.22 |930.81 |951     |
|332|412                          |Yoghurt Tubes                       |4506.96 |563.76 |247     |
|333|413                          |Muffin - Bran Ind Wrpd              |4519.93 |204.02 |952     |
|334|415                          |Pork - Tenderloin, Frozen           |6700.56 |715.88 |941     |
|335|417                          |Coffee Guatemala Dark               |1076.25 |162.67 |943     |
|336|418                          |Wine - Magnotta - Cab Franc         |5699.36 |1043.6 |822     |
|337|419                          |Fondant - Icing                     |1816.67 |852.82 |624     |
|338|420                          |Vinegar - White Wine                |4542.88 |350.91 |597     |
|339|421                          |Wine - Lou Black Shiraz             |1537.68 |637.5  |368     |
|340|422                          |Pop Shoppe Cream Soda               |5701.51 |685.12 |672     |
|341|423                          |Soup - Base Broth Beef              |6997.58 |313.1  |754     |
|342|424                          |Wine - Maipo Valle Cabernet         |3873.64 |895.28 |912     |
|343|425                          |Juice - Lemon                       |2485.2  |219.4  |853     |
|344|426                          |Pasta - Cappellini, Dry             |2417.66 |1088.42|411     |
|345|427                          |Kiwi Gold Zespri                    |6718.42 |858.88 |78      |
|346|428                          |Wine - Chateau Aqueria Tavel        |6877.03 |795.12 |984     |
|347|429                          |Appetizer - Mushroom Tart           |5905.91 |1096.8 |310     |
|348|430                          |Bacardi Breezer - Tropical          |3948.11 |926.98 |304     |
|349|432                          |Cherries - Frozen                   |6643    |825.2  |390     |
|350|433                          |Turnip - Mini                       |6757.96 |755.99 |978     |
|351|435                          |Longos - Chicken Curried            |3406    |1075.53|13      |
|352|436                          |Iced Tea Concentrate                |1035.18 |1042.31|424     |
|353|437                          |Trueblue - Blueberry Cranberry      |2282.81 |951.55 |214     |
|354|438                          |Egg - Salad Premix                  |4344.77 |704.44 |328     |
|355|440                          |Baking Powder                       |2464.32 |472.05 |788     |
|356|441                          |Cookie Dough - Chocolate Chip       |1624.5  |1037.85|780     |
|357|442                          |Zucchini - Green                    |4655.07 |954.41 |547     |
|358|443                          |Lettuce - Sea / Sea Asparagus       |3676.66 |185.23 |388     |
|359|444                          |Okra                                |2264.9  |423.89 |54      |
|360|445                          |Beans - Green                       |1982.83 |1117.32|859     |
|361|446                          |Chocolate Bar - Reese Pieces        |1317.05 |882.18 |321     |
|362|447                          |Lemonade - Pineapple Passion        |4515.71 |469.02 |250     |
|363|448                          |Shark - Loin                        |4985.34 |218.88 |738     |
|364|450                          |Coffee Beans - Chocolate            |2810.13 |695.63 |277     |
|365|451                          |Basil - Thai                        |5478.22 |1098.62|735     |
|366|452                          |Appetizer - Crab And Brie           |1135.01 |976.44 |43      |
|367|454                          |Seedlings - Clamshell               |6275.32 |127.36 |718     |
|368|456                          |Table Cloth 54x72 White             |3901.32 |878.11 |401     |
|369|457                          |Caviar - Salmon                     |3152.97 |997.97 |940     |
|370|458                          |Wine - Prosecco Valdobienne         |6733.92 |604.9  |262     |
|371|459                          |Wine - Magnotta - Cab Franc         |1717.52 |317.49 |143     |
|372|460                          |Tray - Foam, Square 4 - S           |6729.82 |244.32 |821     |
|373|462                          |Cranberry Foccacia                  |3033.12 |629.47 |240     |
|374|463                          |Cake Circle, Foil, Scallop          |6074.81 |998.16 |210     |
|375|464                          |Squash - Guords                     |6995.99 |749.98 |911     |
|376|465                          |Wine - Fat Bastard Merlot           |3185.76 |1118.04|919     |
|377|466                          |Potatoes - Peeled                   |2900.17 |357.31 |33      |
|378|468                          |Remy Red                            |6925.51 |1048.7 |881     |
|379|469                          |Basil - Primerba, Paste             |5262.65 |259.49 |583     |
|380|472                          |Beef - Salted                       |3415.05 |853.51 |789     |
|381|474                          |Peas - Pigeon, Dry                  |4513.16 |455.5  |351     |
|382|475                          |Beans - Kidney, Canned              |6883.46 |820.81 |577     |
|383|476                          |Aspic - Amber                       |4362.51 |123.14 |916     |
|384|478                          |Nut - Cashews, Whole, Raw           |3500.91 |1104.74|182     |
|385|479                          |Stock - Beef, White                 |5534.89 |686.19 |546     |
|386|480                          |Wine - Prem Select Charddonany      |4996.52 |590.63 |442     |
|387|481                          |Trout Rainbow Whole                 |5199.73 |936.85 |162     |
|388|482                          |Wine - White, Pelee Island          |1252.1  |314.02 |978     |
|389|483                          |Coffee - 10oz Cup 92961             |1907.33 |972.43 |291     |
|390|485                          |Apricots - Halves                   |2111.16 |629.66 |995     |
|391|486                          |Alize Sunset                        |5364.9  |185.56 |261     |
|392|487                          |Soup - Campbells, Minestrone        |4975.95 |177.65 |534     |
|393|488                          |Sponge Cake Mix - Chocolate         |4605.77 |926.15 |621     |
|394|489                          |Pate - Liver                        |1294.78 |1009.14|988     |
|395|490                          |Cognac - Courvaisier                |2388.49 |739.02 |660     |
|396|491                          |Napkin White                        |5136.21 |322.39 |117     |
|397|493                          |Artichokes - Knobless, White        |5064.31 |922.59 |74      |
|398|494                          |Soup Campbells Beef With Veg        |1761.72 |826.02 |503     |
|399|495                          |Cookies - Englishbay Oatmeal        |6957.64 |1072.09|494     |
|400|497                          |Broom And Broom Rack White          |3633.26 |794.51 |90      |
|401|499                          |Soup - Canadian Pea, Dry Mix        |5953.79 |722.84 |348     |
|402|500                          |Beef - Outside, Round               |4314.54 |1095.29|556     |
|403|501                          |Soup Campbells Mexicali Tortilla    |2245.34 |743.33 |108     |
|404|502                          |Coffee Swiss Choc Almond            |2188.98 |608.74 |257     |
|405|504                          |Momiji Oroshi Chili Sauce           |2274.8  |653.24 |557     |
|406|505                          |Sherbet - Raspberry                 |3563.61 |695.71 |222     |
|407|506                          |Nantucket - Carrot Orange           |6715.78 |985.67 |973     |
|408|508                          |Carrots - Jumbo                     |3854.65 |238.22 |218     |
|409|509                          |Crab Meat Claw Pasteurise           |6582.51 |625.08 |319     |
|410|510                          |Tomato - Peeled Italian Canned      |2329.87 |688.07 |212     |
|411|511                          |Truffle - Peelings                  |3901.52 |602.06 |376     |
|412|512                          |Flavouring - Orange                 |1702.26 |1023.51|41      |
|413|514                          |Broom And Brush Rack Black          |6777.62 |733.8  |685     |
|414|515                          |Muffin Batt - Ban Dream Zero        |1361.37 |243.91 |976     |
|415|516                          |Ham - Proscuitto                    |3357.47 |1081.71|395     |
|416|517                          |Cookie Choc                         |2418.6  |160.46 |339     |
|417|518                          |Loaf Pan - 2 Lb, Foil               |3523.9  |603.01 |286     |
|418|520                          |Table Cloth 54x54 White             |5415.26 |793.12 |614     |
|419|523                          |Lamb - Whole, Fresh                 |5129.73 |529.02 |683     |
|420|524                          |Allspice - Jamaican                 |3100.88 |340.8  |189     |
|421|526                          |Ice Cream - Strawberry              |1049.02 |445.77 |529     |
|422|527                          |Sponge Cake Mix - Vanilla           |2387.91 |672.28 |443     |
|423|528                          |Sauce - Salsa                       |6568.48 |163.01 |21      |
|424|529                          |Crush - Cream Soda                  |4430    |1038.77|944     |
|425|530                          |Banana                              |4955.12 |1077.78|877     |
|426|531                          |Wine - Cotes Du Rhone               |2395.08 |757.32 |933     |
|427|532                          |Butter Sweet                        |3186.9  |238.57 |532     |
|428|533                          |Milk 2% 500 Ml                      |6607.7  |174.49 |722     |
|429|534                          |Oil - Olive, Extra Virgin           |2665.52 |515.12 |312     |
|430|536                          |Langers - Ruby Red Grapfruit        |4786.97 |646.62 |63      |
|431|537                          |Carrots - Jumbo                     |4066.12 |262.4  |347     |
|432|538                          |Curry Powder                        |6612.46 |177.29 |1       |
|433|539                          |Pork - Bones                        |6641.3  |591.68 |90      |
|434|540                          |Doilies - 5, Paper                  |4517.54 |326.81 |531     |
|435|541                          |Ham - Procutinni                    |5557.11 |137.82 |155     |
|436|543                          |Mix Pina Colada                     |4967.58 |1095.63|272     |
|437|544                          |Wine - Vidal Icewine Magnotta       |3860.12 |595.83 |722     |
|438|545                          |Cookies Cereal Nut                  |3542.31 |248.84 |917     |
|439|547                          |Mushroom - Shitake, Fresh           |2737.04 |292.55 |929     |
|440|548                          |Wine - Vineland Estate Semi - Dry   |5066.76 |1070.62|277     |
|441|549                          |Mortadella                          |5154.61 |408.01 |288     |
|442|551                          |Muffin Hinge - 211n                 |2847.89 |808.18 |698     |
|443|552                          |Gooseberry                          |3244.29 |811.06 |352     |
|444|554                          |Jameson Irish Whiskey               |6227.64 |540.32 |495     |
|445|555                          |Veal - Provimi Inside               |6417.94 |765.44 |858     |
|446|556                          |Pineapple - Canned, Rings           |1268.45 |286.08 |955     |
|447|557                          |Bok Choy - Baby                     |2047.62 |938.28 |595     |
|448|558                          |Lid - 0090 Clear                    |3527.69 |445.61 |195     |
|449|559                          |Wiberg Super Cure                   |6899.41 |841.68 |452     |
|450|560                          |Wine - Pinot Noir Latour            |2992.33 |899.19 |848     |
|451|561                          |Artichoke - Hearts, Canned          |2550.53 |1111.56|896     |
|452|562                          |Rum - White, Gg White               |4898.08 |476.38 |853     |
|453|563                          |Corn Syrup                          |5591.45 |985.03 |654     |
|454|566                          |Water - Tonic                       |4147.44 |485.7  |488     |
|455|567                          |Soup Campbells - Italian Wedding    |3879    |190.9  |148     |
|456|568                          |Lime Cordial - Roses                |3178.16 |328    |101     |
|457|570                          |Pasta - Penne, Lisce, Dry           |2141.06 |809.94 |88      |
|458|571                          |External Supplier                   |3311.17 |1030.34|472     |
|459|572                          |Bread - White, Unsliced             |2043.1  |356.25 |255     |
|460|573                          |Flour - Strong Pizza                |1298.25 |610.61 |345     |
|461|574                          |Nut - Pine Nuts, Whole              |1902.07 |725.66 |748     |
|462|575                          |Juice - Mango                       |3572.29 |737.5  |137     |
|463|576                          |Wine - Mondavi Coastal Private      |6789.63 |429.77 |205     |
|464|577                          |Beans - Navy, Dry                   |2615.18 |883.33 |613     |
|465|578                          |Pheasants - Whole                   |6597    |550.62 |103     |
|466|579                          |Vinegar - Sherry                    |6294.2  |869.58 |759     |
|467|580                          |Sunflower Seed Raw                  |6843.88 |710.18 |735     |
|468|582                          |Beef - Bones, Cut - Up              |3375.95 |1078.04|944     |
|469|583                          |Wine - Red, Lurton Merlot De        |1675.53 |341.5  |355     |
|470|584                          |Schnappes - Peach, Walkers          |4484.16 |1072.71|661     |
|471|585                          |Flour - Cake                        |6170.35 |283.04 |834     |
|472|586                          |Beans - Kidney, Canned              |6141.72 |605.5  |746     |
|473|587                          |Oranges - Navel, 72                 |1411.94 |931.75 |580     |
|474|588                          |Petit Baguette                      |3360.3  |665.5  |207     |
|475|589                          |Wine - Cousino Macul Antiguas       |4274.11 |252.18 |480     |
|476|590                          |Melon - Honey Dew                   |6935.01 |588.25 |336     |
|477|592                          |Shrimp - Prawn                      |3558.82 |769.01 |344     |
|478|593                          |Chocolate Bar - Oh Henry            |1301.16 |140.78 |987     |
|479|595                          |Octopus                             |1088.21 |1085.57|206     |
|480|597                          |Cleaner - Bleach                    |4400.42 |714.9  |345     |
|481|598                          |Sponge Cake Mix - Vanilla           |4334.86 |948.05 |7       |
|482|600                          |Pasta - Ravioli                     |6504.48 |612.67 |15      |
|483|601                          |Sprouts - Pea                       |4612.73 |114.51 |195     |
|484|603                          |Duck - Breast                       |1930.66 |192.15 |965     |
|485|604                          |Cheese - Pied De Vents              |2446.32 |677.37 |559     |
|486|605                          |Wine - Chianti Classico Riserva     |2529.31 |375.36 |982     |
|487|606                          |Butter - Salted                     |3561.8  |308.07 |627     |
|488|608                          |Onions - Spanish                    |5744.93 |508.92 |643     |
|489|610                          |Petite Baguette                     |1398.25 |927.63 |77      |
|490|611                          |Beer - Corona                       |6498.83 |463.72 |632     |
|491|612                          |Praline Paste                       |6665.88 |226.99 |88      |
|492|614                          |Pastry - Carrot Muffin - Mini       |5993.52 |1099.38|287     |
|493|615                          |Curry Powder                        |2360.2  |704.11 |492     |
|494|617                          |Beef - Striploin                    |3212.11 |1089.67|356     |
|495|618                          |Cheese - Valancey                   |2286.93 |998.98 |979     |
|496|619                          |Lamb - Ground                       |4238.67 |746.24 |71      |
|497|620                          |Veal - Leg                          |4620.91 |1028.48|134     |
|498|621                          |Tart Shells - Savory, 2             |1852.9  |278.1  |539     |
|499|623                          |Pastry - Plain Baked Croissant      |3323.46 |272.56 |376     |
|500|624                          |Pork - Kidney                       |1231.65 |611.2  |117     |
|501|625                          |Appetizer - Lobster Phyllo Roll     |4722.76 |467.67 |412     |
|502|626                          |Langers - Ruby Red Grapfruit        |6543.51 |262.54 |447     |
|503|627                          |Oil - Pumpkinseed                   |6738.56 |802.91 |860     |
|504|628                          |Gatorade - Xfactor Berry            |3406.45 |984.03 |28      |
|505|629                          |Beer - True North Lager             |4567.89 |342.74 |748     |
|506|630                          |Puree - Strawberry                  |3716.03 |946.96 |97      |
|507|632                          |Carbonated Water - Blackberry       |6652.19 |497.64 |824     |
|508|633                          |Amarula Cream                       |3438.94 |1055.39|577     |
|509|634                          |Beans - Kidney, Red Dry             |6963.07 |763.89 |78      |
|510|635                          |Cafe Royale                         |3627.2  |531.22 |348     |
|511|636                          |Muffin Mix - Chocolate Chip         |5065.92 |263.64 |876     |
|512|638                          |Wine - Red, Mosaic Zweigelt         |2312.73 |901.13 |998     |
|513|639                          |Pork - Smoked Back Bacon            |5443.15 |817.44 |370     |
|514|640                          |Sweet Pea Sprouts                   |2887.92 |909.94 |24      |
|515|641                          |Foam Espresso Cup Plain White       |4265.84 |908.12 |882     |
|516|642                          |Onion Powder                        |1566.83 |684.28 |908     |
|517|643                          |Garlic - Peeled                     |2322.02 |888.39 |417     |
|518|644                          |Wine - White, French Cross          |4666.37 |468.35 |722     |
|519|645                          |Arctic Char - Fillets               |6911.68 |798.2  |812     |
|520|646                          |Carbonated Water - Peach            |5242.11 |827.81 |713     |
|521|650                          |Wine - Rosso Del Veronese Igt       |3331.62 |150.07 |717     |
|522|651                          |Frangelico                          |6879.56 |627.38 |883     |
|523|652                          |Chef Hat 20cm                       |5781.83 |524.72 |231     |
|524|653                          |Bread - Italian Roll With Herbs     |6298.15 |1028.33|674     |
|525|654                          |Cheese - Comtomme                   |4150.88 |108.84 |178     |
|526|655                          |Pasta - Fettuccine, Dry             |5369.44 |314.75 |344     |
|527|657                          |Steel Wool                          |5009.61 |294.73 |532     |
|528|658                          |Cake Slab                           |3683.27 |263.25 |156     |
|529|659                          |Juice - Clamato, 341 Ml             |1437.98 |359.74 |785     |
|530|660                          |Vector Energy Bar                   |3117.86 |390.26 |35      |
|531|661                          |Mace Ground                         |2455.42 |704.27 |562     |
|532|662                          |Jameson Irish Whiskey               |4611.21 |1013.87|213     |
|533|663                          |Asparagus - Mexican                 |5074.45 |987.73 |875     |
|534|665                          |Flour - Fast / Rapid                |3254.29 |709.8  |872     |
|535|666                          |Wine - Tio Pepe Sherry Fino         |4039.24 |1019.34|425     |
|536|667                          |Wine - Peller Estates Late          |5819.54 |744.85 |955     |
|537|668                          |Vaccum Bag 10x13                    |3793.69 |1033.8 |666     |
|538|669                          |Juice - Orange                      |3579.87 |686.05 |310     |
|539|670                          |Urban Zen Drinks                    |2971.78 |764.18 |484     |
|540|671                          |Pate - Cognac                       |3755.86 |545.5  |335     |
|541|672                          |Beef - Kobe Striploin               |1802.45 |857.98 |396     |
|542|673                          |Wine - Red, Lurton Merlot De        |4171.31 |188.25 |612     |
|543|675                          |Soup Knorr Chili With Beans         |1715.5  |183.5  |269     |
|544|677                          |Swordfish Loin Portions             |5571.99 |375.8  |800     |
|545|679                          |Crab Brie In Phyllo                 |6733.47 |363.79 |504     |
|546|680                          |Bag Clear 10 Lb                     |4664.72 |953.75 |81      |
|547|681                          |Appetizer - Veg Assortment          |1476.42 |105.88 |908     |
|548|682                          |Cake - Sheet Strawberry             |2536.21 |360.37 |946     |
|549|684                          |Wine - Kwv Chenin Blanc South       |2107.71 |673.58 |616     |
|550|685                          |Wine - Chablis 2003 Champs          |5753.32 |574.13 |108     |
|551|686                          |Tomatoes - Cherry                   |6902.78 |118.54 |962     |
|552|687                          |Bananas                             |3871.53 |681.16 |89      |
|553|688                          |Dr. Pepper - 355ml                  |4755.45 |176.17 |329     |
|554|689                          |Bread - Bistro White                |3860.71 |345.08 |70      |
|555|691                          |Soup - Base Broth Chix              |4630.45 |508.24 |556     |
|556|693                          |Filter - Coffee                     |5816.84 |1072.16|462     |
|557|695                          |Sugar - Brown, Individual           |5401.12 |823.57 |727     |
|558|699                          |Loaf Pan - 2 Lb, Foil               |3395.79 |427.63 |806     |
|559|700                          |Pork - European Side Bacon          |5052.82 |483.19 |322     |
|560|703                          |Rum - Coconut, Malibu               |4291.55 |133.55 |178     |
|561|705                          |Straws - Cocktale                   |1903.09 |295.61 |302     |
|562|706                          |Scotch - Queen Anne                 |6533.61 |464.95 |415     |
|563|707                          |Cheese - Marble                     |4213.32 |303.66 |914     |
|564|709                          |Wine - White, Concha Y Toro         |4911.83 |1112.9 |904     |
|565|710                          |Lid - 3oz Med Rec                   |2944.39 |1013.11|612     |
|566|711                          |Cornflakes                          |1842.39 |977.43 |103     |
|567|712                          |Carbonated Water - Orange           |3057.65 |269.9  |85      |
|568|714                          |Skirt - 29 Foot                     |3986.71 |733.67 |39      |
|569|715                          |Flavouring Vanilla Artificial       |5938.7  |458.86 |392     |
|570|716                          |Orange - Tangerine                  |3644.07 |747.74 |340     |
|571|717                          |Puree - Pear                        |4718.93 |529.86 |678     |
|572|718                          |Cactus Pads                         |4112.99 |505.39 |970     |
|573|719                          |Butter - Salted, Micro              |6282.42 |1007.42|205     |
|574|720                          |Crab - Imitation Flakes             |6827.4  |906.95 |259     |
|575|721                          |Smoked Tongue                       |2115.44 |395.2  |740     |
|576|722                          |Ostrich - Fan Fillet                |1569.73 |1009.64|498     |
|577|723                          |Cheese - Ermite Bleu                |5402.33 |625.88 |505     |
|578|726                          |Wine - Saint - Bris 2002, Sauv      |3731.51 |645.35 |202     |
|579|728                          |Wine - Ice Wine                     |6420.89 |345.7  |208     |
|580|729                          |Chevril                             |6768.55 |532.64 |230     |
|581|730                          |Parsnip                             |1652.68 |671.73 |203     |
|582|731                          |Tart Shells - Barquettes, Savory    |6567.32 |483.45 |38      |
|583|732                          |Pepper - Red Chili                  |3695.51 |883.85 |192     |
|584|733                          |Browning Caramel Glace              |3214.79 |335.57 |262     |
|585|734                          |Wine - Fontanafredda Barolo         |6270.46 |858.91 |138     |
|586|735                          |Chef Hat 25cm                       |2380.7  |785.29 |199     |
|587|736                          |Cream - 18%                         |1598.41 |200.58 |778     |
|588|737                          |Wine - Sawmill Creek Autumn         |6867.06 |589.15 |101     |
|589|738                          |Aspic - Amber                       |3852.3  |464.04 |709     |
|590|740                          |Rhubarb                             |5392.21 |1075.44|142     |
|591|742                          |Macaroons - Two Bite Choc           |4529.36 |889.68 |143     |
|592|743                          |Oil - Canola                        |2188.93 |870.08 |923     |
|593|744                          |Flour - Semolina                    |2021.66 |397.65 |768     |
|594|745                          |Chocolate - Unsweetened             |1453.97 |790.79 |614     |
|595|747                          |Bread - White, Sliced               |2131.05 |523.35 |833     |
|596|749                          |Honey - Liquid                      |2991.27 |443.26 |693     |
|597|750                          |Pasta - Bauletti, Chicken White     |1365.92 |786.09 |701     |
|598|751                          |Sage Derby                          |2049.36 |667.64 |735     |
|599|755                          |Cheese - Cheddar, Old White         |1332.6  |427.86 |513     |
|600|756                          |Prunes - Pitted                     |5620.56 |797.61 |347     |
|601|757                          |Macaroons - Homestyle Two Bit       |3171.38 |145.54 |172     |
|602|758                          |Dehydrated Kelp Kombo               |1317.3  |1008.98|368     |
|603|760                          |Lotus Rootlets - Canned             |3521.57 |194.09 |458     |
|604|763                          |Cake - Mini Potato Pancake          |4424.57 |576.69 |370     |
|605|764                          |Butter Balls Salted                 |2180.66 |1076.9 |633     |
|606|767                          |Beef - Montreal Smoked Brisket      |1864.11 |929.22 |482     |
|607|768                          |Pickle - Dill                       |6934.12 |879.88 |286     |
|608|770                          |Mushroom - White Button             |4851.14 |338.37 |543     |
|609|771                          |Water - Tonic                       |6833.66 |555.21 |621     |
|610|773                          |Mountain Dew                        |5240.75 |114.63 |361     |
|611|774                          |Cheese - Shred Cheddar / Mozza      |5721.17 |535.03 |382     |
|612|775                          |Cocoa Powder - Natural              |4114.62 |760.45 |213     |
|613|776                          |Vinegar - Raspberry                 |5151.41 |804.4  |38      |
|614|778                          |Sproutsmustard Cress                |3328.13 |677.12 |988     |
|615|779                          |Iced Tea - Lemon, 340ml             |4139.29 |835.52 |937     |
|616|780                          |Muffin Orange Individual            |1259.79 |510.43 |982     |
|617|781                          |Compound - Raspberry                |1984.91 |220.83 |313     |
|618|782                          |Red Pepper Paste                    |1356.88 |574.14 |124     |
|619|783                          |Praline Paste                       |1355.19 |168.54 |571     |
|620|784                          |Halibut - Whole, Fresh              |5466.1  |1100.37|60      |
|621|786                          |Juice - Tomato, 10 Oz               |5796.79 |809.22 |77      |
|622|787                          |Pepsi, 355 Ml                       |5602.29 |438.88 |527     |
|623|788                          |Turkey - Ground. Lean               |1149.46 |576.68 |908     |
|624|789                          |Wine - Segura Viudas Aria Brut      |6671.48 |1112.2 |107     |
|625|792                          |Wine - Red, Pinot Noir, Chateau     |6003.1  |275.51 |479     |
|626|793                          |Salmon Atl.whole 8 - 10 Lb          |3234.36 |636.38 |17      |
|627|794                          |Sauce - Sesame Thai Dressing        |6594.66 |281.52 |49      |
|628|795                          |Nut - Pecan, Pieces                 |1141.08 |410.8  |744     |
|629|796                          |Cookie Double Choco                 |3136.27 |162.69 |186     |
|630|797                          |Wine - Red, Black Opal Shiraz       |2720.35 |740.29 |857     |
|631|798                          |Mushroom - Shitake, Fresh           |1306.15 |269.19 |133     |
|632|799                          |Coffee - Beans, Whole               |4875.12 |1063.57|311     |
|633|800                          |Longos - Grilled Chicken With       |3796.55 |1041.57|927     |
|634|801                          |Nut - Chestnuts, Whole              |1616.02 |175.19 |499     |
|635|802                          |Coriander - Seed                    |5688.43 |1049.18|113     |
|636|803                          |Kellogs Special K Cereal            |5498.39 |235.63 |926     |
|637|804                          |Wine - Clavet Saint Emilion         |6785.88 |1098.98|260     |
|638|805                          |Bread Cranberry Foccacia            |6252.69 |1106.05|805     |
|639|806                          |Alize Red Passion                   |4028.45 |590.1  |804     |
|640|807                          |Carrots - Mini, Stem On             |4287.54 |358.88 |591     |
|641|808                          |Wine - Red, Gamay Noir              |3890.31 |899.04 |298     |
|642|810                          |Spice - Greek 1 Step                |2119.18 |601.16 |539     |
|643|811                          |Rice - Aborio                       |4723.2  |863.66 |341     |
|644|813                          |Oil - Peanut                        |4807.23 |842.89 |565     |
|645|814                          |Soupcontfoam16oz 116con             |1901.13 |1021.11|819     |
|646|815                          |Tomatoes - Orange                   |4452.33 |198.79 |487     |
|647|816                          |Cod - Fillets                       |4373.79 |1025.16|458     |
|648|817                          |Bar - Granola Trail Mix Fruit Nut   |1309.01 |666.5  |480     |
|649|821                          |Cheese - Goat                       |1772.21 |375.42 |800     |
|650|824                          |Cocoa Butter                        |5854.47 |474.13 |949     |
|651|826                          |Oil - Canola                        |2536.98 |257.89 |50      |
|652|827                          |Bread - Ciabatta Buns               |4815.44 |1012.39|108     |
|653|828                          |Peppercorns - Pink                  |6737.37 |802.51 |826     |
|654|829                          |Arizona - Plum Green Tea            |6535.99 |292.78 |883     |
|655|830                          |Veal - Osso Bucco                   |6942.36 |209.44 |211     |
|656|831                          |Wine - Duboeuf Beaujolais           |1055.57 |1115.19|42      |
|657|832                          |Wine - Mondavi Coastal Private      |5685.41 |856.34 |766     |
|658|833                          |Pan Grease                          |1073.03 |942.6  |303     |
|659|835                          |Bread - Pain Au Liat X12            |1775.98 |720.72 |293     |
|660|836                          |Chives - Fresh                      |1455.7  |445.58 |110     |
|661|837                          |Bread - Frozen Basket Variety       |6650.49 |726.16 |736     |
|662|838                          |Juice - Orange 1.89l                |4303.58 |141.54 |818     |
|663|840                          |Salmon - Canned                     |2926.72 |268.42 |642     |
|664|841                          |Flower - Potmums                    |1170.42 |996.82 |721     |
|665|843                          |Wine - Segura Viudas Aria Brut      |2908.53 |556.04 |249     |
|666|844                          |Wooden Mop Handle                   |6445.43 |426.26 |122     |
|667|846                          |Squid U5 - Thailand                 |2437.84 |1097.56|553     |
|668|847                          |Wine - Sake                         |3214.7  |1043.55|573     |
|669|849                          |Cheese - Provolone                  |1181.12 |313.42 |329     |
|670|850                          |Chef Hat 25cm                       |1069.83 |1013.59|80      |
|671|856                          |Steampan Lid                        |6540.18 |196.43 |885     |
|672|857                          |Chicken - Whole Roasting            |5948.05 |679.43 |404     |
|673|858                          |Pastry - Trippleberry Muffin - Mini |3679.06 |1053.16|387     |
|674|859                          |Sage Ground Wiberg                  |2689.33 |726.93 |865     |
|675|860                          |Sponge Cake Mix - Chocolate         |4473.4  |856.42 |536     |
|676|861                          |Wine - Vidal Icewine Magnotta       |1483.54 |145.82 |735     |
|677|862                          |Water - Aquafina Vitamin            |2494.76 |963.81 |517     |
|678|863                          |Chocolate Bar - Reese Pieces        |6525.53 |564.02 |851     |
|679|864                          |Munchies Honey Sweet Trail Mix      |5707.54 |335.96 |102     |
|680|865                          |Coffee - Flavoured                  |5747.37 |405.73 |149     |
|681|866                          |Sauce - Gravy, Au Jus, Mix          |4897.23 |564.95 |129     |
|682|867                          |Seedlings - Mix, Organic            |2439.18 |148.11 |378     |
|683|868                          |Beef Dry Aged Tenderloin Aaa        |5085.2  |345.69 |17      |
|684|869                          |Syrup - Kahlua Chocolate            |5402.09 |1073.24|580     |
|685|870                          |Cheese - Pied De Vents              |6409.5  |205.91 |450     |
|686|872                          |Rolled Oats                         |6304.12 |923.6  |158     |
|687|873                          |Sugar - Individual Portions         |4822.3  |291.83 |440     |
|688|874                          |Goldschalger                        |2892.02 |526.37 |462     |
|689|875                          |Orange - Blood                      |4955.37 |792.78 |5       |
|690|876                          |Garbage Bags - Black                |1326.09 |917.73 |816     |
|691|878                          |Red Cod Fillets - 225g              |4719.08 |728.94 |227     |
|692|879                          |Cheese - Comtomme                   |5109.37 |975.3  |587     |
|693|880                          |Juice - V8 Splash                   |4484.5  |112.25 |617     |
|694|881                          |Cheese - Cheddar, Old White         |2708.72 |925.21 |291     |
|695|883                          |Table Cloth 144x90 White            |4145.52 |552.56 |704     |
|696|885                          |Pork - Bacon,back Peameal           |6536.25 |573.8  |540     |
|697|887                          |Veal - Tenderloin, Untrimmed        |3635.75 |255.93 |61      |
|698|888                          |Asparagus - Frozen                  |5117.04 |646.19 |916     |
|699|889                          |Appetizer - Veg Assortment          |5753.84 |901.42 |54      |
|700|890                          |Beer - Camerons Auburn              |1276.47 |212.22 |803     |
|701|891                          |Coffee - Decafenated                |2995.4  |887.92 |321     |
|702|892                          |Bagelers - Cinn / Brown Sugar       |6267.63 |886.87 |882     |
|703|893                          |Bread - Flat Bread                  |2308.76 |115.28 |970     |
|704|894                          |Kiwi                                |6550.81 |781.04 |825     |
|705|895                          |Soup - Cream Of Broccoli, Dry       |4276.86 |999.29 |308     |
|706|898                          |Mushroom - Porcini, Dry             |5441.92 |612.11 |469     |
|707|899                          |Beans - Long, Chinese               |3659.21 |824.67 |257     |
|708|900                          |Apples - Sliced / Wedge             |6110.2  |592.35 |648     |
|709|902                          |Beef - Ox Tail, Frozen              |2842.53 |689.61 |915     |
|710|903                          |Potatoes - Idaho 100 Count          |2368.52 |550.04 |848     |
|711|904                          |Cranberries - Fresh                 |2387.09 |610.27 |151     |
|712|906                          |Nut - Pumpkin Seeds                 |5573.24 |856.88 |977     |
|713|908                          |Icecream - Dstk Cml And Fdg         |6488.31 |977.13 |332     |
|714|909                          |Wine - Blue Nun Qualitatswein       |6317.37 |796.08 |213     |
|715|910                          |Cafe Royale                         |4801.14 |285.43 |134     |
|716|911                          |Yukon Jack                          |6875.72 |345.84 |533     |
|717|912                          |Celery                              |3576.06 |961.35 |159     |
|718|913                          |Piping Jelly - All Colours          |4549.69 |717.04 |649     |
|719|914                          |Parsley Italian - Fresh             |2113.8  |699.22 |518     |
|720|915                          |Juice - Lemon                       |6647.72 |780.17 |597     |
|721|916                          |Coffee Swiss Choc Almond            |1729.55 |764.52 |251     |
|722|917                          |Wine - Dubouef Macon - Villages     |5416.63 |795.59 |367     |
|723|918                          |Wine - Acient Coast Caberne         |2531.62 |998.07 |639     |
|724|920                          |Pepsi - Diet, 355 Ml                |5051.58 |398.79 |370     |
|725|921                          |Pur Source                          |2465.49 |277.6  |460     |
|726|922                          |Beans - Kidney, Red Dry             |4825.46 |1005.83|290     |
|727|924                          |Ecolab - Power Fusion               |6377.81 |566.58 |874     |
|728|926                          |Chocolate - Semi Sweet              |2495.38 |421.56 |711     |
|729|927                          |Juice - Apple 284ml                 |4765.53 |711.75 |97      |
|730|928                          |Cocoa Powder - Natural              |5590.68 |1017.29|258     |
|731|929                          |Beer - Molson Excel                 |4294.3  |161.1  |205     |
|732|930                          |Lidsoupcont Rp12dn                  |4780.07 |113.32 |659     |
|733|931                          |Cumin - Ground                      |2449.77 |1092.4 |717     |
|734|934                          |Mace Ground                         |5375.17 |848.55 |295     |
|735|935                          |Gelatine Leaves - Envelopes         |1184.63 |490.29 |928     |
|736|936                          |Fish - Scallops, Cold Smoked        |3592.55 |653.88 |575     |
|737|937                          |Tomatoes - Plum, Canned             |3552.95 |828.6  |263     |
|738|938                          |C - Plus, Orange                    |6871.95 |784.28 |809     |
|739|939                          |Buttons                             |4238.44 |284.85 |787     |
|740|940                          |Sprouts - Bean                      |2981.54 |812.2  |378     |
|741|942                          |Cherries - Maraschino,jar           |4066.98 |861.65 |570     |
|742|943                          |Wine - Bourgogne 2002, La           |3471.91 |419.73 |679     |
|743|944                          |Pomegranates                        |5051.88 |852.12 |444     |
|744|945                          |Soup - Campbells, Lentil            |2526.83 |1000.67|880     |
|745|946                          |Cake - Box Window 10x10x2.5         |5929.94 |415.6  |599     |
|746|948                          |Basil - Pesto Sauce                 |6015.01 |647.97 |77      |
|747|949                          |Pepper - Gypsy Pepper               |6749.76 |804.4  |786     |
|748|950                          |Tumeric                             |4048.96 |905.27 |937     |
|749|951                          |Whmis - Spray Bottle Trigger        |2707.04 |758.7  |203     |
|750|952                          |Silicone Parch. 16.3x24.3           |2511.69 |286.46 |590     |
|751|954                          |Tuna - Bluefin                      |5863.2  |819.93 |46      |
|752|955                          |Drambuie                            |1734.91 |197.69 |499     |
|753|956                          |Tomatoes - Diced, Canned            |6086.44 |633.38 |630     |
|754|957                          |Raspberries - Fresh                 |4237.9  |738.51 |213     |
|755|958                          |Bread - Bistro Sour                 |3261.83 |876.75 |635     |
|756|959                          |Hand Towel                          |6724.23 |240.68 |585     |
|757|960                          |Beef - Rib Roast, Capless           |4788.24 |265.71 |958     |
|758|961                          |Wine - Pinot Noir Stoneleigh        |6179.23 |741.89 |181     |
|759|962                          |Filter - Coffee                     |5818.73 |433.89 |349     |
|760|963                          |Wine - White, Pelee Island          |2735.46 |675.08 |877     |
|761|967                          |Onions Granulated                   |5174.08 |880.44 |749     |
|762|968                          |Bread Crumbs - Japanese Style       |3630.36 |267.22 |808     |
|763|969                          |Wine - Chardonnay Mondavi           |1576.03 |563.44 |697     |
|764|971                          |Goldschalger                        |6039.48 |746.39 |770     |
|765|974                          |Juice - Orange, Concentrate         |6548.59 |275.26 |764     |
|766|975                          |Wine - Red, Cabernet Merlot         |6056.11 |790.97 |346     |
|767|976                          |Pineapple - Golden                  |2167.8  |1089.96|631     |
|768|977                          |Oven Mitt - 13 Inch                 |1661.43 |341.31 |571     |
|769|978                          |Sauce - Fish 25 Ozf Bottle          |6466.73 |263.4  |117     |
|770|979                          |Hand Towel                          |2076.73 |194.19 |780     |
|771|980                          |Tart - Raisin And Pecan             |3812.11 |855.71 |594     |
|772|982                          |Lamb Rack Frenched Australian       |2096.5  |947.17 |693     |
|773|983                          |Veal - Brisket, Provimi, Bone - In  |4303.37 |316.36 |832     |
|774|984                          |Mushroom - White Button             |5051.22 |359.74 |594     |
|775|985                          |Vanilla Beans                       |5353.28 |326.31 |688     |
|776|986                          |Asparagus - Green, Fresh            |6844.32 |570.8  |304     |
|777|987                          |Shortbread - Cookie Crumbs          |5775.34 |102.31 |483     |
|778|988                          |Lobster - Tail 6 Oz                 |2031.62 |316.1  |89      |
|779|989                          |Lotus Root                          |3651.36 |552.35 |269     |
|780|990                          |Mushroom - Portebello               |5547.11 |296    |608     |
|781|991                          |Wine - Jafflin Bourgongone          |5178.15 |251.61 |261     |
|782|992                          |Cake - Night And Day Choclate       |1604.18 |1037.1 |318     |
|783|993                          |Coffee Decaf Colombian              |3990.07 |154.22 |416     |
|784|994                          |Pasta - Detalini, White, Fresh      |6445.34 |737.63 |238     |
|785|996                          |Cheese - Taleggio D.o.p.            |6603.17 |701.83 |940     |
|786|997                          |Cheese - Cream Cheese               |6584.52 |732.83 |947     |
|787|1000                         |Cheese - Bocconcini                 |1698.33 |344.35 |859     |


</p>
</details>

---

- ¿Qué ventas incluyen los artículos 135 o 963 y fueron hechas por los empleados 835 o 369?

```sql
# Respuesta
SELECT *
FROM venta
WHERE id_articulo IN(135, 963)
  AND id_empleado IN(835, 369);               
```


<br />
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%204.png">
  </a>
</p>
</details>

|#  |id_venta                     |id_articulo                         |id_empleado|clave  |fecha|
|---|-----------------------------|------------------------------------|-----------|-------|-----|
|1  |7                            |963                                 |369        |47335-894|2019-06-08 00:00:00|
|2  |6                            |135                                 |835        |0049-0032|2020-02-03 15:05:27|

</p>
</details>

</div>

###### [Iván Montiel Cardona](https://github.com/begeistert)
