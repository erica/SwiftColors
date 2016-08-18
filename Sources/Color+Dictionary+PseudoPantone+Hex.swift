import Foundation


// http://www.ackerdesign.com/acker-design-pantone-chart.html
public let pseudopantone1HexColorNames = ["100": "#F4ED7C", "101": "#F4ED47", "102": "#F9E814", "103": "#C6AD0F", "104": "#AD9B0C", "105": "#82750F", "106": "#F7E859", "107": "#F9E526", "108": "#F9DD16", "109": "#F9D616", "110": "#D8B511", "111": "#AA930A", "112": "#99840A", "113": "#F9E55B", "114": "#F9E24C", "115": "#F9E04C", "116": "#FCD116", "116_2X": "#F7B50C", "117": "#C6A00C", "118": "#AA8E0A", "119": "#897719", "120": "#F9E27F", "1205": "#F7E8AA", "121": "#F9E070", "1215": "#F9E08C", "122": "#FCD856", "1225": "#FFCC49", "123": "#FFC61E", "1235": "#FCB514", "124": "#E0AA0F", "1245": "#BF910C", "125": "#B58C0A", "1255": "#A37F14", "126": "#A38205", "1265": "#7C6316", "127": "#F4E287", "128": "#F4DB60", "129": "#F2D13D", "130": "#EAAF0F", "130_2X": "#E29100", "131": "#C6930A", "132": "#9E7C0A", "133": "#705B0A", "134": "#FFD87F", "1345": "#FFD691", "135": "#FCC963", "1355": "#FCCE87", "136": "#FCBF49", "1365": "#FCBA5E", "137": "#FCA311", "1375": "#F99B0C", "138": "#D88C02", "1385": "#CC7A02", "139": "#AF7505", "1395": "#996007", "140": "#7A5B11", "1405": "#6B4714", "141": "#F2CE68", "142": "#F2BF49", "143": "#EFB22D", "144": "#E28C05", "145": "#C67F07", "146": "#9E6B05", "147": "#725E26", "148": "#FFD69B", "1485": "#FFB777", "149": "#FCCC93", "1495": "#FF993F", "150": "#FCAD56", "1505": "#F47C00", "151": "#F77F00", "152": "#DD7500", "1525": "#B55400", "153": "#BC6D0A", "1535": "#8C4400", "154": "#995905", "1545": "#472200", "155": "#F4DBAA", "1555": "#F9BF9E", "156": "#F2C68C", "1565": "#FCA577", "157": "#EDA04F", "1575": "#FC8744", "158": "#E87511", "1585": "#F96B07", "159": "#C66005", "1595": "#D15B05", "160": "#9E540A", "1605": "#A04F11", "161": "#633A11", "1615": "#843F0F", "162": "#F9C6AA", "1625": "#F9A58C", "163": "#FC9E70", "1635": "#F98E6D", "164": "#FC7F3F", "1645": "#F97242", "165": "#F96302", "165_2X": "#EA4F00", "1655": "#F95602", "166": "#DD5900", "1665": "#DD4F05", "167": "#BC4F07", "1675": "#A53F0F", "168": "#6D3011", "1685": "#843511", "169": "#F9BAAA", "170": "#F98972", "171": "#F9603A", "172": "#F74902", "173": "#D14414", "174": "#933311", "175": "#6D3321", "176": "#F9AFAD", "1765": "#F99EA3", "1767": "#F9B2B7", "177": "#F9827F", "1775": "#F9848E", "1777": "#FC6675", "178": "#F95E59", "1785": "#FC4F59", "1787": "#F43F4F", "1788": "#EF2B2D", "1788_2X": "#D62100", "179": "#E23D28", "1795": "#D62828", "1797": "#CC2D30", "180": "#C13828", "1805": "#AF2626", "1807": "#A03033", "181": "#7C2D23", "1810": "#7C211E", "1817": "#5B2D28", "182": "#F9BFC1", "183": "#FC8C99", "184": "#FC5E72", "185": "#E8112D", "185_2X": "#D11600", "186": "#CE1126", "187": "#AF1E2D", "188": "#7C2128", "189": "#FFA3B2", "1895": "#FCBFC9", "190": "#FC758E", "1905": "#FC9BB2", "191": "#F4476B", "1915": "#F4547C", "192": "#E5053A", "1925": "#E00747", "193": "#C40043", "1935": "#C10538", "194": "#992135", "1945": "#A80C35", "1955": "#931638", "196": "#FAD5E1", "197": "#F6A5BE", "198": "#EF5B84", "199": "#A0274B", "200": "#C41E3A", "201": "#A32638", "202": "#8C2633", "203": "#F2AFC1", "204": "#ED7A9E", "205": "#E54C7C", "206": "#D30547", "207": "#C0004E", "208": "#8E2344", "209": "#75263D", "210": "#FFA0BF", "211": "#FF77A8", "212": "#F94F8E", "213": "#EA0F6B", "214": "#CC0256", "215": "#A50544", "216": "#7C1E3F", "217": "#F4BFD1", "218": "#ED72AA", "219": "#E22882", "220": "#AA004F", "221": "#930042", "222": "#70193D", "223": "#F993C4", "224": "#F46BAF", "225": "#ED2893", "226": "#D60270", "227": "#AD005B", "228": "#8C004C", "229": "#6D213F", "230": "#FFA0CC", "231": "#FC70BA", "232": "#F43FA5", "233": "#CE007C", "234": "#AA0066", "235": "#8E0554", "236": "#F9AFD3", "2365": "#F7C4D8", "237": "#F484C4", "2375": "#EA6BBF", "238": "#ED4FAF", "2385": "#DB28A5", "239": "#E0219E", "2395": "#C4008C", "240": "#C40F89", "2405": "#A8007A", "241": "#AD0075", "2415": "#9B0070", "242": "#7C1C51", "2425": "#87005B", "243": "#F2BAD8", "244": "#EDA0D3", "245": "#E87FC9", "246": "#CC00A0", "247": "#B7008E", "248": "#A3057F", "249": "#7F2860", "250": "#EDC4DD", "251": "#E29ED6", "252": "#D36BC6", "253": "#AF23A5", "254": "#A02D96", "255": "#772D6B", "256": "#E5C4D6", "2562": "#D8A8D8", "2563": "#D1A0CC", "2567": "#BF93CC", "257": "#D3A5C9", "2572": "#C687D1", "2573": "#BA7CBC", "2577": "#AA72BF", "258": "#9B4F96", "2582": "#AA47BA", "2583": "#9E4FA5", "2587": "#8E47AD", "259": "#72166B", "2592": "#930FA5", "2593": "#872B93", "2597": "#66008C", "260": "#681E5B", "2602": "#820C8E", "2603": "#70147A", "2607": "#5B027A", "261": "#5E2154", "2612": "#701E72", "2613": "#66116D", "2617": "#560C70", "262": "#542344", "2622": "#602D59", "2623": "#5B195E", "2627": "#4C145E", "263": "#E0CEE0", "2635": "#C9ADD8", "264": "#C6AADB", "2645": "#B591D1", "265": "#9663C4", "2655": "#9B6DC6", "266": "#6D28AA", "2665": "#894FBF", "267": "#59118E", "268": "#4F2170", "2685": "#56008C", "269": "#442359", "2695": "#44235E", "270": "#BAAFD3", "2705": "#AD9ED3", "2706": "#D1CEDD", "2707": "#BFD1E5", "2708": "#AFBCDB", "271": "#9E91C6", "2715": "#937ACC", "2716": "#A5A0D6", "2717": "#A5BAE0", "2718": "#5B77CC", "272": "#8977BA", "2725": "#7251BC", "2726": "#6656BC", "2727": "#5E68C4", "2728": "#3044B5", "273": "#38197A", "2735": "#4F0093", "2736": "#4930AD", "2738": "#2D008E", "274": "#2B1166", "2745": "#3F0077", "2746": "#3F2893", "2747": "#1C146B", "2748": "#1E1C77", "275": "#260F54", "2755": "#35006D", "2756": "#332875", "2757": "#141654", "2758": "#192168", "276": "#2B2147", "2765": "#2B0C56", "2766": "#2B265B", "2767": "#14213D", "2768": "#112151", "277": "#B5D1E8", "278": "#99BADD", "279": "#6689CC", "280": "#002B7F", "281": "#002868", "282": "#002654", "283": "#9BC4E2", "284": "#75AADB", "285": "#3A75C4", "286": "#0038A8", "287": "#003893", "288": "#00337F", "289": "#002649", "290": "#C4D8E2", "2905": "#93C6E0", "291": "#A8CEE2", "2915": "#60AFDD", "292": "#75B2DD", "2925": "#008ED6", "293": "#0051BA", "2935": "#005BBF", "294": "#003F87", "2945": "#0054A0", "295": "#00386B", "2955": "#003D6B", "296": "#002D47", "2965": "#00334C", "297": "#82C6E2", "2975": "#BAE0E2", "298": "#51B5E0", "2985": "#51BFE2", "299": "#00A3DD", "2995": "#00A5DB", "300": "#0072C6", "3005": "#0084C9", "301": "#005B99", "3015": "#00709E", "302": "#004F6D", "3025": "#00546B", "303": "#003F54", "3035": "#004454", "304": "#A5DDE2", "305": "#70CEE2", "306": "#00BCE2", "306_2X": "#00A3D1", "307": "#007AA5", "308": "#00607C", "309": "#003F49", "310": "#72D1DD", "3105": "#7FD6DB", "311": "#28C4D8", "3115": "#2DC6D6", "312": "#00ADC6", "3125": "#00B7C6", "313": "#0099B5", "3135": "#009BAA", "314": "#00829B", "3145": "#00848E", "315": "#006B77", "3155": "#006D75", "316": "#00494F", "3165": "#00565B", "317": "#C9E8DD", "318": "#93DDDB", "319": "#4CCED1", "320": "#009EA0", "320_2X": "#007F82", "321": "#008789", "322": "#007272", "323": "#006663", "324": "#AADDD6", "3242": "#87DDD1", "3245": "#8CE0D1", "3248": "#7AD3C1", "325": "#56C9C1", "3252": "#56D6C9", "3255": "#47D6C1", "3258": "#35C4AF", "326": "#00B2AA", "3262": "#00C1B5", "3265": "#00C6B2", "3268": "#00AF99", "327": "#008C82", "327_2X": "#008977", "3272": "#00AA9E", "3275": "#00B2A0", "3278": "#009B84", "328": "#007770", "3282": "#008C82", "3285": "#009987", "3288": "#008270", "329": "#006D66", "3292": "#006056", "3295": "#008272", "3298": "#006B5B", "330": "#005951", "3302": "#00493F", "3305": "#004F42", "3308": "#004438", "331": "#BAEAD6", "332": "#A0E5CE", "333": "#5EDDC1", "334": "#00997C", "335": "#007C66", "336": "#006854", "337": "#9BDBC1", "3375": "#8EE2BC", "338": "#7AD1B5", "3385": "#54D8A8", "339": "#00B28C", "3395": "#00C993", "340": "#009977", "3405": "#00B27A", "341": "#007A5E", "3415": "#007C59", "342": "#006B54", "3425": "#006847", "343": "#00563F", "3435": "#024930", "344": "#B5E2BF", "345": "#96D8AF", "346": "#70CE9B", "347": "#009E60", "348": "#008751", "349": "#006B3F", "350": "#234F33", "351": "#B5E8BF", "352": "#99E5B2", "353": "#84E2A8", "354": "#00B760", "355": "#009E49", "356": "#007A3D", "357": "#215B33", "358": "#AADD96", "359": "#A0DB8E", "360": "#60C659", "361": "#1EB53A", "362": "#339E35", "363": "#3D8E33", "364": "#3A7728", "365": "#D3E8A3", "366": "#C4E58E", "367": "#AADD6D", "368": "#5BBF21", "368_2X": "#009E0F", "369": "#56AA1C", "370": "#568E14", "371": "#566B21", "372": "#D8ED96", "373": "#CEEA82", "374": "#BAE860", "375": "#8CD600", "375_2X": "#54BC00", "376": "#7FBA00", "377": "#709302", "378": "#566314", "379": "#E0EA68", "380": "#D6E542", "381": "#CCE226", "382": "#BAD80A", "382_2X": "#9EC400", "383": "#A3AF07", "384": "#939905", "385": "#707014", "386": "#E8ED60", "387": "#E0ED44", "388": "#D6E80F", "389": "#CEE007", "390": "#BAC405", "391": "#9E9E07", "392": "#848205", "393": "#F2EF87", "3935": "#F2ED6D", "394": "#EAED35", "3945": "#EFEA07", "395": "#E5E811", "3955": "#EDE211", "396": "#E0E20C", "3965": "#E8DD11", "397": "#C1BF0A", "3975": "#B5A80C", "398": "#AFA80A", "3985": "#998C0A", "399": "#998E07", "3995": "#6D6002", "400": "#D1C6B5", "401": "#C1B5A5", "402": "#AFA593", "403": "#998C7C", "404": "#827566", "405": "#6B5E4F", "406": "#CEC1B5", "408": "#A8998C", "409": "#99897C", "410": "#7C6D63", "411": "#66594C", "412": "#3D3028", "413": "#C6C1B2", "414": "#B5AFA0", "415": "#A39E8C", "416": "#8E8C7A", "417": "#777263", "418": "#605E4F", "419": "#282821", "420": "#D1CCBF", "421": "#BFBAAF", "422": "#AFAAA3", "423": "#96938E", "424": "#827F77", "425": "#60605B", "426": "#2B2B28", "427": "#DDDBD1", "428": "#D1CEC6", "429": "#ADAFAA", "430": "#919693", "431": "#666D70", "432": "#444F51", "433": "#30383A", "433_2X": "#0A0C11", "434": "#E0D1C6", "435": "#D3BFB7", "436": "#BCA59E", "437": "#8C706B", "438": "#593F3D", "439": "#493533", "440": "#3F302B", "441": "#D1D1C6", "442": "#BABFB7", "443": "#A3A8A3", "444": "#898E8C", "445": "#565959", "446": "#494C49", "447": "#3F3F38", "448": "#54472D", "4485": "#604C11", "449": "#544726", "4495": "#877530", "450": "#60542B", "4505": "#A09151", "451": "#ADA07A", "4515": "#BCAD75", "452": "#C4B796", "4525": "#CCBF8E", "453": "#D6CCAF", "4535": "#DBCEA5", "454": "#E2D8BF", "4545": "#E5DBBA", "455": "#665614", "456": "#998714", "457": "#B59B0C", "458": "#DDCC6B", "459": "#E2D67C", "460": "#EADD96", "461": "#EDE5AD", "462": "#5B4723", "4625": "#472311", "463": "#755426", "4635": "#8C5933", "464": "#876028", "464_2X": "#704214", "4645": "#B28260", "465": "#C1A875", "4655": "#C49977", "466": "#D1BF91", "4665": "#D8B596", "467": "#DDCCA5", "4675": "#E5C6AA", "468": "#E2D6B5", "4685": "#EDD3BC", "469": "#603311", "4695": "#51261C", "470": "#9B4F19", "4705": "#7C513D", "471": "#BC5E1E", "471_2X": "#A34402", "4715": "#99705B", "472": "#EAAA7A", "4725": "#B5917C", "473": "#F4C4A0", "4735": "#CCAF9B", "474": "#F4CCAA", "4745": "#D8BFAA", "475": "#F7D3B5", "4755": "#E2CCBA", "476": "#593D2B", "477": "#633826", "478": "#7A3F28", "479": "#AF8970", "480": "#D3B7A3", "481": "#E0CCBA", "482": "#E5D3C1", "483": "#6B3021", "484": "#9B301C", "485": "#D81E05", "485_2X": "#CC0C00", "486": "#ED9E84", "487": "#EFB5A0", "488": "#F2C4AF", "489": "#F2D1BF", "490": "#5B2626", "491": "#752828", "492": "#913338", "494": "#F2ADB2", "495": "#F4BCBF", "496": "#F7C9C6", "497": "#512826", "4975": "#441E1C", "498": "#6D332B", "4985": "#844949", "499": "#7A382D", "4995": "#A56B6D", "500": "#CE898C", "5005": "#BC8787", "501": "#EAB2B2", "5015": "#D8ADA8", "502": "#F2C6C4", "5025": "#E2BCB7", "503": "#F4D1CC", "5035": "#EDCEC6", "504": "#511E26", "505": "#661E2B", "506": "#7A2638", "507": "#D8899B", "508": "#E8A5AF", "509": "#F2BABF", "510": "#F4C6C9", "511": "#602144", "5115": "#4F213A", "512": "#84216B", "5125": "#754760", "513": "#9E2387", "5135": "#936B7F", "514": "#D884BC", "5145": "#AD8799", "515": "#E8A3C9", "5155": "#CCAFB7", "516": "#F2BAD3", "5165": "#E0C9CC", "517": "#F4CCD8", "5175": "#E8D6D1", "518": "#512D44", "5185": "#472835", "519": "#63305E", "5195": "#593344", "520": "#703572", "5205": "#8E6877", "521": "#B58CB2", "5215": "#B5939B", "522": "#C6A3C1", "5225": "#CCADAF", "523": "#D3B7CC", "5235": "#DDC6C4", "524": "#E2CCD3", "5245": "#E5D3CC", "525": "#512654", "5255": "#35264F", "526": "#68217A", "5265": "#493D63", "527": "#7A1E99", "5275": "#605677", "528": "#AF72C1", "5285": "#8C8299", "529": "#CEA3D3", "5295": "#B2A8B5", "530": "#D6AFD6", "5305": "#CCC1C6", "531": "#E5C6DB", "5315": "#DBD3D3", "532": "#353842", "533": "#353F5B", "534": "#3A4972", "535": "#9BA3B7", "536": "#ADB2C1", "537": "#C4C6CE", "538": "#D6D3D6", "539": "#003049", "5395": "#02283A", "540": "#00335B", "5405": "#3F6075", "541": "#003F77", "5415": "#607C8C", "542": "#6693BC", "5425": "#8499A5", "543": "#93B7D1", "5435": "#AFBCBF", "544": "#B7CCDB", "5445": "#C4CCCC", "545": "#C4D3DD", "5455": "#D6D8D3", "546": "#0C3844", "5463": "#00353A", "5467": "#193833", "547": "#003F54", "5473": "#26686D", "5477": "#3A564F", "548": "#004459", "5483": "#609191", "5487": "#667C72", "549": "#5E99AA", "5493": "#8CAFAD", "5497": "#91A399", "550": "#87AFBF", "5503": "#AAC4BF", "5507": "#AFBAB2", "551": "#A3C1C9", "5513": "#CED8D1", "5517": "#C9CEC4", "552": "#C4D6D6", "5523": "#D6DDD6", "5527": "#CED1C6", "553": "#234435", "5535": "#213D30", "554": "#195E47", "5545": "#4F6D5E", "555": "#076D54", "5555": "#779182", "556": "#7AA891", "5565": "#96AA99", "557": "#A3C1AD", "5575": "#AFBFAD", "558": "#B7CEBC", "5585": "#C4CEBF", "559": "#C6D6C4", "5595": "#D8DBCC", "560": "#2B4C3F", "5605": "#233A2D", "561": "#266659", "5615": "#546856", "562": "#1E7A6D", "5625": "#728470", "563": "#7FBCAA", "5635": "#9EAA99", "564": "#05705E", "5645": "#BCC1B2", "565": "#BCDBCC", "5655": "#C6CCBA", "566": "#D1E2D3", "5665": "#D6D6C6", "567": "#265142", "568": "#007263", "569": "#008772", "570": "#7FC6B2", "571": "#AADBC6", "572": "#BCE2CE", "573": "#CCE5D6", "574": "#495928", "5743": "#3F4926", "5747": "#424716", "575": "#547730", "5753": "#5E663A", "5757": "#6B702B", "576": "#608E3A", "5763": "#777C4F", "5767": "#8C914F", "577": "#B5CC8E", "5773": "#9B9E72", "5777": "#AAAD75", "578": "#C6D6A0", "5783": "#B5B58E", "5787": "#C6C699", "579": "#C9D6A3", "5793": "#C6C6A5", "5797": "#D3D1AA", "580": "#D8DDB5", "5803": "#D8D6B7", "5807": "#E0DDBC", "581": "#605E11", "5815": "#494411", "582": "#878905", "5825": "#75702B", "583": "#AABA0A", "5835": "#9E9959", "584": "#CED649", "5845": "#B2AA70", "585": "#DBE06B", "5855": "#CCC693", "586": "#E2E584", "5865": "#D6CEA3", "587": "#E8E89B", "5875": "#E0DBB5", "600": "#F4EDAF", "601": "#F2ED9E", "602": "#F2EA87", "603": "#EDE85B", "604": "#E8DD21", "605": "#DDCE11", "606": "#D3BF11", "607": "#F2EABC", "608": "#EFE8AD", "609": "#EAE596", "610": "#E2DB72", "611": "#D6CE49", "612": "#C4BA00", "613": "#AFA00C", "614": "#EAE2B7", "615": "#E2DBAA", "616": "#DDD69B", "617": "#CCC47C", "618": "#B5AA59", "619": "#968C28", "620": "#847711", "621": "#D8DDCE", "622": "#C1D1BF", "623": "#A5BFAA", "624": "#7FA08C", "625": "#5B8772", "626": "#21543F", "627": "#0C3026", "628": "#CCE2DD", "629": "#B2D8D8", "630": "#8CCCD3", "631": "#54B7C6", "632": "#00A0BA", "633": "#007F99", "634": "#00667F", "635": "#BAE0E0", "636": "#99D6DD", "637": "#6BC9DB", "638": "#00B5D6", "639": "#00A0C4", "640": "#008CB2", "641": "#007AA5", "642": "#D1D8D8", "643": "#C6D1D6", "644": "#9BAFC4", "645": "#7796B2", "646": "#5E82A3", "647": "#26547C", "648": "#00305E", "649": "#D6D6D8", "650": "#BFC6D1", "651": "#9BAABF", "652": "#6D87A8", "653": "#335687", "654": "#0F2B5B", "655": "#0C1C47", "656": "#D6DBE0", "657": "#C1C9DD", "658": "#A5AFD6", "659": "#7F8CBF", "660": "#5960A8", "661": "#2D338E", "662": "#0C1975", "663": "#E2D3D6", "664": "#D8CCD1", "665": "#C6B5C4", "666": "#A893AD", "667": "#7F6689", "668": "#664975", "669": "#472B59", "670": "#F2D6D8", "671": "#EFC6D3", "672": "#EAAAC4", "673": "#E08CB2", "674": "#D36B9E", "675": "#BC3877", "676": "#A00054", "677": "#EDD6D6", "678": "#EACCCE", "679": "#E5BFC6", "680": "#D39EAF", "681": "#B7728E", "682": "#A05175", "683": "#7F284F", "684": "#EFCCCE", "685": "#EABFC4", "686": "#E0AABA", "687": "#C9899E", "688": "#B26684", "689": "#934266", "690": "#702342", "691": "#EFD1C9", "692": "#E8BFBA", "693": "#DBA8A5", "694": "#C98C8C", "695": "#B26B70", "696": "#8E4749", "697": "#7F383A", "698": "#F7D1CC", "699": "#F7BFBF", "700": "#F2A5AA", "701": "#E8878E", "702": "#D6606D", "703": "#B73844", "704": "#9E2828", "705": "#F9DDD6", "706": "#FCC9C6", "707": "#FCADAF", "708": "#F98E99", "709": "#F26877", "710": "#E04251", "711": "#D12D33", "712": "#FFD3AA", "713": "#F9C9A3", "714": "#F9BA82", "715": "#FC9E49", "716": "#F28411", "717": "#D36D00", "718": "#BF5B00", "719": "#F4D1AF", "720": "#EFC49E", "721": "#E8B282", "722": "#D18E54", "723": "#BA7530", "724": "#8E4905", "725": "#753802", "726": "#EDD3B5", "727": "#E2BF9B", "728": "#D3A87C", "729": "#C18E60", "730": "#AA753F", "731": "#723F0A", "732": "#60330A", "801": "#00AACC", "801_2X": "#0089AF", "802": "#60DD49", "802_2X": "#1CCE28", "803": "#FFED38", "803_2X": "#FFD816", "804": "#FF9338", "804_2X": "#FF7F1E", "805": "#F95951", "805_2X": "#F93A2B", "806": "#FF0093", "806_2X": "#F7027C", "807": "#D6009E", "807_2X": "#BF008C", "808": "#00B59B", "808_2X": "#00A087", "809": "#DDE00F", "809_2X": "#D6D60C", "810": "#FFCC1E", "810_2X": "#FFBC21", "811": "#FF7247", "811_2X": "#FF5416", "812": "#FC2366", "812_2X": "#FC074F", "813": "#E50099", "813_2X": "#D10084", "814": "#8C60C1", "814_2X": "#703FAF"]

