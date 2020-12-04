## Reto 1: Agrupamientos y subconsultas

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado.

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuál es el nombre de los empleados que realizaron cada venta?

```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>

|#   |id_empleado|clave     |nombre     |apellido_paterno         |
|----|-----------|----------|-----------|-------------------------|
|1   |228        |0002-8149 |Leonidas   |Junkinson                |
|2   |447        |0002-8149 |Leslie     |Cuvley                   |
|3   |577        |0002-8149 |Edee       |Billin                   |
|4   |390        |0002-8149 |Jillie     |Corter                   |
|5   |657        |0002-8149 |Sydney     |Woolway                  |
|6   |838        |0002-8149 |Aguistin   |Richarz                  |
|7   |586        |0002-8149 |Sigfrid    |Teal                     |
|8   |930        |0002-8149 |Rebecka    |Rushworth                |
|9   |571        |0002-8149 |Nora       |O'Suaird                 |
|10  |575        |0002-8149 |Luise      |Lennard                  |
|11  |122        |0002-8149 |Gustie     |Gryglewski               |
|12  |576        |0002-8149 |Petr       |Skedgell                 |
|13  |414        |0002-8149 |Doti       |Mc Kellen                |
|14  |847        |0008-0833 |Kain       |Glassopp                 |
|15  |23         |0009-0347 |Alleyn     |Cornehl                  |
|16  |528        |0019-9888 |Rickie     |Arnaldy                  |
|17  |137        |0023-9177 |Bethena    |Joly                     |
|18  |765        |0049-0032 |Maryellen  |Parkisson                |
|19  |835        |0049-0032 |Courtnay   |Harston                  |
|20  |555        |0049-0032 |Rosalinde  |Livock                   |
|21  |682        |0049-0032 |Mignonne   |Baszniak                 |
|22  |173        |0049-0032 |Morganne   |Curley                   |
|23  |405        |0049-0032 |Emalia     |Stirrip                  |
|24  |509        |0049-0032 |Shurlocke  |Pyford                   |
|25  |124        |0049-0032 |Roger      |Hounihan                 |
|26  |694        |0049-0032 |Imojean    |Cowl                     |
|27  |379        |0049-0032 |Galven     |Roblin                   |
|28  |856        |0049-0032 |Velma      |Phillimore               |
|29  |502        |0049-0032 |Ignace     |Constable                |
|30  |104        |0049-0032 |Feliza     |Morston                  |
|31  |834        |0049-0032 |Torre      |Kezor                    |
|32  |593        |0049-0032 |Gratiana   |Edelheit                 |
|33  |63         |0049-0032 |Ernestus   |Maro                     |
|34  |149        |0049-0032 |Edik       |Renyard                  |
|35  |561        |0049-0032 |Agace      |Brophy                   |
|36  |4          |0049-0032 |Cassey     |Womersley                |
|37  |735        |0049-0032 |Ermanno    |Reye                     |
|38  |477        |0049-0032 |Ganny      |Seczyk                   |
|39  |895        |0049-0032 |Lorinda    |Le land                  |
|40  |882        |0049-0032 |Killie     |Cosyns                   |
|41  |725        |0049-0032 |Dennis     |Crucitti                 |
|42  |714        |0049-0032 |Daloris    |Strass                   |
|43  |886        |0049-0032 |Guthrie    |Skinner                  |
|44  |476        |0049-0032 |Helaina    |Sire                     |
|45  |664        |0049-0032 |Joel       |Tompkins                 |
|46  |107        |0049-0032 |Justen     |Engelbrecht              |
|47  |906        |0049-0032 |Jocelin    |Neggrini                 |
|48  |410        |0049-0032 |Honor      |Parsonage                |
|49  |394        |0049-0032 |Evonne     |Gwinnett                 |
|50  |637        |0049-0032 |Jaymie     |Bellfield                |
|51  |264        |0049-0032 |Odessa     |Grubbe                   |
|52  |690        |0049-0032 |Kele       |Hawtin                   |
|53  |791        |0049-0032 |Wendy      |Smallthwaite             |
|54  |344        |0049-0032 |Sonnie     |Kewley                   |
|55  |364        |0049-0032 |Ermin      |Davidow                  |
|56  |183        |0049-0032 |Torrence   |Kimble                   |
|57  |607        |0049-0032 |Grazia     |Hordell                  |
|58  |774        |0049-0032 |Matthus    |Greedier                 |
|59  |850        |0049-0032 |Jakob      |Adie                     |
|60  |716        |0049-0032 |Dione      |Spoors                   |
|61  |301        |0049-0032 |Queenie    |Branton                  |
|62  |414        |0049-0032 |Doti       |Mc Kellen                |
|63  |648        |0049-0032 |Bond       |Crookes                  |
|64  |188        |0049-0032 |Chrisy     |Fowley                   |
|65  |41         |0049-0032 |Ailbert    |Ilchenko                 |
|66  |496        |0049-0032 |Michel     |Pethick                  |
|67  |510        |0049-0032 |Roz        |Anglim                   |
|68  |702        |0049-0032 |Marketa    |Marcone                  |
|69  |271        |0049-0032 |Connor     |Crighten                 |
|70  |495        |0049-0032 |Genna      |Causton                  |
|71  |557        |0049-0032 |Chandal    |Nannini                  |
|72  |318        |0049-0032 |Britni     |MacCallam                |
|73  |41         |0049-0032 |Ailbert    |Ilchenko                 |
|74  |602        |0049-0032 |Emilio     |Longstaff                |
|75  |743        |0049-0032 |Ellynn     |Bricket                  |
|76  |725        |0049-0032 |Dennis     |Crucitti                 |
|77  |381        |0049-0032 |Wit        |Heis                     |
|78  |260        |0049-0032 |Creigh     |Stroder                  |
|79  |359        |0049-0032 |Waylan     |Threadgall               |
|80  |958        |0049-0032 |Chilton    |Gorini                   |
|81  |383        |0049-0032 |Oliviero   |Pull                     |
|82  |291        |0049-0032 |Allegra    |Ciepluch                 |
|83  |220        |0049-0032 |Benjie     |Sealove                  |
|84  |281        |0049-0032 |Claudia    |Cammish                  |
|85  |227        |0049-0032 |Mireielle  |Liddyard                 |
|86  |353        |0049-0032 |Tori       |Landal                   |
|87  |969        |0049-0032 |Alfie      |Fursse                   |
|88  |255        |0049-0032 |Allene     |Baudi                    |
|89  |510        |0049-0032 |Roz        |Anglim                   |
|90  |233        |0049-0032 |Bernadine  |Fomichkin                |
|91  |168        |0049-0032 |Raynor     |Herety                   |
|92  |679        |0049-0032 |Jedediah   |Waddilow                 |
|93  |866        |0049-0032 |Diahann    |Wisam                    |
|94  |516        |0049-0032 |Inigo      |Hallatt                  |
|95  |396        |0049-0032 |Tanney     |Shearme                  |
|96  |267        |0049-0032 |Osbert     |Bum                      |
|97  |947        |0049-0032 |Ruperto    |Faulks                   |
|98  |750        |0049-0032 |Orlan      |Lamlin                   |
|99  |3          |0049-0032 |Jeannette  |Potes                    |
|100 |630        |0049-0032 |Annadiana  |Yurukhin                 |
|101 |423        |0049-0032 |Nikola     |Trouncer                 |
|102 |216        |0049-0032 |Phyllida   |Mathan                   |
|103 |460        |0049-0032 |Julienne   |McCrackan                |
|104 |963        |0049-0032 |Ronda      |Kall                     |
|105 |748        |0049-0032 |Jorey      |Gentiry                  |
|106 |72         |0049-0032 |Tomasine   |Jenne                    |
|107 |356        |0065-0396 |Melosa     |Spavins                  |
|108 |992        |0067-5080 |Bella      |Devo                     |
|109 |242        |0067-6122 |Mike       |Dutton                   |
|110 |216        |0067-6122 |Phyllida   |Mathan                   |
|111 |612        |0067-6122 |Ophelie    |Habishaw                 |
|112 |705        |0067-6122 |Myrtie     |Lemery                   |
|113 |47         |0067-6122 |Bell       |Mc Corley                |
|114 |423        |0067-6122 |Nikola     |Trouncer                 |
|115 |401        |0067-6122 |Colver     |Dubery                   |
|116 |347        |0067-6122 |Rhianna    |Randlesome               |
|117 |684        |0067-6122 |Correy     |Yakobovicz               |
|118 |216        |0067-6122 |Phyllida   |Mathan                   |
|119 |485        |0067-6122 |Eugenius   |Fourman                  |
|120 |2          |0067-6122 |Morey      |Bowskill                 |
|121 |655        |0067-6122 |Stanfield  |Twohig                   |
|122 |791        |0067-6122 |Wendy      |Smallthwaite             |
|123 |983        |0067-6122 |Donni      |Tzar                     |
|124 |354        |0067-6122 |Bertie     |Plaice                   |
|125 |114        |0067-6122 |Vivia      |Sharpling                |
|126 |301        |0067-6122 |Queenie    |Branton                  |
|127 |621        |0067-6122 |Rogerio    |Rosier                   |
|128 |596        |0067-6122 |Zenia      |Gearing                  |
|129 |407        |0067-6122 |Harlen     |Bute                     |
|130 |918        |0069-1001 |Emelda     |Pinfold                  |
|131 |598        |0074-6633 |Melicent   |Bowen                    |
|132 |212        |0075-2915 |Ginelle    |Orchart                  |
|133 |190        |0078-0326 |Adrea      |Kingston                 |
|134 |434        |0078-0446 |Veronique  |Dmitrichenko             |
|135 |869        |0093-5270 |Agosto     |Coryndon                 |
|136 |644        |0164-2189 |Prue       |Gladbach                 |
|137 |357        |0179-0069 |Gavra      |Bette                    |
|138 |569        |0228-3661 |Arlana     |Fanstone                 |
|139 |675        |0268-1431 |Myca       |Joao                     |
|140 |316        |0496-0748 |Hieronymus |Rabbet                   |
|141 |944        |0555-0702 |Hewie      |Blindt                   |
|142 |252        |0591-0462 |Ilario     |Jedrasik                 |
|143 |282        |0703-4014 |Flossi     |Doohan                   |
|144 |278        |0904-6237 |Donelle    |Kirk                     |
|145 |606        |10348-014 |Kat        |Straffon                 |
|146 |192        |10356-565 |Vail       |Chalmers                 |
|147 |178        |10631-098 |Lorin      |Polsin                   |
|148 |741        |10742-8359|Charita    |Levi                     |
|149 |96         |10893-450 |Maynord    |Derycot                  |
|150 |802        |11344-984 |Willow     |Swaisland                |
|151 |640        |11410-694 |Katina     |Lepick                   |
|152 |315        |11444-001 |Edik       |Wilshin                  |
|153 |398        |11673-047 |Maribelle  |Van Daalen               |
|154 |90         |13107-062 |Michaeline |Stolli                   |
|155 |187        |13107-062 |Ema        |Itzkovwich               |
|156 |459        |13107-062 |Frederich  |Canton                   |
|157 |160        |13107-062 |Shayne     |MacDonell                |
|158 |37         |13107-062 |Felike     |Heibl                    |
|159 |680        |13107-062 |Arlana     |Merioth                  |
|160 |83         |13107-062 |Juline     |Castanie                 |
|161 |676        |13107-062 |Stanislaus |Burnes                   |
|162 |737        |13107-062 |Correna    |Dudleston                |
|163 |915        |13107-062 |Haleigh    |Dukelow                  |
|164 |793        |13107-062 |Antonin    |Oneill                   |
|165 |967        |13107-062 |Saundra    |Knight                   |
|166 |775        |13107-062 |Philippine |Plenty                   |
|167 |938        |13107-062 |Rycca      |MacKellen                |
|168 |887        |13107-062 |Babita     |Cramp                    |
|169 |543        |13107-062 |Skell      |Tybalt                   |
|170 |214        |13107-062 |Flo        |Lockey                   |
|171 |578        |13107-062 |Poppy      |Kissick                  |
|172 |12         |13107-062 |Crissie    |Cleveley                 |
|173 |476        |13107-062 |Helaina    |Sire                     |
|174 |895        |13107-062 |Lorinda    |Le land                  |
|175 |349        |13107-062 |Aaron      |Klossmann                |
|176 |449        |13107-062 |Gauthier   |Jendrusch                |
|177 |770        |13107-062 |Erinn      |Littlecote               |
|178 |905        |13107-062 |Allianora  |Proschek                 |
|179 |747        |13107-062 |Miguelita  |Grimsdyke                |
|180 |775        |13107-062 |Philippine |Plenty                   |
|181 |342        |13107-062 |Flory      |Halse                    |
|182 |755        |13107-062 |Terrye     |Sibary                   |
|183 |707        |13107-062 |Leonard    |Bockler                  |
|184 |22         |13107-062 |Betteann   |Yarrell                  |
|185 |529        |13107-062 |Tremaine   |Landers                  |
|186 |364        |13107-062 |Ermin      |Davidow                  |
|187 |228        |13107-062 |Leonidas   |Junkinson                |
|188 |170        |13107-062 |Fabien     |Swindin                  |
|189 |173        |13107-062 |Morganne   |Curley                   |
|190 |185        |13107-062 |Kristy     |Mathevet                 |
|191 |935        |13107-062 |Sallyanne  |Overington               |
|192 |69         |13107-062 |Findley    |Topes                    |
|193 |948        |13107-062 |Brett      |Duce                     |
|194 |690        |13107-062 |Kele       |Hawtin                   |
|195 |89         |13107-062 |Mychal     |Wahlberg                 |
|196 |340        |13107-062 |Daria      |Reuter                   |
|197 |587        |13107-062 |Sidonia    |Rooson                   |
|198 |740        |13107-062 |Drusy      |Meddings                 |
|199 |59         |13107-062 |Sherye     |Braine                   |
|200 |177        |13107-062 |Barbe      |Windless                 |
|201 |654        |13107-062 |Bea        |Allaway                  |
|202 |574        |13107-062 |Margaretha |Woodrow                  |
|203 |796        |13107-062 |Abbie      |Tibald                   |
|204 |779        |13107-062 |Clarita    |Mechi                    |
|205 |294        |13107-062 |Myrle      |Stratley                 |
|206 |888        |13107-062 |Gabbey     |Pylkynyton               |
|207 |36         |13107-062 |Dorian     |Tanswill                 |
|208 |304        |13107-062 |Penny      |Dargie                   |
|209 |738        |13107-062 |Meridith   |Rydeard                  |
|210 |355        |13107-062 |Harriet    |Sargeaunt                |
|211 |946        |13107-062 |Felisha    |Heales                   |
|212 |169        |13107-062 |Fletcher   |LLelweln                 |
|213 |258        |13107-062 |Rockwell   |Euels                    |
|214 |989        |13107-062 |Fidel      |Lundberg                 |
|215 |312        |13107-062 |Moselle    |Sharrocks                |
|216 |464        |13107-062 |Edee       |Skamal                   |
|217 |801        |13107-062 |Peria      |Ruppel                   |
|218 |681        |13107-062 |Augustine  |Rodenburg                |
|219 |354        |13107-062 |Bertie     |Plaice                   |
|220 |562        |13107-062 |Kennedy    |Bridgewood               |
|221 |911        |14209-585 |Aurelia    |Stepto                   |
|222 |975        |16590-338 |Den        |Yaakov                   |
|223 |233        |16714-388 |Bernadine  |Fomichkin                |
|224 |153        |21695-425 |Keary      |Yelden                   |
|225 |862        |21695-571 |Sheffy     |Le Claire                |
|226 |517        |23359-017 |Leonhard   |Snow                     |
|227 |240        |24385-170 |Milton     |Haselgrove               |
|228 |395        |24385-599 |Nickolas   |Gooderridge              |
|229 |671        |29336-303 |Frans      |Mouget                   |
|230 |71         |33261-648 |Matty      |Rouse                    |
|231 |127        |33261-748 |Malorie    |Killoran                 |
|232 |982        |33261-947 |Hagan      |Kendle                   |
|233 |507        |33992-0620|Benjie     |Walentynowicz            |
|234 |662        |34645-3026|Noll       |Fumagall                 |
|235 |489        |36800-580 |Corey      |Merryman                 |
|236 |483        |36987-1911|Germain    |Mongenot                 |
|237 |39         |36987-1911|Izabel     |Kubica                   |
|238 |379        |36987-1911|Galven     |Roblin                   |
|239 |176        |36987-1911|Jehanna    |Schmuhl                  |
|240 |935        |36987-1911|Sallyanne  |Overington               |
|241 |627        |36987-1911|Adan       |Bauckham                 |
|242 |100        |36987-1911|Harlen     |Micklewright             |
|243 |506        |36987-1911|Sheffie    |Edscer                   |
|244 |85         |36987-1911|Tabbie     |Claybourn                |
|245 |458        |36987-1911|Sande      |Branno                   |
|246 |839        |36987-1911|Jocelyn    |Curedell                 |
|247 |216        |36987-1911|Phyllida   |Mathan                   |
|248 |587        |36987-1911|Sidonia    |Rooson                   |
|249 |491        |36987-1911|Adrianna   |Kirkland                 |
|250 |344        |36987-1911|Sonnie     |Kewley                   |
|251 |500        |36987-1911|Stacey     |Fonzone                  |
|252 |60         |36987-1911|Guinna     |Troughton                |
|253 |272        |36987-1911|Dorie      |Suthworth                |
|254 |3          |36987-1911|Jeannette  |Potes                    |
|255 |18         |36987-1911|Lorens     |Livesay                  |
|256 |26         |36987-1911|Jo-anne    |Konzel                   |
|257 |733        |36987-1911|Marla      |Morison                  |
|258 |546        |36987-1911|Amalia     |Leglise                  |
|259 |273        |36987-2064|Vinson     |Baldelli                 |
|260 |292        |36987-2096|Chantal    |Boulding                 |
|261 |576        |36987-2096|Petr       |Skedgell                 |
|262 |74         |36987-2096|Ofelia     |Schimank                 |
|263 |534        |36987-2096|Janet      |Brattell                 |
|264 |427        |36987-2096|Giff       |Aumerle                  |
|265 |69         |36987-2096|Findley    |Topes                    |
|266 |544        |36987-2096|Massimo    |Blaine                   |
|267 |205        |36987-2096|Pernell    |Brotherwood              |
|268 |284        |36987-2096|Pail       |Worvell                  |
|269 |823        |36987-2096|Kinny      |Wapplington              |
|270 |60         |36987-2096|Guinna     |Troughton                |
|271 |31         |36987-2096|Dorian     |Proudley                 |
|272 |538        |36987-2096|Cordi      |Slaght                   |
|273 |776        |36987-2096|Jamill     |Sommerly                 |
|274 |18         |36987-2096|Lorens     |Livesay                  |
|275 |502        |36987-2096|Ignace     |Constable                |
|276 |497        |36987-2096|Francine   |Feben                    |
|277 |266        |36987-2096|Ludwig     |Hilland                  |
|278 |211        |36987-2096|Gregg      |Tersay                   |
|279 |177        |36987-2096|Barbe      |Windless                 |
|280 |218        |36987-2096|Kim        |Seville                  |
|281 |12         |36987-2096|Crissie    |Cleveley                 |
|282 |694        |36987-2096|Imojean    |Cowl                     |
|283 |819        |36987-2096|Stanislas  |Marmion                  |
|284 |904        |36987-2178|Bernette   |Watmore                  |
|285 |854        |36987-2401|Cullin     |Whybrow                  |
|286 |200        |36987-2411|Lyndel     |Ivamy                    |
|287 |295        |36987-2663|Elvis      |Fundell                  |
|288 |872        |36987-3372|Bari       |Rotherham                |
|289 |209        |41163-411 |Hortense   |Tomisch                  |
|290 |670        |41520-474 |Kristien   |Lehr                     |
|291 |203        |42291-611 |Feodora    |Gough                    |
|292 |510        |42794-019 |Roz        |Anglim                   |
|293 |685        |43063-059 |Brit       |De Bernardis             |
|294 |888        |43353-788 |Gabbey     |Pylkynyton               |
|295 |416        |43405-007 |Carlye     |Grigoli                  |
|296 |737        |43406-0027|Correna    |Dudleston                |
|297 |452        |44019-211 |Darby      |Morsom                   |
|298 |369        |47335-894 |Giuditta   |Chicchetto               |
|299 |141        |47335-894 |Hyacinthia |Petz                     |
|300 |585        |47335-894 |Carilyn    |Cominello                |
|301 |896        |47335-894 |Maurise    |Danzey                   |
|302 |146        |47335-894 |Den        |Gawkroge                 |
|303 |390        |47335-894 |Jillie     |Corter                   |
|304 |64         |47335-894 |Willow     |Eyckelberg               |
|305 |223        |47335-894 |Neale      |O'Breen                  |
|306 |409        |47335-894 |Janek      |Carde                    |
|307 |719        |47335-894 |Clarice    |Heathcott                |
|308 |623        |47335-894 |Cordie     |Gratland                 |
|309 |444        |47335-894 |Mathilde   |Muggach                  |
|310 |759        |47335-894 |Robyn      |Hancock                  |
|311 |552        |47335-894 |Debbie     |Orhrt                    |
|312 |811        |47335-894 |Amelina    |Greenfield               |
|313 |811        |47335-894 |Amelina    |Greenfield               |
|314 |773        |47335-894 |Hailee     |Nemchinov                |
|315 |148        |47335-894 |Teirtza    |Slack                    |
|316 |287        |47335-894 |Parnell    |Banbrick                 |
|317 |256        |47335-894 |Homerus    |Chitty                   |
|318 |239        |47335-894 |Caprice    |Boast                    |
|319 |562        |47335-894 |Kennedy    |Bridgewood               |
|320 |37         |47335-894 |Felike     |Heibl                    |
|321 |170        |47335-894 |Fabien     |Swindin                  |
|322 |526        |47335-894 |Lorraine   |Grigorushkin             |
|323 |321        |47335-894 |Larine     |Merricks                 |
|324 |922        |47335-894 |Meggi      |Threadgall               |
|325 |278        |47335-894 |Donelle    |Kirk                     |
|326 |582        |47335-894 |Giles      |Acom                     |
|327 |69         |47335-894 |Findley    |Topes                    |
|328 |554        |47335-894 |Kingsly    |Miner                    |
|329 |15         |47335-894 |Donaugh    |Chaize                   |
|330 |683        |47335-894 |Cortney    |Tremelling               |
|331 |688        |47335-894 |Dyan       |Pandie                   |
|332 |39         |47335-894 |Izabel     |Kubica                   |
|333 |67         |47335-894 |Chris      |Woltering                |
|334 |870        |47335-894 |Cathrin    |Daveridge                |
|335 |259        |47335-894 |Trisha     |Brooke                   |
|336 |311        |47335-894 |Meredithe  |Johnsson                 |
|337 |222        |47335-894 |Felike     |Toffler                  |
|338 |697        |47335-894 |Jere       |Andreoletti              |
|339 |115        |47335-894 |Lorette    |Pallant                  |
|340 |876        |47335-894 |Kelley     |Davidai                  |
|341 |591        |47335-894 |Evanne     |Sands-Allan              |
|342 |810        |47335-894 |Sanders    |Begin                    |
|343 |771        |47335-894 |Kandace    |Ruberti                  |
|344 |305        |47335-894 |Denni      |Mardoll                  |
|345 |435        |47335-894 |Alano      |Tipler                   |
|346 |371        |47335-894 |Max        |Paula                    |
|347 |564        |47335-894 |Trina      |Wollrauch                |
|348 |926        |47335-894 |Meyer      |Ziemecki                 |
|349 |744        |47335-894 |Dulciana   |Livick                   |
|350 |427        |47335-894 |Giff       |Aumerle                  |
|351 |726        |47335-894 |Susie      |Widdows                  |
|352 |977        |47335-894 |Jude       |Moukes                   |
|353 |192        |47335-894 |Vail       |Chalmers                 |
|354 |709        |47335-894 |Almeda     |Goodship                 |
|355 |298        |47335-894 |Packston   |Roubottom                |
|356 |505        |47335-894 |Guillema   |Prentice                 |
|357 |185        |47335-894 |Kristy     |Mathevet                 |
|358 |86         |47335-894 |Alano      |Floyd                    |
|359 |666        |47335-894 |Abigail    |Shama                    |
|360 |643        |47335-894 |Rem        |Clutterham               |
|361 |287        |47335-894 |Parnell    |Banbrick                 |
|362 |107        |47593-406 |Justen     |Engelbrecht              |
|363 |12         |47682-146 |Crissie    |Cleveley                 |
|364 |208        |47682-146 |Kayne      |Pocklington              |
|365 |664        |47682-146 |Joel       |Tompkins                 |
|366 |70         |47682-146 |Franchot   |Mieville                 |
|367 |491        |47682-146 |Adrianna   |Kirkland                 |
|368 |649        |47682-146 |Nappie     |Tezure                   |
|369 |646        |47682-146 |Franciska  |McClosh                  |
|370 |994        |47682-146 |Raynor     |Minihan                  |
|371 |894        |47682-146 |Reinold    |Deeprose                 |
|372 |382        |47682-146 |Sonya      |Aldcorn                  |
|373 |925        |47682-146 |Sergeant   |Moyler                   |
|374 |185        |47682-146 |Kristy     |Mathevet                 |
|375 |941        |47682-146 |Sherlock   |Balcombe                 |
|376 |188        |47682-146 |Chrisy     |Fowley                   |
|377 |722        |47682-146 |Gustavo    |Glede                    |
|378 |107        |47682-146 |Justen     |Engelbrecht              |
|379 |381        |47682-146 |Wit        |Heis                     |
|380 |511        |47682-146 |Hayley     |Bygott                   |
|381 |202        |47682-146 |Martita    |Baroux                   |
|382 |583        |47682-146 |Alyosha    |Foottit                  |
|383 |982        |47682-146 |Hagan      |Kendle                   |
|384 |958        |47682-146 |Chilton    |Gorini                   |
|385 |773        |47682-146 |Hailee     |Nemchinov                |
|386 |103        |47682-146 |Sada       |Tenwick                  |
|387 |605        |47682-146 |Arri       |Kitchener                |
|388 |910        |47682-146 |Aaren      |Pryce                    |
|389 |475        |47682-146 |Tarra      |Duckham                  |
|390 |531        |47682-146 |Benny      |Crookston                |
|391 |243        |47682-146 |Elwin      |Lerven                   |
|392 |554        |47682-146 |Kingsly    |Miner                    |
|393 |473        |47682-146 |Kelbee     |Flisher                  |
|394 |312        |47682-146 |Moselle    |Sharrocks                |
|395 |523        |48951-2016|Ruth       |Offell                   |
|396 |499        |48951-5065|Margarethe |Barden                   |
|397 |161        |48951-5065|Ariana     |Waldera                  |
|398 |723        |48951-5065|Stephanus  |Pinkard                  |
|399 |413        |48951-5065|Julianna   |Gecke                    |
|400 |953        |48951-5065|Isidore    |Athy                     |
|401 |586        |48951-5065|Sigfrid    |Teal                     |
|402 |707        |48951-5065|Leonard    |Bockler                  |
|403 |745        |48951-5065|Hughie     |O'Brian                  |
|404 |682        |48951-5065|Mignonne   |Baszniak                 |
|405 |997        |48951-5065|Latashia   |Sircomb                  |
|406 |398        |48951-5065|Maribelle  |Van Daalen               |
|407 |881        |48951-5065|Annie      |Birds                    |
|408 |981        |48951-5065|Stevana    |Marchington              |
|409 |568        |48951-5065|Jonah      |Titley                   |
|410 |905        |48951-5065|Allianora  |Proschek                 |
|411 |994        |48951-5065|Raynor     |Minihan                  |
|412 |178        |49288-0411|Lorin      |Polsin                   |
|413 |628        |49288-0901|Ethelbert  |Cunningham               |
|414 |768        |49348-799 |Melinda    |Rawet                    |
|415 |494        |49348-854 |Dilan      |Beckitt                  |
|416 |562        |49981-007 |Kennedy    |Bridgewood               |
|417 |196        |49999-136 |Thedrick   |Scard                    |
|418 |342        |50114-8550|Flory      |Halse                    |
|419 |848        |50390-000 |Monro      |Gavrielli                |
|420 |467        |50419-483 |Stanton    |Ingold                   |
|421 |531        |50474-803 |Benny      |Crookston                |
|422 |696        |51079-204 |Doyle      |Malecky                  |
|423 |155        |51079-812 |Rubina     |Branigan                 |
|424 |808        |51079-992 |Ronny      |Mabbett                  |
|425 |230        |51345-067 |Etheline   |Klehyn                   |
|426 |373        |51346-016 |Fraze      |Spore                    |
|427 |588        |51346-041 |Vassily    |Steen                    |
|428 |42         |51655-951 |Emmy       |Roblin                   |
|429 |441        |51655-951 |Myrilla    |Hathaway                 |
|430 |449        |51655-951 |Gauthier   |Jendrusch                |
|431 |360        |51655-951 |Shel       |Liepina                  |
|432 |156        |51655-951 |Goldina    |Fickling                 |
|433 |776        |51655-951 |Jamill     |Sommerly                 |
|434 |263        |51655-951 |Rutledge   |Storrock                 |
|435 |492        |51655-951 |Petey      |Allston                  |
|436 |86         |51655-951 |Alano      |Floyd                    |
|437 |778        |51655-951 |Heindrick  |Ridout                   |
|438 |604        |51655-951 |Flossy     |Beden                    |
|439 |242        |51655-951 |Mike       |Dutton                   |
|440 |251        |51655-951 |Rollo      |Inde                     |
|441 |207        |51655-951 |Konstanze  |Plumtree                 |
|442 |32         |51655-951 |Sutherland |Irwin                    |
|443 |142        |51655-951 |Tomasine   |Besemer                  |
|444 |582        |51655-951 |Giles      |Acom                     |
|445 |995        |51655-951 |Stan       |Crinage                  |
|446 |863        |51655-951 |Filberte   |Fleeman                  |
|447 |910        |51655-951 |Aaren      |Pryce                    |
|448 |925        |51655-951 |Sergeant   |Moyler                   |
|449 |28         |51655-951 |Clerkclaude|Hinkens                  |
|450 |422        |51655-951 |Gillan     |Dunseith                 |
|451 |430        |51655-951 |Celie      |Sprionghall              |
|452 |677        |51655-951 |Lenka      |Latham                   |
|453 |944        |51655-951 |Hewie      |Blindt                   |
|454 |787        |51655-951 |Nobie      |Columbine                |
|455 |673        |51655-951 |Lissa      |Reschke                  |
|456 |739        |51655-951 |Elicia     |Hatch                    |
|457 |542        |51655-951 |Martainn   |Knaggs                   |
|458 |758        |51655-951 |Hercule    |Ivanichev                |
|459 |206        |51655-951 |Katya      |Banbridge                |
|460 |396        |51655-951 |Tanney     |Shearme                  |
|461 |152        |51655-951 |Kevon      |Osban                    |
|462 |263        |51655-951 |Rutledge   |Storrock                 |
|463 |15         |51655-951 |Donaugh    |Chaize                   |
|464 |293        |51655-951 |Ingemar    |Craydon                  |
|465 |45         |51655-951 |Kevin      |Folshom                  |
|466 |638        |51655-951 |Stella     |Florentine               |
|467 |597        |51655-951 |Ash        |Midford                  |
|468 |477        |51655-951 |Ganny      |Seczyk                   |
|469 |629        |51655-951 |Ashien     |Morigan                  |
|470 |165        |51655-951 |Sissy      |Izkovitz                 |
|471 |701        |51655-951 |Odetta     |Turpey                   |
|472 |733        |51655-951 |Marla      |Morison                  |
|473 |850        |51655-951 |Jakob      |Adie                     |
|474 |878        |51655-951 |Joseito    |Stanbridge               |
|475 |999        |51655-951 |Phil       |Van Ross                 |
|476 |840        |51655-951 |Harald     |Stedmond                 |
|477 |349        |51655-951 |Aaron      |Klossmann                |
|478 |944        |51655-951 |Hewie      |Blindt                   |
|479 |413        |52125-277 |Julianna   |Gecke                    |
|480 |119        |52125-277 |Cad        |Sambedge                 |
|481 |413        |52125-277 |Julianna   |Gecke                    |
|482 |205        |52125-277 |Pernell    |Brotherwood              |
|483 |565        |52125-277 |Hunfredo   |Kurton                   |
|484 |727        |52125-277 |Arlyn      |Hebden                   |
|485 |305        |52125-277 |Denni      |Mardoll                  |
|486 |976        |52125-277 |Teddy      |Wands                    |
|487 |872        |52125-277 |Bari       |Rotherham                |
|488 |215        |52125-277 |Roderick   |Houtbie                  |
|489 |287        |52125-277 |Parnell    |Banbrick                 |
|490 |460        |52125-277 |Julienne   |McCrackan                |
|491 |802        |52125-277 |Willow     |Swaisland                |
|492 |52         |52125-277 |Kaiser     |Aucott                   |
|493 |581        |52125-277 |Allan      |Immings                  |
|494 |426        |52125-277 |Jobie      |Batts                    |
|495 |246        |52125-277 |Fair       |Minker                   |
|496 |343        |52125-277 |Iolanthe   |Saywell                  |
|497 |150        |52125-277 |Theodosia  |Tomanek                  |
|498 |689        |52125-277 |Merrie     |Dorot                    |
|499 |389        |52125-277 |Chiarra    |Feldbrin                 |
|500 |174        |52125-277 |Melantha   |Ginni                    |
|501 |375        |52125-277 |Carree     |Haysey                   |
|502 |123        |52125-277 |Sylvan     |Bagworth                 |
|503 |303        |52125-277 |Petrina    |Dowglass                 |
|504 |142        |52125-277 |Tomasine   |Besemer                  |
|505 |314        |52125-277 |Catlaina   |Saines                   |
|506 |319        |52125-277 |Kimberley  |Surman-Wells             |
|507 |108        |52125-277 |Gwyn       |Brunet                   |
|508 |131        |52125-277 |Abagael    |Buzzing                  |
|509 |946        |52125-277 |Felisha    |Heales                   |
|510 |575        |52125-277 |Luise      |Lennard                  |
|511 |202        |52125-277 |Martita    |Baroux                   |
|512 |428        |52125-277 |Ferd       |Crayke                   |
|513 |510        |52125-277 |Roz        |Anglim                   |
|514 |699        |52125-277 |Brande     |Frood                    |
|515 |335        |52125-277 |Gun        |Silliman                 |
|516 |384        |52125-277 |Mechelle   |Weller                   |
|517 |298        |52125-277 |Packston   |Roubottom                |
|518 |394        |52125-277 |Evonne     |Gwinnett                 |
|519 |308        |52125-277 |Putnem     |Foister                  |
|520 |557        |52125-277 |Chandal    |Nannini                  |
|521 |976        |52125-277 |Teddy      |Wands                    |
|522 |596        |52125-277 |Zenia      |Gearing                  |
|523 |948        |52125-277 |Brett      |Duce                     |
|524 |227        |52125-277 |Mireielle  |Liddyard                 |
|525 |414        |52125-277 |Doti       |Mc Kellen                |
|526 |824        |52125-277 |Xavier     |Agglione                 |
|527 |210        |52125-277 |Benito     |Geraud                   |
|528 |949        |52125-277 |Jodie      |Norquoy                  |
|529 |489        |52125-277 |Corey      |Merryman                 |
|530 |38         |52125-277 |Allina     |Mea                      |
|531 |12         |52125-277 |Crissie    |Cleveley                 |
|532 |595        |52125-277 |Reilly     |Tilley                   |
|533 |408        |52125-277 |Nathaniel  |Brandle                  |
|534 |517        |52125-277 |Leonhard   |Snow                     |
|535 |962        |52125-277 |Rodolph    |Lydiatt                  |
|536 |436        |52125-277 |Lydon      |Croston                  |
|537 |360        |52125-277 |Shel       |Liepina                  |
|538 |986        |52125-277 |Ki         |Tudgay                   |
|539 |32         |52125-277 |Sutherland |Irwin                    |
|540 |456        |52125-277 |Noam       |Valti                    |
|541 |5          |52125-277 |Gnni       |Risom                    |
|542 |507        |52125-277 |Benjie     |Walentynowicz            |
|543 |322        |52125-277 |Irwinn     |Cosgrove                 |
|544 |880        |52125-277 |Weider     |Brion                    |
|545 |117        |52125-277 |Mallory    |MacKall                  |
|546 |135        |52125-277 |Sylvia     |Stenner                  |
|547 |878        |52125-277 |Joseito    |Stanbridge               |
|548 |145        |52125-277 |Graig      |Peebles                  |
|549 |345        |52125-277 |Glennis    |Hellmore                 |
|550 |56         |52125-277 |Chickie    |McGillicuddy             |
|551 |772        |52125-277 |Hansiain   |Porkiss                  |
|552 |891        |52125-277 |Rebecca    |Simecek                  |
|553 |760        |52125-277 |Jordain    |Springtorpe              |
|554 |839        |52125-277 |Jocelyn    |Curedell                 |
|555 |542        |52125-277 |Martainn   |Knaggs                   |
|556 |680        |52125-277 |Arlana     |Merioth                  |
|557 |646        |52125-277 |Franciska  |McClosh                  |
|558 |265        |52125-277 |Adlai      |Veldstra                 |
|559 |148        |52125-277 |Teirtza    |Slack                    |
|560 |427        |52125-277 |Giff       |Aumerle                  |
|561 |538        |52125-277 |Cordi      |Slaght                   |
|562 |108        |52125-277 |Gwyn       |Brunet                   |
|563 |869        |52125-277 |Agosto     |Coryndon                 |
|564 |785        |52125-277 |Richie     |Cackett                  |
|565 |237        |52125-277 |Townie     |Kolyagin                 |
|566 |236        |52125-277 |Adan       |Berthelmot               |
|567 |158        |52125-277 |Kristien   |MacGiffin                |
|568 |242        |52125-277 |Mike       |Dutton                   |
|569 |446        |52125-277 |Moyna      |Yeatman                  |
|570 |804        |52125-277 |Krystyna   |Overstone                |
|571 |393        |52125-277 |Andree     |Shill                    |
|572 |906        |52125-277 |Jocelin    |Neggrini                 |
|573 |825        |52125-277 |Amata      |Whitta                   |
|574 |678        |52125-277 |Gilemette  |Sinnat                   |
|575 |149        |52125-277 |Edik       |Renyard                  |
|576 |425        |52125-277 |Felizio    |Fallens                  |
|577 |872        |52125-277 |Bari       |Rotherham                |
|578 |924        |52125-277 |Caye       |Hotson                   |
|579 |337        |52125-277 |Willow     |Brassington              |
|580 |205        |52125-277 |Pernell    |Brotherwood              |
|581 |297        |52125-277 |Derby      |Twatt                    |
|582 |330        |52125-277 |Bobinette  |Enser                    |
|583 |758        |52125-277 |Hercule    |Ivanichev                |
|584 |791        |52125-277 |Wendy      |Smallthwaite             |
|585 |280        |52125-277 |Hayyim     |Verdon                   |
|586 |190        |52125-277 |Adrea      |Kingston                 |
|587 |529        |52125-277 |Tremaine   |Landers                  |
|588 |90         |52125-277 |Michaeline |Stolli                   |
|589 |227        |52125-277 |Mireielle  |Liddyard                 |
|590 |291        |52125-277 |Allegra    |Ciepluch                 |
|591 |856        |52125-332 |Velma      |Phillimore               |
|592 |396        |52125-348 |Tanney     |Shearme                  |
|593 |542        |52125-416 |Martainn   |Knaggs                   |
|594 |120        |52257-1230|Vivian     |Ilsley                   |
|595 |393        |52343-028 |Andree     |Shill                    |
|596 |461        |52343-028 |Ianthe     |Musicka                  |
|597 |465        |52343-028 |Ranice     |Halpin                   |
|598 |41         |52343-028 |Ailbert    |Ilchenko                 |
|599 |267        |52343-028 |Osbert     |Bum                      |
|600 |30         |52343-028 |Mirabella  |Murden                   |
|601 |558        |52343-028 |Kai        |Fenney                   |
|602 |388        |52343-028 |Giuditta   |Domelow                  |
|603 |637        |52343-028 |Jaymie     |Bellfield                |
|604 |713        |52343-028 |Benedetto  |Walas                    |
|605 |190        |52343-028 |Adrea      |Kingston                 |
|606 |682        |52343-028 |Mignonne   |Baszniak                 |
|607 |74         |52343-028 |Ofelia     |Schimank                 |
|608 |400        |52343-028 |Nelli      |Shoppee                  |
|609 |364        |52343-028 |Ermin      |Davidow                  |
|610 |134        |52343-028 |Jorge      |Korous                   |
|611 |844        |52343-028 |Norris     |Osbiston                 |
|612 |432        |52343-028 |Hestia     |Barlace                  |
|613 |51         |52343-028 |Joshia     |Emes                     |
|614 |985        |52343-028 |Hollis     |Meert                    |
|615 |138        |52343-028 |Bertie     |MacCarter                |
|616 |941        |52343-028 |Sherlock   |Balcombe                 |
|617 |233        |52343-028 |Bernadine  |Fomichkin                |
|618 |54         |52343-028 |Dalston    |Corkish                  |
|619 |413        |52343-028 |Julianna   |Gecke                    |
|620 |769        |52343-028 |Valentijn  |Gatchel                  |
|621 |951        |52343-028 |Ellie      |Emlin                    |
|622 |937        |52343-028 |Dewitt     |Matteoli                 |
|623 |453        |52343-028 |Hobard     |Lissandre                |
|624 |957        |52343-028 |Shirleen   |Rollings                 |
|625 |785        |52343-028 |Richie     |Cackett                  |
|626 |836        |52343-028 |Merv       |Pratton                  |
|627 |142        |52343-028 |Tomasine   |Besemer                  |
|628 |296        |52343-028 |Margaret   |Ramalho                  |
|629 |842        |52343-028 |Sylas      |Kubasiewicz              |
|630 |370        |52343-028 |Meghann    |Dougary                  |
|631 |183        |52343-028 |Torrence   |Kimble                   |
|632 |180        |52343-028 |Talyah     |Laboune                  |
|633 |260        |52343-028 |Creigh     |Stroder                  |
|634 |558        |52343-028 |Kai        |Fenney                   |
|635 |209        |52343-028 |Hortense   |Tomisch                  |
|636 |153        |52343-028 |Keary      |Yelden                   |
|637 |831        |52343-028 |Wilow      |Nancarrow                |
|638 |438        |52343-028 |Issiah     |Bussetti                 |
|639 |341        |52380-1865|Hersch     |Blader                   |
|640 |361        |52380-1865|Maxy       |Udden                    |
|641 |359        |52380-1865|Waylan     |Threadgall               |
|642 |716        |52380-1865|Dione      |Spoors                   |
|643 |487        |52380-1865|Charlotta  |Padbery                  |
|644 |786        |52380-1865|Cliff      |Harle                    |
|645 |572        |52380-1865|Dodi       |Kingham                  |
|646 |325        |52380-1865|Rustie     |Haggie                   |
|647 |895        |52380-1865|Lorinda    |Le land                  |
|648 |92         |52380-1865|Kimball    |House                    |
|649 |6          |52380-1865|Lisle      |Carlsson                 |
|650 |507        |52380-1865|Benjie     |Walentynowicz            |
|651 |225        |52380-1865|Merrily    |Lidell                   |
|652 |415        |52380-1865|Nannie     |Wandrach                 |
|653 |417        |52380-1865|Odella     |Grenshiels               |
|654 |774        |52380-1865|Matthus    |Greedier                 |
|655 |98         |52380-1865|Nicolas    |Croxley                  |
|656 |300        |52380-1865|Matilda    |Colquhoun                |
|657 |544        |52380-1865|Massimo    |Blaine                   |
|658 |773        |52380-1865|Hailee     |Nemchinov                |
|659 |448        |52380-1865|Wynn       |Lambert                  |
|660 |417        |52380-1865|Odella     |Grenshiels               |
|661 |134        |52380-1865|Jorge      |Korous                   |
|662 |813        |52380-1865|Michal     |Trengrouse               |
|663 |774        |52380-1865|Matthus    |Greedier                 |
|664 |379        |52380-1865|Galven     |Roblin                   |
|665 |891        |52380-1865|Rebecca    |Simecek                  |
|666 |252        |52380-1865|Ilario     |Jedrasik                 |
|667 |144        |52380-1865|Madella    |Escalero                 |
|668 |802        |52380-1865|Willow     |Swaisland                |
|669 |204        |52380-1865|Irita      |Laurie                   |
|670 |485        |52380-1865|Eugenius   |Fourman                  |
|671 |123        |52380-1865|Sylvan     |Bagworth                 |
|672 |381        |52380-1865|Wit        |Heis                     |
|673 |607        |52380-1865|Grazia     |Hordell                  |
|674 |196        |52380-1865|Thedrick   |Scard                    |
|675 |91         |52380-1865|Philippine |Artist                   |
|676 |599        |52380-1865|Bondy      |Burditt                  |
|677 |94         |52380-1865|Nannie     |Lamberth                 |
|678 |223        |52380-1865|Neale      |O'Breen                  |
|679 |229        |52380-1865|Yoshiko    |Stenners                 |
|680 |31         |52380-1865|Dorian     |Proudley                 |
|681 |646        |52380-1865|Franciska  |McClosh                  |
|682 |812        |52380-1865|Frederique |Pogue                    |
|683 |525        |52380-1865|Annis      |Noakes                   |
|684 |128        |52380-1865|Lonnie     |Prickett                 |
|685 |678        |52380-1865|Gilemette  |Sinnat                   |
|686 |631        |52380-1865|Myer       |Dyment                   |
|687 |397        |52380-1865|Nalani     |Petworth                 |
|688 |401        |52380-1865|Colver     |Dubery                   |
|689 |885        |52584-950 |Eric       |Coram                    |
|690 |589        |53808-0713|Coleman    |Friman                   |
|691 |466        |54118-7990|Binnie     |Brownlea                 |
|692 |1000       |54738-903 |Eilis      |Elsip                    |
|693 |92         |54868-2835|Kimball    |House                    |
|694 |807        |54868-3722|Alexandr   |Tidcombe                 |
|695 |56         |54868-4102|Chickie    |McGillicuddy             |
|696 |990        |54868-4478|Margi      |Sinkin                   |
|697 |156        |54868-4536|Goldina    |Fickling                 |
|698 |115        |54868-5575|Lorette    |Pallant                  |
|699 |544        |54868-6192|Massimo    |Blaine                   |
|700 |761        |55111-688 |Arabela    |Rice                     |
|701 |766        |55150-123 |Giacomo    |Itzak                    |
|702 |299        |55154-4250|Cissiee    |Gaine of England         |
|703 |962        |55154-4875|Rodolph    |Lydiatt                  |
|704 |227        |55154-5362|Mireielle  |Liddyard                 |
|705 |747        |55289-611 |Miguelita  |Grimsdyke                |
|706 |468        |55714-2236|Malinde    |Cato                     |
|707 |572        |57520-0609|Dodi       |Kingham                  |
|708 |903        |57664-103 |Frederica  |Duffield                 |
|709 |240        |57955-2561|Milton     |Haselgrove               |
|710 |923        |57955-2561|Rois       |Sherborne                |
|711 |501        |57955-2561|Tyne       |Jerrold                  |
|712 |979        |57955-2561|Eloise     |Wands                    |
|713 |240        |57955-2561|Milton     |Haselgrove               |
|714 |438        |57955-2561|Issiah     |Bussetti                 |
|715 |951        |57955-2561|Ellie      |Emlin                    |
|716 |688        |57955-2561|Dyan       |Pandie                   |
|717 |476        |57955-2561|Helaina    |Sire                     |
|718 |772        |57955-2561|Hansiain   |Porkiss                  |
|719 |539        |57955-2561|Toddy      |Blaise                   |
|720 |88         |58232-0809|Bridget    |Frankis                  |
|721 |279        |58737-108 |Dolli      |Elman                    |
|722 |636        |59228-103 |Jeni       |Nuzzi                    |
|723 |760        |59535-3501|Jordain    |Springtorpe              |
|724 |823        |59779-133 |Kinny      |Wapplington              |
|725 |292        |59779-836 |Chantal    |Boulding                 |
|726 |710        |60258-955 |Bryn       |Le Breton De La Vieuville|
|727 |929        |60429-624 |Orsa       |Angeli                   |
|728 |951        |60429-624 |Ellie      |Emlin                    |
|729 |635        |60429-624 |Giacinta   |Rentilll                 |
|730 |227        |60429-624 |Mireielle  |Liddyard                 |
|731 |568        |60429-624 |Jonah      |Titley                   |
|732 |448        |60429-624 |Wynn       |Lambert                  |
|733 |269        |60429-624 |Hollis     |Godsal                   |
|734 |12         |60429-624 |Crissie    |Cleveley                 |
|735 |795        |60429-624 |Filide     |Forton                   |
|736 |614        |60429-624 |Wiley      |Dragoe                   |
|737 |259        |60429-624 |Trisha     |Brooke                   |
|738 |193        |60429-624 |Claudianus |Dorbin                   |
|739 |779        |60429-624 |Clarita    |Mechi                    |
|740 |679        |60429-624 |Jedediah   |Waddilow                 |
|741 |304        |60505-0133|Penny      |Dargie                   |
|742 |756        |60505-6110|Berenice   |Scolland                 |
|743 |580        |60505-7007|Marietta   |Rupert                   |
|744 |431        |60760-027 |Billie     |Tournay                  |
|745 |255        |60760-073 |Allene     |Baudi                    |
|746 |845        |60760-353 |Dill       |Thunders                 |
|747 |331        |60760-353 |Fabian     |Louisot                  |
|748 |23         |60760-353 |Alleyn     |Cornehl                  |
|749 |503        |60760-353 |Seth       |Drewry                   |
|750 |116        |60760-353 |Nana       |Baumler                  |
|751 |428        |60760-353 |Ferd       |Crayke                   |
|752 |830        |60760-353 |Halli      |Maguire                  |
|753 |740        |60760-353 |Drusy      |Meddings                 |
|754 |36         |60760-353 |Dorian     |Tanswill                 |
|755 |476        |60760-353 |Helaina    |Sire                     |
|756 |51         |60760-353 |Joshia     |Emes                     |
|757 |737        |60760-353 |Correna    |Dudleston                |
|758 |898        |60760-353 |Bernarr    |LaBastida                |
|759 |440        |60760-353 |Paco       |Quene                    |
|760 |383        |60760-353 |Oliviero   |Pull                     |
|761 |446        |60760-353 |Moyna      |Yeatman                  |
|762 |816        |60760-353 |Ardelle    |Summerly                 |
|763 |772        |60760-353 |Hansiain   |Porkiss                  |
|764 |233        |60760-353 |Bernadine  |Fomichkin                |
|765 |976        |60760-353 |Teddy      |Wands                    |
|766 |318        |60760-353 |Britni     |MacCallam                |
|767 |198        |60760-353 |Lavinie    |Pristnor                 |
|768 |898        |60760-353 |Bernarr    |LaBastida                |
|769 |452        |60760-353 |Darby      |Morsom                   |
|770 |173        |60760-353 |Morganne   |Curley                   |
|771 |633        |60760-353 |Wini       |Perello                  |
|772 |732        |60760-353 |Delphinia  |Cumes                    |
|773 |511        |61315-010 |Hayley     |Bygott                   |
|774 |299        |61601-1195|Cissiee    |Gaine of England         |
|775 |193        |61722-169 |Claudianus |Dorbin                   |
|776 |511        |61722-169 |Hayley     |Bygott                   |
|777 |379        |61722-169 |Galven     |Roblin                   |
|778 |627        |61722-169 |Adan       |Bauckham                 |
|779 |936        |61722-169 |Austina    |Melhuish                 |
|780 |25         |61722-169 |Berny      |Bessom                   |
|781 |75         |61722-169 |Daffy      |Atwel                    |
|782 |769        |61722-169 |Valentijn  |Gatchel                  |
|783 |725        |61722-169 |Dennis     |Crucitti                 |
|784 |34         |61722-169 |Guglielmo  |Mendez                   |
|785 |529        |61722-169 |Tremaine   |Landers                  |
|786 |922        |61722-169 |Meggi      |Threadgall               |
|787 |104        |61852-637 |Feliza     |Morston                  |
|788 |435        |61852-637 |Alano      |Tipler                   |
|789 |823        |61852-637 |Kinny      |Wapplington              |
|790 |867        |61852-637 |Ree        |Stubbings                |
|791 |256        |61852-637 |Homerus    |Chitty                   |
|792 |780        |61852-637 |Rheta      |Gascar                   |
|793 |395        |61852-637 |Nickolas   |Gooderridge              |
|794 |418        |61852-637 |Alaric     |Kirkbright               |
|795 |520        |61852-637 |Judah      |Ferrelli                 |
|796 |324        |61852-637 |Brigitta   |Pitkeathly               |
|797 |510        |61852-637 |Roz        |Anglim                   |
|798 |67         |61852-637 |Chris      |Woltering                |
|799 |919        |61852-637 |Hart       |Franey                   |
|800 |155        |61852-637 |Rubina     |Branigan                 |
|801 |309        |61852-637 |Corina     |Piwell                   |
|802 |579        |61852-637 |Sada       |Madle                    |
|803 |519        |61852-637 |Dicky      |Abotson                  |
|804 |270        |61852-637 |Elfrida    |Saunier                  |
|805 |459        |61919-492 |Frederich  |Canton                   |
|806 |805        |62206-4720|Dud        |Exeter                   |
|807 |444        |63347-401 |Mathilde   |Muggach                  |
|808 |747        |63868-969 |Miguelita  |Grimsdyke                |
|809 |277        |64117-297 |Jacquelin  |Crystal                  |
|810 |141        |64117-297 |Hyacinthia |Petz                     |
|811 |2          |64117-297 |Morey      |Bowskill                 |
|812 |578        |64117-297 |Poppy      |Kissick                  |
|813 |784        |64117-297 |Madeleine  |Covely                   |
|814 |693        |64117-297 |Marcellina |Rennebach                |
|815 |256        |64117-297 |Homerus    |Chitty                   |
|816 |608        |64117-297 |Francisco  |Toderini                 |
|817 |722        |64117-297 |Gustavo    |Glede                    |
|818 |286        |64117-297 |Bancroft   |Yakobovicz               |
|819 |684        |64117-297 |Correy     |Yakobovicz               |
|820 |831        |64117-297 |Wilow      |Nancarrow                |
|821 |94         |64117-297 |Nannie     |Lamberth                 |
|822 |677        |64117-297 |Lenka      |Latham                   |
|823 |676        |64117-297 |Stanislaus |Burnes                   |
|824 |398        |64117-297 |Maribelle  |Van Daalen               |
|825 |162        |64239-303 |Corrianne  |Tredinnick               |
|826 |826        |64239-303 |Brooke     |Grumbridge               |
|827 |286        |64239-303 |Bancroft   |Yakobovicz               |
|828 |507        |64239-303 |Benjie     |Walentynowicz            |
|829 |879        |64239-303 |Reena      |Chaplyn                  |
|830 |812        |64239-303 |Frederique |Pogue                    |
|831 |881        |64239-303 |Annie      |Birds                    |
|832 |885        |64239-303 |Eric       |Coram                    |
|833 |471        |64239-303 |Donnamarie |McCandie                 |
|834 |135        |64239-303 |Sylvia     |Stenner                  |
|835 |142        |64239-303 |Tomasine   |Besemer                  |
|836 |208        |64239-303 |Kayne      |Pocklington              |
|837 |747        |64239-303 |Miguelita  |Grimsdyke                |
|838 |765        |64239-303 |Maryellen  |Parkisson                |
|839 |700        |64616-045 |Chrisse    |Killough                 |
|840 |255        |64616-056 |Allene     |Baudi                    |
|841 |424        |64763-099 |Gregoire   |McKernon                 |
|842 |784        |64764-335 |Madeleine  |Covely                   |
|843 |29         |64896-682 |Klara      |Issatt                   |
|844 |558        |65342-1396|Kai        |Fenney                   |
|845 |745        |65841-040 |Hughie     |O'Brian                  |
|846 |785        |65841-637 |Richie     |Cackett                  |
|847 |351        |65923-557 |Conchita   |Catling                  |
|848 |446        |66096-688 |Moyna      |Yeatman                  |
|849 |873        |66288-2225|Marten     |Carefull                 |
|850 |630        |66336-030 |Annadiana  |Yurukhin                 |
|851 |611        |66336-030 |Sadye      |Bostock                  |
|852 |380        |66336-030 |Floris     |Lago                     |
|853 |406        |66336-030 |Brigit     |Hugle                    |
|854 |603        |66336-030 |Hester     |Luby                     |
|855 |45         |66336-030 |Kevin      |Folshom                  |
|856 |544        |66336-030 |Massimo    |Blaine                   |
|857 |421        |66336-030 |Dolly      |Metherell                |
|858 |461        |66336-030 |Ianthe     |Musicka                  |
|859 |412        |66336-030 |Orsa       |Knappitt                 |
|860 |86         |66336-030 |Alano      |Floyd                    |
|861 |813        |66336-030 |Michal     |Trengrouse               |
|862 |83         |66336-030 |Juline     |Castanie                 |
|863 |429        |66336-030 |Barbaraanne|Kersaw                   |
|864 |6          |66336-030 |Lisle      |Carlsson                 |
|865 |769        |66336-030 |Valentijn  |Gatchel                  |
|866 |855        |66336-030 |Sally      |Dudny                    |
|867 |461        |66336-030 |Ianthe     |Musicka                  |
|868 |387        |66336-030 |Marguerite |Corbie                   |
|869 |980        |66336-030 |Garrik     |Jachtym                  |
|870 |289        |66336-030 |Alix       |Jeckell                  |
|871 |270        |66336-030 |Elfrida    |Saunier                  |
|872 |195        |66336-030 |Richy      |Delwater                 |
|873 |516        |66336-030 |Inigo      |Hallatt                  |
|874 |467        |66336-030 |Stanton    |Ingold                   |
|875 |766        |66336-030 |Giacomo    |Itzak                    |
|876 |736        |66336-030 |Sunny      |Erridge                  |
|877 |835        |66336-030 |Courtnay   |Harston                  |
|878 |56         |66336-030 |Chickie    |McGillicuddy             |
|879 |389        |66336-030 |Chiarra    |Feldbrin                 |
|880 |396        |66336-030 |Tanney     |Shearme                  |
|881 |726        |66336-030 |Susie      |Widdows                  |
|882 |478        |66336-030 |Farlee     |Josowitz                 |
|883 |101        |66758-160 |Zelma      |Seefus                   |
|884 |77         |66854-001 |Niel       |Sunock                   |
|885 |243        |67046-902 |Elwin      |Lerven                   |
|886 |178        |67457-219 |Lorin      |Polsin                   |
|887 |648        |67457-219 |Bond       |Crookes                  |
|888 |498        |67457-219 |Blancha    |Miko                     |
|889 |791        |67457-219 |Wendy      |Smallthwaite             |
|890 |265        |67457-219 |Adlai      |Veldstra                 |
|891 |346        |67457-219 |Brien      |Poznanski                |
|892 |761        |67457-219 |Arabela    |Rice                     |
|893 |237        |67457-219 |Townie     |Kolyagin                 |
|894 |565        |67457-219 |Hunfredo   |Kurton                   |
|895 |50         |67457-219 |Harp       |McGiffin                 |
|896 |303        |67457-219 |Petrina    |Dowglass                 |
|897 |318        |67457-219 |Britni     |MacCallam                |
|898 |95         |67933-0003|Nathalie   |Abrahamsohn              |
|899 |609        |68016-076 |Kathryn    |Epsly                    |
|900 |763        |68016-318 |Margareta  |McElwee                  |
|901 |871        |68040-706 |Morse      |Culpin                   |
|902 |228        |68040-706 |Leonidas   |Junkinson                |
|903 |236        |68040-706 |Adan       |Berthelmot               |
|904 |126        |68040-706 |Carolann   |Pattini                  |
|905 |720        |68040-706 |Kellen     |Rustich                  |
|906 |728        |68040-706 |Eddi       |Benasik                  |
|907 |880        |68040-706 |Weider     |Brion                    |
|908 |97         |68040-706 |Timmy      |Jumeau                   |
|909 |868        |68040-706 |Brandyn    |Gainfort                 |
|910 |811        |68040-706 |Amelina    |Greenfield               |
|911 |803        |68040-706 |Rena       |Arthurs                  |
|912 |15         |68040-706 |Donaugh    |Chaize                   |
|913 |510        |68040-706 |Roz        |Anglim                   |
|914 |698        |68040-706 |Wrennie    |Godden                   |
|915 |651        |68040-706 |Charmain   |Torre                    |
|916 |285        |68040-706 |Lou        |Martland                 |
|917 |828        |68040-706 |Barty      |Hawkwood                 |
|918 |520        |68040-706 |Judah      |Ferrelli                 |
|919 |756        |68040-706 |Berenice   |Scolland                 |
|920 |474        |68040-706 |Ofilia     |Chestle                  |
|921 |820        |68040-706 |Melodee    |Kilmurry                 |
|922 |955        |68040-706 |Kelley     |Turpin                   |
|923 |663        |68040-706 |Arney      |Sex                      |
|924 |714        |68040-706 |Daloris    |Strass                   |
|925 |545        |68040-706 |Terrell    |Willden                  |
|926 |915        |68040-706 |Haleigh    |Dukelow                  |
|927 |378        |68040-706 |Damita     |Fishburn                 |
|928 |527        |68040-706 |Addie      |Bickley                  |
|929 |544        |68040-706 |Massimo    |Blaine                   |
|930 |377        |68040-706 |Rasla      |Brou                     |
|931 |198        |68040-706 |Lavinie    |Pristnor                 |
|932 |231        |68040-706 |Agnola     |Shutler                  |
|933 |841        |68040-706 |Mason      |Lorentzen                |
|934 |230        |68040-706 |Etheline   |Klehyn                   |
|935 |15         |68040-706 |Donaugh    |Chaize                   |
|936 |155        |68040-706 |Rubina     |Branigan                 |
|937 |668        |68040-706 |Karia      |Lardiner                 |
|938 |55         |68040-706 |Conney     |Yitshak                  |
|939 |528        |68084-603 |Rickie     |Arnaldy                  |
|940 |288        |68151-1610|Skye       |Freear                   |
|941 |412        |68151-1610|Orsa       |Knappitt                 |
|942 |672        |68151-1610|Betsy      |Sueter                   |
|943 |805        |68151-1610|Dud        |Exeter                   |
|944 |594        |68151-1610|Barnett    |Gerrelt                  |
|945 |489        |68151-1610|Corey      |Merryman                 |
|946 |453        |68151-1610|Hobard     |Lissandre                |
|947 |446        |68151-1610|Moyna      |Yeatman                  |
|948 |769        |68151-1610|Valentijn  |Gatchel                  |
|949 |378        |68151-1610|Damita     |Fishburn                 |
|950 |325        |68462-101 |Rustie     |Haggie                   |
|951 |682        |68788-9112|Mignonne   |Baszniak                 |
|952 |651        |68828-100 |Charmain   |Torre                    |
|953 |113        |68850-001 |Agneta     |Viccary                  |
|954 |756        |69128-001 |Berenice   |Scolland                 |
|955 |122        |69128-001 |Gustie     |Gryglewski               |
|956 |826        |69128-001 |Brooke     |Grumbridge               |
|957 |260        |69128-001 |Creigh     |Stroder                  |
|958 |788        |69128-001 |Tommi      |Curle                    |
|959 |948        |69128-001 |Brett      |Duce                     |
|960 |678        |69128-001 |Gilemette  |Sinnat                   |
|961 |939        |69128-001 |Oneida     |Carnall                  |
|962 |805        |69128-001 |Dud        |Exeter                   |
|963 |866        |69128-001 |Diahann    |Wisam                    |
|964 |987        |69128-001 |Chaim      |Aloshikin                |
|965 |706        |69128-001 |Darrick    |Puddifer                 |
|966 |499        |69128-001 |Margarethe |Barden                   |
|967 |261        |69128-001 |Kimmi      |Yeude                    |
|968 |509        |69128-001 |Shurlocke  |Pyford                   |
|969 |163        |69128-001 |Jeanie     |Gull                     |
|970 |563        |69128-001 |Bette      |Penvarden                |
|971 |248        |69128-001 |Noel       |Betteridge               |
|972 |608        |69128-001 |Francisco  |Toderini                 |
|973 |683        |69128-001 |Cortney    |Tremelling               |
|974 |338        |69128-001 |Albina     |Boyland                  |
|975 |370        |69128-001 |Meghann    |Dougary                  |
|976 |912        |69128-001 |Mano       |Petrulis                 |
|977 |697        |69128-001 |Jere       |Andreoletti              |
|978 |128        |69128-001 |Lonnie     |Prickett                 |
|979 |904        |69128-001 |Bernette   |Watmore                  |
|980 |238        |69128-001 |Berty      |Walkden                  |
|981 |51         |69128-001 |Joshia     |Emes                     |
|982 |85         |69128-001 |Tabbie     |Claybourn                |
|983 |573        |69128-001 |Stanley    |Drynan                   |
|984 |895        |69128-001 |Lorinda    |Le land                  |
|985 |994        |69128-001 |Raynor     |Minihan                  |
|986 |104        |69128-001 |Feliza     |Morston                  |
|987 |797        |69128-001 |Claude     |Shortin                  |
|988 |112        |69128-001 |Flinn      |Fitzharris               |
|989 |344        |69128-001 |Sonnie     |Kewley                   |
|990 |584        |69128-001 |Kylila     |MacNeilly                |
|991 |393        |69128-001 |Andree     |Shill                    |
|992 |463        |69128-001 |Egan       |Gobeaux                  |
|993 |946        |69128-001 |Felisha    |Heales                   |
|994 |529        |69128-001 |Tremaine   |Landers                  |
|995 |680        |69128-001 |Arlana     |Merioth                  |
|996 |675        |69128-001 |Myca       |Joao                     |
|997 |761        |69128-001 |Arabela    |Rice                     |
|998 |686        |69128-001 |Toddy      |Gill                     |
|999 |986        |76119-1446|Ki         |Tudgay                   |
|1000|784        |76254-4001|Madeleine  |Covely                   |

</p>
</details>

---

- ¿Cuál es el nombre de los artículos que se han vendido?

```sql
# Respuesta
SELECT DISTINCT a.nombre
FROM venta v
JOIN articulo a
  ON a.id_articulo = v.id_articulo;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-02.png">
  </a>
