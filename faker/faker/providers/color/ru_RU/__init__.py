from collections import OrderedDict

from .. import Provider as ColorProvider

localized = True


class Provider(ColorProvider):
    all_colors = OrderedDict((
        ("Античный Белый", "#FAEBD7"),
        ("Аквамарин", "#7FFFD4"),
        ("Лазурный", "#F0FFFF"),
        ("Бежевый", "#F5F5DC"),
        ("Черный", "#000000"),
        ("Синий", "#0000FF"),
        ("Сине-фиолетовый", "#8A2BE2"),
        ("Коричневый", "#A52A2A"),
        ("Шоколадный", "#D2691E"),
        ("Коралловый", "#FF7F50"),
        ("Васильковый", "#6495ED"),
        ("Малиновый", "#DC143C"),
        ("Темно-синий", "#00008B"),
        ("Темно-голубой", "#008B8B"),
        ("Темно-серый", "#A9A9A9"),
        ("Темно-зеленый", "#006400"),
        ("Темный хаки", "#BDB76B"),
        ("Темно-оранжевый", "#FF8C00"),
        ("Темно-красный", "#8B0000"),
        ("Темно-бирюзовый", "#00CED1"),
        ("Темно-фиолетовый", "#9400D3"),
        ("Темно-розовый", "#FF1493"),
        ("Тусклый серый", "#696969"),
        ("Фуксия", "#FF00FF"),
        ("Золотой", "#FFD700"),
        ("Серый", "#808080"),
        ("Зеленый", "#008000"),
        ("Желто-зеленый", "#ADFF2F"),
        ("Ярко-розовый", "#FF69B4"),
        ("Индиго", "#4B0082"),
        ("Слоновая кость", "#FFFFF0"),
        ("Хаки", "#F0E68C"),
        ("Розовато-лавандовый", "#FFF0F5"),
        ("Светло-синий", "#ADD8E6"),
        ("Светло-голубой", "#E0FFFF"),
        ("Светло-серый", "#D3D3D3"),
        ("Светло-зеленый", "#90EE90"),
        ("Светло-розовый", "#FFB6C1"),
        ("Светло-голубой", "#87CEFA"),
        ("Светло-желтый", "#FFFFE0"),
        ("Каштановый", "#800000"),
        ("Оранжевый", "#FFA500"),
        ("Оранжево-красный", "#FF4500"),
        ("Бледно-зеленый", "#98FB98"),
        ("Бледно-Бирюзовый", "#AFEEEE"),
        ("Розовый", "#FFC0CB"),
        ("Сливовый", "#DDA0DD"),
        ("Пурпурный", "#800080"),
        ("Красный", "#FF0000"),
        ("Цвет морской волны", "#2E8B57"),
        ("Серебряный", "#C0C0C0"),
        ("Бирюзовый", "#40E0D0"),
        ("Фиолетовый", "#EE82EE"),
        ("Белый", "#FFFFFF"),
        ("Желтый", "#FFFF00"),
        ("Желто-зеленый", "#9ACD32"),
    ))

    safe_colors = (
        'черный', 'бордовый', 'зеленый', 'оливковый',
        'пурпурный', 'teal', 'lime', 'синий', 'серебряный',
        'серый', 'желтый', 'фуксия', 'белый',
    )
