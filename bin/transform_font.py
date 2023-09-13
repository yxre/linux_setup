
from fontTools.ttLib import TTFont
f = TTFont('./Roboto-Medium.ttf')
f.flavor = 'woff2'
f.save('./Roboto-Medium.woff2')