</p>
</details>

|#  |nombre                             |
|---|-----------------------------------|
|1  |Pasta - Angel Hair                 |
|2  |Soup Campbells - Tomato Bisque     |
|3  |Wine - Valpolicella Masi           |
|4  |Wine - Fontanafredda Barolo        |
|5  |Wine - Vovray Sec Domaine Huet     |
|6  |Cake - Pancake                     |
|7  |Chocolate Liqueur - Godet White    |
|8  |Appetizer - Southwestern           |
|9  |Jolt Cola                          |
|10 |Sole - Fillet                      |
|11 |Tray - 16in Rnd Blk                |
|12 |Wine - Chardonnay South            |
|13 |Nut - Almond, Blanched, Ground     |
|14 |Okra                               |
|15 |Cheese - Montery Jack              |
|16 |Coffee - Frthy Coffee Crisp        |
|17 |Mountain Dew                       |
|18 |Beans - Green                      |
|19 |Puree - Guava                      |
|20 |Wine - Casablanca Valley           |
|21 |Sun - Dried Tomatoes               |
|22 |Coffee - French Vanilla Frothy     |
|23 |Hipnotiq Liquor                    |
|24 |Beer - Alexander Kieths, Pale Ale  |
|25 |Energy - Boo - Koo                 |
|26 |Pepper - Cayenne                   |
|27 |Red Cod Fillets - 225g             |
|28 |Soup - French Onion                |
|29 |Crush - Orange, 355ml              |
|30 |Apple - Granny Smith               |
|31 |Foil - 4oz Custard Cup             |
|32 |Bread - 10 Grain Parisian          |
|33 |Wine - White, Schroder And Schyl   |
|34 |Irish Cream - Baileys              |
|35 |Lettuce - Sea / Sea Asparagus      |
|36 |The Pop Shoppe - Cream Soda        |
|37 |Brocolinni - Gaylan, Chinese       |
|38 |Dates                              |
|39 |Beer - Sleemans Honey Brown        |
|40 |Pasta - Shells, Medium, Dry        |
|41 |Amaretto                           |
|42 |Wine - Red, Cabernet Sauvignon     |
|43 |Quinoa                             |
|44 |Tuna - Yellowfin                   |
|45 |Lamb - Whole Head Off              |
|46 |Squash - Acorn                     |
|47 |Beets - Candy Cane, Organic        |
|48 |Sandwich Wrap                      |
|49 |Green Scrubbie Pad H.duty          |
|50 |Assorted Desserts                  |
|51 |Juice - Prune                      |
|52 |Nestea - Iced Tea                  |
|53 |Cake - Cake Sheet Macaroon         |
|54 |Lobster - Canned Premium           |
|55 |Huck Towels White                  |
|56 |Juice - Grape, White               |
|57 |Turkey - Breast, Boneless Sk On    |
|58 |Soup Campbells                     |
|59 |Pork - Suckling Pig                |
|60 |French Kiss Vanilla                |
|61 |Fish - Halibut, Cold Smoked        |
|62 |Evaporated Milk - Skim             |
|63 |Kiwano                             |
|64 |Papayas                            |
|65 |Shrimp - Black Tiger 26/30         |
|66 |Chicken - White Meat, No Tender    |
|67 |Vinegar - Raspberry                |
|68 |Appetizer - Cheese Bites           |
|69 |Madeira                            |
|70 |Chocolate Bar - Oh Henry           |
|71 |Wine - Maipo Valle Cabernet        |
|72 |Napkin - Beverge, White 2 - Ply    |
|73 |Carroway Seed                      |
|74 |Appetiser - Bought                 |
|75 |Crab - Soft Shell                  |
|76 |Beef - Tenderloin - Aa             |
|77 |Wine - Niagara,vqa Reisling        |
|78 |Sea Urchin                         |
|79 |Sauce - Cranberry                  |
|80 |Corn Meal                          |
|81 |Stock - Fish                       |
|82 |Sauce - Roasted Red Pepper         |
|83 |Chicken - Whole                    |
|84 |Bread - Crusty Italian Poly        |
|85 |Chips Potato All Dressed - 43g     |
|86 |Tart Shells - Savory, 3            |
|87 |Clams - Littleneck, Whole          |
|88 |Mix - Cocktail Strawberry Daiquiri |
|89 |Sponge Cake Mix - Vanilla          |
|90 |Cheese - Woolwich Goat, Log        |
|91 |Bouillion - Fish                   |
|92 |Yogurt - French Vanilla            |
|93 |Danishes - Mini Raspberry          |
|94 |Pork - Bacon Cooked Slcd           |
|95 |Rabbit - Saddles                   |
|96 |Bagel - Everything Presliced       |
|97 |Lid - 3oz Med Rec                  |
|98 |Food Colouring - Pink              |
|99 |Bread - Multigrain, Loaf           |
|100|Temperature Recording Station      |
|101|Oil - Shortening,liqud, Fry        |
|102|Foil Cont Round                    |
|103|Fruit Mix - Light                  |
|104|Bananas                            |
|105|Red Currants                       |
|106|Nantuket Peach Orange              |
|107|Triple Sec - Mcguinness            |
|108|Juice - Tomato, 48 Oz              |
|109|Wine - Periguita Fonseca           |
|110|Caviar - Salmon                    |
|111|Bread Ww Cluster                   |
|112|Apple - Northern Spy               |
|113|Lamb - Whole, Frozen               |
|114|Chilli Paste, Hot Sambal Oelek     |
|115|Lamb - Racks, Frenched             |
|116|Corn Syrup                         |
|117|Nantucket Apple Juice              |
|118|The Pop Shoppe - Black Cherry      |
|119|Food Colouring - Orange            |
|120|Cilantro / Coriander - Fresh       |
|121|Bread Base - Toscano               |
|122|Lid Tray - 16in Dome               |
|123|Veal - Shank, Pieces               |
|124|Veal - Insides Provini             |
|125|Monkfish Fresh - Skin Off          |
|126|Dry Ice                            |
|127|Laundry - Bag Cloth                |
|128|Pork - Belly Fresh                 |
|129|Wine - Rioja Campo Viejo           |
|130|Sugar - Palm                       |
|131|Syrup - Kahlua Chocolate           |
|132|Wine - Montecillo Rioja Crianza    |
|133|Dehydrated Kelp Kombo              |
|134|Ecolab - Solid Fusion              |
|135|Pasta - Cannelloni, Sheets, Fresh  |
|136|Bagelers - Cinn / Brown            |
|137|Appetizer - Veg Assortment         |
|138|Sauce - Hoisin                     |
|139|Chicken - Ground                   |
|140|Wine - Pinot Noir Mondavi Coastal  |
|141|Sauce Tomato Pouch                 |
|142|Rabbit - Whole                     |
|143|Ecolab - Power Fusion              |
|144|Wine - Red, Gallo, Merlot          |
|145|Soup - Knorr, Ministrone           |
|146|Garam Masala Powder                |
|147|Soup - Chicken And Wild Rice       |
|148|Chocolate - Mi - Amere Semi        |
|149|Tuna - Salad Premix                |
|150|Chocolate - Pistoles, Lactee, Milk |
|151|Fish - Soup Base, Bouillon         |
|152|Egg - Salad Premix                 |
|153|Wine - Rosso Toscano Igt           |
|154|Eel - Smoked                       |
|155|Beans - Yellow                     |
|156|Pork Loin Cutlets                  |
|157|Strawberries - California          |
|158|Sour Puss - Tangerine              |
|159|Salmon - Atlantic, No Skin         |
|160|Liners - Baking Cups               |
|161|Tilapia - Fillets                  |
|162|Cookie Dough - Peanut Butter       |
|163|Cookies - Oreo, 4 Pack             |
|164|Ecolab - Hobart Washarm End Cap    |
|165|Pear - Packum                      |
|166|Tomatoes - Diced, Canned           |
|167|Fib N9 - Prague Powder             |
|168|Cheese - Asiago                    |
|169|Water, Tap                         |
|170|Glass - Wine, Plastic, Clear 5 Oz  |
|171|Lemon Tarts                        |
|172|Banana - Green                     |
|173|Appetizer - Escargot Puff          |
|174|Wine - Sauvignon Blanc Oyster      |
|175|Bag - Clear 7 Lb                   |
|176|Yogurt - Assorted Pack             |
|177|Wine - Rhine Riesling Wolf Blass   |
|178|Apple - Custard                    |
|179|Oil - Truffle, Black               |
|180|Wine - Redchard Merritt            |
|181|Halibut - Fletches                 |
|182|Syrup - Monin - Granny Smith       |
|183|Lime Cordial - Roses               |
|184|Ice Cream - Strawberry             |
|185|Beans - Long, Chinese              |
|186|Bread - Bagels, Plain              |
|187|Wine - Toasted Head                |
|188|Wine - Magnotta - Cab Franc        |
|189|Orange Roughy 6/8 Oz               |
|190|Mustard - Individual Pkg           |
|191|Shrimp - 16 - 20 Cooked, Peeled    |
|192|Pasta - Cappellini, Dry            |
|193|Turnip - Wax                       |
|194|Ezy Change Mophandle               |
|195|Ice Cream - Life Savers            |
|196|Vinegar - Red Wine                 |
|197|Pork - Tenderloin, Frozen          |
|198|Pepsi - Diet, 355 Ml               |
|199|Ice Cream Bar - Oreo Sandwich      |
|200|Oil - Safflower                    |
|201|Phyllo Dough                       |
|202|Yokaline                           |
|203|Nut - Macadamia                    |
|204|Tomato Puree                       |
|205|Sauce - Caesar Dressing            |
|206|Oil - Pumpkinseed                  |
|207|Mushroom - Morels, Dry             |
|208|Creme De Cacao Mcguines            |
|209|Chick Peas - Dried                 |
|210|Flavouring Vanilla Artificial      |
|211|Ginsing - Fresh                    |
|212|Tomato - Peeled Italian Canned     |
|213|Eel Fresh                          |
|214|Wine - Casillero Del Diablo        |
|215|Pate - Peppercorn                  |
|216|Glaze - Clear                      |
|217|Beer - True North Lager            |
|218|Pasta - Penne, Rigate, Dry         |
|219|Spice - Peppercorn Melange         |
|220|Chef Hat 25cm                      |
|221|Vanilla Beans                      |
|222|Cheese - Havarti, Roasted Garlic   |
|223|Ham - Black Forest                 |
|224|Carbonated Water - Strawberry      |
|225|Scotch - Queen Anne                |
|226|Lid Coffeecup 12oz D9542b          |
|227|Saskatoon Berries - Frozen         |
|228|Knife Plastic - White              |
|229|Mousse - Banana Chocolate          |
|230|Cheese - Parmesan Grated           |
|231|Juice - Mango                      |
|232|Soup - French Can Pea              |
|233|Versatainer Nc - 8288              |
|234|Table Cloth 53x53 White            |
|235|Bagel - 12 Grain Preslice          |
|236|Arctic Char - Fresh, Whole         |
|237|Tea - Grapefruit Green Tea         |
|238|Puree - Mocha                      |
|239|Soap - Pine Sol Floor Cleaner      |
|240|Muffin - Bran Ind Wrpd             |
|241|Lobster - Baby, Boiled             |
|242|Chocolate Eclairs                  |
|243|Fondant - Icing                    |
|244|Vinegar - White Wine               |
|245|Wine - Lou Black Shiraz            |
|246|Juice - Lemon                      |
|247|Pasta - Orzo, Dry                  |
|248|Cherries - Frozen                  |
|249|Turnip - Mini                      |
|250|Steampan Lid                       |
|251|Iced Tea Concentrate               |
|252|Baking Powder                      |
|253|Cookie Dough - Chocolate Chip      |
|254|Zucchini - Green                   |
|255|Chocolate Bar - Reese Pieces       |
|256|Lemonade - Pineapple Passion       |
|257|Shark - Loin                       |
|258|Appetizer - Crab And Brie          |
|259|Flounder - Fresh                   |
|260|Table Cloth 54x72 White            |
|261|Wine - Prosecco Valdobienne        |
|262|Pork - Loin, Bone - In             |
|263|Cranberry Foccacia                 |
|264|Cake Circle, Foil, Scallop         |
|265|Wine - Fat Bastard Merlot          |
|266|Coffee Cup 12oz 5342cd             |
|267|Basil - Primerba, Paste            |
|268|Wine - Prem Select Charddonany     |
|269|Trout Rainbow Whole                |
|270|Wine - White, Pelee Island         |
|271|Coffee - 10oz Cup 92961            |
|272|Apricots - Halves                  |
|273|Alize Sunset                       |
|274|Soup - Campbells, Minestrone       |
|275|Pate - Liver                       |
|276|Cinnamon Rolls                     |
|277|Soup Campbells Beef With Veg       |
|278|Cookies - Englishbay Oatmeal       |
|279|Food Colouring - Green             |
|280|Soup - Canadian Pea, Dry Mix       |
|281|Beef - Outside, Round              |
|282|Soup Campbells Mexicali Tortilla   |
|283|Glass Clear 8 Oz                   |
|284|Sherbet - Raspberry                |
|285|Nantucket - Carrot Orange          |
|286|Bar Mix - Lime                     |
|287|Crab Meat Claw Pasteurise          |
|288|Truffle - Peelings                 |
|289|Broom And Brush Rack Black         |
|290|Muffin Batt - Ban Dream Zero       |
|291|Ham - Proscuitto                   |
|292|Wine - White, Riesling, Henry Of   |
|293|Table Cloth 54x54 White            |
|294|Allspice - Jamaican                |
|295|Devonshire Cream                   |
|296|Sauce - Salsa                      |
|297|Banana                             |
|298|Wine - Cotes Du Rhone              |
|299|Butter Sweet                       |
|300|Milk 2% 500 Ml                     |
|301|Oil - Olive, Extra Virgin          |
|302|Langers - Ruby Red Grapfruit       |
|303|Curry Powder                       |
|304|Pork - Bones                       |
|305|Doilies - 5, Paper                 |
|306|Ham - Procutinni                   |
|307|Mix Pina Colada                    |
|308|Wine - Vidal Icewine Magnotta      |
|309|Mushroom - Shitake, Fresh          |
|310|Mortadella                         |
|311|Gooseberry                         |
|312|Jameson Irish Whiskey              |
|313|Veal - Provimi Inside              |
|314|Bok Choy - Baby                    |
|315|Wine - Pinot Noir Latour           |
|316|Artichoke - Hearts, Canned         |
|317|Rum - White, Gg White              |
|318|Tea - Herbal Sweet Dreams          |
|319|Soup Campbells - Italian Wedding   |
|320|External Supplier                  |
|321|Bread - White, Unsliced            |
|322|Flour - Strong Pizza               |
|323|Wine - Mondavi Coastal Private     |
|324|Beans - Navy, Dry                  |
|325|Pheasants - Whole                  |
|326|Vinegar - Sherry                   |
|327|Sunflower Seed Raw                 |
|328|Wine - Red, Lurton Merlot De       |
|329|Flour - Cake                       |
|330|Oranges - Navel, 72                |
|331|Petit Baguette                     |
|332|Wine - Cousino Macul Antiguas      |
|333|Squid - Breaded                    |
|334|Cleaner - Bleach                   |
|335|Rosemary - Dry                     |
|336|Sprouts - Pea                      |
|337|Duck - Breast                      |
|338|Onions - Vidalia                   |
|339|Kaffir Lime Leaves                 |
|340|Petite Baguette                    |
|341|Beer - Corona                      |
|342|Praline Paste                      |
|343|Capon - Breast, Wing On            |
|344|Pastry - Carrot Muffin - Mini      |
|345|Tamarillo                          |
|346|Cheese - Valancey                  |
|347|Lamb - Ground                      |
|348|Tart Shells - Savory, 2            |
|349|Soup - Campbells Chili Veg         |
|350|Pastry - Plain Baked Croissant     |
|351|Gatorade - Xfactor Berry           |
|352|Pears - Anjou                      |
|353|Carbonated Water - Blackberry      |
|354|Amarula Cream                      |
|355|Beans - Kidney, Red Dry            |
|356|Cafe Royale                        |
|357|Muffin Mix - Chocolate Chip        |
|358|Lamb - Leg, Diced                  |
|359|Wine - Red, Mosaic Zweigelt        |
|360|Pork - Smoked Back Bacon           |
|361|Sweet Pea Sprouts                  |
|362|Foam Espresso Cup Plain White      |
|363|Onion Powder                       |
|364|Garlic - Peeled                    |
|365|Wine - White, French Cross         |
|366|Arctic Char - Fillets              |
|367|Carbonated Water - Peach           |
|368|Frangelico                         |
|369|Cheese - Comtomme                  |
|370|Cornstarch                         |
|371|Steel Wool                         |
|372|Juice - Clamato, 341 Ml            |
|373|Asparagus - Mexican                |
|374|Wine - Sake                        |
|375|Flour - Fast / Rapid               |
|376|Wine - Tio Pepe Sherry Fino        |
|377|Vaccum Bag 10x13                   |
|378|Urban Zen Drinks                   |
|379|Soup Knorr Chili With Beans        |
|380|Lettuce - Lolla Rosa               |
|381|Swordfish Loin Portions            |
|382|Coffee - Colombian, Portioned      |
|383|Table Cloth 91x91 Colour           |
|384|Wine - Kwv Chenin Blanc South      |
|385|Dr. Pepper - 355ml                 |
|386|Bread - Bistro White               |
|387|Potatoes - Idaho 80 Count          |
|388|Soup - Base Broth Chix             |
|389|Filter - Coffee                    |
|390|Oil - Shortening - All - Purpose   |
|391|Sugar - Brown, Individual          |
|392|Pork - Caul Fat                    |
|393|Chinese Foods - Chicken            |
|394|Soup - Campbells Mushroom          |
|395|Pork - European Side Bacon         |
|396|Muffin Mix - Banana Nut            |
|397|Rum - Coconut, Malibu              |
|398|Straws - Cocktale                  |
|399|Cheese - Marble                    |
|400|Wine - White, Concha Y Toro        |
|401|Cornflakes                         |
|402|Carbonated Water - Orange          |
|403|Skirt - 29 Foot                    |
|404|Orange - Tangerine                 |
|405|Cactus Pads                        |
|406|Crab - Imitation Flakes            |
|407|Smoked Tongue                      |
|408|Ostrich - Fan Fillet               |
|409|Doilies - 10, Paper                |
|410|Wine - Saint - Bris 2002, Sauv     |
|411|Wine - Ice Wine                    |
|412|Chevril                            |
|413|Parsnip                            |
|414|Tart Shells - Barquettes, Savory   |
|415|Browning Caramel Glace             |
|416|Wine - Sawmill Creek Autumn        |
|417|Beef - Prime Rib Aaa               |
|418|Rhubarb                            |
|419|Cherries - Fresh                   |
|420|Macaroons - Two Bite Choc          |
|421|Oil - Canola                       |
|422|Chocolate - Unsweetened            |
|423|Wine - Zinfandel Rosenblum         |
|424|Bread - White, Sliced              |
|425|Snapple - Mango Maddness           |
|426|Honey - Liquid                     |
|427|Pasta - Bauletti, Chicken White    |
|428|Cheese - Cheddar, Old White        |
|429|Prunes - Pitted                    |
|430|Waffle Stix                        |
|431|Wine - Vouvray Cuvee Domaine       |
|432|Butter Balls Salted                |
|433|Beef - Montreal Smoked Brisket     |
|434|Pickle - Dill                      |
|435|Mushroom - White Button            |
|436|Water - Tonic                      |
|437|Cheese - Shred Cheddar / Mozza     |
|438|Cocoa Powder - Natural             |
|439|Marsala - Sperone, Fine, D.o.c.    |
|440|Sproutsmustard Cress               |
|441|Halibut - Whole, Fresh             |
|442|Apple - Macintosh                  |
|443|Juice - Tomato, 10 Oz              |
|444|Wine - Segura Viudas Aria Brut     |
|445|Puff Pastry - Sheets               |
|446|Longos - Chicken Curried           |
|447|Wine - Red, Pinot Noir, Chateau    |
|448|Nut - Pecan, Pieces                |
|449|Coffee - Beans, Whole              |
|450|Longos - Grilled Chicken With      |
|451|Nut - Chestnuts, Whole             |
|452|Coriander - Seed                   |
|453|Kellogs Special K Cereal           |
|454|Wine - Clavet Saint Emilion        |
|455|Bread Cranberry Foccacia           |
|456|Alize Red Passion                  |
|457|Carrots - Mini, Stem On            |
|458|Wine - Red, Gamay Noir             |
|459|Paper - Brown Paper Mini Cups      |
|460|Spice - Greek 1 Step               |
|461|Oil - Peanut                       |
|462|Soupcontfoam16oz 116con            |
|463|Tomatoes - Orange                  |
|464|Cod - Fillets                      |
|465|Wine - White, Antinore Orvieto     |
|466|Lychee - Canned                    |
|467|Yeast Dry - Fermipan               |
|468|Cocoa Butter                       |
|469|Oregano - Fresh                    |
|470|Bread - Ciabatta Buns              |
|471|Peppercorns - Pink                 |
|472|Veal - Osso Bucco                  |
|473|Pan Grease                         |
|474|Bread - Pain Au Liat X12           |
|475|Bread - Frozen Basket Variety      |
|476|Juice - Orange 1.89l               |
|477|Wooden Mop Handle                  |
|478|Milk - Buttermilk                  |
|479|Squid U5 - Thailand                |
|480|Alize Gold Passion                 |
|481|Wine - Remy Pannier Rose           |
|482|Pasta - Tortellini, Fresh          |
|483|Pastry - Trippleberry Muffin - Mini|
|484|Sage Ground Wiberg                 |
|485|Sponge Cake Mix - Chocolate        |
|486|Water - Aquafina Vitamin           |
|487|Munchies Honey Sweet Trail Mix     |
|488|Sauce - Gravy, Au Jus, Mix         |
|489|Beef Dry Aged Tenderloin Aaa       |
|490|Cheese - Pied De Vents             |
|491|Rolled Oats                        |
|492|Goldschalger                       |
|493|Pail - 4l White, With Handle       |
|494|Pork - Bacon,back Peameal          |
|495|Veal - Tenderloin, Untrimmed       |
|496|Kiwi                               |
|497|Wine - Gato Negro Cabernet         |
|498|Mushroom - Porcini, Dry            |
|499|Apples - Sliced / Wedge            |
|500|Beef - Ox Tail, Frozen             |
|501|Potatoes - Idaho 100 Count         |
|502|Pepper - Orange                    |
|503|Icecream - Dstk Cml And Fdg        |
|504|Wine - Blue Nun Qualitatswein      |
|505|Celery                             |
|506|Piping Jelly - All Colours         |
|507|Parsley Italian - Fresh            |
|508|Coffee Swiss Choc Almond           |
|509|Wine - Dubouef Macon - Villages    |
|510|Wine - Acient Coast Caberne        |
|511|Basil - Fresh                      |
|512|Pur Source                         |
|513|Green Tea Refresher                |
|514|Southern Comfort                   |
|515|Chocolate - Semi Sweet             |
|516|Juice - Apple 284ml                |
|517|Lidsoupcont Rp12dn                 |
|518|Cumin - Ground                     |
|519|Figs                               |
|520|Chocolate - Dark Callets           |
|521|Mace Ground                        |
|522|Gelatine Leaves - Envelopes        |
|523|Fish - Scallops, Cold Smoked       |
|524|Tomatoes - Plum, Canned            |
|525|C - Plus, Orange                   |
|526|Wine - Muscadet Sur Lie            |
|527|Cherries - Maraschino,jar          |
|528|Wine - Bourgogne 2002, La          |
|529|Soup - Campbells, Lentil           |
|530|Cake - Box Window 10x10x2.5        |
|531|Ecolab - Hand Soap Form Antibac    |
|532|Pepper - Gypsy Pepper              |
|533|Tumeric                            |
|534|Whmis - Spray Bottle Trigger       |
|535|Silicone Parch. 16.3x24.3          |
|536|Apple - Royal Gala                 |
|537|Bread - Bistro Sour                |
|538|Hand Towel                         |
|539|Beef - Rib Roast, Capless          |
|540|Wine - Pinot Noir Stoneleigh       |
|541|Port - 74 Brights                  |
|542|Blouse / Shirt / Sweater           |
|543|Ice Cream Bar - Drumstick          |
|544|Bread Crumbs - Japanese Style      |
|545|Lamb - Shoulder, Boneless          |
|546|Marjoram - Dried, Rubbed           |
|547|Croissants Thaw And Serve          |
|548|Juice - Orange, Concentrate        |
|549|Oven Mitt - 13 Inch                |
|550|Sauce - Fish 25 Ozf Bottle         |
|551|Veal - Brisket, Provimi, Bone - In |
|552|Shortbread - Cookie Crumbs         |
|553|Lotus Root                         |
|554|Mushroom - Portebello              |
|555|Cake - Night And Day Choclate      |
|556|Pasta - Detalini, White, Fresh     |
|557|Oil - Olive Bertolli               |
|558|Cheese - Taleggio D.o.p.           |
|559|Pepsi - 600ml                      |

