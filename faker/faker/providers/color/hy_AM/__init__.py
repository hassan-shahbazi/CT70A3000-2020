from collections import OrderedDict

from .. import Provider as ColorProvider


class Provider(ColorProvider):

    all_colors = OrderedDict((
        ("Ալիսի կապույտ", "#F0F8FF"),
        ("Անանուխի կրեմ", "#F5FFFA"),
        ("Անտառային կանաչ", "#228B22"),
        ("Արծաթագույն", "#C0C0C0"),
        ("Արքայական կապույտ", "#4169E1"),
        ("Բաց դեղին", "#FFFFE0"),
        ("Բաց դեղնաոսկեգույն", "#FAFAD2"),
        ("Բաց երկնագույն", "#87CEFA"),
        ("Բաց ծովային կանաչ", "#20B2AA"),
        ("Բաց կաթնագույն", "#FFFFF0"),
        ("Բաց կանաչ", "#90EE90"),
        ("Բաց կապույտ", "#ADD8E6"),
        ("Բաց կապտականաչ", "#E0FFFF"),
        ("Բաց կորալ", "#F08080"),
        ("Բաց մանուշակագույն", "#EE82EE"),
        ("Բաց մոխրագույն թերթաքար", "#778899"),
        ("Բաց մոխրագույն", "#D3D3D3"),
        ("Բաց նշագույն", "#FFEBCD"),
        ("Բաց պողպատե կապույտ", "#B0C4DE"),
        ("Բաց սաղմոնագույն", "#FFA07A"),
        ("Բաց վարդագույն", "#FFB6C1"),
        ("Բեժ", "#F5F5DC"),
        ("Բոսորագույն", "#DC143C"),
        ("Գարնանային կանաչ", "#00FF7F"),
        ("Գեյնսբորրո", "#DCDCDC"),
        ("Գունատ կանաչ", "#98FB98"),
        ("Գունատ կարմիր մանուշակագույն", "#DB7093"),
        ("Գունատ ոսկեգույն", "#EEE8AA"),
        ("Գունատ փիրուզագույն", "#AFEEEE"),
        ("Գրասենյակային կանաչ", "#008000"),
        ("Դարչնագույն ավազ", "#F4A460"),
        ("Դարչնագույն", "#964b00"),
        ("Դեղին", "#FFFF00"),
        ("Դեղձի կրեմ", "#FFDAB9"),
        ("Դեղնականաչ", "#9ACD3"),
        ("Դոդջերս կապույտ", "#1E90FF"),
        ("Եգիպտացորենի մազիկներ", "#FFF8DC"),
        ("Երկնագույն մառախուղ", "#F0FFFF"),
        ("Երկնագույն", "#87CEEB"),
        ("Զինվորական կանաչ", "#6B8E23"),
        ("Թամբի դարչնագույն", "#8B4513"),
        ("Թեժ վարդագույն", "#FF69B4"),
        ("Թուխ", "#D2B48C"),
        ("Ինդիգո", "#4B0082"),
        ("Լայմի կանաչ", "#32CD32"),
        ("Լավանդ", "#E6E6FA"),
        ("Լոլիկ", "#FF6347"),
        ("Խակի", "#F0E68C"),
        ("Խոլորձագույն", "#DA70D6"),
        ("Ծխագույն", "#F5F5F5"),
        ("Ծովախեցի", "#FFF5EE"),
        ("Ծովակնագույն", "#7FFFD4"),
        ("Ծովային կանաչ", "#2E8B57"),
        ("Կադետների կապույտ", "#5F9EA0"),
        ("Կաթնագույն", "#FFFAF0"),
        ("Կակաոյի դարչնագույն", "#D2691E"),
        ("Կանաչ", "#00FF00"),
        ("Կանաչադեղին", "#ADFF2F"),
        ("Կապույտ թերթաքար", "#6A5ACD"),
        ("Կապույտ մանուշակագույն", "#8A2BE2"),
        ("Կապույտ փոշի", "#B0E0E6"),
        ("Կապույտ", "#0000FF"),
        ("Կապտականաչ", "#00FFFF"),
        ("Կարմիր դարչնագույն", "#A52A2A"),
        ("Կարմիր լավանդ", "#FFF0F5"),
        ("Կարմիր մանուշակագույն", "#C71585"),
        ("Կարմիր", "#FF0000"),
        ("Կեսգիշերային կապույտ", "#191970"),
        ("Կիտրոնի շիֆոն", "#FFFACD"),
        ("Կորալ", "#FF7F50"),
        ("Հարած պապայա", "#FFEFD5"),
        ("Հին ժանյակ", "#FDF5E6"),
        ("Հնաոճ սպիտակ", "#FAEBD7"),
        ("Հնդկական կարմիր", "#CD5C5C"),
        ("Հրակայուն աղյուս", "#B22222"),
        ("Ձիթապտղի գույն", "#808000"),
        ("Ձյունաճերմակ", "#FFFAFA"),
        ("Մանուշակագույն", "#800080"),
        ("Մեղրացող սեխ", "#F0FFF0"),
        ("Միջին գարնանային կանաչ", "#00FA9A"),
        ("Միջին խոլորձագույն", "#BA55D3"),
        ("Միջին ծովակնագույն", "#66CDAA"),
        ("Միջին ծովային կանաչ", "#3CB371"),
        ("Միջին կապույտ թերթաքար", "#7B68EE"),
        ("Միջին կապույտ", "#0000CD"),
        ("Միջին կապտականաչ", "#9370DB"),
        ("Միջին փիրուզագույն", "#48D1CC"),
        ("Մոխրագույն թերթաքար", "#708090"),
        ("Մոխրագույն", "#808080"),
        ("Մոկասին", "#FFE4B5"),
        ("Մուգ երկնագույն", "#00BFFF"),
        ("Մուգ խակի", "#BDB76B"),
        ("Մուգ խոլորձագույն", "#9932CC"),
        ("Մուգ ծովային կանաչ", "#8FBC8F"),
        ("Մուգ կանաչ", "#006400"),
        ("Մուգ կապույտ թերթաքար", "#483D8B"),
        ("Մուգ կապույտ", "#00008B"),
        ("Մուգ կապտականաչ", "#008080"),
        ("Մուգ կարմիր", "#8B0000"),
        ("Մուգ ձիթապտղի կանաչ", "#556B2F"),
        ("Մուգ մանուշակագույն", "#9400D3"),
        ("Մուգ մոխրագույն թերթաքար", "#2F4F4F"),
        ("Մուգ մոխրագույն", "#696969"),
        ("Մուգ մոխրագույն", "#A9A9A9"),
        ("Մուգ նարնջագույն", "#FF8C00"),
        ("Մուգ ոսկեգույն", "#B8860B"),
        ("Մուգ սաղմոնագույն", "#E9967A"),
        ("Մուգ վառ մանուշակագույն", "#8B008B"),
        ("Մուգ վարդագույն", "#FF1493"),
        ("Մուգ փիրուզագույն", "#00CED1"),
        ("Նավահո սպիտակ", "#FFDEAD"),
        ("Նավատորմի կապույտ", "#000080"),
        ("Նարնջագույն կարմիր", "#FF4500"),
        ("Նարնջագույն", "#FFA500"),
        ("Նշագույն", "#FFE4C4"),
        ("Շագանակագույն", "#800000"),
        ("Շարտրուզ", "#7FFF00"),
        ("Ոսկեգույն ձող", "#DAA520"),
        ("Ոսկեգույն", "#FFD700"),
        ("Պերու", "#CD853F"),
        ("Պողպատե կապույտ", "#4682B4"),
        ("Սալոր", "#DDA0DD"),
        ("Սաղմոնագույն", "#FA8072"),
        ("Սիենա", "#A0522D"),
        ("Սիզամարգի կանաչ", "#7CFC00"),
        ("Սպիտակ ստվեր", "#F8F8FF"),
        ("Սպիտակ", "#FFFFFF"),
        ("Սև", "#000000"),
        ("Վառ մանուշակագույն", "#FF00FF"),
        ("Վարդագույն", "#FFC0CB"),
        ("Վարդագույն", "#FFE4E1"),
        ("Վարդադարչնագույն", "#BC8F8F"),
        ("Վուշ", "#FAF0E6"),
        ("Տատասկ", "#D8BFD8"),
        ("Տերեփուկի կապույտ", "#6495ED"),
        ("Ցորենագույն", "#F5DEB3"),
        ("Փիրուզագույն", "#40E0D0"),
        ("Փխրուն փայտ", "#DEB887"),
    ))

    safe_colors = (
        'սև', 'շագանակագույն', 'կանաչ', 'նավատորմի կապույտ', 'ձիթապտղի գույն',
        'մանուշակագույն', 'մուգ կապտականաչ', 'լայմ', 'կապույտ', 'արծաթագույն',
        'մոխրագույն', 'դեղին', 'վառ մանուշակագույն', 'կապտականաչ', 'սպիտակ',
    )
