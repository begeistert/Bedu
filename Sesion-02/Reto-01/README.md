## Reto 1: Agrupamientos y subconsultas

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas.

- ¿Qué artículos incluyen la palabra `Pasta` en su nombre?


```sql
# Respuesta
SELECT *
FROM articulo
WHERE nombre LIKE '%Pasta%';                  
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-01/Captura-01.png">
  </a>
</p>
</details>

|#  |id_articulo|nombre                           |precio |iva    |cantidad|
|---|-----------|---------------------------------|-------|-------|--------|
|1  |2          |Pasta - Angel Hair               |4391.73|959.51 |503     |
|2  |27         |Pasta - Elbows, Macaroni, Dry    |3668.7 |253.66 |392     |
|3  |70         |Pasta - Shells, Medium, Dry      |801.74 |773.8  |206     |
|4  |91         |Pasta - Cheese / Spinach Bauletti|5811.44|619.36 |15      |
|5  |134        |Pasta - Orzo, Dry                |6537.91|1113.99|906     |
|6  |213        |Pasta - Rotini, Colour, Dry      |1830.13|373.98 |309     |
|7  |233        |Pasta - Cannelloni, Sheets, Fresh|2316.37|605.55 |307     |
|8  |327        |Pasta - Cappellini, Dry          |6994.49|766.18 |828     |
|9  |361        |Pasta - Penne, Rigate, Dry       |2222.62|584.88 |276     |
|10 |426        |Pasta - Cappellini, Dry          |2417.66|1088.42|411     |
|11 |431        |Pasta - Orzo, Dry                |806.33 |495.92 |142     |
|12 |570        |Pasta - Penne, Lisce, Dry        |2141.06|809.94 |88      |
|13 |600        |Pasta - Ravioli                  |6504.48|612.67 |15      |
|14 |655        |Pasta - Fettuccine, Dry          |5369.44|314.75 |344     |
|15 |750        |Pasta - Bauletti, Chicken White  |1365.92|786.09 |701     |
|16 |855        |Pasta - Tortellini, Fresh        |708.96 |61.74  |38      |
|17 |994        |Pasta - Detalini, White, Fresh   |6445.34|737.63 |238     |

</p>
</details>

---

- ¿Qué artículos incluyen la palabra `Cannelloni` en su nombre?


```sql
# Respuesta
SELECT *
FROM articulo
WHERE nombre LIKE '%Cannelloni%';                 
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-01/Captura-02.png">
  </a>
</p>
</details>

|#  |id_articulo|nombre                           |precio |iva   |cantidad|
|---|-----------|---------------------------------|-------|------|--------|
|1  |233        |Pasta - Cannelloni, Sheets, Fresh|2316.37|605.55|307     |

</p>
</details>

---

- ¿Qué nombres están separados por un guión (`-`) por ejemplo `Puree - Kiwi`?