</p>
</details>

---

- ¿Cuál es el total de cada venta?

```sql
# Respuesta
SELECT clave, round(sum(precio), 2) precio
FROM venta v
JOIN articulo a
  ON a.id_articulo = v.id_articulo
GROUP BY clave
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-03.png">
  </a>
</p>
</details>

|#  |clave     |precio   |
|---|----------|---------|
|1  |0002-8149 |38642.55 |
|2  |0008-0833 |862.6    |
|3  |0009-0347 |6879.56  |
|4  |0019-9888 |178.57   |
|5  |0023-9177 |3891.89  |
|6  |0049-0032 |321524.61|
|7  |0065-0396 |5571.99  |
|8  |0067-5080 |1675.53  |
|9  |0067-6122 |87221.89 |
|10 |0069-1001 |5382.4   |
|11 |0074-6633 |2882.74  |
|12 |0075-2915 |2799.84  |
|13 |0078-0326 |1652.68  |
|14 |0078-0446 |1157.42  |
|15 |0093-5270 |2649.26  |
|16 |0164-2189 |2368.52  |
|17 |0179-0069 |2043.1   |
|18 |0228-3661 |3714.37  |
|19 |0268-1431 |6950.39  |
|20 |0496-0748 |6782.88  |
|21 |0555-0702 |6445.34  |
|22 |0591-0462 |4519.93  |
|23 |0703-4014 |4756.63  |
|24 |0904-6237 |5086.21  |
|25 |10348-014 |221.33   |
|26 |10356-565 |1664.29  |
|27 |10631-098 |2113.8   |
|28 |10742-8359|2057.85  |
|29 |10893-450 |5732.81  |
|30 |11344-984 |5592.18  |
|31 |11410-694 |4391.73  |
|32 |11444-001 |2322.02  |
|33 |11673-047 |1649.52  |
|34 |13107-062 |249071.46|
|35 |14209-585 |6647.72  |
|36 |16590-338 |976.44   |
|37 |16714-388 |6268.29  |
|38 |21695-425 |6833.66  |
|39 |21695-571 |1715.5   |
|40 |23359-017 |6712.71  |
|41 |24385-170 |6304.12  |
|42 |24385-599 |6105.24  |
|43 |29336-303 |1317.05  |
|44 |33261-648 |6445.34  |
|45 |33261-748 |3576.06  |
|46 |33261-947 |1604.5   |
|47 |33992-0620|85.35    |
|48 |34645-3026|4970.03  |
|49 |36800-580 |4028.45  |
|50 |36987-1911|86088.83 |
|51 |36987-2064|4765.53  |
|52 |36987-2096|82387.19 |
|53 |36987-2178|4363.84  |
|54 |36987-2401|6227.64  |
|55 |36987-2411|6942.36  |
|56 |36987-2663|4781.1   |
|57 |36987-3372|1842.39  |
|58 |41163-411 |2983.28  |
|59 |41520-474 |665.36   |
|60 |42291-611 |6641.3   |
|61 |42794-019 |406.78   |
|62 |43063-059 |5821.79  |
|63 |43353-788 |2245.34  |
|64 |43405-007 |3360.3   |
|65 |43406-0027|6785.88  |
|66 |44019-211 |6631.4   |
|67 |47335-894 |223650.32|
|68 |47593-406 |2887.92  |
|69 |47682-146 |124106.79|
|70 |48951-2016|4314.54  |
|71 |48951-5065|43347.16 |
|72 |49288-0411|4835.74  |
|73 |49288-0901|5341.84  |
|74 |49348-799 |5512.26  |
|75 |49348-854 |831.2    |
|76 |49981-007 |4850.89  |
|77 |49999-136 |596.16   |
|78 |50114-8550|814.7    |
|79 |50390-000 |5199.73  |
|80 |50419-483 |6339.63  |
|81 |50474-803 |3860.12  |
|82 |51079-204 |6478.49  |
|83 |51079-812 |846.33   |
|84 |51079-992 |6790.63  |
|85 |51345-067 |6650.49  |
|86 |51346-016 |1483.54  |
|87 |51346-041 |1710.06  |
|88 |51655-951 |190821.21|
|89 |52125-277 |340582.65|
|90 |52125-332 |770.87   |
|91 |52125-348 |1638.8   |
|92 |52125-416 |686.71   |
|93 |52257-1230|4815.44  |
|94 |52343-028 |150970.75|
|95 |52380-1865|162361.13|
|96 |52584-950 |6843.88  |
|97 |53808-0713|4985.34  |
|98 |54118-7990|1450.84  |
|99 |54738-903 |5242.11  |
|100|54868-2835|325.36   |
|101|54868-3722|6160.58  |
|102|54868-4102|4410.58  |
|103|54868-4478|4996.52  |
|104|54868-4536|3438.94  |
|105|54868-5575|831.2    |
|106|54868-6192|4452.33  |
|107|55111-688 |699.42   |
|108|55150-123 |3270.65  |
|109|55154-4250|5401.12  |
|110|55154-4875|3659.21  |
|111|55154-5362|1437.98  |
|112|55289-611 |4765.53  |
|113|55714-2236|950.76   |
|114|57520-0609|3971.74  |
|115|57664-103 |3360.3   |
|116|57955-2561|45145.35 |
|117|58232-0809|498.36   |
|118|58737-108 |11.19    |
|119|59228-103 |2347.9   |
|120|59535-3501|6631.4   |
|121|59779-133 |6377.81  |
|122|59779-836 |3010.92  |
|123|60258-955 |5065.92  |
|124|60429-624 |31223.41 |
|125|60505-0133|1035.18  |
|126|60505-6110|4542.88  |
|127|60505-7007|1852.9   |
|128|60760-027 |4066.98  |
|129|60760-073 |686.71   |
|130|60760-353 |104536.46|
|131|61315-010 |1901.13  |
|132|61601-1195|76.6     |
|133|61722-169 |44424.62 |
|134|61852-637 |61210.88 |
|135|61919-492 |5854.47  |
|136|62206-4720|4274.11  |
|137|63347-401 |2892.02  |
|138|63868-969 |2115.44  |
|139|64117-297 |57863.85 |
|140|64239-303 |46376.46 |
|141|64616-045 |4433.92  |
|142|64616-056 |2418.52  |
|143|64763-099 |5983.27  |
|144|64764-335 |6631.4   |
|145|64896-682 |3576.06  |
|146|65342-1396|4344.77  |
|147|65841-040 |1842.39  |
|148|65841-637 |5953.79  |
|149|65923-557 |976.44   |
|150|66096-688 |2882.74  |
|151|66288-2225|2563.72  |
|152|66336-030 |102351.64|
|153|66758-160 |5540.21  |
|154|66854-001 |806.33   |
|155|67046-902 |5537.33  |
|156|67457-219 |38444.47 |
|157|67933-0003|6029.31  |
|158|68016-076 |6054.58  |
|159|68016-318 |4117.54  |
|160|68040-706 |131078.51|
|161|68084-603 |5758.95  |
|162|68151-1610|32915.63 |
|163|68462-101 |862.6    |
|164|68788-9112|1593.73  |
|165|68828-100 |1638.8   |
|166|68850-001 |4117.54  |
|167|69128-001 |174310.76|
|168|76119-1446|1049.02  |
|169|76254-4001|4213.32  |

</p>
</details>

---
