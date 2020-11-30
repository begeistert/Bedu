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

<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%203.png">
  </a>
</p>

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
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%204.png">
  </a>
</p>

</div>

###### Iván Montiel Cardona