// http://www.umsiko.co.za/links/color.html
public let pseudopantone2HexColorNames =  ["100C": "#F3ED86", "101C": "#F5EC62", "102C": "#FAE600", "103C": "#CAAD00", "104C": "#AC9600", "105C": "#817214", "106C": "#F6E761", "107C": "#FAE22F", "108C": "#FEDB00", "109C": "#FFD100", "110C": "#DBAE00", "111C": "#AF8F00", "112C": "#998000", "113C": "#FAE15A", "114C": "#FAE051", "115C": "#FBDE4A", "116C": "#FFCE00", "117C": "#CE9D00", "118C": "#B38A00", "119C": "#8A761A", "120C": "#F9DF79", "1205C": "#F3E2A7", "121C": "#FBDB6E", "1215C": "#F5DD92", "122C": "#FDD44F", "1225C": "#FDC745", "123C": "#FFC726", "1235C": "#FFB300", "124C": "#EBAB00", "1245C": "#C69200", "125C": "#BB8900", "1255C": "#AA800E", "126C": "#A17C00", "1265C": "#836514", "127C": "#EFDF85", "128C": "#F2D65E", "129C": "#F1CD44", "130C": "#F1AB00", "131C": "#D49100", "132C": "#A67A00", "133C": "#715913", "134C": "#F8D583", "1345C": "#FBCF8D", "135C": "#FEC85A", "1355C": "#FDC87D", "136C": "#FFBC3A", "1365C": "#FFB754", "137C": "#FF9F00", "1375C": "#FF9A00", "138C": "#E47F00", "1385C": "#D67500", "139C": "#B67100", "1395C": "#9E6209", "140C": "#7A560F", "1405C": "#6C4713", "141C": "#EFC868", "142C": "#F1BB46", "143C": "#EFAA23", "144C": "#ED8000", "145C": "#CF7600", "146C": "#9F6000", "147C": "#715821", "148C": "#FBD09D", "1485C": "#FFB57B", "149C": "#FEC688", "1495C": "#FF963B", "150C": "#FFA94F", "1505C": "#FF7200", "151C": "#FF7300", "152C": "#E76F00", "1525C": "#CA4E00", "153C": "#C06600", "1535C": "#933F00", "154C": "#995409", "1545C": "#51260B", "155C": "#ECD6AF", "1555C": "#FFBFA0", "156C": "#EFC18A", "1565C": "#FFA97D", "157C": "#ED9B4F", "1575C": "#FF8642", "158C": "#E96B10", "1585C": "#FF6900", "159C": "#CD5806", "1595C": "#DA5C05", "160C": "#A24E12", "1605C": "#A24A13", "161C": "#613517", "1615C": "#853C10", "162C": "#FDC3AA", "1625C": "#FFA28B", "163C": "#FF9C71", "1635C": "#FF8E70", "164C": "#FF7E43", "1645C": "#FF6C3B", "165C": "#FF5F00", "1655C": "#FF5200", "166C": "#E55300", "1665C": "#E54800", "167C": "#C2510F", "1675C": "#A83C0F", "168C": "#6F3014", "1685C": "#863514", "169C": "#FFB6B1", "170C": "#FF897B", "171C": "#FF6141", "172C": "#FD4703", "173C": "#D84519", "174C": "#9A3416", "175C": "#703222", "176C": "#FFACB9", "1765C": "#FE9DB0", "1767C": "#FAAFC2", "177C": "#FF818C", "1775C": "#FF859A", "1777C": "#FB6581", "178C": "#FF5B60", "1785C": "#F9455B", "1787C": "#F9425F", "1788C": "#F02233", "179C": "#E23828", "1795C": "#D81F2A", "1797C": "#D02433", "180C": "#C0362C", "1805C": "#B0232A", "1807C": "#A12830", "181C": "#792720", "1815C": "#7C211E", "1817C": "#5E2728", "182C": "#F8B8CB", "183C": "#FC8DA9", "184C": "#F85D7E", "185C": "#EA0437", "186C": "#D21034", "187C": "#B31B34", "188C": "#7C2230", "189C": "#F8A1BE", "1895C": "#F3BCD4", "190C": "#F8779E", "1905C": "#F59BBD", "191C": "#F23F72", "1915C": "#F2558A", "192C": "#E90649", "1925C": "#E40050", "193C": "#C30C3E", "1935C": "#CB0447", "194C": "#9C1E3D", "1945C": "#AA113F", "1955C": "#93173B", "196C": "#EBC6D3", "197C": "#EB9BB2", "198C": "#E44D6F", "199C": "#DB0C41", "200C": "#C10435", "201C": "#9E1B34", "202C": "#892034", "203C": "#EBADCD", "204C": "#E87BAC", "205C": "#E34585", "206C": "#D7004D", "207C": "#B10042", "208C": "#902147", "209C": "#752641", "210C": "#FA9FCC", "211C": "#F97DB8", "212C": "#F34E9A", "213C": "#E61577", "214C": "#D00063", "215C": "#AA1054", "216C": "#7A1D42", "217C": "#ECBBDD", "218C": "#E86FB8", "219C": "#E0218A", "220C": "#AE0055", "221C": "#96004B", "222C": "#6C193F", "223C": "#F293D1", "224C": "#EF6ABF", "225C": "#E5239D", "226C": "#D60077", "227C": "#AE005F", "228C": "#8A0753", "229C": "#6A1D44", "230C": "#F7A7DB", "231C": "#F575C9", "232C": "#EF40B0", "233C": "#C90081", "234C": "#A6006B", "235C": "#890857", "236C": "#F2B0DF", "2365C": "#EFC3E4", "237C": "#EE86D3", "2375C": "#E270CD", "238C": "#E653BC", "2385C": "#D733B4", "239C": "#E032AF", "2395C": "#C40098", "240C": "#C41E99", "2405C": "#A70084", "241C": "#AC0481", "2415C": "#970076", "242C": "#7A1A57", "2425C": "#820063", "243C": "#E8B7E5", "244C": "#E6A2E0", "245C": "#DF81D6", "246C": "#C70BAC", "247C": "#B3009D", "248C": "#9E0389", "249C": "#7B2266", "250C": "#E3C0E6", "251C": "#D99CE1", "252C": "#CA65D1", "253C": "#A91BB0", "254C": "#962399", "255C": "#70266C", "256C": "#D9BFE0", "2562C": "#CFA5E4", "2563C": "#C79DD8", "2567C": "#BB99DA", "257C": "#CBA4D4", "2572C": "#C084DC", "2573C": "#B279C8", "2577C": "#A276CC", "258C": "#92499E", "2582C": "#A24CC8", "2583C": "#9950B2", "2587C": "#8348B5", "259C": "#6C1B72", "2592C": "#9016B2", "2593C": "#7E2B97", "2597C": "#59058D", "260C": "#5F1D5F", "2602C": "#7D0996", "2603C": "#68177F", "2607C": "#4F027C", "261C": "#591E55", "2612C": "#6A1A7A", "2613C": "#611774", "2617C": "#4B0B71", "262C": "#4F2248", "2622C": "#572458", "2623C": "#581963", "2627C": "#43125F", "263C": "#D8CBEB", "2635C": "#BFAFE4", "264C": "#BCA8E6", "2645C": "#AA94DE", "265C": "#8D65D2", "2655C": "#9173D3", "266C": "#6732BA", "2665C": "#7A52C7", "267C": "#4F1F91", "268C": "#4A217E", "2685C": "#3B0084", "269C": "#452663", "2695C": "#381D59", "270C": "#ADACDC", "2705C": "#A29FE0", "2706C": "#C4CBEA", "2707C": "#BDD0EE", "2708C": "#B1C5EA", "271C": "#9490D2", "2715C": "#8580D8", "2716C": "#94A1E2", "2717C": "#A1BDEA", "2718C": "#547ED9", "272C": "#7973C2", "2725C": "#5E53C7", "2726C": "#4555C7", "2727C": "#3878DB", "2728C": "#0047BE", "273C": "#25177A", "2735C": "#280092", "2736C": "#1E22AE", "2738C": "#00129D", "274C": "#211265", "2745C": "#22007A", "2746C": "#1A1C96", "2747C": "#00237E", "2748C": "#001A7B", "275C": "#1D1157", "2755C": "#1B0069", "2756C": "#151D71", "2757C": "#002065", "2758C": "#001D68", "276C": "#241A44", "2765C": "#1B0C55", "2766C": "#151C55", "2767C": "#0B2345", "2768C": "#031E51", "277C": "A9C7EC", "278C": "#8CB4E8", "279C": "#4189DD", "280C": "#00267F", "281C": "#002569", "282C": "#00204E", "283C": "#93BFEB", "284C": "#6CABE7", "285C": "#0077D4", "286C": "#0035AD", "287C": "#003798", "288C": "#003082", "289C": "#00234C", "290C": "#BED9ED", "2905C": "#92C9EB", "291C": "#A4CEEC", "2915C": "#62B4E8", "292C": "#6AB2E7", "2925C": "#0092DD", "293C": "#0047B6", "2935C": "#005BC3", "294C": "#003580", "2945C": "#0053A5", "295C": "#002D62", "2955C": "#003B6F", "296C": "#002740", "2965C": "#003151", "297C": "#78C7EB", "2975C": "#A5D9EC", "298C": "#42B4E6", "2985C": "#40BDE8", "299C": "#00A0E2", "2995C": "#00A2E1", "300C": "#0067C6", "3005C": "#0076CC", "301C": "#00529B", "3015C": "#0060A1", "302C": "#00436E", "3025C": "#00496E", "303C": "#00344D", "3035C": "#003A4F", "304C": "#A2DBEB", "305C": "#53CAEB", "306C": "#00B5E6", "307C": "#0070B2", "308C": "#005883", "309C": "#003947", "310C": "#66CFE6", "3105C": "#6FD2E4", "311C": "#00C2E3", "3115C": "#00C4DC", "312C": "#00A7D4", "3125C": "#00AECE", "313C": "#0092C7", "3135C": "#0092BA", "314C": "#007FAC", "3145C": "#007A97", "315C": "#006685", "3155C": "#00667C", "316C": "#004650", "3165C": "#004F5D", "317C": "#BFE5EA", "318C": "#8EDBE5", "319C": "#36CCDA", "320C": "#0097AC", "321C": "#008193", "322C": "#006F7A", "323C": "#006068", "324C": "#98D9DB", "3242C": "#75D9D8", "3245C": "#7BDDD8", "3248C": "#7BD2C8", "325C": "#47C7C7", "3252C": "#41D2D2", "3255C": "#32D4CB", "3258C": "#43C4B7", "326C": "#00AFAD", "3262C": "#00BAB9", "3265C": "#00C2B6", "3268C": "#00A994", "327C": "#008579", "3272C": "#00A19C", "3275C": "#00B09D", "3278C": "#00997A", "328C": "#007168", "3282C": "#008480", "3285C": "#009384", "3288C": "#007E64", "329C": "#00625A", "3292C": "#005A53", "3295C": "#007C6F", "3298C": "#006752", "330C": "#00524D", "3302C": "#00423C", "3305C": "#004A41", "3308C": "#004236", "331C": "#B2E7DF", "332C": "#9FE4DB", "333C": "#43D9C7", "334C": "#009878", "335C": "#007B63", "336C": "#006651", "337C": "#94D8C8", "3375C": "#81E0C7", "338C": "#76D1BD", "3385C": "#3BD6B2", "339C": "#00B08B", "3395C": "#00C590", "340C": "#009460", "3405C": "#00AE68", "341C": "#007856", "3415C": "#00774B", "342C": "#006A4E", "3425C": "#006644", "343C": "#00533E", "3435C": "#004731", "344C": "#A6DEC1", "345C": "#89D5AF", "346C": "#5EC998", "347C": "#009543", "348C": "#007E3A", "349C": "#006233", "350C": "#18472C", "351C": "#A7E6C4", "352C": "#87E0B0", "353C": "#6ADCA2", "354C": "#00AB39", "355C": "#009530", "356C": "#007229", "357C": "#0F4D2A", "358C": "#A5DB92", "359C": "#9FD98B", "360C": "#55BE47", "361C": "#12AD2B", "362C": "#289728", "363C": "#2F8927", "364C": "#317023", "365C": "#CCE5A2", "366C": "#BCE18D", "367C": "#A4D867", "368C": "#62BD19", "369C": "#4FA600", "370C": "#4F8A10", "371C": "#4A601C", "372C": "#D7E9A1", "373C": "#CDE985", "374C": "#BAE55F", "375C": "#87D300", "376C": "#76B900", "377C": "#679000", "378C": "#4D5A12", "379C": "#DDE56C", "380C": "#D3E13C", "381C": "#C8DB00", "382C": "#B9D300", "383C": "#9FAA00", "384C": "#8B9000", "385C": "#6E6A12", "386C": "#E5E96E", "387C": "#DEE63A", "388C": "#D7E300", "389C": "#C6DB00", "390C": "#B2BC00", "391C": "#959200", "392C": "#7F7800", "393C": "#EDEB8F", "3935C": "#F0EB7A", "394C": "#E9E73F", "3945C": "#EFE600", "395C": "#E4E400", "3955C": "#ECE100", "396C": "#DDDF00", "3965C": "#E9DC00", "397C": "#BEB800", "3975C": "#BBA800", "398C": "#ABA200", "3985C": "#9B8900", "399C": "#998D00", "3995C": "#6A5B07", "400C": "#CDC9C4", "401C": "#BDB8B1", "402C": "#ADA59D", "403C": "#988F86", "404C": "#7C7369", "405C": "#645A50", "406C": "#CAC4C2", "408C": "#A59997", "409C": "#948683", "410C": "#7B6E6A", "411C": "#62524E", "412C": "#372B27", "413C": "#C8C9C3", "414C": "#B5B6B0", "415C": "#9D9D96", "416C": "#87887F", "417C": "#6E6F64", "418C": "#5A5B51", "419C": "#1F211C", "420C": "#CCCCCC", "421C": "#BABBBC", "422C": "#A9AAAB", "423C": "#939495", "424C": "#767A7D", "425C": "#56595C", "426C": "#212424", "427C": "#D2D6D9", "428C": "#C3C8CD", "429C": "#A8ADB4", "430C": "#868F98", "431C": "#616A74", "432C": "#414B56", "433C": "#212930", "434C": "#D3C9CE", "435C": "#C8BAC0", "436C": "#B7A6AD", "437C": "#846E74", "438C": "#513E3E", "439C": "#443535", "440C": "#392E2C", "441C": "#CBD1D4", "442C": "#B3BCC0", "443C": "#99A3A6", "444C": "#7B858A", "445C": "#4F5559", "446C": "#3D4242", "447C": "#323532", "448C": "#473E26", "4485C": "#5D4718", "449C": "#4D4325", "4495C": "#836E2C", "450C": "#514826", "4505C": "#9B8948", "451C": "#9F9B74", "4515C": "#B5A570", "452C": "#B5B292", "4525C": "#C5BA8E", "453C": "#C8C5AC", "4535C": "#D4CCAA", "454C": "#D5D3BF", "4545C": "#DED9C2", "455C": "#655415", "456C": "#977F09", "457C": "#B29200", "458C": "#DBCA67", "459C": "#DFD27C", "460C": "#E5DB97", "461C": "#E7E3B5", "462C": "#563F23", "4625C": "#4E2614", "463C": "#6D4921", "4635C": "#905A33", "464C": "#855723", "4645C": "#B17F5C", "465C": "#B99C6B", "4655C": "#C09477", "466C": "#CAB388", "4665C": "#D1AE97", "467C": "#D5C4A1", "4675C": "#DDC2B0", "468C": "#E0D4BB", "4685C": "#E4D2C5", "469C": "#613418", "4695C": "#532821", "470C": "#9B4D1B", "4705C": "#7F4C3E", "471C": "#B75312", "4715C": "#9B6E5F", "472C": "#E49969", "4725C": "#B28D7F", "473C": "#EDB996", "4735C": "#C5AAA0", "474C": "#EEC5A9", "4745C": "#D4BEB6", "475C": "#F0D0BB", "4755C": "#DDCDC7", "476C": "#513127", "477C": "#5E2F24", "478C": "#723629", "479C": "#AD806C", "480C": "#C8A99A", "481C": "#D5BDB0", "482C": "#DDCEC4", "483C": "#6A2E22", "484C": "#9F2D20", "485C": "#DC241F", "486C": "#EC9384", "487C": "#ECAB9D", "488C": "#ECBBAF", "489C": "#EBCDC3", "490C": "#5A272A", "491C": "#772B2F", "492C": "#91353B", "494C": "#E7A7B6", "495C": "#EDB8C5", "496C": "#EFC4CE", "497C": "#4E2A28", "4975C": "#441E1F", "498C": "#68322E", "4985C": "#854A50", "499C": "#763931", "4995C": "#A16971", "500C": "#C88691", "5005C": "#B7848C", "501C": "#DEACB7", "5015C": "#D1A9B0", "502C": "#E5BFC7", "5025C": "#DBBCC1", "503C": "#E9CCD2", "5035C": "#E3CBD0", "504C": "#4E2029", "505C": "#6E2639", "506C": "#7E2B42", "507C": "#D38DA6", "508C": "#E2ABBF", "509C": "#E7B9CA", "510C": "#E9C2D1", "511C": "#60244E", "5115C": "#4B253E", "512C": "#7E2271", "5125C": "#704165", "513C": "#95288F", "5135C": "#885E80", "514C": "#D385C8", "5145C": "#A17E9A", "515C": "#DFA5D6", "5155C": "#C0A6BD", "516C": "#E7BADF", "5165C": "#D6C5D3", "517C": "#EBCAE3", "5175C": "#E0D5DE", "518C": "#4B2A46", "5185C": "#45293B", "519C": "#5A2D5F", "5195C": "#5E3A51", "520C": "#682F73", "5205C": "#8B687D", "521C": "#AD85BA", "5215C": "#B195A6", "522C": "#BD9ECA", "5225C": "#C6B0BE", "523C": "#CBB2D5", "5235C": "#D4C4CE", "524C": "#DACCE1", "5245C": "#DFD4DB", "525C": "#51265A", "5255C": "#2A254B", "526C": "#61207F", "5265C": "#433B67", "527C": "#6E20A0", "5275C": "#57527E", "528C": "#A774CD", "5285C": "#8581A4", "529C": "#C6A4E1", "5295C": "#AAA7C1", "530C": "#CFB1E3", "5305C": "#C1BED1", "531C": "#D7C4E7", "5315C": "#D4D4E0", "532C": "#262A39", "533C": "#253355", "534C": "#293F6F", "535C": "#95A1C3", "536C": "#A4B1CD", "537C": "#BDC6DA", "538C": "#D2D7E4", "539C": "#002A46", "5395C": "#02253A", "540C": "#002F5D", "5405C": "#3E647E", "541C": "#003C79", "5415C": "#587993", "542C": "#5998C9", "5425C": "#7C98AE", "543C": "#93B9DC", "5435C": "#A5B8C9", "544C": "#B1CBE5", "5445C": "#BCCAD6", "545C": "#BFD3E6", "5455C": "#CCD6E0", "546C": "#003440", "5463C": "#002830", "5467C": "#183533", "547C": "#003E51", "5473C": "#00626E", "5477C": "#3C5B59", "548C": "#004159", "5483C": "#4F8D97", "5487C": "#627D7C", "549C": "#5B97B1", "5493C": "#81ADB5", "5497C": "#8DA09F", "550C": "#85B0C6", "5503C": "#A1C3C9", "5507C": "#AAB8B9", "551C": "#9FC1D3", "5513C": "#BED5D9", "5517C": "#BFCBCC", "552C": "#B9D0DC", "5523C": "#CFDEE1", "5527C": "#CCD4D4", "553C": "#214232", "5535C": "#1B3930", "554C": "#24604A", "5545C": "#4A6D62", "555C": "#13694E", "5555C": "#6E8D82", "556C": "#74A18E", "5565C": "#8FA8A0", "557C": "#98BAAC", "5575C": "#A9BDB6", "558C": "#ACC7BD", "5585C": "#C0CFCB", "559C": "#C0D4CD", "5595C": "#D3DEDB", "560C": "#22483F", "5605C": "#193025", "561C": "#0F6259", "5615C": "#5A7060", "562C": "#007770", "5625C": "#6C8072", "563C": "#72B8B4", "5635C": "#97A69B", "564C": "#98CCC9", "5645C": "#B1BCB5", "565C": "#B9DCDA", "5655C": "#BDC5BF", "566C": "#CDE3E2", "5665C": "#CDD3CD", "567C": "#18453B", "569C": "#008478", "570C": "#76C6BE", "571C": "#9DD6CF", "572C": "#B4DEDB", "573C": "#C1E2DE", "574C": "#404F24", "5743C": "#3E4723", "5747C": "#404616", "575C": "#56732E", "5753C": "#5E6639", "5757C": "#6F732D", "576C": "#668E3C", "5763C": "#6E7649", "5767C": "#8D9150", "577C": "#B2C891", "5773C": "#939871", "5777C": "#A7AB74", "578C": "#BDD0A0", "5783C": "#ADB291", "5787C": "#C1C49A", "579C": "#C5D5A9", "5793C": "#BDC2A9", "5797C": "#CED1B3", "580C": "#CFDDBB", "5803C": "#CED2BF", "5807C": "#D9DCC5", "581C": "#605A12", "5815C": "#4B4516", "582C": "#888600", "5825C": "#7D762F", "583C": "#ABB400", "5835C": "#9D9754", "584C": "#CBD34C", "5845C": "#ADA86B", "585C": "#D8DB6F", "5855C": "#C7C397", "586C": "#DDE18A", "5865C": "#D3CFAC", "587C": "#E2E59F", "5875C": "#D9D7B9", "600C": "#EEEBB6", "601C": "#EEEAA5", "602C": "#EEE88D", "603C": "#EDE25E", "604C": "#EADB1B", "605C": "#E0CA00", "606C": "#D8BD00", "607C": "#EBE9C3", "608C": "#E9E6B4", "609C": "#E7E29A", "610C": "#E2D973", "611C": "#D8CC46", "612C": "#C4B300", "613C": "#B39D00", "614C": "#E3E1C1", "615C": "#DDDBB1", "616C": "#D7D29D", "617C": "#C9C37F", "618C": "#B4A851", "619C": "#9C8E2A", "620C": "#887811", "621C": "#D2DFDC", "622C": "#BDD2CC", "623C": "#9EBCB3", "624C": "#78A095", "625C": "#518274", "626C": "#1F5647", "627C": "#032D23", "628C": "#C8E2E8", "629C": "#AADAE5", "630C": "#82CBDD", "631C": "#48B8D2", "632C": "#009EC0", "633C": "#007CA4", "634C": "#00628C", "635C": "#ADDDEB", "636C": "#8DD4E9", "637C": "#5BC8E7", "638C": "#00B2DE", "639C": "#009ACF", "640C": "#0085C2", "641C": "#0070B2", "642C": "#CED9E7", "643C": "#C5D2E3", "644C": "#97B1D0", "645C": "#7498C0", "646C": "#5781AE", "647C": "#11568C", "648C": "#002B5F", "649C": "#D4DCE8", "650C": "#C2CDE0", "651C": "#99AECE", "652C": "#6F8DB9", "653C": "#2A568F", "654C": "#003066", "655C": "#002252", "656C": "#D4DDED", "657C": "#BFD0EA", "658C": "#A1BBE4", "659C": "#6E96D5", "660C": "#296DC1", "661C": "#003596", "662C": "#002280", "663C": "#DED8E6", "664C": "#D7D0E0", "665C": "#C5BBD3", "666C": "#A392B7", "667C": "#7C6495", "668C": "#624A7E", "669C": "#432C5F", "670C": "#EAD4E4", "671C": "#E6C1DB", "672C": "#E1A7CF", "673C": "#DA89BE", "674C": "#CE62A4", "675C": "#B62A79", "676C": "#A30059", "677C": "#E5D1DF", "678C": "#E2C9DA", "679C": "#DEBDD4", "680C": "#CB97B7", "681C": "#B8749E", "682C": "#9C4878", "683C": "#7C2250", "684C": "#E5CAD9", "685C": "#E1BCD0", "686C": "#DBAEC6", "687C": "#C686A9", "688C": "#B46B93", "689C": "#95416F", "690C": "#6D2348", "691C": "#E7CDD2", "692C": "#E2C1C8", "693C": "#D9A7B1", "694C": "#CA909C", "695C": "#B06876", "696C": "#944554", "697C": "#81333D", "698C": "#EDCFD7", "699C": "#F0C2CD", "700C": "#ECA9B9", "701C": "#E58DA2", "702C": "#D5647C", "703C": "#BA394E", "704C": "#A22630", "705C": "#F2D6DE", "706C": "#F5C7D4", "707C": "#F5B0C1", "708C": "#F590A6", "709C": "#EF6782", "710C": "#E54661", "711C": "#D32939", "712C": "#FACDAE", "713C": "#FBC399", "714C": "#FDB179", "715C": "#F9964A", "716C": "#F17C0E", "717C": "#DE6100", "718C": "#CF5200", "719C": "#EFCFB8", "720C": "#ECC3A5", "721C": "#E5AE86", "722C": "#D58F59", "723C": "#C0722F", "724C": "#9A4B00", "725C": "#843B00", "726C": "#E8CEBB", "727C": "#E1BEA4", "728C": "#D5AA88", "729C": "#C38E63", "730C": "#AC703D", "731C": "#793F0D", "732C": "#64300A", "801C": "#00A7D8", "802C": "#5BDD45", "803C": "#FFE805", "804C": "#FFA243", "805C": "#FF585E", "806C": "#FF1CAC", "807C": "#D708B2", "808C": "#00AE97", "809C": "#E1E400", "810C": "#FFCE09", "811C": "#FF7750", "812C": "#FF3485", "813C": "#EA12AF", "814C": "#7E60CE",]