```sql
# Respuesta
SELECT *
FROM articulo
WHERE nombre LIKE '% - %';               
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-01/Captura-03.png">
  </a>
</p>
</details>

|#  |id_articulo|nombre                             |precio |iva    |cantidad|
|---|-----------|-----------------------------------|-------|-------|--------|
|1  |1          |Chocolate - Feathers               |2738.93|12.26  |144     |
|2  |2          |Pasta - Angel Hair                 |4391.73|959.51 |503     |
|3  |3          |Soup Campbells - Tomato Bisque     |2991.35|587.59 |604     |
|4  |4          |Wine - Valpolicella Masi           |2625.2 |770.1  |575     |
|5  |5          |Mousse - Banana Chocolate          |3701.62|893.46 |248     |
|6  |6          |Yeast Dry - Fleischman             |923.18 |524.08 |818     |
|7  |7          |Nantucket - Kiwi Berry Cktl.       |5579.47|1012.33|527     |
|8  |8          |Wine - Fontanafredda Barolo        |2684.64|327.16 |682     |
|9  |9          |Lotus Rootlets - Canned            |1996.46|324.72 |636     |
|10 |10         |Wine - Vovray Sec Domaine Huet     |6066.99|890.47 |397     |
|11 |11         |Cake - Pancake                     |5271.11|821.28 |64      |
|12 |12         |Chocolate Liqueur - Godet White    |1616.78|612.63 |929     |
|13 |13         |Appetizer - Southwestern           |1771.99|248.16 |589     |
|14 |14         |Carbonated Water - Cherry          |3808.49|133.03 |914     |
|15 |17         |Flavouring - Orange                |1620.95|64.81  |931     |
|16 |18         |Sole - Fillet                      |321.59 |207.99 |344     |
|17 |19         |Peppercorns - Green                |5812.1 |357.24 |663     |
|18 |20         |Tray - 16in Rnd Blk                |4724.1 |311.89 |893     |
|19 |21         |Wine - Chardonnay South            |866.54 |204.74 |105     |
|20 |22         |Nut - Almond, Blanched, Ground     |4086.49|154.98 |730     |
|21 |23         |Wine - Sake                        |3072   |526.62 |167     |
|22 |25         |Pork - Smoked Back Bacon           |1044.45|716.54 |476     |
|23 |26         |Cheese - Montery Jack              |4433.92|562.54 |141     |
|24 |27         |Pasta - Elbows, Macaroni, Dry      |3668.7 |253.66 |392     |
|25 |28         |Coffee - Frthy Coffee Crisp        |1770.31|860.79 |16      |
|26 |30         |Beans - Green                      |4735.16|451.6  |247     |
|27 |31         |Bagelers - Cinn / Brown            |1201.25|939.77 |210     |
|28 |32         |Puree - Guava                      |3270.65|602.96 |263     |
|29 |33         |Wine - Casablanca Valley           |483.98 |932.08 |186     |
|30 |34         |Sun - Dried Tomatoes               |1716.98|301.25 |778     |
|31 |35         |Coconut - Creamed, Pure            |624.99 |184.65 |869     |
|32 |36         |Coffee - French Vanilla Frothy     |4261.52|1029.47|890     |
|33 |37         |Yogurt - Peach, 175 Gr             |218.65 |680.93 |547     |
|34 |39         |Beer - Alexander Kieths, Pale Ale  |6712.71|299.59 |696     |
|35 |40         |Puree - Kiwi                       |1558.25|484.02 |695     |
|36 |42         |Jam - Raspberry                    |1215.97|36.22  |291     |
|37 |43         |Energy - Boo - Koo                 |6631.4 |881.1  |806     |
|38 |44         |Trueblue - Blueberry Cranberry     |2286.94|1078.52|205     |
|39 |45         |Pepper - Cayenne                   |1166.28|594.94 |609     |
|40 |46         |Red Cod Fillets - 225g             |4970.03|17.19  |983     |
|41 |47         |Artichoke - Hearts, Canned         |6489.99|68.35  |45      |
|42 |48         |Soup - French Onion                |2585.34|891.52 |204     |
|43 |49         |Crush - Orange, 355ml              |6349.73|515.99 |831     |
|44 |50         |Apple - Granny Smith               |6373.67|507.58 |690     |
|45 |51         |Nut - Hazelnut, Whole              |127.13 |452.05 |157     |
|46 |52         |Foil - 4oz Custard Cup             |3958.14|691.62 |315     |
|47 |53         |Bread - 10 Grain Parisian          |4410.58|771.38 |661     |
|48 |54         |Nut - Macadamia                    |4498.54|728.64 |657     |
|49 |55         |Wine - White, Schroder And Schyl   |5343.02|982.17 |764     |
|50 |56         |Irish Cream - Baileys              |5512.26|85.79  |796     |
|51 |57         |Mix - Cocktail Strawberry Daiquiri |1681.16|835.41 |122     |
|52 |59         |Lettuce - Sea / Sea Asparagus      |6514.92|459.74 |850     |
|53 |61         |The Pop Shoppe - Cream Soda        |3818.8 |27.49  |68      |
|54 |63         |Wine - Gewurztraminer Pierre       |4164.17|103.66 |618     |
|55 |64         |Bread - Sour Sticks With Onion     |6281.94|27.2   |90      |
|56 |65         |Brocolinni - Gaylan, Chinese       |3327.51|358.34 |395     |
|57 |68         |Beer - Sleemans Honey Brown        |4566.34|885.95 |125     |
|58 |69         |Pork - Butt, Boneless              |5633.38|130.24 |490     |
|59 |70         |Pasta - Shells, Medium, Dry        |801.74 |773.8  |206     |
|60 |71         |Beef - Striploin Aa                |2769.14|803.92 |252     |
|61 |75         |Cake - Miini Cheesecake Cherry     |968.83 |629.61 |635     |
|62 |76         |Wine - Red, Cabernet Sauvignon     |5255.07|592.1  |310     |
|63 |77         |Artichoke - Bottom, Canned         |2264.04|507.82 |156     |
|64 |79         |Cheese - Parmesan Cubes            |6677.03|982.11 |647     |
|65 |80         |Tuna - Yellowfin                   |2896.36|220.97 |226     |
|66 |81         |Wine - Pinot Noir Mondavi Coastal  |5761.45|1085.62|140     |
|67 |82         |Bacardi Breezer - Strawberry       |737.3  |901.51 |50      |
|68 |83         |Muffin - Banana Nut Individual     |3836.15|695.9  |373     |
|69 |84         |Lamb - Whole Head Off              |804.38 |174.5  |312     |
|70 |85         |Squash - Acorn                     |5836.15|238.48 |77      |
|71 |86         |Beets - Candy Cane, Organic        |2722.76|137.55 |82      |
|72 |87         |Rappini - Andy Boy                 |925.36 |324.02 |549     |
|73 |90         |Sole - Fillet                      |1703.77|515.77 |97      |
|74 |91         |Pasta - Cheese / Spinach Bauletti  |5811.44|619.36 |15      |
|75 |93         |Foil - 4oz Custard Cup             |5732.81|359.46 |59      |
|76 |94         |Juice - Prune                      |5086.21|1005.62|939     |
|77 |95         |Nestea - Iced Tea                  |87.59  |46.49  |327     |
|78 |96         |Cake - Cake Sheet Macaroon         |2908.95|1088.38|69      |
|79 |98         |Lobster - Canned Premium           |1350.1 |597.88 |281     |
|80 |100        |Juice - Grape, White               |4363.84|849.01 |385     |
|81 |101        |Turkey - Breast, Boneless Sk On    |2779.8 |855.62 |762     |
|82 |104        |Pork - Suckling Pig                |2338.12|294.6  |406     |
|83 |106        |Fish - Halibut, Cold Smoked        |1083.53|595.53 |734     |
|84 |107        |Pork - Smoked Back Bacon           |4229.56|294.37 |210     |
|85 |108        |Salmon - Atlantic, No Skin         |3239.53|1098.88|290     |
|86 |109        |Soup - Knorr, Veg / Beef           |6965.66|945.81 |933     |
|87 |110        |Pate - Peppercorn                  |2698.08|651.87 |7       |
|88 |111        |Evaporated Milk - Skim             |2705.85|878.47 |417     |
|89 |114        |Shrimp - Black Tiger 26/30         |6297.66|1040.84|693     |
|90 |115        |Chicken - White Meat, No Tender    |3225.33|3.95   |169     |
|91 |116        |Napkin - Beverge, White 2 - Ply    |5157.55|330.59 |362     |
|92 |117        |Vinegar - Raspberry                |749.62 |610.27 |984     |
|93 |118        |Appetizer - Cheese Bites           |5382.4 |269.23 |67      |
|94 |119        |Wine - Sauvignon Blanc Oyster      |2504.96|697.35 |490     |
|95 |121        |Chocolate Bar - Oh Henry           |5160.28|160.7  |472     |
|96 |122        |Water - Spring Water, 355 Ml       |3646.65|99.61  |566     |
|97 |123        |Wine - Maipo Valle Cabernet        |3949.93|889.75 |679     |
|98 |124        |Napkin - Beverge, White 2 - Ply    |907.38 |511.61 |676     |
|99 |126        |Appetiser - Bought                 |1057.27|810.1  |342     |
|100|127        |Crab - Soft Shell                  |3441.39|829.46 |194     |
|101|129        |Spice - Onion Powder Granulated    |6144.97|521.72 |456     |
|102|130        |Beef - Tenderloin - Aa             |2893.34|976.78 |614     |
|103|131        |Wine - Niagara,vqa Reisling        |1217.96|258.33 |810     |
|104|133        |Sauce - Cranberry                  |5341.84|1042.59|826     |
|105|134        |Pasta - Orzo, Dry                  |6537.91|1113.99|906     |
|106|136        |Stock - Fish                       |6484.54|954.69 |769     |
|107|137        |Snapple - Iced Tea Peach           |1582.51|35.4   |239     |
|108|138        |Sauce - Roasted Red Pepper         |406.78 |468.91 |831     |
|109|139        |Chicken - Whole                    |5904.6 |978.16 |255     |
|110|140        |Bread - Crusty Italian Poly        |4299.93|726.64 |911     |
|111|141        |Chips Potato All Dressed - 43g     |2521.36|71.88  |862     |
|112|142        |Tart Shells - Savory, 3            |2505.11|798.4  |789     |
|113|143        |Clams - Littleneck, Whole          |4117.54|298.67 |643     |
|114|144        |Mix - Cocktail Strawberry Daiquiri |2605.67|967.68 |79      |
|115|145        |Sponge Cake Mix - Vanilla          |2418.52|157.8  |593     |
|116|147        |Wine - Chablis 2003 Champs         |3682.62|107.36 |722     |
|117|148        |Cheese - Woolwich Goat, Log        |6227.8 |270.25 |741     |
|118|149        |Bouillion - Fish                   |4013.83|287.35 |977     |
|119|150        |Yogurt - French Vanilla            |915.09 |571.1  |56      |
|120|151        |Soup - Campbellschix Stew          |1964.86|804.86 |442     |
|121|152        |Danishes - Mini Raspberry          |846.33 |1039.84|695     |
|122|153        |Pork - Bacon Cooked Slcd           |4269.77|345.49 |159     |
|123|154        |Rabbit - Saddles                   |3891.89|739.61 |582     |
|124|155        |Bagel - Everything Presliced       |5546.22|490.06 |603     |
|125|156        |Lid - 3oz Med Rec                  |977.35 |740.88 |734     |
|126|159        |Food Colouring - Pink              |1076.08|118.29 |470     |
|127|160        |Bread - Multigrain, Loaf           |2859.65|102.7  |853     |
|128|161        |The Pop Shoppe - Black Cherry      |4963.53|357.85 |207     |
|129|162        |Lettuce - Spring Mix               |6724.49|310.59 |560     |
|130|163        |Puff Pastry - Slab                 |5893.37|758.78 |613     |
|131|164        |Salmon - Atlantic, No Skin         |1067.53|432.89 |248     |
|132|165        |Gatorade - Lemon Lime              |6662.14|202.32 |753     |
|133|166        |Tea - Honey Green Tea              |781.34 |562.37 |128     |
|134|167        |Juice - Apple, 500 Ml              |1319.43|254.82 |757     |
|135|168        |Beer - Camerons Auburn             |56.31  |453.77 |322     |
|136|171        |Wine - White, Riesling, Henry Of   |1034.92|788.61 |342     |
|137|172        |Oil - Shortening,liqud, Fry        |3838.53|566.07 |674     |
|138|174        |Fruit Mix - Light                  |1076.09|273.09 |43      |
|139|175        |Cheese - Comtomme                  |1783.09|1035.22|406     |
|140|178        |Crab - Claws, 26 - 30              |3000.11|45.93  |46      |
|141|180        |Triple Sec - Mcguinness            |788.19 |397.44 |564     |
|142|181        |Juice - Tomato, 48 Oz              |6615.95|772.88 |719     |
|143|182        |Wine - Periguita Fonseca           |4157.94|690.97 |308     |
|144|183        |Caviar - Salmon                    |1710.06|1039.2 |443     |
|145|186        |Corn Kernels - Frozen              |5956.01|827.52 |995     |
|146|187        |Rum - Spiced, Captain Morgan       |5832.58|793.01 |26      |
|147|188        |Paste - Black Olive                |728.48 |484.89 |402     |
|148|189        |Apple - Northern Spy               |4434.06|931.29 |655     |
|149|190        |Lamb - Whole, Frozen               |5874.42|1104.62|756     |
|150|192        |Lamb - Racks, Frenched             |274.91 |909.48 |15      |
|151|196        |Soup - Campbells, Spinach Crm      |6086.1 |104.87 |296     |
|152|197        |The Pop Shoppe - Black Cherry      |217.94 |885.64 |839     |
|153|199        |Food Colouring - Orange            |2231.57|134.12 |737     |
|154|200        |Cilantro / Coriander - Fresh       |1938.97|83.62  |144     |
|155|202        |Bread Base - Toscano               |6652.01|936.09 |332     |
|156|203        |Soup - Campbells, Butternut        |6851.22|1116.68|861     |
|157|205        |Lid Tray - 16in Dome               |6113.12|1079.53|198     |
|158|206        |Soup - Campbells - Tomato          |2998.92|901.7  |84      |
|159|207        |Veal - Shank, Pieces               |4716.75|1053.93|965     |
|160|208        |Bagelers - Cinn / Brown            |4580.55|324.45 |739     |
|161|211        |Veal - Insides Provini             |6057.94|689.11 |223     |
|162|212        |Monkfish Fresh - Skin Off          |6105.24|316.01 |888     |
|163|213        |Pasta - Rotini, Colour, Dry        |1830.13|373.98 |309     |
|164|214        |Island Oasis - Wildberry           |3236.62|759.8  |64      |
|165|216        |Wine - White, Cooking              |2521.32|412.79 |236     |
|166|218        |Laundry - Bag Cloth                |2028.17|152.02 |639     |
|167|219        |Beer - True North Lager            |6037.02|345.28 |792     |
|168|220        |Ham - Virginia                     |3655.08|346.76 |859     |
|169|221        |Pork - Belly Fresh                 |3399.47|945.65 |853     |
|170|222        |Soup - Canadian Pea, Dry Mix       |3423.56|349.99 |803     |
|171|223        |Wine - Rioja Campo Viejo           |1871.3 |1013.4 |572     |
|172|224        |Shrimp - 150 - 250                 |121.98 |312.05 |662     |
|173|225        |Salmon - Atlantic, Skin On         |1339.52|640.51 |10      |
|174|226        |Sugar - Palm                       |4850.89|182.32 |811     |
|175|227        |Syrup - Kahlua Chocolate           |3590.36|241.78 |371     |
|176|228        |Wine - Hardys Bankside Shiraz      |3525.63|136.95 |884     |
|177|229        |Wine - Montecillo Rioja Crianza    |5537.33|267.09 |390     |
|178|230        |Tomato - Plum With Basil           |1989.07|421.34 |415     |
|179|232        |Ecolab - Solid Fusion              |2445.55|182.66 |100     |
|180|233        |Pasta - Cannelloni, Sheets, Fresh  |2316.37|605.55 |307     |
|181|234        |Bagelers - Cinn / Brown            |1133.63|644.15 |880     |
|182|235        |Appetizer - Veg Assortment         |5885.38|775.9  |137     |
|183|236        |Sauce - Hoisin                     |6608.75|134.98 |424     |
|184|237        |Bread - Burger                     |6451.41|691.61 |879     |
|185|238        |Chicken - Ground                   |493.1  |389.12 |509     |
|186|240        |Lettuce - Spring Mix               |4806.39|1077.76|652     |
|187|242        |Wine - Pinot Noir Mondavi Coastal  |3720.84|70.6   |948     |
|188|244        |Rabbit - Whole                     |343.87 |916.28 |946     |
|189|245        |Ecolab - Power Fusion              |3051.29|674.61 |815     |
|190|246        |Wine - Red, Gallo, Merlot          |645.52 |726.18 |502     |
|191|247        |Soup - Knorr, Ministrone           |5280.76|119.84 |611     |
|192|248        |Squid U5 - Thailand                |6770.56|678.53 |970     |
|193|249        |Squash - Pattypan, Yellow          |3211.61|89.87  |467     |
|194|250        |Pork - Belly Fresh                 |2422.48|430.51 |346     |
|195|252        |Juice - Clam, 46 Oz                |870.78 |715.08 |786     |
|196|253        |Sole - Iqf                         |6887.94|605.2  |692     |
|197|254        |Soup - Chicken And Wild Rice       |2560.5 |391.27 |339     |
|198|255        |Wine - White, Ej Gallo             |851.43 |11.43  |458     |
|199|256        |Chocolate - Mi - Amere Semi        |2164.16|1082.15|349     |
|200|257        |Tuna - Salad Premix                |1469.36|520.13 |841     |
|201|258        |Chocolate - Pistoles, Lactee, Milk |1525.47|188.5  |270     |
|202|259        |Fish - Soup Base, Bouillon         |6029.31|206.9  |927     |
|203|260        |Bread - Frozen Basket Variety      |882.62 |661.9  |301     |
|204|261        |Egg - Salad Premix                 |309.46 |14.14  |155     |
|205|263        |Wine - Rosso Toscano Igt           |1639.7 |977.03 |334     |
|206|264        |Eel - Smoked                       |5592.18|1015.56|302     |
|207|265        |Wine - Pinot Noir Stoneleigh       |3162.4 |834.08 |963     |
|208|266        |Tea - Lemon Scented                |6039.98|930.92 |169     |
|209|267        |Beans - Yellow                     |950.36 |431.05 |332     |
|210|269        |Muffin Batt - Carrot Spice         |6472.56|616.44 |192     |
|211|270        |Lettuce - Spring Mix               |6738.97|1052.68|987     |
|212|271        |Strawberries - California          |3620.47|705.58 |173     |
|213|272        |Sour Puss - Tangerine              |2344.8 |1094.88|177     |
|214|273        |Wine - Saint - Bris 2002, Sauv     |5063.51|253.85 |380     |
|215|274        |Salmon - Atlantic, No Skin         |5993.02|1110.18|108     |
|216|276        |Liners - Baking Cups               |5918.36|1092.06|61      |
|217|277        |Tilapia - Fillets                  |915.29 |49.95  |237     |
|218|278        |Oil - Grapeseed Oil                |914.16 |916.01 |247     |
|219|279        |Cookie Dough - Peanut Butter       |2347.9 |341.31 |130     |
|220|280        |Cookies - Oreo, 4 Pack             |1664.29|877.97 |62      |
|221|281        |Ecolab - Hobart Washarm End Cap    |1649.52|855.14 |891     |
|222|282        |Pear - Packum                      |5821.79|602.07 |334     |
|223|283        |Tomatoes - Diced, Canned           |3800.76|351.8  |286     |
|224|284        |Fib N9 - Prague Powder             |6519.46|856.01 |878     |
|225|285        |Juice - Apple, 1.36l               |4056.56|921.17 |961     |
|226|286        |Cheese - Asiago                    |1648.7 |618.62 |300     |
|227|287        |Rabbit - Frozen                    |3735.19|1105.2 |544     |
|228|288        |Chinese Foods - Chicken Wing       |3260.48|360.3  |32      |
|229|290        |Glass - Wine, Plastic, Clear 5 Oz  |6677.44|551.02 |685     |
|230|292        |Banana - Green                     |2408   |222.23 |130     |
|231|293        |Appetizer - Escargot Puff          |905.53 |310.67 |615     |
|232|294        |Bread - Flat Bread                 |5991.35|480.74 |120     |
|233|295        |Wine - Sauvignon Blanc Oyster      |2356.66|527.25 |85      |
|234|296        |Cake - Cake Sheet Macaroon         |3714.37|153.72 |260     |
|235|297        |Bag - Clear 7 Lb                   |1604.36|517.17 |188     |
|236|299        |Yogurt - Assorted Pack             |1941.55|238.45 |446     |
|237|300        |Wine - Rhine Riesling Wolf Blass   |1791.42|525.77 |432     |
|238|301        |Soup - French Can Pea              |4476.79|349.23 |551     |
|239|302        |Apple - Custard                    |596.16 |289.76 |708     |
|240|303        |Oil - Truffle, Black               |311.28 |355.17 |458     |
|241|304        |Wine - Redchard Merritt            |3010.92|677.35 |124     |
|242|306        |Halibut - Fletches                 |64.16  |506.31 |698     |
|243|307        |Syrup - Monin - Granny Smith       |6160.58|1060.29|797     |
|244|308        |Cheese - Ermite Bleu               |5542.07|855.96 |580     |
|245|309        |Lime Cordial - Roses               |6782.88|717.76 |380     |
|246|310        |Ice Cream - Strawberry             |1638.8 |884.91 |753     |
|247|311        |Beans - Long, Chinese              |1157.42|600.53 |100     |
|248|312        |Bread - Bagels, Plain              |4794.4 |873.07 |851     |
|249|313        |Wine - Toasted Head                |6885.53|171.81 |17      |
|250|314        |Compound - Strawberry              |4549.46|673.59 |66      |
|251|315        |Extract - Rum                      |3266.44|131.29 |397     |
|252|317        |Clams - Canned                     |6445.48|421.18 |291     |
|253|318        |Wine - Magnotta - Cab Franc        |2732.33|7.89   |878     |
|254|320        |Nougat - Paste / Cream             |1840.47|382.42 |700     |
|255|321        |Water - Mineral, Natural           |3069.15|1091.82|420     |
|256|322        |Mustard - Individual Pkg           |1604.5 |66.08  |787     |
|257|323        |Shrimp - 16 - 20 Cooked, Peeled    |178.57 |1045.65|857     |
|258|324        |Beef - Diced                       |1226.55|910.08 |782     |
|259|325        |Lamb - Shanks                      |1828.75|817.57 |849     |
|260|326        |Crab - Soft Shell                  |1593.73|255.16 |315     |
|261|327        |Pasta - Cappellini, Dry            |6994.49|766.18 |828     |
|262|328        |Salmon - Sockeye Raw               |6799.13|1078.97|139     |
|263|329        |Turnip - Wax                       |2057.85|857.53 |757     |
|264|331        |Ice Cream - Life Savers            |3973.5 |699.83 |979     |
|265|332        |Vinegar - Red Wine                 |2983.28|714.24 |983     |
|266|333        |Pork - Tenderloin, Frozen          |5745.23|413.99 |8       |
|267|334        |Pork - Loin, Center Cut            |5524.86|711.3  |171     |
|268|335        |Pepsi - Diet, 355 Ml               |1977.9 |9.77   |224     |
|269|336        |Liqueur - Melon                    |6756.69|184.82 |737     |
|270|337        |Pate - Liver                       |2083.26|267.73 |808     |
|271|338        |Pepper - Red, Finger Hot           |1252.2 |1051.2 |777     |
|272|339        |Ice Cream Bar - Oreo Sandwich      |4037.23|1081.05|119     |
|273|340        |Oil - Safflower                    |6339.63|312.17 |206     |
|274|341        |Pork Loin Bine - In Frenched       |573.75 |767.27 |669     |
|275|344        |Nut - Macadamia                    |6950.39|381.23 |73      |
|276|346        |Sauce - Caesar Dressing            |3770.02|354.28 |708     |
|277|347        |Oil - Pumpkinseed                  |770.87 |35.26  |265     |
|278|348        |Mushroom - Morels, Dry             |3512.66|178.79 |955     |
|279|351        |Chick Peas - Dried                 |6693.85|650.44 |753     |
|280|353        |Ginsing - Fresh                    |6572.71|353.32 |777     |
|281|354        |Tomato - Peeled Italian Canned     |5683.41|848.18 |963     |
|282|356        |Wine - Casillero Del Diablo        |2649.26|323.45 |612     |
|283|357        |Pate - Peppercorn                  |4799.36|309.69 |244     |
|284|358        |Glaze - Clear                      |1219.65|563.89 |957     |
|285|359        |Beer - True North Lager            |2639.51|637.65 |641     |
|286|360        |Scallops - 10/20                   |5522.22|214.08 |397     |
|287|361        |Pasta - Penne, Rigate, Dry         |2222.62|584.88 |276     |
|288|362        |Water - Tonic                      |5530.75|908.41 |202     |
|289|363        |Sugar - White Packet               |1103.97|1036.82|82      |
|290|364        |Beans - Long, Chinese              |5986.37|925.41 |611     |
|291|365        |Spice - Peppercorn Melange         |1450.84|540    |296     |
|292|367        |Longos - Lasagna Veg               |1258.04|898.42 |710     |
|293|368        |Apples - Sliced / Wedge            |6330.41|709.13 |885     |
|294|371        |The Pop Shoppe - Lime Rickey       |6366.47|475.61 |300     |
|295|373        |Cheese - Havarti, Roasted Garlic   |4835.74|814.42 |629     |
|296|374        |Ham - Black Forest                 |4992.25|14.71  |761     |
|297|375        |Wine - Blue Nun Qualitatswein      |6472.02|49.48  |890     |
|298|376        |Carbonated Water - Strawberry      |5386.33|532.55 |80      |
|299|377        |Tomato - Peeled Italian Canned     |864.51 |751.02 |981     |
|300|378        |Tarragon - Fresh                   |2967.52|760.16 |687     |
|301|379        |Wine - Balbach Riverside           |6716.68|708.53 |853     |
|302|380        |Doilies - 10, Paper                |1358.5 |914.82 |843     |
|303|381        |Cinnamon - Ground                  |5517.82|1083.37|395     |
|304|382        |Tea - Decaf 1 Cup                  |717.44 |505.25 |382     |
|305|383        |Scotch - Queen Anne                |3681.24|501.3  |583     |
|306|384        |Lid - 16 Oz And 32 Oz              |3992.2 |146.89 |794     |
|307|386        |Saskatoon Berries - Frozen         |3971.74|159.62 |547     |
|308|387        |Cake - Dulce De Leche              |3002.98|1015.19|89      |
|309|388        |Knife Plastic - White              |3238.53|1046.07|961     |
|310|389        |Pepper - Julienne, Frozen          |4175.99|219.45 |760     |
|311|391        |Mousse - Banana Chocolate          |2527.4 |217.74 |790     |
|312|392        |Wine - Red, Gallo, Merlot          |3796.31|261.68 |593     |
|313|393        |Cheese - Parmesan Grated           |2181.2 |154.01 |379     |
|314|394        |Lettuce - California Mix           |1628.48|1042.27|976     |
|315|396        |Juice - Mango                      |3109.15|689.39 |758     |
|316|397        |Soup - French Can Pea              |796.99 |508.03 |527     |
|317|399        |Versatainer Nc - 8288              |4756.63|755.79 |395     |
|318|401        |Nut - Almond, Blanched, Ground     |3778.92|261.91 |896     |
|319|402        |Onions - Red                       |6282.07|150.38 |829     |
|320|403        |Vinegar - Cider                    |6332.76|202.19 |536     |
|321|405        |Bagel - 12 Grain Preslice          |4609.01|528.68 |677     |
|322|408        |Arctic Char - Fresh, Whole         |1796.55|916.76 |178     |
|323|409        |Tea - Grapefruit Green Tea         |1558.62|1064.53|297     |
|324|410        |Puree - Mocha                      |6382.41|369.09 |327     |
|325|411        |Soap - Pine Sol Floor Cleaner      |1488.22|930.81 |951     |
|326|413        |Muffin - Bran Ind Wrpd             |4519.93|204.02 |952     |
|327|414        |Lobster - Baby, Boiled             |4063.51|9.66   |253     |
|328|415        |Pork - Tenderloin, Frozen          |6700.56|715.88 |941     |
|329|418        |Wine - Magnotta - Cab Franc        |5699.36|1043.6 |822     |
|330|419        |Fondant - Icing                    |1816.67|852.82 |624     |
|331|420        |Vinegar - White Wine               |4542.88|350.91 |597     |
|332|421        |Wine - Lou Black Shiraz            |1537.68|637.5  |368     |
|333|423        |Soup - Base Broth Beef             |6997.58|313.1  |754     |
|334|424        |Wine - Maipo Valle Cabernet        |3873.64|895.28 |912     |
|335|425        |Juice - Lemon                      |2485.2 |219.4  |853     |
|336|426        |Pasta - Cappellini, Dry            |2417.66|1088.42|411     |
|337|428        |Wine - Chateau Aqueria Tavel       |6877.03|795.12 |984     |
|338|429        |Appetizer - Mushroom Tart          |5905.91|1096.8 |310     |
|339|430        |Bacardi Breezer - Tropical         |3948.11|926.98 |304     |
|340|431        |Pasta - Orzo, Dry                  |806.33 |495.92 |142     |
|341|432        |Cherries - Frozen                  |6643   |825.2  |390     |
|342|433        |Turnip - Mini                      |6757.96|755.99 |978     |
|343|435        |Longos - Chicken Curried           |3406   |1075.53|13      |
|344|437        |Trueblue - Blueberry Cranberry     |2282.81|951.55 |214     |
|345|438        |Egg - Salad Premix                 |4344.77|704.44 |328     |
|346|439        |Yogurt - Assorted Pack             |1002.28|77.62  |383     |
|347|441        |Cookie Dough - Chocolate Chip      |1624.5 |1037.85|780     |
|348|442        |Zucchini - Green                   |4655.07|954.41 |547     |
|349|443        |Lettuce - Sea / Sea Asparagus      |3676.66|185.23 |388     |
|350|445        |Beans - Green                      |1982.83|1117.32|859     |
|351|446        |Chocolate Bar - Reese Pieces       |1317.05|882.18 |321     |
|352|447        |Lemonade - Pineapple Passion       |4515.71|469.02 |250     |
|353|448        |Shark - Loin                       |4985.34|218.88 |738     |
|354|450        |Coffee Beans - Chocolate           |2810.13|695.63 |277     |
|355|451        |Basil - Thai                       |5478.22|1098.62|735     |
|356|452        |Appetizer - Crab And Brie          |1135.01|976.44 |43      |
|357|454        |Seedlings - Clamshell              |6275.32|127.36 |718     |
|358|455        |Flounder - Fresh                   |979.57 |843.59 |488     |
|359|457        |Caviar - Salmon                    |3152.97|997.97 |940     |
|360|458        |Wine - Prosecco Valdobienne        |6733.92|604.9  |262     |
|361|459        |Wine - Magnotta - Cab Franc        |1717.52|317.49 |143     |
|362|460        |Tray - Foam, Square 4 - S          |6729.82|244.32 |821     |
|363|461        |Pork - Loin, Bone - In             |3707.33|42.16  |17      |
|364|464        |Squash - Guords                    |6995.99|749.98 |911     |
|365|465        |Wine - Fat Bastard Merlot          |3185.76|1118.04|919     |
|366|466        |Potatoes - Peeled                  |2900.17|357.31 |33      |
|367|469        |Basil - Primerba, Paste            |5262.65|259.49 |583     |
|368|470        |Ecolab - Hand Soap Form Antibac    |922.29 |405.12 |884     |
|369|472        |Beef - Salted                      |3415.05|853.51 |789     |
|370|473        |Ice Cream Bar - Hageen Daz To      |352.99 |457.24 |498     |
|371|474        |Peas - Pigeon, Dry                 |4513.16|455.5  |351     |
|372|475        |Beans - Kidney, Canned             |6883.46|820.81 |577     |
|373|476        |Aspic - Amber                      |4362.51|123.14 |916     |
|374|477        |Bacardi Breezer - Tropical         |698.78 |988.86 |960     |
|375|478        |Nut - Cashews, Whole, Raw          |3500.91|1104.74|182     |
|376|479        |Stock - Beef, White                |5534.89|686.19 |546     |
|377|480        |Wine - Prem Select Charddonany     |4996.52|590.63 |442     |
|378|482        |Wine - White, Pelee Island         |1252.1 |314.02 |978     |
|379|483        |Coffee - 10oz Cup 92961            |1907.33|972.43 |291     |
|380|484        |Bread - Multigrain, Loaf           |699.42 |1079.41|57      |
|381|485        |Apricots - Halves                  |2111.16|629.66 |995     |
|382|487        |Soup - Campbells, Minestrone       |4975.95|177.65 |534     |
|383|488        |Sponge Cake Mix - Chocolate        |4605.77|926.15 |621     |
|384|489        |Pate - Liver                       |1294.78|1009.14|988     |
|385|490        |Cognac - Courvaisier               |2388.49|739.02 |660     |
|386|493        |Artichokes - Knobless, White       |5064.31|922.59 |74      |
|387|495        |Cookies - Englishbay Oatmeal       |6957.64|1072.09|494     |
|388|496        |Food Colouring - Green             |562.81 |143.99 |20      |
|389|498        |Tomato - Peeled Italian Canned     |679.39 |348.55 |568     |
|390|499        |Soup - Canadian Pea, Dry Mix       |5953.79|722.84 |348     |
|391|500        |Beef - Outside, Round              |4314.54|1095.29|556     |
|392|505        |Sherbet - Raspberry                |3563.61|695.71 |222     |
|393|506        |Nantucket - Carrot Orange          |6715.78|985.67 |973     |
|394|507        |Bar Mix - Lime                     |715.21 |693.81 |442     |
|395|508        |Carrots - Jumbo                    |3854.65|238.22 |218     |
|396|510        |Tomato - Peeled Italian Canned     |2329.87|688.07 |212     |
|397|511        |Truffle - Peelings                 |3901.52|602.06 |376     |
|398|512        |Flavouring - Orange                |1702.26|1023.51|41      |
|399|515        |Muffin Batt - Ban Dream Zero       |1361.37|243.91 |976     |
|400|516        |Ham - Proscuitto                   |3357.47|1081.71|395     |
|401|518        |Loaf Pan - 2 Lb, Foil              |3523.9 |603.01 |286     |
|402|519        |Wine - White, Riesling, Henry Of   |6889.2 |22.9   |136     |
|403|521        |Swiss Chard - Red                  |3150.45|27.55  |399     |
|404|523        |Lamb - Whole, Fresh                |5129.73|529.02 |683     |
|405|524        |Allspice - Jamaican                |3100.88|340.8  |189     |
|406|526        |Ice Cream - Strawberry             |1049.02|445.77 |529     |
|407|527        |Sponge Cake Mix - Vanilla          |2387.91|672.28 |443     |
|408|528        |Sauce - Salsa                      |6568.48|163.01 |21      |
|409|529        |Crush - Cream Soda                 |4430   |1038.77|944     |
|410|531        |Wine - Cotes Du Rhone              |2395.08|757.32 |933     |
|411|534        |Oil - Olive, Extra Virgin          |2665.52|515.12 |312     |
|412|535        |Wine - Jafflin Bourgongone         |628.51 |255.7  |911     |
|413|536        |Langers - Ruby Red Grapfruit       |4786.97|646.62 |63      |
|414|537        |Carrots - Jumbo                    |4066.12|262.4  |347     |
|415|539        |Pork - Bones                       |6641.3 |591.68 |90      |
|416|540        |Doilies - 5, Paper                 |4517.54|326.81 |531     |
|417|541        |Ham - Procutinni                   |5557.11|137.82 |155     |
|418|542        |Veal - Nuckle                      |459.4  |3.32   |457     |
|419|544        |Wine - Vidal Icewine Magnotta      |3860.12|595.83 |722     |
|420|546        |Beans - Kidney White               |566.1  |547.87 |33      |
|421|547        |Mushroom - Shitake, Fresh          |2737.04|292.55 |929     |
|422|548        |Wine - Vineland Estate Semi - Dry  |5066.76|1070.62|277     |
|423|550        |Nestea - Iced Tea                  |2354.39|56.45  |126     |
|424|551        |Muffin Hinge - 211n                |2847.89|808.18 |698     |
|425|555        |Veal - Provimi Inside              |6417.94|765.44 |858     |
|426|556        |Pineapple - Canned, Rings          |1268.45|286.08 |955     |
|427|557        |Bok Choy - Baby                    |2047.62|938.28 |595     |
|428|558        |Lid - 0090 Clear                   |3527.69|445.61 |195     |
|429|560        |Wine - Pinot Noir Latour           |2992.33|899.19 |848     |
|430|561        |Artichoke - Hearts, Canned         |2550.53|1111.56|896     |
|431|562        |Rum - White, Gg White              |4898.08|476.38 |853     |
|432|564        |Tea - Herbal Sweet Dreams          |94.47  |591.66 |156     |
|433|566        |Water - Tonic                      |4147.44|485.7  |488     |
|434|567        |Soup Campbells - Italian Wedding   |3879   |190.9  |148     |
|435|568        |Lime Cordial - Roses               |3178.16|328    |101     |
|436|570        |Pasta - Penne, Lisce, Dry          |2141.06|809.94 |88      |
|437|572        |Bread - White, Unsliced            |2043.1 |356.25 |255     |
|438|573        |Flour - Strong Pizza               |1298.25|610.61 |345     |
|439|574        |Nut - Pine Nuts, Whole             |1902.07|725.66 |748     |
|440|575        |Juice - Mango                      |3572.29|737.5  |137     |
|441|576        |Wine - Mondavi Coastal Private     |6789.63|429.77 |205     |
|442|577        |Beans - Navy, Dry                  |2615.18|883.33 |613     |
|443|578        |Pheasants - Whole                  |6597   |550.62 |103     |
|444|579        |Vinegar - Sherry                   |6294.2 |869.58 |759     |
|445|582        |Beef - Bones, Cut - Up             |3375.95|1078.04|944     |
|446|583        |Wine - Red, Lurton Merlot De       |1675.53|341.5  |355     |
|447|584        |Schnappes - Peach, Walkers         |4484.16|1072.71|661     |
|448|585        |Flour - Cake                       |6170.35|283.04 |834     |
|449|586        |Beans - Kidney, Canned             |6141.72|605.5  |746     |
|450|587        |Oranges - Navel, 72                |1411.94|931.75 |580     |
|451|589        |Wine - Cousino Macul Antiguas      |4274.11|252.18 |480     |
|452|590        |Melon - Honey Dew                  |6935.01|588.25 |336     |
|453|591        |Nantucket - Carrot Orange          |1056.01|70.19  |906     |
|454|592        |Shrimp - Prawn                     |3558.82|769.01 |344     |
|455|593        |Chocolate Bar - Oh Henry           |1301.16|140.78 |987     |
|456|594        |Cheese - Sheep Milk                |744.13 |905.33 |97      |
|457|596        |Squid - Breaded                    |4928.61|7.45   |868     |
|458|597        |Cleaner - Bleach                   |4400.42|714.9  |345     |
|459|598        |Sponge Cake Mix - Vanilla          |4334.86|948.05 |7       |
|460|599        |Rosemary - Dry                     |575.72 |104.58 |306     |
|461|600        |Pasta - Ravioli                    |6504.48|612.67 |15      |
|462|601        |Sprouts - Pea                      |4612.73|114.51 |195     |
|463|602        |Onions - White                     |822.46 |812.05 |444     |
|464|603        |Duck - Breast                      |1930.66|192.15 |965     |
|465|604        |Cheese - Pied De Vents             |2446.32|677.37 |559     |
|466|605        |Wine - Chianti Classico Riserva    |2529.31|375.36 |982     |
|467|606        |Butter - Salted                    |3561.8 |308.07 |627     |
|468|607        |Onions - Vidalia                   |1641.1 |27.51  |332     |
|469|608        |Onions - Spanish                   |5744.93|508.92 |643     |
|470|611        |Beer - Corona                      |6498.83|463.72 |632     |
|471|613        |Capon - Breast, Wing On            |819.7  |744.04 |785     |
|472|614        |Pastry - Carrot Muffin - Mini      |5993.52|1099.38|287     |
|473|617        |Beef - Striploin                   |3212.11|1089.67|356     |
|474|618        |Cheese - Valancey                  |2286.93|998.98 |979     |
|475|619        |Lamb - Ground                      |4238.67|746.24 |71      |
|476|620        |Veal - Leg                         |4620.91|1028.48|134     |
|477|621        |Tart Shells - Savory, 2            |1852.9 |278.1  |539     |
|478|622        |Soup - Campbells Chili Veg         |6198.84|25.7   |338     |
|479|623        |Pastry - Plain Baked Croissant     |3323.46|272.56 |376     |
|480|624        |Pork - Kidney                      |1231.65|611.2  |117     |
|481|625        |Appetizer - Lobster Phyllo Roll    |4722.76|467.67 |412     |
|482|626        |Langers - Ruby Red Grapfruit       |6543.51|262.54 |447     |
|483|627        |Oil - Pumpkinseed                  |6738.56|802.91 |860     |
|484|628        |Gatorade - Xfactor Berry           |3406.45|984.03 |28      |
|485|629        |Beer - True North Lager            |4567.89|342.74 |748     |
|486|630        |Puree - Strawberry                 |3716.03|946.96 |97      |
|487|631        |Pears - Anjou                      |819.83 |541.76 |603     |
|488|632        |Carbonated Water - Blackberry      |6652.19|497.64 |824     |
|489|634        |Beans - Kidney, Red Dry            |6963.07|763.89 |78      |
|490|636        |Muffin Mix - Chocolate Chip        |5065.92|263.64 |876     |
|491|637        |Lamb - Leg, Diced                  |6268.29|96.28  |229     |
|492|638        |Wine - Red, Mosaic Zweigelt        |2312.73|901.13 |998     |
|493|639        |Pork - Smoked Back Bacon           |5443.15|817.44 |370     |
|494|643        |Garlic - Peeled                    |2322.02|888.39 |417     |
|495|644        |Wine - White, French Cross         |4666.37|468.35 |722     |
|496|645        |Arctic Char - Fillets              |6911.68|798.2  |812     |
|497|646        |Carbonated Water - Peach           |5242.11|827.81 |713     |
|498|647        |Beef - Striploin Aa                |825.58 |1052.23|22      |
|499|648        |Ice Cream - Strawberry             |686.71 |584.77 |977     |
|500|650        |Wine - Rosso Del Veronese Igt      |3331.62|150.07 |717     |
|501|653        |Bread - Italian Roll With Herbs    |6298.15|1028.33|674     |
|502|654        |Cheese - Comtomme                  |4150.88|108.84 |178     |
|503|655        |Pasta - Fettuccine, Dry            |5369.44|314.75 |344     |
|504|659        |Juice - Clamato, 341 Ml            |1437.98|359.74 |785     |
|505|663        |Asparagus - Mexican                |5074.45|987.73 |875     |
|506|664        |Wine - Sake                        |897.53 |885.49 |131     |
|507|665        |Flour - Fast / Rapid               |3254.29|709.8  |872     |
|508|666        |Wine - Tio Pepe Sherry Fino        |4039.24|1019.34|425     |
|509|667        |Wine - Peller Estates Late         |5819.54|744.85 |955     |
|510|669        |Juice - Orange                     |3579.87|686.05 |310     |
|511|671        |Pate - Cognac                      |3755.86|545.5  |335     |
|512|672        |Beef - Kobe Striploin              |1802.45|857.98 |396     |
|513|673        |Wine - Red, Lurton Merlot De       |4171.31|188.25 |612     |
|514|674        |Wine - Sake                        |3361.22|21.32  |478     |
|515|676        |Lettuce - Lolla Rosa               |950.76 |220.14 |788     |
|516|678        |Coffee - Colombian, Portioned      |909.11 |585.8  |734     |
|517|681        |Appetizer - Veg Assortment         |1476.42|105.88 |908     |
|518|682        |Cake - Sheet Strawberry            |2536.21|360.37 |946     |
|519|684        |Wine - Kwv Chenin Blanc South      |2107.71|673.58 |616     |
|520|685        |Wine - Chablis 2003 Champs         |5753.32|574.13 |108     |
|521|686        |Tomatoes - Cherry                  |6902.78|118.54 |962     |
|522|688        |Dr. Pepper - 355ml                 |4755.45|176.17 |329     |
|523|689        |Bread - Bistro White               |3860.71|345.08 |70      |
|524|690        |Potatoes - Idaho 80 Count          |577.84 |100.19 |297     |
|525|691        |Soup - Base Broth Chix             |4630.45|508.24 |556     |
|526|693        |Filter - Coffee                    |5816.84|1072.16|462     |
|527|694        |Oil - Shortening - All - Purpose   |989.28 |752.92 |917     |
|528|695        |Sugar - Brown, Individual          |5401.12|823.57 |727     |
|529|696        |Pork - Caul Fat                    |3507.03|67.86  |923     |
|530|697        |Chinese Foods - Chicken            |1477.45|48.78  |382     |
|531|698        |Soup - Campbells Mushroom          |962.82 |43.06  |311     |
|532|699        |Loaf Pan - 2 Lb, Foil              |3395.79|427.63 |806     |
|533|700        |Pork - European Side Bacon         |5052.82|483.19 |322     |
|534|701        |Wine - Pinot Noir Latour           |831.2  |414.69 |18      |
|535|702        |Muffin Mix - Banana Nut            |2882.74|88.82  |490     |
|536|703        |Rum - Coconut, Malibu              |4291.55|133.55 |178     |
|537|704        |Tuna - Canned, Flaked, Light       |2453.77|4.19   |702     |
|538|705        |Straws - Cocktale                  |1903.09|295.61 |302     |
|539|706        |Scotch - Queen Anne                |6533.61|464.95 |415     |
|540|707        |Cheese - Marble                    |4213.32|303.66 |914     |
|541|708        |Clams - Littleneck, Whole          |5859.13|8.83   |969     |
|542|709        |Wine - White, Concha Y Toro        |4911.83|1112.9 |904     |
|543|710        |Lid - 3oz Med Rec                  |2944.39|1013.11|612     |
|544|712        |Carbonated Water - Orange          |3057.65|269.9  |85      |
|545|713        |Tea - Lemon Green Tea              |855.75 |933.25 |409     |
|546|714        |Skirt - 29 Foot                    |3986.71|733.67 |39      |
|547|716        |Orange - Tangerine                 |3644.07|747.74 |340     |
|548|717        |Puree - Pear                       |4718.93|529.86 |678     |
|549|719        |Butter - Salted, Micro             |6282.42|1007.42|205     |
|550|720        |Crab - Imitation Flakes            |6827.4 |906.95 |259     |
|551|722        |Ostrich - Fan Fillet               |1569.73|1009.64|498     |
|552|723        |Cheese - Ermite Bleu               |5402.33|625.88 |505     |
|553|724        |Cranberries - Frozen               |4641.79|89.29  |786     |
|554|725        |Doilies - 10, Paper                |204.43 |133.79 |414     |
|555|726        |Wine - Saint - Bris 2002, Sauv     |3731.51|645.35 |202     |
|556|727        |Cookie Dough - Chunky              |827.19 |160.19 |163     |
|557|728        |Wine - Ice Wine                    |6420.89|345.7  |208     |
|558|731        |Tart Shells - Barquettes, Savory   |6567.32|483.45 |38      |
|559|732        |Pepper - Red Chili                 |3695.51|883.85 |192     |
|560|734        |Wine - Fontanafredda Barolo        |6270.46|858.91 |138     |
|561|736        |Cream - 18%                        |1598.41|200.58 |778     |
|562|737        |Wine - Sawmill Creek Autumn        |6867.06|589.15 |101     |
|563|738        |Aspic - Amber                      |3852.3 |464.04 |709     |
|564|739        |Beef - Prime Rib Aaa               |665.36 |453.24 |875     |
|565|741        |Cherries - Fresh                   |392.8  |607.78 |701     |
|566|742        |Macaroons - Two Bite Choc          |4529.36|889.68 |143     |
|567|743        |Oil - Canola                       |2188.93|870.08 |923     |
|568|744        |Flour - Semolina                   |2021.66|397.65 |768     |
|569|745        |Chocolate - Unsweetened            |1453.97|790.79 |614     |
|570|746        |Wine - Zinfandel Rosenblum         |510.13 |187.64 |344     |
|571|747        |Bread - White, Sliced              |2131.05|523.35 |833     |
|572|748        |Snapple - Mango Maddness           |5758.95|40.01  |546     |
|573|749        |Honey - Liquid                     |2991.27|443.26 |693     |
|574|750        |Pasta - Bauletti, Chicken White    |1365.92|786.09 |701     |
|575|752        |Wine - Red, Concha Y Toro          |6281.32|89.66  |668     |
|576|753        |Onions - Dried, Chopped            |6240.27|81.02  |106     |
|577|754        |Cheese - Gouda                     |310.51 |772.86 |936     |
|578|755        |Cheese - Cheddar, Old White        |1332.6 |427.86 |513     |
|579|756        |Prunes - Pitted                    |5620.56|797.61 |347     |
|580|757        |Macaroons - Homestyle Two Bit      |3171.38|145.54 |172     |
|581|760        |Lotus Rootlets - Canned            |3521.57|194.09 |458     |
|582|761        |Ham - Cooked Bayonne Tinned        |2306.59|75.15  |890     |
|583|762        |Wine - Vouvray Cuvee Domaine       |445.86 |1000.46|696     |
|584|763        |Cake - Mini Potato Pancake         |4424.57|576.69 |370     |
|585|765        |Energy - Boo - Koo                 |95.71  |219.58 |159     |
|586|766        |Tart - Pecan Butter Squares        |2039.06|20.14  |948     |
|587|767        |Beef - Montreal Smoked Brisket     |1864.11|929.22 |482     |
|588|768        |Pickle - Dill                      |6934.12|879.88 |286     |
|589|769        |Onions - White                     |6046.83|14.26  |673     |
|590|770        |Mushroom - White Button            |4851.14|338.37 |543     |
|591|771        |Water - Tonic                      |6833.66|555.21 |621     |
|592|772        |Chinese Foods - Cantonese          |900.59 |944.16 |997     |
|593|774        |Cheese - Shred Cheddar / Mozza     |5721.17|535.03 |382     |
|594|775        |Cocoa Powder - Natural             |4114.62|760.45 |213     |
|595|776        |Vinegar - Raspberry                |5151.41|804.4  |38      |
|596|777        |Marsala - Sperone, Fine, D.o.c.    |941.54 |136.85 |730     |
|597|779        |Iced Tea - Lemon, 340ml            |4139.29|835.52 |937     |
|598|781        |Compound - Raspberry               |1984.91|220.83 |313     |
|599|784        |Halibut - Whole, Fresh             |5466.1 |1100.37|60      |
|600|785        |Apple - Macintosh                  |608.16 |342.3  |58      |
|601|786        |Juice - Tomato, 10 Oz              |5796.79|809.22 |77      |
|602|788        |Turkey - Ground. Lean              |1149.46|576.68 |908     |
|603|789        |Wine - Segura Viudas Aria Brut     |6671.48|1112.2 |107     |
|604|790        |Puff Pastry - Sheets               |76.6   |36.08  |428     |
|605|791        |Longos - Chicken Curried           |142.1  |1004.56|783     |
|606|792        |Wine - Red, Pinot Noir, Chateau    |6003.1 |275.51 |479     |
|607|793        |Salmon Atl.whole 8 - 10 Lb         |3234.36|636.38 |17      |
|608|794        |Sauce - Sesame Thai Dressing       |6594.66|281.52 |49      |
|609|795        |Nut - Pecan, Pieces                |1141.08|410.8  |744     |
|610|797        |Wine - Red, Black Opal Shiraz      |2720.35|740.29 |857     |
|611|798        |Mushroom - Shitake, Fresh          |1306.15|269.19 |133     |
|612|799        |Coffee - Beans, Whole              |4875.12|1063.57|311     |
|613|800        |Longos - Grilled Chicken With      |3796.55|1041.57|927     |
|614|801        |Nut - Chestnuts, Whole             |1616.02|175.19 |499     |
|615|802        |Coriander - Seed                   |5688.43|1049.18|113     |
|616|804        |Wine - Clavet Saint Emilion        |6785.88|1098.98|260     |
|617|807        |Carrots - Mini, Stem On            |4287.54|358.88 |591     |
|618|808        |Wine - Red, Gamay Noir             |3890.31|899.04 |298     |
|619|809        |Paper - Brown Paper Mini Cups      |665.72 |605.56 |50      |
|620|810        |Spice - Greek 1 Step               |2119.18|601.16 |539     |
|621|811        |Rice - Aborio                      |4723.2 |863.66 |341     |
|622|812        |Chocolate - Dark                   |641.45 |997.82 |443     |
|623|813        |Oil - Peanut                       |4807.23|842.89 |565     |
|624|815        |Tomatoes - Orange                  |4452.33|198.79 |487     |
|625|816        |Cod - Fillets                      |4373.79|1025.16|458     |
|626|817        |Bar - Granola Trail Mix Fruit Nut  |1309.01|666.5  |480     |
|627|818        |Tuna - Yellowfin                   |545.42 |935.1  |762     |
|628|819        |Stock - Veal, Brown                |590.81 |249.11 |944     |
|629|820        |Wine - White, Antinore Orvieto     |2873.88|28.14  |375     |
|630|821        |Cheese - Goat                      |1772.21|375.42 |800     |
|631|822        |Lychee - Canned                    |977.35 |363.7  |558     |
|632|823        |Yeast Dry - Fermipan               |325.36 |642.01 |730     |
|633|825        |Oregano - Fresh                    |125.58 |29.5   |228     |
|634|826        |Oil - Canola                       |2536.98|257.89 |50      |
|635|827        |Bread - Ciabatta Buns              |4815.44|1012.39|108     |
|636|828        |Peppercorns - Pink                 |6737.37|802.51 |826     |
|637|829        |Arizona - Plum Green Tea           |6535.99|292.78 |883     |
|638|830        |Veal - Osso Bucco                  |6942.36|209.44 |211     |
|639|831        |Wine - Duboeuf Beaujolais          |1055.57|1115.19|42      |
|640|832        |Wine - Mondavi Coastal Private     |5685.41|856.34 |766     |
|641|834        |Beef - Tenderloin Tails            |621.69 |572.69 |100     |
|642|835        |Bread - Pain Au Liat X12           |1775.98|720.72 |293     |
|643|836        |Chives - Fresh                     |1455.7 |445.58 |110     |
|644|837        |Bread - Frozen Basket Variety      |6650.49|726.16 |736     |
|645|838        |Juice - Orange 1.89l               |4303.58|141.54 |818     |
|646|839        |Quail Eggs - Canned                |532.67 |531.53 |698     |
|647|840        |Salmon - Canned                    |2926.72|268.42 |642     |
|648|841        |Flower - Potmums                   |1170.42|996.82 |721     |
|649|843        |Wine - Segura Viudas Aria Brut     |2908.53|556.04 |249     |
|650|845        |Milk - Buttermilk                  |493.81 |597.78 |351     |
|651|846        |Squid U5 - Thailand                |2437.84|1097.56|553     |
|652|847        |Wine - Sake                        |3214.7 |1043.55|573     |
|653|849        |Cheese - Provolone                 |1181.12|313.42 |329     |
|654|851        |Wine - Touraine Azay - Le - Rideau |80.68  |586.58 |779     |
|655|852        |Juice - Pineapple, 48 Oz           |3853.67|89.55  |668     |
|656|853        |Wine - Remy Pannier Rose           |11.19  |420.29 |212     |
|657|855        |Pasta - Tortellini, Fresh          |708.96 |61.74  |38      |
|658|857        |Chicken - Whole Roasting           |5948.05|679.43 |404     |
|659|858        |Pastry - Trippleberry Muffin - Mini|3679.06|1053.16|387     |
|660|860        |Sponge Cake Mix - Chocolate        |4473.4 |856.42 |536     |
|661|861        |Wine - Vidal Icewine Magnotta      |1483.54|145.82 |735     |
|662|862        |Water - Aquafina Vitamin           |2494.76|963.81 |517     |
|663|863        |Chocolate Bar - Reese Pieces       |6525.53|564.02 |851     |
|664|865        |Coffee - Flavoured                 |5747.37|405.73 |149     |
|665|866        |Sauce - Gravy, Au Jus, Mix         |4897.23|564.95 |129     |
|666|867        |Seedlings - Mix, Organic           |2439.18|148.11 |378     |
|667|869        |Syrup - Kahlua Chocolate           |5402.09|1073.24|580     |
|668|870        |Cheese - Pied De Vents             |6409.5 |205.91 |450     |
|669|871        |Ice Cream Bar - Hageen Daz To      |223.62 |615.09 |754     |
|670|873        |Sugar - Individual Portions        |4822.3 |291.83 |440     |
|671|875        |Orange - Blood                     |4955.37|792.78 |5       |
|672|876        |Garbage Bags - Black               |1326.09|917.73 |816     |
|673|877        |Pail - 4l White, With Handle       |453.31 |846.48 |115     |
|674|878        |Red Cod Fillets - 225g             |4719.08|728.94 |227     |
|675|879        |Cheese - Comtomme                  |5109.37|975.3  |587     |
|676|880        |Juice - V8 Splash                  |4484.5 |112.25 |617     |
|677|881        |Cheese - Cheddar, Old White        |2708.72|925.21 |291     |
|678|882        |Slt - Individual Portions          |4887.9 |15.02  |922     |
|679|884        |Rum - Cream, Amarula               |88.37  |907.2  |509     |
|680|885        |Pork - Bacon,back Peameal          |6536.25|573.8  |540     |
|681|886        |Cookie - Oreo 100x2                |1567.66|83.65  |561     |
|682|887        |Veal - Tenderloin, Untrimmed       |3635.75|255.93 |61      |
|683|888        |Asparagus - Frozen                 |5117.04|646.19 |916     |
|684|889        |Appetizer - Veg Assortment         |5753.84|901.42 |54      |
|685|890        |Beer - Camerons Auburn             |1276.47|212.22 |803     |
|686|891        |Coffee - Decafenated               |2995.4 |887.92 |321     |
|687|892        |Bagelers - Cinn / Brown Sugar      |6267.63|886.87 |882     |
|688|893        |Bread - Flat Bread                 |2308.76|115.28 |970     |
|689|895        |Soup - Cream Of Broccoli, Dry      |4276.86|999.29 |308     |
|690|896        |Cookies - Englishbay Oatmeal       |242.51 |857.76 |690     |
|691|897        |Wine - Gato Negro Cabernet         |3630.29|49.44  |456     |
|692|898        |Mushroom - Porcini, Dry            |5441.92|612.11 |469     |
|693|899        |Beans - Long, Chinese              |3659.21|824.67 |257     |
|694|900        |Apples - Sliced / Wedge            |6110.2 |592.35 |648     |
|695|901        |Oil - Truffle, Black               |4700.39|36.31  |312     |
|696|902        |Beef - Ox Tail, Frozen             |2842.53|689.61 |915     |
|697|903        |Potatoes - Idaho 100 Count         |2368.52|550.04 |848     |
|698|904        |Cranberries - Fresh                |2387.09|610.27 |151     |
|699|905        |Pepper - Orange                    |408.6  |765.94 |743     |
|700|906        |Nut - Pumpkin Seeds                |5573.24|856.88 |977     |
|701|908        |Icecream - Dstk Cml And Fdg        |6488.31|977.13 |332     |
|702|909        |Wine - Blue Nun Qualitatswein      |6317.37|796.08 |213     |
|703|913        |Piping Jelly - All Colours         |4549.69|717.04 |649     |
|704|914        |Parsley Italian - Fresh            |2113.8 |699.22 |518     |
|705|915        |Juice - Lemon                      |6647.72|780.17 |597     |
|706|917        |Wine - Dubouef Macon - Villages    |5416.63|795.59 |367     |
|707|918        |Wine - Acient Coast Caberne        |2531.62|998.07 |639     |
|708|919        |Basil - Fresh                      |728.23 |409.06 |892     |
|709|920        |Pepsi - Diet, 355 Ml               |5051.58|398.79 |370     |
|710|922        |Beans - Kidney, Red Dry            |4825.46|1005.83|290     |
|711|924        |Ecolab - Power Fusion              |6377.81|566.58 |874     |
|712|926        |Chocolate - Semi Sweet             |2495.38|421.56 |711     |
|713|927        |Juice - Apple 284ml                |4765.53|711.75 |97      |
|714|928        |Cocoa Powder - Natural             |5590.68|1017.29|258     |
|715|929        |Beer - Molson Excel                |4294.3 |161.1  |205     |
|716|931        |Cumin - Ground                     |2449.77|1092.4 |717     |
|717|933        |Chocolate - Dark Callets           |670.21 |301.09 |641     |
|718|935        |Gelatine Leaves - Envelopes        |1184.63|490.29 |928     |
|719|936        |Fish - Scallops, Cold Smoked       |3592.55|653.88 |575     |
|720|937        |Tomatoes - Plum, Canned            |3552.95|828.6  |263     |
|721|938        |C - Plus, Orange                   |6871.95|784.28 |809     |
|722|940        |Sprouts - Bean                     |2981.54|812.2  |378     |
|723|941        |Wine - Muscadet Sur Lie            |3430.07|39.24  |80      |
|724|942        |Cherries - Maraschino,jar          |4066.98|861.65 |570     |
|725|943        |Wine - Bourgogne 2002, La          |3471.91|419.73 |679     |
|726|945        |Soup - Campbells, Lentil           |2526.83|1000.67|880     |
|727|946        |Cake - Box Window 10x10x2.5        |5929.94|415.6  |599     |
|728|947        |Ecolab - Hand Soap Form Antibac    |1371.79|57.93  |53      |
|729|948        |Basil - Pesto Sauce                |6015.01|647.97 |77      |
|730|949        |Pepper - Gypsy Pepper              |6749.76|804.4  |786     |
|731|951        |Whmis - Spray Bottle Trigger       |2707.04|758.7  |203     |
|732|953        |Apple - Royal Gala                 |679.3  |401.18 |28      |
|733|954        |Tuna - Bluefin                     |5863.2 |819.93 |46      |
|734|956        |Tomatoes - Diced, Canned           |6086.44|633.38 |630     |
|735|957        |Raspberries - Fresh                |4237.9 |738.51 |213     |
|736|958        |Bread - Bistro Sour                |3261.83|876.75 |635     |
|737|960        |Beef - Rib Roast, Capless          |4788.24|265.71 |958     |
|738|961        |Wine - Pinot Noir Stoneleigh       |6179.23|741.89 |181     |
|739|962        |Filter - Coffee                    |5818.73|433.89 |349     |
|740|963        |Wine - White, Pelee Island         |2735.46|675.08 |877     |
|741|964        |Port - 74 Brights                  |470.6  |541.42 |347     |
|742|966        |Ice Cream Bar - Drumstick          |862.6  |738.81 |118     |
|743|968        |Bread Crumbs - Japanese Style      |3630.36|267.22 |808     |
|744|969        |Wine - Chardonnay Mondavi          |1576.03|563.44 |697     |
|745|970        |Lamb - Shoulder, Boneless          |946.64 |166.1  |950     |
|746|972        |Marjoram - Dried, Rubbed           |12.07  |491.94 |340     |
|747|974        |Juice - Orange, Concentrate        |6548.59|275.26 |764     |
|748|975        |Wine - Red, Cabernet Merlot        |6056.11|790.97 |346     |
|749|976        |Pineapple - Golden                 |2167.8 |1089.96|631     |
|750|977        |Oven Mitt - 13 Inch                |1661.43|341.31 |571     |
|751|978        |Sauce - Fish 25 Ozf Bottle         |6466.73|263.4  |117     |
|752|980        |Tart - Raisin And Pecan            |3812.11|855.71 |594     |
|753|983        |Veal - Brisket, Provimi, Bone - In |4303.37|316.36 |832     |
|754|984        |Mushroom - White Button            |5051.22|359.74 |594     |
|755|986        |Asparagus - Green, Fresh           |6844.32|570.8  |304     |
|756|987        |Shortbread - Cookie Crumbs         |5775.34|102.31 |483     |
|757|988        |Lobster - Tail 6 Oz                |2031.62|316.1  |89      |
|758|990        |Mushroom - Portebello              |5547.11|296    |608     |
|759|991        |Wine - Jafflin Bourgongone         |5178.15|251.61 |261     |
|760|992        |Cake - Night And Day Choclate      |1604.18|1037.1 |318     |
|761|994        |Pasta - Detalini, White, Fresh     |6445.34|737.63 |238     |
|762|995        |Oil - Olive Bertolli               |498.36 |759.25 |724     |
|763|996        |Cheese - Taleggio D.o.p.           |6603.17|701.83 |940     |
|764|997        |Cheese - Cream Cheese              |6584.52|732.83 |947     |
|765|998        |Pepsi - 600ml                      |92     |390.55 |356     |
|766|999        |Wine - Periguita Fonseca           |74.77  |477.95 |183     |
|767|1000       |Cheese - Bocconcini                |1698.33|344.35 |859     |

</p>
</details>

<br/>


###### [Iván Montiel Cardona](https://github.com/begeistert)
