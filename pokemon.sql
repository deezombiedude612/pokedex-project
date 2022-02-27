DROP DATABASE IF EXISTS `pokemon`;
CREATE DATABASE `pokemon`;
USE `pokemon`;

DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
	`id`		INT NOT NULL,
    `name`		VARCHAR(15) NOT NULL,
    `jp_name`	VARCHAR(10) NOT NULL,
    
    PRIMARY KEY(`id`)
);

INSERT INTO `types`(`id`, `name`, `jp_name`) VALUES 
(0, 'DRAGON', 'ドラゴン'),		# 0
(1, 'GHOST', 'ゴースト'),			# 1
(2, 'GROUND', 'じめん'),			# 2
(3, 'FLYING', 'ひこう'),			# 3
(4, 'POISON', 'どく'),			# 4
(5, 'BUG', 'むし'),				# 5
(6, 'WATER', 'みず'),			# 6
(7, 'ELECTRIC', 'でんき'),		# 7
(8, 'ROCK', 'いわ'),				# 8
(9, 'GRASS', 'くさ'),			# 9
(10, 'DARK', 'あく'),			# 10
(11, 'ICE', 'こおり'),			# 11
(12, 'NORMAL', 'ノーマル'),		# 12
(13, 'FIRE', 'ほのお'),			# 13
(14, 'FIGHTING', 'かくとう'),		# 14
(15, 'STEEL', 'はがね'),			# 15
(16, 'PSYCHIC', 'エスパー'),		# 16
(17, 'FAIRY', 'フェアリ')			# 17
;

DROP TABLE IF EXISTS `pokemon_list`;
CREATE TABLE `pokemon_list` (
	`id`		INT NOT NULL AUTO_INCREMENT,
    `name`		VARCHAR(50) NOT NULL,
    `jp_name`	VARCHAR(15) NOT NULL,
    
    PRIMARY KEY(`id`)
);

# KANTO (0001 - 0151)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('BULBASAUR', 'フシギダネ'),
('IVYSAUR', 'フシギソウ'),
('VENUSAUR', 'フシギバナ'),
('CHARMANDER', 'ヒトカゲ'),
('CHARMELEON', 'リザード'),
('CHARIZARD', 'リザードン'),
('SQUIRTLE', 'ゼニガメ'),
('WARTOTLE', 'カメール'),
('BLASTOISE', 'カメックス'),
('CATERPIE', 'キャタピラー'),
('METAPOD', 'トランセル'),
('BUTTERFREE', 'バタフリー'),
('WEEDLE', 'ビードル'),
('KAKUNA', 'コクーン'),
('BEEDRILL', 'スピアー'),
('PIDGEY', 'ポッポ'),
('PIDGEOTTO', 'ピジョン'),
('PIDGEOT', 'ピジョット'),
('RATTATA', 'コラッタ'),
('RATICATE', 'ラッタ'),
('SPEAROW', 'オニスズメ'),
('FEAROW', 'オニドリル'),
('EKANS', 'アーボ'),
('ARBOK', 'アーボック'),
('PIKACHU', 'ピカチュウ'),
('RAICHU', 'ライチュウ'),
('SANDSHREW', 'サンド'),
('SANDSLASH', 'サンドパン'),
('NIDORAN ♀', 'ニドラン♀'),
('NIDORINA', 'ニドリーナ'),
('NIDOQUEEN', 'ニドクイン'),
('NIDORAN ♂', 'ニドラン♂'),
('NIDORINO', 'ニドリーノ'),
('NIDOKING', 'ニドクイン'),
('CLEFAIRY', 'ピッピ'),
('CLEFABLE', 'ピクシー'),
('VULPIX', 'ロコン'),
('NINETALES', 'キュウコン'),
('JIGGLYPUFF', 'プリン'),
('WIGGLYPUFF', 'プクリン'),
('ZUBAT', 'ズバット'),
('GOLBAT', 'ゴルバット'),
('ODDISH', 'ナゾノクサ'),
('GLOOM', 'クサイハナ'),
('VILEPLUME', 'ラフレシア'),
('PARAS', 'パラス'),
('PARASECT', 'パラセクト'),
('VENONAT', 'コンパン'),
('VENOMOTH', 'モルフォン'),
('DIGLETT', 'ディグダ'),
('DUGTRIO', 'ダグトリオ'),
('MEOWTH', 'ニャース'),
('PERSIAN', 'ペルシアン'),
('PSYDUCK', 'コダック'),
('GOLDUCK', 'ゴルダック'),
('MANKEY', 'マンキー'),
('PRIMEAPE', 'オコリザル'),
('GROWLITHE', 'ガーディ'),
('ARCANINE', 'ウインティ'),
('POLIWAG', 'ニョロモ'),
('POLIWHIRL', 'ニョロゾ'),
('POLIWRATH', 'ニョロボン'),
('ABRA', 'ケーシィ'),
('KADABRA', 'ユンゲラー'),
('ALAKAZAM', 'フーディン'),
('MACHOP', 'ワンリキー'),
('MACHOKE', 'ゴーリキー'),
('MACHAMP', 'カイリキー'),
('BELLSPROUT', 'マダツボミ'),
('WEEPINBELL', 'ウツドン'),
('VICTREEBELL', 'ウツボット'),
('TENTACOOL', 'メノクラゲ'),
('TENTACRUEL', 'ドククラゲ'),
('GEODUDE', 'イシツブテ'),
('GRAVELER', 'ゴローン'),
('GOLEM', 'ゴローニャ'),
('PONYTA', 'ポニータ'),
('RAPIDASH', 'ギャロップ'),
('SLOWPOKE', 'ヤドン'),
('SLOWBRO', 'ヤドラン'),
('MAGNEMITE', 'コイル'),
('MAGNETON', 'レアコイル'),
('FARFETCH\'D', 'カモネギ'),
('DODUO', 'ドードー'),
('DODRIO', 'ドードリオ'),
('SEEL', 'パウワウ'),
('DEWGONG', 'ジュゴン'),
('GRIMER', 'ベトベター'),
('MUK', 'ベトベト'),
('SHELLDER', 'シェルダー'),
('CLOYSTER', 'パルシェン'),
('GASTLY', 'ゴース'),
('HAUNTER', 'ゴースト'),
('GENGAR', 'ゲンガー'),
('ONIX', 'イワーク'),
('DROWZEE', 'スリープ'),
('HYPNO', 'スリーパー'),
('KRABBY', 'クラブ'),
('KINGLER', 'キングラー'),
('VOLTORB', 'ビリリダマ'),
('ELECTRODE', 'マルマイン'),
('EXEGGCUTE', 'タマタマ'),
('EXEGGUTOR', 'ナッシー'),
('CUBONE', 'カラカラ'),
('MAROWAK', 'ガラガラ'),
('HITMONLEE', 'サワムラー'),
('HITMONCHAN', 'エビワラー'),
('LICKITUNG', 'ベロリンガ'),
('KOFFING', 'ドガース'),
('WEEZING', 'マタドガース'),
('RHYHORN', 'サイホーン'),
('RHYDON', 'サイド'),
('CHANSEY', 'ラッキー'),
('TANGELA', 'モンジャラ'),
('KANGASKHAN', 'ガルーラ'),
('HORSEA', 'タッツー'),
('SEADRA', 'シードラ'),
('GOLDEEN', 'トサキント'),
('SEAKING', 'アズマオウ'),
('STARYU', 'ヒトデマン'),
('STARMIE', 'スターミー'),
('MR. MIME', 'バリヤード'),
('SCYTHER', 'ストライク'),
('JYNX', 'ルージュラ'),
('ELECTABUZZ', 'エレブー'),
('MAGMAR', 'ブーバー'),
('PINSIR', 'カイロス'),
('TAUROS', 'ケンタロス'),
('MAGIKARP', 'コイキング'),
('GYARADOS', 'ギャラドス'),
('LAPRAS', 'ラプラス'),
('DITTO', 'メタモン'),
('EEVEE', 'イーブイ'),
('VAPOREON', 'シャワーズ'),
('JOLTEON', 'サンダース'),
('FLAREON', 'ブースター'),
('PORYGON', 'ポリゴン'),
('OMANYTE', 'オマナイト'),
('OMASTAR', 'オマスター'),
('KABUTO', 'カブト'),
('KABUTOPS', 'カブトプス'),
('AERODACTYL', 'プテラ'),
('SNORLAX', 'カビゴン'),
('ARTICUNO', 'フリーザー'),
('ZAPDOS', 'サンダー'),
('MOLTRES', 'ファイヤー'),
('DRATINI', 'ミニリュウ'),
('DRAGONAIR', 'ハクリュウ'),
('DRAGONITE', 'カイリュー'),
('MEWTWO', 'ミュウツー'),
('MEW', 'ミュウ')
;

# JOHTO (0152 - 0251)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('CHIKORITA', 'チコリータ'),
('BAYLEEF', 'ベイリーフ'),
('MEGANIUM', 'メガニウム'),
('CYNDAQUIL', 'ヒノアラシ'),
('QUILAVA', 'マグマラシ'),
('TYPHLOSION', 'バクフーン'),
('TOTODILE', 'ワニノコ'),
('CROCONAW', 'アリゲイツ'),
('FERALIGATR', 'オーダイル'),
('SENTRET', 'オタチ'),
('FURRET', 'オオタチ'),
('HOOTHOOT', 'ホーホー'),
('NOCTOWL', 'ヨルノズク'),
('LEDYBA', 'レディバ'),
('LEDIAN', 'レディアン'),
('SPINARAK', 'イトマル'),
('ARIADOS', 'アリアドス'),
('CROBAT', 'クロバット'),
('CHINCHOU', 'チョンチー'),
('LANTURN', 'ランターン'),
('PICHU', 'ピチュー'),
('CLEFFA', 'ピィ'),
('IGGLYBUFF', 'ププリン'),
('TOGEPI', 'トゲピー'),
('TOGETIC', 'トゲチック'),
('NATU', 'ネイティ'),
('XATU', 'ネイティオ'),
('MAREEP', 'メリープ'),
('FLAAFFY', 'モココ'),
('AMPHAROS', 'デンリュウ'),
('BELLOSSOM', 'キレイハナ'),
('MARILL', 'マリル'),
('AZUMARILL', 'マリルリ'),
('SUDOWOODO', 'ウソッキー'),
('POLITOED', 'ニョロトノ'),
('HOPPIP', 'ハネッコ'),
('SKIPLOOM', 'ポポッコ'),
('JUMPLUFF', 'ワタッコ'),
('AIPOM', 'エイパム'),
('SUNKERN', 'ヒマナッツ'),
('SUNFLORA', 'キマワリ'),
('YANMA', 'ヤニャンマ'),
('WOOPER', 'ウパー'),
('QUAGSIRE', 'ヌオー'),
('ESPEON', 'エーフィ'),
('UMBREON', 'ブラッキー'),
('MURKROW', 'ヤミカラス'),
('SLOWKING', 'ヤドキング'),
('MISDREAVUS', 'ムウマ'),
('UNOWN', 'アンオーン'),
('WOBUFFET', 'ソーナンス'),
('GIRAFARIG', 'キリンリキ'),
('PINECO', 'クヌギダマ'),
('FORRETRESS', 'フォレトス'),
('DUNSPARCE', 'ノコッチ'),
('GLIGAR', 'グライガー'),
('STEELIX', 'ハガネール'),
('SNUBBULL', 'ブルー'),
('GRANBULL', 'グランブル'),
('QWILFISH', 'バリーセン'),
('SCIZOR', 'ハッサム'),
('SHUCKLE', 'ツボツボ'),
('HERACROSS', 'ヘラクロス'),
('SNEASEL', 'ニューラ'),
('TEDDIURSA', 'ヒメグマ'),
('URSARING', 'リングマ'),
('SLUGMA', 'マグマッグ'),
('MAGCARGO', 'マグカルゴ'),
('SWINUB', 'ウリムー'),
('PILOSWINE', 'イノムー'),
('CORSOLA', 'サニーゴ'),
('REMORAID', 'テッポウオ'),
('OCTILLERY', 'オクタン'),
('DELIBIRD', 'デリバード'),
('MANTINE', 'マンタイン'),
('SKARMORY', 'エアームド'),
('HOUNDOUR', 'デルビル'),
('HOUNDOOM', 'ヘルガー'),
('KINGDRA', 'キングドラ'),
('PHANPY', 'ゴマゾウ'),
('DONPHAN', 'ドンファン'),
('PORYGON2', 'ポリゴン２'),
('STANTLER', 'オドシシ'),
('SMEARGLE', 'ドーブル'),
('TYROGUE', 'バルキー'),
('HITMONTOP', 'カポエラー'),
('SMOOCHUM', 'ムチュール'),
('ELEKID', 'エレキッド'),
('MAGBY', 'ブビィ'),
('MILTANK', 'ミルタンク'),
('BLISSEY', 'ハピナス'),
('RAIKOU', 'ライコウ'),
('ENTEI', 'エンテイ'),
('SUICUNE', 'スイクン'),
('LARVITAR', 'ヨーギラス'),
('PUPITAR', 'サナギラス'),
('TYRANITAR', 'バンギラス'),
('LUGIA', 'ルギア'),
('HO-OH', 'ホウオウ'),
('CELEBI', 'セレビィ')
;

# HOENN (0252 - 0386)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('TREECKO', 'キモリ'),
('GROVYLE', 'ジュプトル'),
('SCEPTILE', 'ジュカイン'),
('TORCHIC', 'アチャモ'),
('COMBUSKEN', 'ワカシャモ'),
('BLAZIKEN', 'バシャーモ'),
('MUDKIP', 'ミズゴロウ'),
('MARSHTOMP', 'ヌマクロー'),
('SWAMPERT', 'ラグラージ'),
('POOCHYENA', 'ポチエナ'),
('MIGHTYENA', 'グラエナ'),
('ZIGZAGOON', 'ジグザグマ'),
('LINOONE', 'マッスグマ'),
('WURMPLE', 'ケムッソ'),
('SILCOON', 'カラサリス'),
('BEAUTIFLY', 'アゲハント'),
('CASCOON', 'マユルド'),
('DUSTOX', 'ドクケイル'),
('LOTAD', 'ハスボー'),
('LOMBRE', 'ハスブレロ'),
('LUDICOLO', 'ルンパッパ'),
('SEEDOT', 'タネボー'),
('NUZLEAF', 'コノハナ'),
('SHIFTRY', 'ダーテング'),
('TAILLOW', 'スバメ'),
('SWELLOW', 'オオスバメ'),
('WINGULL', 'キャモメ'),
('PELIPPER', 'ぺリッパー'),
('RALTZ', 'ラルトス'),
('KIRLIA', 'キルリア'),
('GARDEVOIR', 'サーナイト'),
('SURSKIT', 'アメタマ'),
('MASQUERAIN', 'アメモース'),
('SHROOMISH', 'キノココ'),
('BRELOOM', 'キノガッサ'),
('SLAKOTH', 'ナマケロ'),
('VIGOROTH', 'ヤルキモノ'),
('SLAKING', 'ケッキング'),
('NINCADA', 'ツチニン'),
('NINJASK', 'テッカニン'),
('SHEDINJA', 'ヌケニン'),
('WHISMUR', 'ゴニョニョ'),
('LOUDRED', 'ドゴーム'),
('EXPLOUD', 'バクオング'),
('MAKUHITA', 'マクノシタ'),
('HARIYAMA', 'ハリテヤマ'),
('AZURILL', 'ルリリ'),
('NOSEPASS', 'ノズパス'),
('SKITTY', 'エネコ'),
('DELCATTY', 'エネコロロ'),
('SABLEYE', 'ヤミラミ'),
('MAWILE', 'クチート'),
('ARON', 'ココドラ'),
('LAIRON', 'コドラ'),
('AGGRON', 'ボスゴドラ'),
('MEDITITE', 'アサナン'),
('MEDICHAM', 'チャーレム'),
('ELECTRIKE', 'ラクライ'),
('MANECTRIC', 'ライボルト'),
('PLUSLE', 'プラスル'),
('MINUN', 'マイナン'),
('VOLBEAT', 'バルビート'),
('ILLUMISE', 'イルミーゼ'),
('ROSELIA', 'ロゼリア'),
('GULPIN', 'ゴクリン'),
('SWALOT', 'マルノーム'),
('CARVANHA', 'キバニア'),
('SHARPEDO', 'サメハダー'),
('WAILMER', 'ホエルコ'),
('WAILORD', 'ホエルオー'),
('NUMEL', 'ドンメル'),
('CAMERUPT', 'バクーダ'),
('TORKOAL', 'コータス'),
('SPOINK', 'バネブー'),
('GRUMPIG', 'ブーピッグ'),
('SPINDA', 'パッチール'),
('TRAPINCH', 'ナックラー'),
('VIBRAVA', 'ビブラーバ'),
('FLYGON', 'フライゴン'),
('CACNEA', 'サボネア'),
('CACTURNE', 'ノクタス'),
('SWABLU', 'チルット'),
('ALTARIA', 'チルタリス'),
('ZANGOOSE', 'ザングース'),
('SEVIPER', 'ハブネーク'),
('LUNATONE', 'ルナトーン'),
('SOLROCK', 'ソルロック'),
('BARBOACH', 'ドジョッチ'),
('WHISCASH', 'ナマズン'),
('CORPHISH', 'ヘイガニ'),
('CRAWDUNT', 'シザリガー'),
('BALTOY', 'ヤジロン'),
('CLAYDOL', 'ネンドール'),
('LILEEP', 'リリーラ'),
('CRADILY', 'ユレイドル'),
('ANORITH', 'アノプス'),
('ARMALDO', 'アーマルド'),
('FEEBAS', 'ヒンバス'),
('MILOTIC', 'ミロカロス'),
('CASTFORM', 'ポワルン'),
('KECLEON', 'カクレオン'),
('SHUPPET', 'カゲボウズ'),
('BANETTE', 'ジュペッタ'),
('DUSKULL', 'ヨマラウ'),
('DUSCLOPS', 'サマヨール'),
('TROPIUS', 'トロピウス'),
('CHIMECHO', 'チリーン'),
('ABSOL', 'アブソル'),
('WYNAUT', 'ソーナノ'),
('SNORUNT', 'ユキワラシ'),
('GLALIE', 'オニゴーリ'),
('SPHEAL', 'タマザラシ'),
('SEALEO', 'トドグラー'),
('WALREIN', 'トドゼルガ'),
('CLAMPERL', 'パールル'),
('HUNTAIL', 'ハンテール'),
('GOREBYSS', 'サクラビス'),
('RELICANTH', 'ジーランス'),
('LUVDISC', 'ラブカス'),
('BAGON', 'タツベイ'),
('SHELGON', 'コモルー'),
('SALAMENCE', 'ボーマンダ'),
('BELDUM', 'ダンバル'),
('METANG', 'メタング'),
('METAGROSS', 'メタグロス'),
('REGIROCK', 'レジロック'),
('REGICE', 'レジアイス'),
('REGISTEEL', 'レジスチル'),
('LATIAS', 'ラティアス'),
('LATIOS', 'ラティオス'),
('KYOGRE', 'カイオーガ'),
('GROUDON', 'グラードン'),
('RAYQUAZA', 'レックウザ'),
('JIRACHI', 'ジラーチ'),
('DEOXYS', 'デオキシス')
;

# SINNOH (0387 - 0493)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('TURTWIG', 'ナエトル'),
('GROTLE', 'ハヤシガメ'),
('TORTERRA', 'ドダイトス'),
('CHIMCHAR', 'ヒコザル'),
('MONFERNO', 'モウカザル'),
('INFERNAPE', 'ゴウカザル'),
('PIPLUP', 'ポッチャマ'),
('PRINPLUP', 'ポッタイシ'),
('EMPOLEON', 'エンペルト'),
('STARLY', 'ムックル'),
('STARAVIA', 'ムクバード'),
('STARAPTOR', 'ムクホーク'),
('BIDOOF', 'ビッパ'),
('BIBAREL', 'ビーダル'),
('KRICKETOT', 'コロボーシ'),
('KRICKETUNE', 'コロトック'),
('SHINX', 'コリンク'),
('LUXIO', 'ルクシオ'),
('LUXRAY', 'レントラー'),
('BUDEW', 'スボミー'),
('ROSERADE', 'ロズレイド'),
('CRANIDOS', 'ズガイドス'),
('RAMPARDOS', 'ラムパルド'),
('SHIELDON', 'タテトプス'),
('BASTIODON', 'トリデプス'),
('BURMY', 'ミノムッチ'),
('WORMADAM', 'ミノマダム'),
('MOTHIM', 'ガーメイル'),
('COMBEE', 'ミツハニー'),
('VESPIQUEN', 'ビークイン'),
('PACHIRISU', 'パチリス'),
('BUIZEL', 'ブイゼル'),
('FLOATZEL', 'フローゼル'),
('CHERUBI', 'チェリンボ'),
('CHERRIM', 'チェリム'),
('SHELLOS', 'カラナクシ'),
('GASTRODON', 'トリトドン'),
('AMBIPOM', 'エテボース'),
('DRIFLOON', 'フワンテ'),
('DRIFBLIM', 'フワライド'),
('BUNEARY', 'ミミロル'),
('LOPUNY', 'ミミロップ'),
('MISMAGIUS', 'ムウマージ'),
('HONCHKROW', 'ドンカラス'),
('GLAMEOW', 'ニャルマー'),
('PURUGLY', 'ブニャット'),
('CHINGLING', 'リーシャン'),
('STUNKY', 'スカンプー'),
('SKUNKTANK', 'スカタンク'),
('BRONZOR', 'ドーミラー'),
('BRONZONG', 'ドータンクン'),
('BONSLY', 'ウソハチ'),
('MIME JR.', 'マネネ'),
('HAPPINY', 'ピンプク'),
('CHATOT', 'ぺラップ'),
('SPIRITOMB', 'ミカルゲ'),
('GIBLE', 'フカマル'),
('GABITE', 'がバイト'),
('GARCHOMP', 'ガブリアス'),
('MUNCHLAX', 'ゴンベ'),
('RIOLU', 'リオル'),
('LUCARIO', 'ルカリオ'),
('HIPPOPOTAS', 'ヒポポタス'),
('HIPPOWDON', 'カバルドン'),
('SKORUPI', 'スコルピ'),
('DRAPION', 'ドラピオン'),
('CROAGUNK', 'グレッグル'),
('TOXICROAK', 'ドクロッグ'),
('CARNIVINE', 'マスキッパ'),
('FINNEON', 'ケイコウオ'),
('LUMINEON', 'ネオラント'),
('MANTYKE', 'タマンタ'),
('SNOVER', 'ユキカブリ'),
('ABOMASNOW', 'ユキノオー'),
('WEAVILE', 'マニューラ'),
('MAGNEZONE', 'ジバコイル'),
('LICKILICKY', 'べろベルト'),
('RHYPERIOR', 'ドサイドン'),
('TANGROWTH', 'モジャンボ'),
('ELECTIVIRE', 'エレキブル'),
('MAGMOTAR', 'ブーバーン'),
('TOGEKISS', 'トゲキッス'),
('YANMEGA', 'メガヤンマ'),
('LEAFEON', 'リーフィア'),
('GLACEON', 'グレイシア'),
('GLISCOR', 'グライオン'),
('MAMOSWINE', 'マンムー'),
('PORYGON-Z', 'ポリゴンZ'),
('GALLADE', 'エルレイド'),
('PROBOPASS', 'ダイノーズ'),
('DUSKNOIR', 'ヨノワール'),
('FROSLASS', 'ユキメノコ'),
('ROTOM', 'ロトム'),
('UXIE', 'ユクシー'),
('MESPRIT', 'エムリット'),
('AZELF', 'アグノム'),
('DIALGA', 'ディアルガ'),
('PALKIA', 'パルキア'),
('HEATRAN', 'ヒードラン'),
('REGIGIGAS', 'レジギガス'),
('GIRATINA', 'ギラティナ'),
('CRESSELIA', 'クレセリア'),
('PHIONE', 'フィオネ'),
('MANAPHY', 'マナフィ'),
('DARKRAI', 'ダークライ'),
('SHAYMIN', 'シェイミ'),
('ARCEUS', 'アルセウス')
;

# UNOVA (0494 - 0649)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('VICTINI', 'ビクティニ'),
('SNIVY', 'ツタージャ'),
('SERVINE', 'ジャノビー'),
('SERPERIOR', 'ジャローダ'),
('TEPIG', 'ポカブ'),
('PIGNITE', 'チャオブー'),
('EMBOAR', 'エンブオー'),
('OSHAWOTT', 'ミジュマル'),
('DEWOTT', 'フタチマル'),
('SAMUROTT', 'ダイケンキ'),
('PATRAT', 'ミネズミ'),
('WATCHOG', 'ミルホッグ'),
('LILLIPUP', 'ヨーテリー'),
('HERDIER', 'ハーデリア'),
('STOUTLAND', 'ムーランド'),
('PURRLOIN', 'チョロネコ'),
('LIEPARD', 'レパルダス'),
('PANSAGE', 'ヤナップ'),
('SIMISAGE', 'ヤナッキー'),
('PANSEAR', 'バオップ'),
('SIMISEAR', 'バオッキー'),
('PANPOUR', 'ヒヤップ'),
('SIMIPOUR', 'ヒヤッキー'),
('MUNNA', 'ムンナ'),
('MUSHARNA', 'ムシャーナ'),
('PIDOVE', 'マメパト'),
('TRANQUIL', 'ハトーボー'),
('UNFEZANT', 'ケンホロウ'),
('BLITZLE', 'シママ'),
('ZEBSTRIKA', 'ゼブライカ'),
('ROGGENROLA', 'ダンゴロ'),
('BOLDORE', 'ガントル'),
('GIGALITH', 'ギガイアス'),
('WOOBAT', 'コロモリ'),
('SWOOBAT', 'ココロモリ'),
('DRILBUR', 'モグリュー'),
('EXCADRILL', 'ドリュウズ'),
('AUDINO', 'タブンネ'),
('TIMBURR', 'ドッコラー'),
('GURDURR', 'ドテッコツ'),
('CONKELDURR', 'ローブシン'),
('TYMPOLE', 'オタマロ'),
('PALIPITOAD', 'ガマガル'),
('SEISMITOAD', 'ガマゲロゲ'),
('THROH', 'ナゲキ'),
('SAWK', 'ダゲキ'),
('SEWADDLE', 'クルミル'),
('SWADLOON', 'クルマユ'),
('LEAVANNY', 'ハハコモリ'),
('VENIPEDE', 'フシデ'),
('WHIRLIPEDE', 'ホイーガ'),
('SCOLIPEDE', 'ペンドラー'),
('COTTONEE', 'モンメン'),
('WHIMSICOTT', 'エルフーン'),
('PETILIL', 'チュリネ'),
('LILLIGANT', 'ドレディア'),
('BASCULIN', 'バスラオ'),
('SANDILE', 'メグロコ'),
('KROKOROK', 'ワルビル'),
('KROOKODILE', 'ワルビアル'),
('DARUMAKA', 'ダルマッカ'),
('DARMANITAN', 'ヒヒダルマ'),
('MARACTUS', 'マラカッチ'),
('DWEBBLE', 'イシズマイ'),
('CRUSTLE', 'イワパレス'),
('SCRAGGY', 'ズルッグ'),
('SCRAFTY', 'ズルズキン'),
('SIGILYPH', 'シンボラー'),
('YAMASK', 'デスマス'),
('COFAGRIGUS', 'デスカーン'),
('TIRTOUGA', 'プロトーガ'),
('CARRACOSTA', 'アバゴーラ'),
('ARCHEN', 'アーケン'),
('ARCHEOPS', 'アーケオス'),
('TRUBBISH', 'ヤブクロン'),
('GARBODOR', 'ダストダス'),
('ZORUA', 'ゾロア'),
('ZOROARK', 'ゾロアーク'),
('MINCCINO', 'チラーミィ'),
('CINCCINO', 'チラチーノ'),
('GOTHITA', 'ゴチム'),
('GOTHORITA', 'ゴチミル'),
('GOTHITELLE', 'ゴチルゼル'),
('SOLOSIS', 'ユニラン'),
('DUOSION', 'ダブラン'),
('REUNICLUS', 'ランクルス'),
('DUCKLETT', 'コアルヒー'),
('SWANNA', 'スワンナ'),
('VANILLITE', 'バニプッチ'),
('VANILLISH', 'バニリッチ'),
('VANILLUXE', 'バイバニラ'),
('DEERLING', 'シキジカ'),
('SAWSBUCK', 'メブキジカ'),
('EMOLGA', 'エモンガ'),
('KARRABLAST', 'カブルモ'),
('ESCAVALIER', 'シュバルゴ'),
('FOONGUS', 'タマゲタケ'),
('AMOONGUSS', 'モロバレル'),
('FRILLISH', 'プルリル'),
('JELLICENT', 'ブルンゲル'),
('ALOMOMOLA', 'ママンボウ'),
('JOLTIK', 'バチュル'),
('GALVANTULA', 'デンチュラ'),
('FERROSEED', 'テッシード'),
('FERROTHORN', 'ナットレイ'),
('KLINK', 'ギアル'),
('KLANG', 'ギギアル'),
('KLINKLANG', 'ギギギアル'),
('TYNAMO', 'シビシラス'),
('EELEKTRIK', 'シビビール'),
('EELEKTROSS', 'シビルドン'),
('ELGYEM', 'リグレー'),
('BEHEEYEM', 'オーベム'),
('LITWICK', 'ヒトモシ'),
('LAMPENT', 'ランプラー'),
('CHANDELURE', 'シャンデラ'),
('AXEW', 'キバゴ'),
('FRAXURE', 'オノンド'),
('HAXORUS', 'オノノクス'),
('CUBCHOO', 'クマシュン'),
('BEARTIC', 'ツンベアー'),
('CRYOGONAL', 'フリージオ'),
('SHELMET', 'チョボマキ'),
('ACCELGOR', 'アギルダー'),
('STUNFISK', 'マッギョ'),
('MIENFOO', 'コジョフー'),
('MIENSHAO', 'コジョンド'),
('DRUDDIGON', 'クリムガン'),
('GOLETT', 'ゴビット'),
('GOLURK', 'ゴルーグ'),
('PAWNIARD', 'コマタナ'),
('BISHARP', 'キリキザン'),
('BOUFFALANT', 'バッフロン'),
('RUFFLET', 'ワシボン'),
('BRAVIARY', 'ウォーグル'),
('VULLABY', 'バルチャイ'),
('MANDIBUZZ', 'バルジーナ'),
('HEATMOR', 'クイタラン'),
('DURANT', 'アイアント'),
('DEINO', 'モノズ'),
('ZWEILOUS', 'ジヘッド'),
('HYDRIEGON', 'サザンドラ'),
('LARVESTA', 'メラルバ'),
('VOLCARONA', 'ウルがオス'),
('COBALION', 'コバルオン'),
('TERRAKION', 'テラキオン'),
('VIRIZION', 'ビリジオン'),
('TORNADUS', 'トルネロス'),
('THUNDURUS', 'ボルトロス'),
('RESHIRAM', 'レシラム'),
('ZEKROM', 'ゼクロム'),
('LANDORUS', 'ランドロス'),
('KYUREM', 'キュレム'),
('KELDEO', 'ケルディオ'),
('MELOETTA', 'メロエッタ'),
('GENESECT', 'ゲノセクト')
;

# KALOS (0650 - 0721)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('CHESPIN', 'ハリマロン'),
('QUILLADIN', 'ハリボーグ'),
('CHESNAUGHT', 'ブリガロン'),
('FENNEKIN', 'フォッコ'),
('BRAIXEN', 'テールナー'),
('DELPHOX', 'マフォクシー'),
('FROAKIE', 'ケロマツ'),
('FROGADIER', 'ゲコガシラ'),
('GRENINJA', 'ゲッコウガ'),
('BUNNELBY', 'ホルビー'),
('DIGGERSBY', 'ホルード'),
('FLETCHLING', 'ヤヤコマ'),
('FLETCHINDER', 'ヒノヤコマ'),
('TALONFLAME', 'ファイアロー'),
('SCATTERBUG', 'コフキムシ'),
('SPEWPA', 'コフーライ'),
('VIVILLON', 'ビビヨン'),
('LITLEO', 'シシコ'),
('PYROAR', 'カエンジシ'),
('FLABÉBÉ', 'フラべべ'),
('FLOETTE', 'フラエッテ'),
('FLORGES', 'フラージェス'),
('SKIDDO', 'メェークル'),
('GOGOAT', 'ゴーゴート'),
('PANCHAM', 'ヤンチャム'),
('PANGORO', 'ゴロンダ'),
('FURFROU', 'トリミアン'),
('ESPURR', 'ニャスパー'),
('MEOWSTIC', 'ニャオニクス'),
('HONEDGE', 'ヒトツキ'),
('DOUBLADE', 'ニダンギル'),
('AEGISLASH', 'ギルガルド'),
('SPRITZEE', 'シュシュプ'),
('AROMATISSE', 'フレフワン'),
('SWIRLIX', 'ペロッパフ'),
('SLURPUFF', 'ペロリーム'),
('INKAY', 'マーイーカ'),
('MALAMAR', 'カラマネロ'),
('BINACLE', 'カメテテ'),
('BARBARACLE', 'ガメノデス'),
('SKRELP', 'クズもー'),
('DRAGALGE', 'ドラミドロ'),
('CLAUNCHER', 'ウデッポウ'),
('CLAWITZER', 'ブロスター'),
('HELIOPTILE', 'エリキテル'),
('HELIOLISK', 'エレザード'),
('TYRUNT', 'チゴラス'),
('TYRANTRUM', 'ガチゴラス'),
('AMAURA', 'アマルス'),
('AURORUS', 'アマルルガ'),
('SYLVEON', 'ニンフィア'),
('HAWLUCHA', 'ルチャブル'),
('DEDENNE', 'デデンネ'),
('CARBINK', 'メレシー'),
('GOOMY', 'ヌメラ'),
('SLIGGOO', 'ヌメイル'),
('GOODRA', 'ヌメルゴン'),
('KLEFKI', 'クレッフィ'),
('PHANTUMP', 'ボクレー'),
('TREVENANT', 'オーロット'),
('PUMPKABOO', 'バケッチャ'),
('GOURGEIST', 'パンプジン'),
('BERGMITE', 'カチコール'),
('AVALUGG', 'クレベース'),
('NOIBAT', 'オンバット'),
('NOIVERN', 'オンバーン'),
('XERNEAS', 'ゼルネアス'),
('YVELTAL', 'イベルタル'),
('ZYGARDE', 'ジガルデ'),
('DIANCIE', 'ディアンシー'),
('HOOPA', 'フーパ'),
('VOLCANION', 'ボルケニオン')
;

# ALOLA (0722 - 0809)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('ROWLET', 'モクロー'),
('DARTRIX', 'フクスロー'),
('DECIDUEYE', 'ジュナイパー'),
('LITTEN', 'ニャビー'),
('TORRACAT', 'ニャヒート'),
('INCINEROAR', 'ガオガエン'),
('POPPLIO', 'アシマリ'),
('BRIONNE', 'オシャマリ'),
('PRIMARINA', 'アシレーヌ'),
('PIKIPEK', 'ツツケラ'),
('TRUMBEAK', 'ケララッパ'),
('TOUCANNON', 'ドデカバシ'),
('YUNGOOS', 'ヤングース'),
('GUMSHOOS', 'デカグース'),
('GRUBBIN', 'アゴジムシ'),
('CHARJABUG', 'デンジムシ'),
('VIKAVOLT', 'クワガノン'),
('CRABRAWLER', 'マケンカニ'),
('CRABOMINABLE', 'ケケンカニ'),
('ORICORIO', 'オドリドリ'),
('CUTIEFLY', 'アブリー'),
('RIBOMBEE', 'アブリボン'),
('ROCKRUFF', 'イワンコ'),
('LYCANROC', 'ルガルガン'),
('WISHIWASHI', 'ヨワシ'),
('MAREANIE', 'ヒドイデ'),
('TOXAPEX', 'ドヒドイデ'),
('MUDBRAY', 'ドロバンコ'),
('MUDSDALE', 'バンバドロ'),
('DEWPIDER', 'シズクモ'),
('ARAQUANID', 'オニシズクモ'),
('FOMANTIS', 'カリキリ'),
('LURANTIS', 'ラランテス'),
('MORELULL', 'ネマシュ'),
('SHIINOTIC', 'マシェード'),
('SALANDIT', 'ヤトウモリ'),
('SALAZZLE', 'エンニュート'),
('STUFFUL', 'ヌイコグマ'),
('BEWEAR', 'キテルグマ'),
('BOUNSWEET', 'アマカジ'),
('STEENEE', 'アママイコ'),
('TSAREENA', 'アマジョ'),
('COMFEY', 'キュワワー'),
('ORANGURU', 'ヤレユータン'),
('PASSIMIAN', 'ナゲツケサル'),
('WIMPOD', 'コソクムシ'),
('GOLISOPOD', 'グソクムシャ'),
('SANDYGAST', 'スナバァ'),
('PALOSSAND', 'シロデスナ'),
('PYUKUMUKU', 'ナマコブシ'),
('TYPE: NULL', 'タイプ：ヌル'),
('SILVALLY', 'シルヴァディ'),
('MINIOR', 'メテノ'),
('KOMALA', 'ネッコアラ'),
('TURTONATOR', 'バクがメス'),
('TOGEDEMARU', 'トゲデマル'),
('MIMIKYU', 'ミミッキュ'),
('BRUXISH', 'ハギギシリ'),
('DRAMPA', 'ジジーロン'),
('DHELMISE', 'ダダリン'),
('JANGMO-O', 'ジャラコ'),
('HAKAMO-O', 'ジャランゴ'),
('KOMMO-O', 'ジャラランガ'),
('TAPU KOKO', 'カプ・コケコ'),
('TAPU LELE', 'カプ・テテフ'),
('TAPU BULU', 'カプ・ブルル'),
('TAPU FINI', 'カプ・レヒレ'),
('COSMOG', 'コスモッグ'),
('COSMOEM', 'コスモウム'),
('SOLGALEO', 'ソルガレオ'),
('LUNALA', 'ルナアーラ'),
('NIHILEGO', 'ウツロイド'),
('BUZZWOLE', 'マッシブーン'),
('PHEROMOSA', 'フェローチェ'),
('XURKITREE', 'デンジュモク'),
('CELESTEELA', 'テッカグヤ'),
('KARTANA', 'カミツルギ'),
('GUZZLORD', 'アクジキング'),
('NECROZMA', 'ネクロズマ'),
('MAGEARNA', 'マギアナ'),
('MARSHADOW', 'マーシャドー'),
('POIPOLE', 'べべノム'),
('NAGANADEL', 'アーゴヨン'),
('STAKATAKA', 'ツンデツンデ'),
('BLACEPHALON', 'ズガドーン'),
('ZERAORA', 'ゼラオラ'),
('MELTAN', 'メルタン'),
('MELMETAL', 'メルメタル')
;

# GALAR (0810 - 0898)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('GROOKEY', 'サルノリ'),
('THWACKEY', 'バチンキー'),
('RILLABOOM', 'ゴリアンダー'),
('SCORBUNNY', 'ヒバニー'),
('RABOOT', 'ラビフット'),
('CINDERACE', 'エースバーン'),
('SOBBLE', 'メッソン'),
('DRIZZILE', 'ジメレオン'),
('INTELEON', 'インてレオン'),
('SKWOVET', 'ホシガリス'),
('GREEDENT', 'ヨクバリス'),
('ROOKIDEE', 'ココガラ'),
('CORVISQUIRE', 'アオガラス'),
('CORVIKNIGHT', 'アーマーガア'),
('BLIPBUG', 'サッチムシ'),
('DOTTLER', 'レドームシ'),
('ORBEETLE', 'イオルブ'),
('NICKIT', 'クスネ'),
('THIEVUL', 'フォクスライ'),
('GOSSIFLEUR', 'ヒメンカ'),
('ELDEGOSS', 'ワタシラガ'),
('WOOLOO', 'ウールー'),
('DUBWOOL', 'バイウールー'),
('CHEWTLE', 'カムカメ'),
('DREDNAW', 'カジリガメ'),
('YAMPER', 'ワンパチ'),
('BOLTUND', 'パルスワン'),
('ROLYCOLY', 'タンドン'),
('CARKOL', 'トロッゴン'),
('COALOSSAL', 'セキタンザン'),
('APPLIN', 'カジッチュ'),
('FLAPPLE', 'アップリュー'),
('APPLETUN', 'タルップル'),
('SILICOBRA', 'スナヘビ'),
('SANDACONDA', 'サダイジャ'),
('CRAMORANT', 'ウッウ'),
('ARROKUDA', 'サシカマス'),
('BARRASKEWDA', 'カマスジュー'),
('TOXEL', 'エレズン'),
('TOXTRICITY', 'ストリンダー'),
('SIZZLIPEDE', 'ヤクデ'),
('CENTISKORCH', 'マルヤクデ'),
('CLOBBOPUS', 'タタッコ'),
('GRAPPLOCT', 'オトスパス'),
('SINISTEA', 'ヤバチャ'),
('POLTEAGEIST', 'ポットデス'),
('HATENNA', 'ミブリム'),
('HATTREM', 'テブリム'),
('HATTERENE', 'ブリムオン'),
('IMPIDIMP', 'ベロバー'),
('MORGREM', 'ギモー'),
('GRIMMSNARL', 'オーロンゲ'),
('OBSTAGOON', 'タチフサグマ'),
('PERRSERKER', 'ニャイキング'),
('CURSOLA', 'サニゴーン'),
('SIRFETCH\'D', 'ネギガナイト'),
('MR. RIME', 'バリコオル'),
('RUNERIGUS', 'デスバーン'),
('MILCERY', 'マホミル'),
('ALCREMIE', 'マホイップ'),
('FALINKS', 'タイレーつ'),
('PINCURCHIN', 'バチンウニ'),
('SNOM', 'ユキハミ'),
('FROSMOTH', 'モスノウ'),
('STONJOURNER', 'イシヘンジン'),
('EISCUE', 'コオリッポ'),
('INDEEDEE', 'イエッサン'),
('MORPEKO', 'モルペコ'),
('CUFANT', 'ゾウドウ'),
('COPPERAJAH', 'ダイオウドウ'),
('DRACOZOLT', 'パッチラゴン'),
('ARCTOZOLT', 'パッチルドン'),
('DRACOVISH', 'ウオノラゴン'),
('ARCTOVISH', 'ウオチルドン'),
('DURALUDON', 'ジュラルドン'),
('DREEPY', 'ドラメシヤ'),
('DRAKLOAK', 'ドロンチ'),
('DRAGAPULT', 'ドラパルト'),
('ZACIAN', 'ザシアン'),
('ZAMAZENTA', 'ザマゼンタ'),
('ETERNATUS', 'ムゲンダイナ'),
('KUBFU', 'ダクマ'),
('URSHIFU', 'ウーラオス'),
('ZARUDE', 'ザルード'),
('REGIELEKI', 'レジエレキ'), 
('REGIDRAGO', 'レジドラゴ'),
('GLASTRIER', 'ブリザポス'),
('SPECTRIER', 'レイスポス'),
('CALYREX', 'バドレックス')
;

# HISUI (0899 - 0905)
INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES 
('WYRDEER', 'アヤシシ'),
('KLEAVOR', 'バサギリ'),
('URSALUNA', 'ガチグマ'),
('BASCULEIGON', 'イダイトウ'),
('SNEASLER', 'オオニューラ'),
('OVERQWIL', 'ハリーマン'),
('ENAMORUS', 'ラブトロス')
;

INSERT INTO `pokemon_list`(`name`, `jp_name`) VALUES
# Upcoming
('SPRIGATITO', 'ニャオハ'),
('SPRIGATITO Evo 1', ''),
('SPRIGATITO Evo 2', ''),
('FUECOCO', 'ホゲータ'),
('FUECOCO Evo 1', ''),
('FUECOCO Evo 2', ''),
('QUAXLY', 'クワッス'),
('QUAXLY Evo 1', ''),
('QUAXLY Evo 2', '')
;

# Regional Dex Numbers
DROP TABLE IF EXISTS `regional_dex`;
CREATE TABLE `regional_dex` (
	`dex_name`		VARCHAR(40) NOT NULL,
    `dex_id`		INT NOT NULL,
    `national_id`	INT NOT NULL,
    
    FOREIGN KEY(`national_id`) REFERENCES `pokemon_list`(`id`)
);

# Kanto Dex Number (Let's Go! Pikachu & Eevee)
INSERT INTO `regional_dex` VALUES 
('kanto_lgpe', 1, 1),
('kanto_lgpe', 2, 2),
('kanto_lgpe', 3, 3),
('kanto_lgpe', 4, 4),
('kanto_lgpe', 5, 5),
('kanto_lgpe', 6, 6),
('kanto_lgpe', 7, 7),
('kanto_lgpe', 8, 8),
('kanto_lgpe', 9, 9),
('kanto_lgpe', 10, 10),
('kanto_lgpe', 11, 11),
('kanto_lgpe', 12, 12),
('kanto_lgpe', 13, 13),
('kanto_lgpe', 14, 14),
('kanto_lgpe', 15, 15),
('kanto_lgpe', 16, 16),
('kanto_lgpe', 17, 17),
('kanto_lgpe', 18, 18),
('kanto_lgpe', 19, 19),
('kanto_lgpe', 20, 20),
('kanto_lgpe', 21, 21),
('kanto_lgpe', 22, 22),
('kanto_lgpe', 23, 23),
('kanto_lgpe', 24, 24),
('kanto_lgpe', 25, 25),
('kanto_lgpe', 26, 26),
('kanto_lgpe', 27, 27),
('kanto_lgpe', 28, 28),
('kanto_lgpe', 29, 29),
('kanto_lgpe', 30, 30),
('kanto_lgpe', 31, 31),
('kanto_lgpe', 32, 32),
('kanto_lgpe', 33, 33),
('kanto_lgpe', 34, 34),
('kanto_lgpe', 35, 35),
('kanto_lgpe', 36, 36),
('kanto_lgpe', 37, 37),
('kanto_lgpe', 38, 38),
('kanto_lgpe', 39, 39),
('kanto_lgpe', 40, 40),
('kanto_lgpe', 41, 41),
('kanto_lgpe', 42, 42),
('kanto_lgpe', 43, 43),
('kanto_lgpe', 44, 44),
('kanto_lgpe', 45, 45),
('kanto_lgpe', 46, 46),
('kanto_lgpe', 47, 47),
('kanto_lgpe', 48, 48),
('kanto_lgpe', 49, 49),
('kanto_lgpe', 50, 50),
('kanto_lgpe', 51, 51),
('kanto_lgpe', 52, 52),
('kanto_lgpe', 53, 53),
('kanto_lgpe', 54, 54),
('kanto_lgpe', 55, 55),
('kanto_lgpe', 56, 56),
('kanto_lgpe', 57, 57),
('kanto_lgpe', 58, 58),
('kanto_lgpe', 59, 59),
('kanto_lgpe', 60, 60),
('kanto_lgpe', 61, 61),
('kanto_lgpe', 62, 62),
('kanto_lgpe', 63, 63),
('kanto_lgpe', 64, 64),
('kanto_lgpe', 65, 65),
('kanto_lgpe', 66, 66),
('kanto_lgpe', 67, 67),
('kanto_lgpe', 68, 68),
('kanto_lgpe', 69, 69),
('kanto_lgpe', 70, 70),
('kanto_lgpe', 71, 71),
('kanto_lgpe', 72, 72),
('kanto_lgpe', 73, 73),
('kanto_lgpe', 74, 74),
('kanto_lgpe', 75, 75),
('kanto_lgpe', 76, 76),
('kanto_lgpe', 77, 77),
('kanto_lgpe', 78, 78),
('kanto_lgpe', 79, 79),
('kanto_lgpe', 80, 80),
('kanto_lgpe', 81, 81),
('kanto_lgpe', 82, 82),
('kanto_lgpe', 83, 83),
('kanto_lgpe', 84, 84),
('kanto_lgpe', 85, 85),
('kanto_lgpe', 86, 86),
('kanto_lgpe', 87, 87),
('kanto_lgpe', 88, 88),
('kanto_lgpe', 89, 89),
('kanto_lgpe', 90, 90),
('kanto_lgpe', 91, 91),
('kanto_lgpe', 92, 92),
('kanto_lgpe', 93, 93),
('kanto_lgpe', 94, 94),
('kanto_lgpe', 95, 95),
('kanto_lgpe', 96, 96),
('kanto_lgpe', 97, 97),
('kanto_lgpe', 98, 98),
('kanto_lgpe', 99, 99),
('kanto_lgpe', 100, 100),
('kanto_lgpe', 101, 101),
('kanto_lgpe', 102, 102),
('kanto_lgpe', 103, 103),
('kanto_lgpe', 104, 104),
('kanto_lgpe', 105, 105),
('kanto_lgpe', 106, 106),
('kanto_lgpe', 107, 107),
('kanto_lgpe', 108, 108),
('kanto_lgpe', 109, 109),
('kanto_lgpe', 110, 110),
('kanto_lgpe', 111, 111),
('kanto_lgpe', 112, 112),
('kanto_lgpe', 113, 113),
('kanto_lgpe', 114, 114),
('kanto_lgpe', 115, 115),
('kanto_lgpe', 116, 116),
('kanto_lgpe', 117, 117),
('kanto_lgpe', 118, 118),
('kanto_lgpe', 119, 119),
('kanto_lgpe', 120, 120),
('kanto_lgpe', 121, 121),
('kanto_lgpe', 122, 122),
('kanto_lgpe', 123, 123),
('kanto_lgpe', 124, 124),
('kanto_lgpe', 125, 125),
('kanto_lgpe', 126, 126),
('kanto_lgpe', 127, 127),
('kanto_lgpe', 128, 128),
('kanto_lgpe', 129, 129),
('kanto_lgpe', 130, 130),
('kanto_lgpe', 131, 131),
('kanto_lgpe', 132, 132),
('kanto_lgpe', 133, 133),
('kanto_lgpe', 134, 134),
('kanto_lgpe', 135, 135),
('kanto_lgpe', 136, 136),
('kanto_lgpe', 137, 137),
('kanto_lgpe', 138, 138),
('kanto_lgpe', 139, 139),
('kanto_lgpe', 140, 140),
('kanto_lgpe', 141, 141),
('kanto_lgpe', 142, 142),
('kanto_lgpe', 143, 143),
('kanto_lgpe', 144, 144),
('kanto_lgpe', 145, 145),
('kanto_lgpe', 146, 146),
('kanto_lgpe', 147, 147),
('kanto_lgpe', 148, 148),
('kanto_lgpe', 149, 149),
('kanto_lgpe', 150, 150),
('kanto_lgpe', 151, 151),
('kanto_lgpe', 152, 808),
('kanto_lgpe', 153, 809)
;

# Galar Dex Number (Sword and Shield)
INSERT INTO `regional_dex` VALUES 
('galar_swsh', 1, 810),
('galar_swsh', 2, 811),
('galar_swsh', 3, 812),
('galar_swsh', 4, 813),
('galar_swsh', 5, 814),
('galar_swsh', 6, 815),
('galar_swsh', 7, 816),
('galar_swsh', 8, 817),
('galar_swsh', 9, 818),
('galar_swsh', 10, 824),
('galar_swsh', 11, 825),
('galar_swsh', 12, 826),
('galar_swsh', 13, 10),
('galar_swsh', 14, 11),
('galar_swsh', 15, 12),
('galar_swsh', 16, 736),
('galar_swsh', 17, 737),
('galar_swsh', 18, 738),
('galar_swsh', 19, 163),
('galar_swsh', 20, 164),
('galar_swsh', 21, 821),
('galar_swsh', 22, 822),
('galar_swsh', 23, 823),
('galar_swsh', 24, 819),
('galar_swsh', 25, 820),
('galar_swsh', 26, 519),
('galar_swsh', 27, 520),
('galar_swsh', 28, 521),
('galar_swsh', 29, 827),
('galar_swsh', 30, 828),
('galar_swsh', 31, 263),
('galar_swsh', 32, 264),
('galar_swsh', 33, 862),
('galar_swsh', 34, 831),
('galar_swsh', 35, 832),
('galar_swsh', 36, 270),
('galar_swsh', 37, 271),
('galar_swsh', 38, 272),
('galar_swsh', 39, 273),
('galar_swsh', 40, 274),
('galar_swsh', 41, 275),
('galar_swsh', 42, 833),
('galar_swsh', 43, 834),
('galar_swsh', 44, 509),
('galar_swsh', 45, 510),
('galar_swsh', 46, 835),
('galar_swsh', 47, 836),
('galar_swsh', 48, 659),
('galar_swsh', 49, 660),
('galar_swsh', 50, 572),
('galar_swsh', 51, 573),
('galar_swsh', 52, 761),
('galar_swsh', 53, 762),
('galar_swsh', 54, 763),
('galar_swsh', 55, 43),
('galar_swsh', 56, 44),
('galar_swsh', 57, 45),
('galar_swsh', 58, 182),
('galar_swsh', 59, 406),
('galar_swsh', 60, 315),
('galar_swsh', 61, 407),
('galar_swsh', 62, 278),
('galar_swsh', 63, 279),
('galar_swsh', 64, 595),
('galar_swsh', 65, 596),
('galar_swsh', 66, 309),
('galar_swsh', 67, 310),
('galar_swsh', 68, 37),
('galar_swsh', 69, 38),
('galar_swsh', 70, 58),
('galar_swsh', 71, 59),
('galar_swsh', 72, 582),
('galar_swsh', 73, 583),
('galar_swsh', 74, 584),
('galar_swsh', 75, 220),
('galar_swsh', 76, 221),
('galar_swsh', 77, 473),
('galar_swsh', 78, 225),
('galar_swsh', 79, 361),
('galar_swsh', 80, 362),
('galar_swsh', 81, 478),
('galar_swsh', 82, 343),
('galar_swsh', 83, 344),
('galar_swsh', 84, 749),
('galar_swsh', 85, 750),
('galar_swsh', 86, 557),
('galar_swsh', 87, 558),
('galar_swsh', 88, 622),
('galar_swsh', 89, 623),
('galar_swsh', 90, 517),
('galar_swsh', 91, 518),
('galar_swsh', 92, 177),
('galar_swsh', 93, 178),
('galar_swsh', 94, 759),
('galar_swsh', 95, 760),
('galar_swsh', 96, 459),
('galar_swsh', 97, 460),
('galar_swsh', 98, 98),
('galar_swsh', 99, 99),
('galar_swsh', 100, 194),
('galar_swsh', 101, 195),
('galar_swsh', 102, 341),
('galar_swsh', 103, 342),
('galar_swsh', 104, 290),
('galar_swsh', 105, 291),
('galar_swsh', 106, 292),
('galar_swsh', 107, 236),
('galar_swsh', 108, 106),
('galar_swsh', 109, 107),
('galar_swsh', 110, 237),
('galar_swsh', 111, 674),
('galar_swsh', 112, 675),
('galar_swsh', 113, 599),
('galar_swsh', 114, 600),
('galar_swsh', 115, 601),
('galar_swsh', 116, 415),
('galar_swsh', 117, 416),
('galar_swsh', 118, 436),
('galar_swsh', 119, 437),
('galar_swsh', 120, 280),
('galar_swsh', 121, 281),
('galar_swsh', 122, 282),
('galar_swsh', 123, 475),
('galar_swsh', 124, 425),
('galar_swsh', 125, 426),
('galar_swsh', 126, 829),
('galar_swsh', 127, 830),
('galar_swsh', 128, 420),
('galar_swsh', 129, 421),
('galar_swsh', 130, 434),
('galar_swsh', 131, 435),
('galar_swsh', 132, 535),
('galar_swsh', 133, 536),
('galar_swsh', 134, 537),
('galar_swsh', 135, 355),
('galar_swsh', 136, 356),
('galar_swsh', 137, 477),
('galar_swsh', 138, 66),
('galar_swsh', 139, 67),
('galar_swsh', 140, 68),
('galar_swsh', 141, 92),
('galar_swsh', 142, 93),
('galar_swsh', 143, 94),
('galar_swsh', 144, 129),
('galar_swsh', 145, 130),
('galar_swsh', 146, 118),
('galar_swsh', 147, 119),
('galar_swsh', 148, 223),
('galar_swsh', 149, 224),
('galar_swsh', 150, 90),
('galar_swsh', 151, 91),
('galar_swsh', 152, 349),
('galar_swsh', 153, 350),
('galar_swsh', 154, 550),
('galar_swsh', 155, 746),
('galar_swsh', 156, 771),
('galar_swsh', 157, 568),
('galar_swsh', 158, 569),
('galar_swsh', 159, 850),
('galar_swsh', 160, 851),
('galar_swsh', 161, 837),
('galar_swsh', 162, 838),
('galar_swsh', 163, 839),
('galar_swsh', 164, 50),
('galar_swsh', 165, 51),
('galar_swsh', 166, 529),
('galar_swsh', 167, 530),
('galar_swsh', 168, 524),
('galar_swsh', 169, 525),
('galar_swsh', 170, 526),
('galar_swsh', 171, 532),
('galar_swsh', 172, 533),
('galar_swsh', 173, 534),
('galar_swsh', 174, 527),
('galar_swsh', 175, 528),
('galar_swsh', 176, 714),
('galar_swsh', 177, 715),
('galar_swsh', 178, 95),
('galar_swsh', 179, 208),
('galar_swsh', 180, 846),
('galar_swsh', 181, 847),
('galar_swsh', 182, 52),
('galar_swsh', 183, 863),
('galar_swsh', 184, 53),
('galar_swsh', 185, 868),
('galar_swsh', 186, 869),
('galar_swsh', 187, 742),
('galar_swsh', 188, 743),
('galar_swsh', 189, 597),
('galar_swsh', 190, 598),
('galar_swsh', 191, 710),
('galar_swsh', 192, 711),
('galar_swsh', 193, 172),
('galar_swsh', 194, 25),
('galar_swsh', 195, 26),
('galar_swsh', 196, 133),
('galar_swsh', 197, 134),
('galar_swsh', 198, 135),
('galar_swsh', 199, 136),
('galar_swsh', 200, 196),
('galar_swsh', 201, 197),
('galar_swsh', 202, 470),
('galar_swsh', 203, 471),
('galar_swsh', 204, 700),
('galar_swsh', 205, 840),
('galar_swsh', 206, 841),
('galar_swsh', 207, 842),
('galar_swsh', 208, 677),
('galar_swsh', 209, 678),
('galar_swsh', 210, 684),
('galar_swsh', 211, 685),
('galar_swsh', 212, 682),
('galar_swsh', 213, 683),
('galar_swsh', 214, 751),
('galar_swsh', 215, 752),
('galar_swsh', 216, 360),
('galar_swsh', 217, 202),
('galar_swsh', 218, 83),
('galar_swsh', 219, 865),
('galar_swsh', 220, 170),
('galar_swsh', 221, 171),
('galar_swsh', 222, 453),
('galar_swsh', 223, 454),
('galar_swsh', 224, 559),
('galar_swsh', 225, 560),
('galar_swsh', 226, 618),
('galar_swsh', 227, 213),
('galar_swsh', 228, 339),
('galar_swsh', 229, 340),
('galar_swsh', 230, 422),
('galar_swsh', 231, 423),
('galar_swsh', 232, 767),
('galar_swsh', 233, 768),
('galar_swsh', 234, 688),
('galar_swsh', 235, 689),
('galar_swsh', 236, 222),
('galar_swsh', 237, 864),
('galar_swsh', 238, 859),
('galar_swsh', 239, 860),
('galar_swsh', 240, 861),
('galar_swsh', 241, 856),
('galar_swsh', 242, 857),
('galar_swsh', 243, 858),
('galar_swsh', 244, 757),
('galar_swsh', 245, 758),
('galar_swsh', 246, 624),
('galar_swsh', 247, 625),
('galar_swsh', 248, 538),
('galar_swsh', 249, 539),
('galar_swsh', 250, 109),
('galar_swsh', 251, 110),
('galar_swsh', 252, 438),
('galar_swsh', 253, 185),
('galar_swsh', 254, 173),
('galar_swsh', 255, 35),
('galar_swsh', 256, 36),
('galar_swsh', 257, 175),
('galar_swsh', 258, 176),
('galar_swsh', 259, 468),
('galar_swsh', 260, 446),
('galar_swsh', 261, 143),
('galar_swsh', 262, 546),
('galar_swsh', 263, 547),
('galar_swsh', 264, 111),
('galar_swsh', 265, 112),
('galar_swsh', 266, 464),
('galar_swsh', 267, 574),
('galar_swsh', 268, 575),
('galar_swsh', 269, 576),
('galar_swsh', 270, 577),
('galar_swsh', 271, 578),
('galar_swsh', 272, 579),
('galar_swsh', 273, 588),
('galar_swsh', 274, 589),
('galar_swsh', 275, 616),
('galar_swsh', 276, 617),
('galar_swsh', 277, 605),
('galar_swsh', 278, 606),
('galar_swsh', 279, 613),
('galar_swsh', 280, 614),
('galar_swsh', 281, 627),
('galar_swsh', 282, 628),
('galar_swsh', 283, 629),
('galar_swsh', 284, 630),
('galar_swsh', 285, 451),
('galar_swsh', 286, 452),
('galar_swsh', 287, 607),
('galar_swsh', 288, 608),
('galar_swsh', 289, 609),
('galar_swsh', 290, 686),
('galar_swsh', 291, 687),
('galar_swsh', 292, 215),
('galar_swsh', 293, 461),
('galar_swsh', 294, 302),
('galar_swsh', 295, 303),
('galar_swsh', 296, 556),
('galar_swsh', 297, 561),
('galar_swsh', 298, 447),
('galar_swsh', 299, 448),
('galar_swsh', 300, 324),
('galar_swsh', 301, 778),
('galar_swsh', 302, 878),
('galar_swsh', 303, 879),
('galar_swsh', 304, 211),
('galar_swsh', 305, 592),
('galar_swsh', 306, 593),
('galar_swsh', 307, 747),
('galar_swsh', 308, 748),
('galar_swsh', 309, 845),
('galar_swsh', 310, 848),
('galar_swsh', 311, 849),
('galar_swsh', 312, 843),
('galar_swsh', 313, 844),
('galar_swsh', 314, 449),
('galar_swsh', 315, 450),
('galar_swsh', 316, 632),
('galar_swsh', 317, 631),
('galar_swsh', 318, 694),
('galar_swsh', 319, 695),
('galar_swsh', 320, 701),
('galar_swsh', 321, 328),
('galar_swsh', 322, 329),
('galar_swsh', 323, 330),
('galar_swsh', 324, 610),
('galar_swsh', 325, 611),
('galar_swsh', 326, 612),
('galar_swsh', 327, 562),
('galar_swsh', 328, 867),
('galar_swsh', 329, 563),
('galar_swsh', 330, 679),
('galar_swsh', 331, 680),
('galar_swsh', 332, 681),
('galar_swsh', 333, 77),
('galar_swsh', 334, 78),
('galar_swsh', 335, 854),
('galar_swsh', 336, 855),
('galar_swsh', 337, 876),
('galar_swsh', 338, 708),
('galar_swsh', 339, 709),
('galar_swsh', 340, 755),
('galar_swsh', 341, 756),
('galar_swsh', 342, 765),
('galar_swsh', 343, 766),
('galar_swsh', 344, 877),
('galar_swsh', 345, 870),
('galar_swsh', 346, 780),
('galar_swsh', 347, 776),
('galar_swsh', 348, 777),
('galar_swsh', 349, 872),
('galar_swsh', 350, 873),
('galar_swsh', 351, 852),
('galar_swsh', 352, 853),
('galar_swsh', 353, 871),
('galar_swsh', 354, 458),
('galar_swsh', 355, 226),
('galar_swsh', 356, 320),
('galar_swsh', 357, 321),
('galar_swsh', 358, 712),
('galar_swsh', 359, 713),
('galar_swsh', 360, 781),
('galar_swsh', 361, 131),
('galar_swsh', 362, 337),
('galar_swsh', 363, 338),
('galar_swsh', 364, 439),
('galar_swsh', 365, 122),
('galar_swsh', 366, 866),
('galar_swsh', 367, 554),
('galar_swsh', 368, 555),
('galar_swsh', 369, 874),
('galar_swsh', 370, 875),
('galar_swsh', 371, 884),
('galar_swsh', 372, 479),
('galar_swsh', 373, 132),
('galar_swsh', 374, 880),
('galar_swsh', 375, 881),
('galar_swsh', 376, 882),
('galar_swsh', 377, 883),
('galar_swsh', 378, 4),
('galar_swsh', 379, 5),
('galar_swsh', 380, 6),
('galar_swsh', 381, 772),
('galar_swsh', 382, 773),
('galar_swsh', 383, 246),
('galar_swsh', 384, 247),
('galar_swsh', 385, 248),
('galar_swsh', 386, 633),
('galar_swsh', 387, 634),
('galar_swsh', 388, 635),
('galar_swsh', 389, 704),
('galar_swsh', 390, 705),
('galar_swsh', 391, 706),
('galar_swsh', 392, 782),
('galar_swsh', 393, 783),
('galar_swsh', 394, 784),
('galar_swsh', 395, 885),
('galar_swsh', 396, 886),
('galar_swsh', 397, 887),
('galar_swsh', 398, 888),
('galar_swsh', 399, 889),
('galar_swsh', 400, 890)
;

# Galar Isle of Armor Dex Number (Sword and Shield)
INSERT INTO `regional_dex` VALUES 
('galar_isle_of_armor', 1, 79),
('galar_isle_of_armor', 2, 80),
('galar_isle_of_armor', 3, 199),
('galar_isle_of_armor', 4, 427),
('galar_isle_of_armor', 5, 428),
('galar_isle_of_armor', 6, 440),
('galar_isle_of_armor', 7, 113),
('galar_isle_of_armor', 8, 242),
('galar_isle_of_armor', 9, 819),
('galar_isle_of_armor', 10, 820),
('galar_isle_of_armor', 11, 174),
('galar_isle_of_armor', 12, 39),
('galar_isle_of_armor', 13, 40),
('galar_isle_of_armor', 14, 824),
('galar_isle_of_armor', 15, 825),
('galar_isle_of_armor', 16, 826),
('galar_isle_of_armor', 17, 753),
('galar_isle_of_armor', 18, 754),
('galar_isle_of_armor', 19, 840),
('galar_isle_of_armor', 20, 841),
('galar_isle_of_armor', 21, 842),
('galar_isle_of_armor', 22, 661),
('galar_isle_of_armor', 23, 662),
('galar_isle_of_armor', 24, 663),
('galar_isle_of_armor', 25, 403),
('galar_isle_of_armor', 26, 404),
('galar_isle_of_armor', 27, 405),
('galar_isle_of_armor', 28, 707),
('galar_isle_of_armor', 29, 624),
('galar_isle_of_armor', 30, 625),
('galar_isle_of_armor', 31, 63),
('galar_isle_of_armor', 32, 64),
('galar_isle_of_armor', 33, 65),
('galar_isle_of_armor', 34, 280),
('galar_isle_of_armor', 35, 281),
('galar_isle_of_armor', 36, 282),
('galar_isle_of_armor', 37, 475),
('galar_isle_of_armor', 38, 98),
('galar_isle_of_armor', 39, 99),
('galar_isle_of_armor', 40, 72),
('galar_isle_of_armor', 41, 73),
('galar_isle_of_armor', 42, 129),
('galar_isle_of_armor', 43, 130),
('galar_isle_of_armor', 44, 223),
('galar_isle_of_armor', 45, 224),
('galar_isle_of_armor', 46, 458),
('galar_isle_of_armor', 47, 226),
('galar_isle_of_armor', 48, 278),
('galar_isle_of_armor', 49, 279),
('galar_isle_of_armor', 50, 451),
('galar_isle_of_armor', 51, 452),
('galar_isle_of_armor', 52, 206),
('galar_isle_of_armor', 53, 626),
('galar_isle_of_armor', 54, 108),
('galar_isle_of_armor', 55, 463),
('galar_isle_of_armor', 56, 833),
('galar_isle_of_armor', 57, 834),
('galar_isle_of_armor', 58, 194),
('galar_isle_of_armor', 59, 195),
('galar_isle_of_armor', 60, 704),
('galar_isle_of_armor', 61, 705),
('galar_isle_of_armor', 62, 706),
('galar_isle_of_armor', 63, 621),
('galar_isle_of_armor', 64, 616),
('galar_isle_of_armor', 65, 617),
('galar_isle_of_armor', 66, 588),
('galar_isle_of_armor', 67, 589),
('galar_isle_of_armor', 68, 1),
('galar_isle_of_armor', 69, 2),
('galar_isle_of_armor', 70, 3),
('galar_isle_of_armor', 71, 7),
('galar_isle_of_armor', 72, 8),
('galar_isle_of_armor', 73, 9),
('galar_isle_of_armor', 74, 543),
('galar_isle_of_armor', 75, 544),
('galar_isle_of_armor', 76, 545),
('galar_isle_of_armor', 77, 590),
('galar_isle_of_armor', 78, 591),
('galar_isle_of_armor', 79, 764),
('galar_isle_of_armor', 80, 114),
('galar_isle_of_armor', 81, 465),
('galar_isle_of_armor', 82, 453),
('galar_isle_of_armor', 83, 454),
('galar_isle_of_armor', 84, 172),
('galar_isle_of_armor', 85, 25),
('galar_isle_of_armor', 86, 26),
('galar_isle_of_armor', 87, 570),
('galar_isle_of_armor', 88, 571),
('galar_isle_of_armor', 89, 765),
('galar_isle_of_armor', 90, 766),
('galar_isle_of_armor', 91, 341),
('galar_isle_of_armor', 92, 342),
('galar_isle_of_armor', 93, 845),
('galar_isle_of_armor', 94, 118),
('galar_isle_of_armor', 95, 119),
('galar_isle_of_armor', 96, 846),
('galar_isle_of_armor', 97, 847),
('galar_isle_of_armor', 98, 120),
('galar_isle_of_armor', 99, 121),
('galar_isle_of_armor', 100, 891),
('galar_isle_of_armor', 101, 892),
('galar_isle_of_armor', 102, 587),
('galar_isle_of_armor', 103, 702),
('galar_isle_of_armor', 104, 877),
('galar_isle_of_armor', 105, 81),
('galar_isle_of_armor', 106, 82),
('galar_isle_of_armor', 107, 462),
('galar_isle_of_armor', 108, 686),
('galar_isle_of_armor', 109, 687),
('galar_isle_of_armor', 110, 746),
('galar_isle_of_armor', 111, 318),
('galar_isle_of_armor', 112, 319),
('galar_isle_of_armor', 113, 506),
('galar_isle_of_armor', 114, 507),
('galar_isle_of_armor', 115, 508),
('galar_isle_of_armor', 116, 128),
('galar_isle_of_armor', 117, 241),
('galar_isle_of_armor', 118, 123),
('galar_isle_of_armor', 119, 212),
('galar_isle_of_armor', 120, 127),
('galar_isle_of_armor', 121, 214),
('galar_isle_of_armor', 122, 557),
('galar_isle_of_armor', 123, 558),
('galar_isle_of_armor', 124, 767),
('galar_isle_of_armor', 125, 768),
('galar_isle_of_armor', 126, 871),
('galar_isle_of_armor', 127, 747),
('galar_isle_of_armor', 128, 748),
('galar_isle_of_armor', 129, 852),
('galar_isle_of_armor', 130, 853),
('galar_isle_of_armor', 131, 90),
('galar_isle_of_armor', 132, 91),
('galar_isle_of_armor', 133, 769),
('galar_isle_of_armor', 134, 770),
('galar_isle_of_armor', 135, 425),
('galar_isle_of_armor', 136, 426),
('galar_isle_of_armor', 137, 339),
('galar_isle_of_armor', 138, 340),
('galar_isle_of_armor', 139, 298),
('galar_isle_of_armor', 140, 183),
('galar_isle_of_armor', 141, 184),
('galar_isle_of_armor', 142, 60),
('galar_isle_of_armor', 143, 61),
('galar_isle_of_armor', 144, 62),
('galar_isle_of_armor', 145, 186),
('galar_isle_of_armor', 146, 54),
('galar_isle_of_armor', 147, 55),
('galar_isle_of_armor', 148, 293),
('galar_isle_of_armor', 149, 294),
('galar_isle_of_armor', 150, 295),
('galar_isle_of_armor', 151, 527),
('galar_isle_of_armor', 152, 528),
('galar_isle_of_armor', 153, 227),
('galar_isle_of_armor', 154, 524),
('galar_isle_of_armor', 155, 525),
('galar_isle_of_armor', 156, 526),
('galar_isle_of_armor', 157, 744),
('galar_isle_of_armor', 158, 745),
('galar_isle_of_armor', 159, 757),
('galar_isle_of_armor', 160, 758),
('galar_isle_of_armor', 161, 559),
('galar_isle_of_armor', 162, 560),
('galar_isle_of_armor', 163, 619),
('galar_isle_of_armor', 164, 620),
('galar_isle_of_armor', 165, 782),
('galar_isle_of_armor', 166, 783),
('galar_isle_of_armor', 167, 784),
('galar_isle_of_armor', 168, 27),
('galar_isle_of_armor', 169, 28),
('galar_isle_of_armor', 170, 104),
('galar_isle_of_armor', 171, 105),
('galar_isle_of_armor', 172, 115),
('galar_isle_of_armor', 173, 324),
('galar_isle_of_armor', 174, 843),
('galar_isle_of_armor', 175, 844),
('galar_isle_of_armor', 176, 551),
('galar_isle_of_armor', 177, 552),
('galar_isle_of_armor', 178, 553),
('galar_isle_of_armor', 179, 627),
('galar_isle_of_armor', 180, 628),
('galar_isle_of_armor', 181, 629),
('galar_isle_of_armor', 182, 630),
('galar_isle_of_armor', 183, 111),
('galar_isle_of_armor', 184, 112),
('galar_isle_of_armor', 185, 464),
('galar_isle_of_armor', 186, 636),
('galar_isle_of_armor', 187, 637),
('galar_isle_of_armor', 188, 170),
('galar_isle_of_armor', 189, 171),
('galar_isle_of_armor', 190, 320),
('galar_isle_of_armor', 191, 321),
('galar_isle_of_armor', 192, 592),
('galar_isle_of_armor', 193, 593),
('galar_isle_of_armor', 194, 690),
('galar_isle_of_armor', 195, 691),
('galar_isle_of_armor', 196, 692),
('galar_isle_of_armor', 197, 693),
('galar_isle_of_armor', 198, 116),
('galar_isle_of_armor', 199, 117),
('galar_isle_of_armor', 200, 230),
('galar_isle_of_armor', 201, 548),
('galar_isle_of_armor', 202, 549),
('galar_isle_of_armor', 203, 415),
('galar_isle_of_armor', 204, 416),
('galar_isle_of_armor', 205, 102),
('galar_isle_of_armor', 206, 103),
('galar_isle_of_armor', 207, 132),
('galar_isle_of_armor', 208, 137),
('galar_isle_of_armor', 209, 233),
('galar_isle_of_armor', 210, 474),
('galar_isle_of_armor', 211, 893)
;

# Galar Crown Tundra Dex Number (Sword and Shield)
INSERT INTO `regional_dex` VALUES 
('galar_crown_tundra', 1, 872),
('galar_crown_tundra', 2, 873),
('galar_crown_tundra', 3, 831),
('galar_crown_tundra', 4, 832),
('galar_crown_tundra', 5, 819),
('galar_crown_tundra', 6, 820),
('galar_crown_tundra', 7, 471),
('galar_crown_tundra', 8, 472),
('galar_crown_tundra', 9, 473),
('galar_crown_tundra', 10, 439),
('galar_crown_tundra', 11, 122),
('galar_crown_tundra', 12, 866),
('galar_crown_tundra', 13, 238),
('galar_crown_tundra', 14, 124),
('galar_crown_tundra', 15, 239),
('galar_crown_tundra', 16, 125),
('galar_crown_tundra', 17, 466),
('galar_crown_tundra', 18, 240),
('galar_crown_tundra', 19, 126),
('galar_crown_tundra', 20, 467),
('galar_crown_tundra', 21, 531),
('galar_crown_tundra', 22, 582),
('galar_crown_tundra', 23, 583),
('galar_crown_tundra', 24, 584),
('galar_crown_tundra', 25, 361),
('galar_crown_tundra', 26, 362),
('galar_crown_tundra', 27, 478),
('galar_crown_tundra', 28, 460),
('galar_crown_tundra', 29, 461),
('galar_crown_tundra', 30, 615),
('galar_crown_tundra', 31, 459),
('galar_crown_tundra', 32, 460),
('galar_crown_tundra', 33, 708),
('galar_crown_tundra', 34, 709),
('galar_crown_tundra', 35, 333),
('galar_crown_tundra', 36, 334),
('galar_crown_tundra', 37, 859),
('galar_crown_tundra', 38, 860),
('galar_crown_tundra', 39, 861),
('galar_crown_tundra', 40, 856),
('galar_crown_tundra', 41, 857),
('galar_crown_tundra', 42, 858),
('galar_crown_tundra', 43, 173),
('galar_crown_tundra', 44, 35),
('galar_crown_tundra', 45, 36),
('galar_crown_tundra', 46, 778),
('galar_crown_tundra', 47, 442),
('galar_crown_tundra', 48, 607),
('galar_crown_tundra', 49, 608),
('galar_crown_tundra', 50, 609),
('galar_crown_tundra', 51, 574),
('galar_crown_tundra', 52, 575),
('galar_crown_tundra', 53, 576),
('galar_crown_tundra', 54, 577),
('galar_crown_tundra', 55, 578),
('galar_crown_tundra', 56, 579),
('galar_crown_tundra', 57, 532),
('galar_crown_tundra', 58, 533),
('galar_crown_tundra', 59, 534),
('galar_crown_tundra', 60, 339),
('galar_crown_tundra', 61, 340),
('galar_crown_tundra', 62, 129),
('galar_crown_tundra', 63, 130),
('galar_crown_tundra', 64, 550),
('galar_crown_tundra', 65, 29),
('galar_crown_tundra', 66, 30),
('galar_crown_tundra', 67, 31),
('galar_crown_tundra', 68, 32),
('galar_crown_tundra', 69, 33),
('galar_crown_tundra', 70, 34),
('galar_crown_tundra', 71, 263),
('galar_crown_tundra', 72, 264),
('galar_crown_tundra', 73, 862),
('galar_crown_tundra', 74, 133),
('galar_crown_tundra', 75, 134),
('galar_crown_tundra', 76, 135),
('galar_crown_tundra', 77, 136),
('galar_crown_tundra', 78, 197),
('galar_crown_tundra', 79, 196),
('galar_crown_tundra', 80, 471),
('galar_crown_tundra', 81, 470),
('galar_crown_tundra', 82, 700),
('galar_crown_tundra', 83, 696),
('galar_crown_tundra', 84, 697),
('galar_crown_tundra', 85, 698),
('galar_crown_tundra', 86, 699),
('galar_crown_tundra', 87, 436),
('galar_crown_tundra', 88, 437),
('galar_crown_tundra', 89, 874),
('galar_crown_tundra', 90, 875),
('galar_crown_tundra', 91, 751),
('galar_crown_tundra', 92, 752),
('galar_crown_tundra', 93, 595),
('galar_crown_tundra', 94, 596),
('galar_crown_tundra', 95, 588),
('galar_crown_tundra', 96, 589),
('galar_crown_tundra', 97, 616),
('galar_crown_tundra', 98, 617),
('galar_crown_tundra', 99, 850),
('galar_crown_tundra', 100, 851),
('galar_crown_tundra', 101, 632),
('galar_crown_tundra', 102, 631),
('galar_crown_tundra', 103, 554),
('galar_crown_tundra', 104, 555),
('galar_crown_tundra', 105, 77),
('galar_crown_tundra', 106, 78),
('galar_crown_tundra', 107, 359),
('galar_crown_tundra', 108, 878),
('galar_crown_tundra', 109, 879),
('galar_crown_tundra', 110, 885),
('galar_crown_tundra', 111, 886),
('galar_crown_tundra', 112, 887),
('galar_crown_tundra', 113, 371),
('galar_crown_tundra', 114, 372),
('galar_crown_tundra', 115, 373),
('galar_crown_tundra', 116, 443),
('galar_crown_tundra', 117, 444),
('galar_crown_tundra', 118, 445),
('galar_crown_tundra', 119, 621),
('galar_crown_tundra', 120, 225),
('galar_crown_tundra', 121, 613),
('galar_crown_tundra', 122, 614),
('galar_crown_tundra', 123, 138),
('galar_crown_tundra', 124, 139),
('galar_crown_tundra', 125, 140),
('galar_crown_tundra', 126, 141),
('galar_crown_tundra', 127, 142),
('galar_crown_tundra', 128, 703),
('galar_crown_tundra', 129, 374),
('galar_crown_tundra', 130, 375),
('galar_crown_tundra', 131, 376),
('galar_crown_tundra', 132, 854),
('galar_crown_tundra', 133, 855),
('galar_crown_tundra', 134, 447),
('galar_crown_tundra', 135, 448),
('galar_crown_tundra', 136, 633),
('galar_crown_tundra', 137, 634),
('galar_crown_tundra', 138, 635),
('galar_crown_tundra', 139, 246),
('galar_crown_tundra', 140, 247),
('galar_crown_tundra', 141, 248),
('galar_crown_tundra', 142, 712),
('galar_crown_tundra', 143, 713),
('galar_crown_tundra', 144, 41),
('galar_crown_tundra', 145, 42),
('galar_crown_tundra', 146, 169),
('galar_crown_tundra', 147, 564),
('galar_crown_tundra', 148, 565),
('galar_crown_tundra', 149, 566),
('galar_crown_tundra', 150, 567),
('galar_crown_tundra', 151, 343),
('galar_crown_tundra', 152, 344),
('galar_crown_tundra', 153, 622),
('galar_crown_tundra', 154, 623),
('galar_crown_tundra', 155, 835),
('galar_crown_tundra', 156, 836),
('galar_crown_tundra', 157, 877),
('galar_crown_tundra', 158, 871),
('galar_crown_tundra', 159, 363),
('galar_crown_tundra', 160, 364),
('galar_crown_tundra', 161, 365),
('galar_crown_tundra', 162, 781),
('galar_crown_tundra', 163, 821),
('galar_crown_tundra', 164, 822),
('galar_crown_tundra', 165, 823),
('galar_crown_tundra', 166, 829),
('galar_crown_tundra', 167, 830),
('galar_crown_tundra', 168, 546),
('galar_crown_tundra', 169, 547),
('galar_crown_tundra', 170, 213),
('galar_crown_tundra', 171, 876),
('galar_crown_tundra', 172, 446),
('galar_crown_tundra', 173, 143),
('galar_crown_tundra', 174, 302),
('galar_crown_tundra', 175, 303),
('galar_crown_tundra', 176, 837),
('galar_crown_tundra', 177, 838),
('galar_crown_tundra', 178, 839),
('galar_crown_tundra', 179, 596),
('galar_crown_tundra', 180, 597),
('galar_crown_tundra', 181, 598),
('galar_crown_tundra', 182, 714),
('galar_crown_tundra', 183, 715),
('galar_crown_tundra', 184, 345),
('galar_crown_tundra', 185, 346),
('galar_crown_tundra', 186, 347),
('galar_crown_tundra', 187, 348),
('galar_crown_tundra', 188, 349),
('galar_crown_tundra', 189, 350),
('galar_crown_tundra', 190, 131),
('galar_crown_tundra', 191, 304),
('galar_crown_tundra', 192, 305),
('galar_crown_tundra', 193, 306),
('galar_crown_tundra', 194, 147),
('galar_crown_tundra', 195, 148),
('galar_crown_tundra', 196, 149),
('galar_crown_tundra', 197, 377),
('galar_crown_tundra', 198, 378),
('galar_crown_tundra', 199, 379),
('galar_crown_tundra', 200, 894),
('galar_crown_tundra', 201, 895),
('galar_crown_tundra', 202, 144),
('galar_crown_tundra', 203, 145),
('galar_crown_tundra', 204, 146),
('galar_crown_tundra', 205, 638),
('galar_crown_tundra', 206, 639),
('galar_crown_tundra', 207, 640),
('galar_crown_tundra', 208, 896),
('galar_crown_tundra', 209, 897),
('galar_crown_tundra', 210, 898)
;

# Sinnoh Dex Number (Brilliant Diamond and Shining Pearl)
INSERT INTO `regional_dex` VALUES 
('sinnoh_bdsp', 1, 387),
('sinnoh_bdsp', 2, 388),
('sinnoh_bdsp', 3, 389),
('sinnoh_bdsp', 4, 390),
('sinnoh_bdsp', 5, 391),
('sinnoh_bdsp', 6, 392),
('sinnoh_bdsp', 7, 393),
('sinnoh_bdsp', 8, 394),
('sinnoh_bdsp', 9, 395),
('sinnoh_bdsp', 10, 396),
('sinnoh_bdsp', 11, 397),
('sinnoh_bdsp', 12, 398),
('sinnoh_bdsp', 13, 399),
('sinnoh_bdsp', 14, 400),
('sinnoh_bdsp', 15, 401),
('sinnoh_bdsp', 16, 402),
('sinnoh_bdsp', 17, 403),
('sinnoh_bdsp', 18, 404),
('sinnoh_bdsp', 19, 405),
('sinnoh_bdsp', 20, 63),
('sinnoh_bdsp', 21, 64),
('sinnoh_bdsp', 22, 65),
('sinnoh_bdsp', 23, 129),
('sinnoh_bdsp', 24, 130),
('sinnoh_bdsp', 25, 406),
('sinnoh_bdsp', 26, 315),
('sinnoh_bdsp', 27, 407),
('sinnoh_bdsp', 28, 41),
('sinnoh_bdsp', 29, 42),
('sinnoh_bdsp', 30, 169),
('sinnoh_bdsp', 31, 74),
('sinnoh_bdsp', 32, 75),
('sinnoh_bdsp', 33, 76),
('sinnoh_bdsp', 34, 95),
('sinnoh_bdsp', 35, 208),
('sinnoh_bdsp', 36, 408),
('sinnoh_bdsp', 37, 409),
('sinnoh_bdsp', 38, 410),
('sinnoh_bdsp', 39, 411),
('sinnoh_bdsp', 40, 66),
('sinnoh_bdsp', 41, 67),
('sinnoh_bdsp', 42, 68),
('sinnoh_bdsp', 43, 54),
('sinnoh_bdsp', 44, 55),
('sinnoh_bdsp', 45, 412),
('sinnoh_bdsp', 46, 413),
('sinnoh_bdsp', 47, 414),
('sinnoh_bdsp', 48, 265),
('sinnoh_bdsp', 49, 266),
('sinnoh_bdsp', 50, 267),
('sinnoh_bdsp', 51, 268),
('sinnoh_bdsp', 52, 269),
('sinnoh_bdsp', 53, 415),
('sinnoh_bdsp', 54, 416),
('sinnoh_bdsp', 55, 417),
('sinnoh_bdsp', 56, 418),
('sinnoh_bdsp', 57, 419),
('sinnoh_bdsp', 58, 420),
('sinnoh_bdsp', 59, 421),
('sinnoh_bdsp', 60, 422),
('sinnoh_bdsp', 61, 423),
('sinnoh_bdsp', 62, 214),
('sinnoh_bdsp', 63, 190),
('sinnoh_bdsp', 64, 424),
('sinnoh_bdsp', 65, 425),
('sinnoh_bdsp', 66, 426),
('sinnoh_bdsp', 67, 427),
('sinnoh_bdsp', 68, 428),
('sinnoh_bdsp', 69, 92),
('sinnoh_bdsp', 70, 93),
('sinnoh_bdsp', 71, 94),
('sinnoh_bdsp', 72, 200),
('sinnoh_bdsp', 73, 429),
('sinnoh_bdsp', 74, 198),
('sinnoh_bdsp', 75, 430),
('sinnoh_bdsp', 76, 431),
('sinnoh_bdsp', 77, 432),
('sinnoh_bdsp', 78, 118),
('sinnoh_bdsp', 79, 119),
('sinnoh_bdsp', 80, 339),
('sinnoh_bdsp', 81, 340),
('sinnoh_bdsp', 82, 433),
('sinnoh_bdsp', 83, 358),
('sinnoh_bdsp', 84, 434),
('sinnoh_bdsp', 85, 435),
('sinnoh_bdsp', 86, 307),
('sinnoh_bdsp', 87, 308),
('sinnoh_bdsp', 88, 436),
('sinnoh_bdsp', 89, 437),
('sinnoh_bdsp', 90, 77),
('sinnoh_bdsp', 91, 78),
('sinnoh_bdsp', 92, 438),
('sinnoh_bdsp', 93, 185),
('sinnoh_bdsp', 94, 439),
('sinnoh_bdsp', 95, 122),
('sinnoh_bdsp', 96, 440),
('sinnoh_bdsp', 97, 113),
('sinnoh_bdsp', 98, 242),
('sinnoh_bdsp', 99, 173),
('sinnoh_bdsp', 100, 35),
('sinnoh_bdsp', 101, 36),
('sinnoh_bdsp', 102, 441),
('sinnoh_bdsp', 103, 172),
('sinnoh_bdsp', 104, 25),
('sinnoh_bdsp', 105, 26),
('sinnoh_bdsp', 106, 163),
('sinnoh_bdsp', 107, 164),
('sinnoh_bdsp', 108, 442),
('sinnoh_bdsp', 109, 443),
('sinnoh_bdsp', 110, 444),
('sinnoh_bdsp', 111, 445),
('sinnoh_bdsp', 112, 446),
('sinnoh_bdsp', 113, 143),
('sinnoh_bdsp', 114, 201),
('sinnoh_bdsp', 115, 447),
('sinnoh_bdsp', 116, 448),
('sinnoh_bdsp', 117, 194),
('sinnoh_bdsp', 118, 195),
('sinnoh_bdsp', 119, 278),
('sinnoh_bdsp', 120, 279),
('sinnoh_bdsp', 121, 203),
('sinnoh_bdsp', 122, 449),
('sinnoh_bdsp', 123, 450),
('sinnoh_bdsp', 124, 298),
('sinnoh_bdsp', 125, 183),
('sinnoh_bdsp', 126, 184),
('sinnoh_bdsp', 127, 451),
('sinnoh_bdsp', 128, 452),
('sinnoh_bdsp', 129, 453),
('sinnoh_bdsp', 130, 454),
('sinnoh_bdsp', 131, 455),
('sinnoh_bdsp', 132, 223),
('sinnoh_bdsp', 133, 224),
('sinnoh_bdsp', 134, 456),
('sinnoh_bdsp', 135, 457),
('sinnoh_bdsp', 136, 72),
('sinnoh_bdsp', 137, 73),
('sinnoh_bdsp', 138, 349),
('sinnoh_bdsp', 139, 350),
('sinnoh_bdsp', 140, 458),
('sinnoh_bdsp', 141, 226),
('sinnoh_bdsp', 142, 459),
('sinnoh_bdsp', 143, 460),
('sinnoh_bdsp', 144, 215),
('sinnoh_bdsp', 145, 461),
('sinnoh_bdsp', 146, 480),
('sinnoh_bdsp', 147, 481),
('sinnoh_bdsp', 148, 482),
('sinnoh_bdsp', 149, 483),
('sinnoh_bdsp', 150, 484),
('sinnoh_bdsp', 151, 490)
;

# Hisui Dex Number (Legends Arceus)
INSERT INTO `regional_dex` VALUES 
('hisui_legarc', 1, 722),
('hisui_legarc', 2, 723),
('hisui_legarc', 3, 724),
('hisui_legarc', 4, 155),
('hisui_legarc', 5, 156),
('hisui_legarc', 6, 157),
('hisui_legarc', 7, 501),
('hisui_legarc', 8, 502),
('hisui_legarc', 9, 503),
('hisui_legarc', 10, 399),
('hisui_legarc', 11, 400),
('hisui_legarc', 12, 396),
('hisui_legarc', 13, 397),
('hisui_legarc', 14, 398),
('hisui_legarc', 15, 403),
('hisui_legarc', 16, 404),
('hisui_legarc', 17, 405),
('hisui_legarc', 18, 265),
('hisui_legarc', 19, 266),
('hisui_legarc', 20, 267),
('hisui_legarc', 21, 268),
('hisui_legarc', 22, 269),
('hisui_legarc', 23, 77),
('hisui_legarc', 24, 78),
('hisui_legarc', 25, 133),
('hisui_legarc', 26, 134),
('hisui_legarc', 27, 135),
('hisui_legarc', 28, 136),
('hisui_legarc', 29, 196),
('hisui_legarc', 30, 197),
('hisui_legarc', 31, 470),
('hisui_legarc', 32, 471),
('hisui_legarc', 33, 700),
('hisui_legarc', 34, 41),
('hisui_legarc', 35, 42),
('hisui_legarc', 36, 169),
('hisui_legarc', 37, 425),
('hisui_legarc', 38, 426),
('hisui_legarc', 39, 401),
('hisui_legarc', 40, 402),
('hisui_legarc', 41, 418),
('hisui_legarc', 42, 419),
('hisui_legarc', 43, 412),
('hisui_legarc', 44, 413),
('hisui_legarc', 45, 414),
('hisui_legarc', 46, 74),
('hisui_legarc', 47, 75),
('hisui_legarc', 48, 76),
('hisui_legarc', 49, 234),
('hisui_legarc', 50, 899),
('hisui_legarc', 51, 446),
('hisui_legarc', 52, 143),
('hisui_legarc', 53, 46),
('hisui_legarc', 54, 47),
('hisui_legarc', 55, 172),
('hisui_legarc', 56, 25),
('hisui_legarc', 57, 26),
('hisui_legarc', 58, 63),
('hisui_legarc', 59, 64),
('hisui_legarc', 60, 65),
('hisui_legarc', 61, 390),
('hisui_legarc', 62, 391),
('hisui_legarc', 63, 392),
('hisui_legarc', 64, 427),
('hisui_legarc', 65, 428),
('hisui_legarc', 66, 420),
('hisui_legarc', 67, 421),
('hisui_legarc', 68, 54),
('hisui_legarc', 69, 55),
('hisui_legarc', 70, 415),
('hisui_legarc', 71, 416),
('hisui_legarc', 72, 123),
('hisui_legarc', 73, 900),
('hisui_legarc', 74, 212),
('hisui_legarc', 75, 214),
('hisui_legarc', 76, 439),
('hisui_legarc', 77, 122),
('hisui_legarc', 78, 190),
('hisui_legarc', 79, 424),
('hisui_legarc', 80, 129),
('hisui_legarc', 81, 130),
('hisui_legarc', 82, 422),
('hisui_legarc', 83, 423),
('hisui_legarc', 84, 211),
('hisui_legarc', 85, 904),
('hisui_legarc', 86, 440),
('hisui_legarc', 87, 113),
('hisui_legarc', 88, 242),
('hisui_legarc', 89, 406),
('hisui_legarc', 90, 315),
('hisui_legarc', 91, 407),
('hisui_legarc', 92, 455),
('hisui_legarc', 93, 548),
('hisui_legarc', 94, 549),
('hisui_legarc', 95, 114),
('hisui_legarc', 96, 115),
('hisui_legarc', 97, 339),
('hisui_legarc', 98, 340),
('hisui_legarc', 99, 453),
('hisui_legarc', 100, 454),
('hisui_legarc', 101, 280),
('hisui_legarc', 102, 281),
('hisui_legarc', 103, 282),
('hisui_legarc', 104, 475),
('hisui_legarc', 105, 193),
('hisui_legarc', 106, 469),
('hisui_legarc', 107, 449),
('hisui_legarc', 108, 450),
('hisui_legarc', 109, 417),
('hisui_legarc', 110, 434),
('hisui_legarc', 111, 435),
('hisui_legarc', 112, 216),
('hisui_legarc', 113, 217),
('hisui_legarc', 114, 901),
('hisui_legarc', 115, 704),
('hisui_legarc', 116, 705),
('hisui_legarc', 117, 706),
('hisui_legarc', 118, 95),
('hisui_legarc', 119, 208),
('hisui_legarc', 120, 111),
('hisui_legarc', 121, 112),
('hisui_legarc', 122, 464),
('hisui_legarc', 123, 438),
('hisui_legarc', 124, 185),
('hisui_legarc', 125, 108),
('hisui_legarc', 126, 463),
('hisui_legarc', 127, 175),
('hisui_legarc', 128, 176),
('hisui_legarc', 129, 468),
('hisui_legarc', 130, 387),
('hisui_legarc', 131, 388),
('hisui_legarc', 132, 389),
('hisui_legarc', 133, 137),
('hisui_legarc', 134, 233),
('hisui_legarc', 135, 474),
('hisui_legarc', 136, 93),
('hisui_legarc', 137, 94),
('hisui_legarc', 138, 95),
('hisui_legarc', 139, 442),
('hisui_legarc', 140, 198),
('hisui_legarc', 141, 430),
('hisui_legarc', 142, 201),
('hisui_legarc', 143, 363),
('hisui_legarc', 144, 364),
('hisui_legarc', 145, 365),
('hisui_legarc', 146, 223),
('hisui_legarc', 147, 224),
('hisui_legarc', 148, 451),
('hisui_legarc', 149, 452),
('hisui_legarc', 150, 58),
('hisui_legarc', 151, 59),
('hisui_legarc', 152, 431),
('hisui_legarc', 153, 432),
('hisui_legarc', 154, 66),
('hisui_legarc', 155, 67),
('hisui_legarc', 156, 68),
('hisui_legarc', 157, 441),
('hisui_legarc', 158, 355),
('hisui_legarc', 159, 356),
('hisui_legarc', 160, 477),
('hisui_legarc', 161, 393),
('hisui_legarc', 162, 394),
('hisui_legarc', 163, 395),
('hisui_legarc', 164, 458),
('hisui_legarc', 165, 226),
('hisui_legarc', 166, 550),
('hisui_legarc', 167, 902),
('hisui_legarc', 168, 37),
('hisui_legarc', 169, 38),
('hisui_legarc', 170, 72),
('hisui_legarc', 171, 73),
('hisui_legarc', 172, 456),
('hisui_legarc', 173, 457),
('hisui_legarc', 174, 240),
('hisui_legarc', 175, 126),
('hisui_legarc', 176, 467),
('hisui_legarc', 177, 81),
('hisui_legarc', 178, 82),
('hisui_legarc', 179, 83),
('hisui_legarc', 180, 436),
('hisui_legarc', 181, 437),
('hisui_legarc', 182, 239),
('hisui_legarc', 183, 125),
('hisui_legarc', 184, 466),
('hisui_legarc', 185, 207),
('hisui_legarc', 186, 472),
('hisui_legarc', 187, 443),
('hisui_legarc', 188, 444),
('hisui_legarc', 189, 445),
('hisui_legarc', 190, 299),
('hisui_legarc', 191, 476),
('hisui_legarc', 192, 100),
('hisui_legarc', 193, 101),
('hisui_legarc', 194, 479),
('hisui_legarc', 195, 433),
('hisui_legarc', 196, 358),
('hisui_legarc', 197, 200),
('hisui_legarc', 198, 429),
('hisui_legarc', 199, 173),
('hisui_legarc', 200, 35),
('hisui_legarc', 201, 36),
('hisui_legarc', 202, 215),
('hisui_legarc', 203, 903),
('hisui_legarc', 204, 461),
('hisui_legarc', 205, 361),
('hisui_legarc', 206, 362),
('hisui_legarc', 207, 478),
('hisui_legarc', 208, 408),
('hisui_legarc', 209, 409),
('hisui_legarc', 210, 410),
('hisui_legarc', 211, 411),
('hisui_legarc', 212, 220),
('hisui_legarc', 213, 221),
('hisui_legarc', 214, 473),
('hisui_legarc', 215, 712),
('hisui_legarc', 216, 713),
('hisui_legarc', 217, 459),
('hisui_legarc', 218, 460),
('hisui_legarc', 219, 570),
('hisui_legarc', 220, 571),
('hisui_legarc', 221, 627),
('hisui_legarc', 222, 628),
('hisui_legarc', 223, 447),
('hisui_legarc', 224, 448),
('hisui_legarc', 225, 480),
('hisui_legarc', 226, 481),
('hisui_legarc', 227, 482),
('hisui_legarc', 228, 485),
('hisui_legarc', 229, 486),
('hisui_legarc', 230, 488),
('hisui_legarc', 231, 641),
('hisui_legarc', 232, 642),
('hisui_legarc', 233, 645),
('hisui_legarc', 234, 905),
('hisui_legarc', 235, 483),
('hisui_legarc', 236, 484),
('hisui_legarc', 237, 487),
('hisui_legarc', 238, 493),
('hisui_legarc', 239, 489),
('hisui_legarc', 240, 490),
('hisui_legarc', 241, 492),
('hisui_legarc', 242, 491)
;

DROP TABLE IF EXISTS `pokemon_desc`;
CREATE TABLE `pokemon_desc` (
	`id`		INT NOT NULL AUTO_INCREMENT,
    `desc`		VARCHAR(200) NOT NULL UNIQUE,
    `baby`		BOOLEAN NOT NULL DEFAULT false,
    
    PRIMARY KEY(`id`)
);

# Introduced in KANTO
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Seed Pokémon'),
('Lizard Pokémon'),
('Flame Pokémon'),
('Tiny Turtle Pokémon'),
('Turtle Pokémon'),
('Shellfish Pokémon'),
('Worm Pokémon'),
('Cocoon Pokémon'),
('Butterfly Pokémon'),
('Hairy Bug Pokémon'),
('Poison Bee Pokémon'),
('Tiny Bird Pokémon'),
('Bird Pokémon'),
('Mouse Pokémon'),
('Beak Pokémon'),
('Snake Pokémon'),
('Cobra Pokémon'),
('Poison Pin Pokémon'),
('Drill Pokémon'),
('Fairy Pokémon'),
('Fox Pokémon'),
('Balloon Pokémon'),
('Bat Pokémon'),
('Weed Pokémon'),
('Flower Pokémon'),
('Mushroom Pokémon'),
('Insect Pokémon'),
('Poison Moth Pokémon'),
('Mole Pokémon'),
('Scratch Cat Pokémon'),
('Classy Cat Pokémon'),
('Duck Pokémon'),
('Pig Monkey Pokémon'),
('Puppy Pokémon'),
('Legendary Pokémon'),
('Tadpole Pokémon'),
('Psi Pokémon'),
('Superpower Pokémon'),
('Flycatcher Pokémon'),
('Jellyfish Pokémon'),
('Rock Pokémon'),
('Megaton Pokémon'),
('Fire Horse Pokémon'),
('Dopey Pokémon'),
('Hermit Crab Pokémon'),
('Magnet Pokémon'),
('Wild Duck Pokémon'),
('Twin Bird Pokémon'),
('Triple Bird Pokémon'),
('Sea Lion Pokémon'),
('Sludge Pokémon'),
('Bivalve Pokémon'),
('Gas Pokémon'),
('Shadow Pokémon'),
('Rock Snake Pokémon'),
('Hypnosis Pokémon'),
('River Crab Pokémon'),
('Pincer Pokémon'),
('Ball Pokémon'),
('Egg Pokémon'),
('Coconut Pokémon'),
('Lonely Pokémon'),
('Bone Keeper Pokémon'),
('Kicking Pokémon'),
('Punching Pokémon'),
('Licking Pokémon'),
('Poison Gas Pokémon'),
('Spikes Pokémon'),
('Vine Pokémon'),
('Parent Pokémon'),
('Dragon Pokémon'),
('Goldfish Pokémon'),
('Star Shape Pokémon'),
('Mysterious Pokémon'),
('Barrier Pokémon'),
('Mantis Pokémon'),
('Human Shape Pokémon'),
('Electric Pokémon'),
('Spitfire Pokémon'),
('Stag Beetle Pokémon'),
('Wild Bull Pokémon'),
('Fish Pokémon'),
('Atrocious Pokémon'),
('Transport Pokémon'),
('Transform Pokémon'),
('Evolution Pokémon'),
('Bubble Jet Pokémon'),
('Lightning Pokémon'),
('Virtual Pokémon'),
('Spiral Pokémon'),
('Fossil Pokémon'),
('Sleeping Pokémon'),
('Freeze Pokémon'),
('Genetic Pokémon'),
('New Species Pokémon');

# Introduced in JOHTO
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Leaf Pokémon'),
('Herb Pokémon'),
('Fire Mouse Pokémon'),
('Volcano Pokémon'),
('Big Jaw Pokémon'),
('Scout Pokémon'),
('Long Body Pokémon'),
('Owl Pokémon'),
('Five Star Pokémon'),
('String Spit Pokémon'),
('Long Leg Pokémon'),
('Angler Pokémon'),
('Light Pokémon'),
('Tiny Mouse Pokémon'),
('Spike Ball Pokémon'),
('Happiness Pokémon'),
('Mystic Pokémon'),
('Wool Pokémon'),
('Aqua Mouse Pokémon'),
('Aqua Rabbit Pokémon'),
('Imitation Pokémon'),
('Frog Pokémon'),
('Cottonweed Pokémon'),
('Long Tail Pokémon'),
('Sun Pokémon'),
('Clear Wing Pokémon'),
('Water Fish Pokémon'),
('Moonlight Pokémon'),
('Darkness Pokémon'),
('Royal Pokémon'),
('Screech Pokémon'),
('Symbol Pokémon'),
('Patient Pokémon'),
('Long Neck Pokémon'),
('Bagworm Pokémon'),
('Land Snake Pokémon'),
('Fly Scorpion Pokémon'),
('Iron Snake Pokémon'),
('Mold Pokémon'),
('Single Horn Pokémon'),
('Sharp Claw Pokémon'),
('Little Bear Pokémon'),
('Hibernator Pokémon'),
('Lava Pokémon'),
('Pig Pokémon'),
('Swine Pokémon'),
('Coral Pokémon'),
('Jet Pokémon'),
('Delivery Pokémon'),
('Kite Pokémon'),
('Armor Bird Pokémon'),
('Dark Pokémon'),
('Long Nose Pokémon'),
('Armor Pokémon'),
('Big Horn Pokémon'),
('Painter Pokémon'),
('Scuffle Pokémon'),
('Handstand Pokémon'),
('Kiss Pokémon'),
('Live Coal Pokémon'),
('Milk Cow Pokémon'),
('Thunder Pokémon'),
('Aurora Pokémon'),
('Rock Skin Pokémon'),
('Hard Shell Pokémon'),
('Diving Pokémon'),
('Rainbow Pokémon'),
('Time Travel Pokémon');

# Introduced in HOENN
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Wood Gecko Pokémon'),
('Forest Pokémon'),
('Chick Pokémon'),
('Young Fowl Pokémon'),
('Blaze Pokémon'),
('Mud Fish Pokémon'),
('Bite Pokémon'),
('Tiny Racoon Pokémon'),
('Rushing Pokémon'),
('Water Weed Pokémon'),
('Jolly Pokémon'),
('Carefree Pokémon'),
('Acorn Pokémon'),
('Willy Pokémon'),
('Wicked Pokémon'),
('Tiny Swallow Pokémon'),
('Swallow Pokémon'),
('Seagull Pokémon'),
('Water Bird Pokémon'),
('Feeling Pokémon'),
('Emotion Pokémon'),
('Embrace Pokémon'),
('Pond Skater Pokémon'),
('Eyeball Pokémon'),
('Slacker Pokémon'),
('Wild Monkey Pokémon'),
('Lazy Pokémon'),
('Trainee Pokémon'),
('Ninja Pokémon'),
('Shed Pokémon'),
('Whisper Pokémon'),
('Big Voice Pokémon'),
('Loud Noise Pokémon'),
('Guts Pokémon'),
('Arm Thrust Pokémon'),
('Polka Dot Pokémon'),
('Compass Pokémon'),
('Kitten Pokémon'),
('Prim Pokémon'),
('Deceiver Pokémon'),
('Iron Armor Pokémon'),
('Meditate Pokémon'),
('Discharge Pokémon'),
('Cheering Pokémon'),
('Firefly Pokémon'),
('Thorn Pokémon'),
('Stomach Pokémon'),
('Poison Bag Pokémon'),
('Savage Pokémon'),
('Brutal Pokémon'),
('Ball Whale Pokémon'),
('Float Whale Pokémon'),
('Numb Pokémon'),
('Eruption Pokémon'),
('Coal Pokémon'),
('Bounce Pokémon'),
('Manipulate Pokémon'),
('Spot Panda Pokémon'),
('Ant Pit Pokémon'),
('Vibration Pokémon'),
('Cactus Pokémon'),
('Scarecrow Pokémon'),
('Cotton Bird Pokémon'),
('Humming Pokémon'),
('Cat Ferret Pokémon'),
('Fang Snake Pokémon'),
('Meteorite Pokémon'),
('Whiskers Pokémon'),
('Ruffian Pokémon'),
('Rogue Pokémon'),
('Clay Doll Pokémon'),
('Sea Lily Pokémon'),
('Barnacle Pokémon'),
('Old Shrimp Pokémon'),
('Plate Pokémon'),
('Tender Pokémon'),
('Weather Pokémon'),
('Color Swap Pokémon'),
('Puppet Pokémon'),
('Marionette Pokémon'),
('Requiem Pokémon'),
('Beckon Pokémon'),
('Fruit Pokémon'),
('Wind Chime Pokémon'),
('Disaster Pokémon'),
('Bright Pokémon'),
('Snow Hat Pokémon'),
('Face Pokémon'),
('Clap Pokémon'),
('Ball Roll Pokémon'),
('Ice Break Pokémon'),
('Deep Sea Pokémon'),
('South Sea Pokémon'),
('Longevity Pokémon'),
('Rendezvous Pokémon'),
('Rock Head Pokémon'),
('Endurance Pokémon'),
('Iron Ball Pokémon'),
('Iron Claw Pokémon'),
('Iron Leg Pokémon'),
('Rock Peak Pokémon'),
('Iceberg Pokémon'),
('Iron Pokémon'),
('Eon Pokémon'),
('Sea Basin Pokémon'),
('Continent Pokémon'),
('Sky High Pokémon'),
('Wish Pokémon'),
('DNA Pokémon');

# Introduced in SINNOH
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Tiny Leaf Pokémon'),
('Grove Pokémon'),
('Chimp Pokémon'),
('Playful Pokémon'),
('Penguin Pokémon'),
('Emperor Pokémon'),
('Starling Pokémon'),
('Predator Pokémon'),
('Plump Mouse Pokémon'),
('Beaver Pokémon'),
('Cricket Pokémon'),
('Flash Pokémon'),
('Spark Pokémon'),
('Gleam Eyes Pokémon'),
('Bud Pokémon'),
('Bouquet Pokémon'),
('Head Butt Pokémon'),
('Shield Pokémon'),
('Moth Pokémon'),
('Tiny Bee Pokémon'),
('Beehive Pokémon'),
('EleSquirrel Pokémon'),
('Sea Weasel Pokémon'),
('Cherry Pokémon'),
('Blossom Pokémon'),
('Sea Slug Pokémon'),
('Blimp Pokémon'),
('Rabbit Pokémon'),
('Magical Pokémon'),
('Big Boss Pokémon'),
('Catty Pokémon'),
('Tiger Cat Pokémon'),
('Bell Pokémon'),
('Skunk Pokémon'),
('Bronze Pokémon'),
('Bronze Bell Pokémon'),
('Bonsai Pokémon'),
('Mime Pokémon'),
('Playhouse Pokémon'),
('Music Note Pokémon'),
('Forbidden Pokémon'),
('Land Shark Pokémon'),
('Cave Pokémon'),
('Mach Pokémon'),
('Big Eater Pokémon'),
('Emanation Pokémon'),
('Aura Pokémon'),
('Hippo Pokémon'),
('Heavyweight Pokémon'),
('Scorpion Pokémon'),
('Ogre Scorpion Pokémon'),
('Toxic Mouth Pokémon'),
('Bug Catcher Pokémon'),
('Wing Fish Pokémon'),
('Neon Pokémon'),
('Frost Tree Pokémon'),
('Magnet Area Pokémon'),
('Thunderbolt Pokémon'),
('Blast Pokémon'),
('Jubilee Pokémon'),
('Ogre Darner Pokémon'),
('Verdant Pokémon'),
('Fresh Snow Pokémon'),
('Fang Scorpion Pokémon'),
('Twin Tusk Pokémon'),
('Blade Pokémon'),
('Gripper Pokémon'),
('Snow Land Pokémon'),
('Plasma Pokémon'),
('Knowledge Pokémon'),
('Willpower Pokémon'),
('Temporal Pokémon'),
('Spatial Pokémon'),
('Lava Dome Pokémon'),
('Colossal Pokémon'),
('Renegade Pokémon'),
('Lunar Pokémon'),
('Sea Drifter Pokémon'),
('Seafaring Pokémon'),
('Pitch-Black Pokémon'),
('Gratitude Pokémon'),
('Alpha Pokémon');

# Introduced in UNOVA
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Victory Pokémon'),
('Grass Snake Pokémon'),
('Regal Pokémon'),
('Fire Pig Pokémon'),
('Mega Fire Pig Pokémon'),
('Sea Otter Pokémon'),
('Discipline Pokémon'),
('Formidable Pokémon'),
('Lookout Pokémon'),
('Loyal Dog Pokémon'),
('Big-Hearted Pokémon'),
('Devious Pokémon'),
('Cruel Pokémon'),
('Grass Monkey Pokémon'),
('Thorn Monkey Pokémon'),
('High Temp Pokémon'),
('Ember Pokémon'),
('Spray Pokémon'),
('Geyser Pokémon'),
('Dream Eating Pokémon'),
('Drowsing Pokémon'),
('Tiny Pigeon Pokémon'),
('Wild Pigeon Pokémon'),
('Proud Pokémon'),
('Electrified Pokémon'),
('Mantle Pokémon'),
('Ore Pokémon'),
('Compressed Pokémon'),
('Courting Pokémon'),
('Subterrene Pokémon'),
('Hearing Pokémon'),
('Muscular Pokémon'),
('Judo Pokémon'),
('Karate Pokémon'),
('Sewing Pokémon'),
('Leaf-Wrapped Pokémon'),
('Nurturing Pokémon'),
('Centipede Pokémon'),
('Curlipede Pokémon'),
('Megapede Pokémon'),
('Cotton Puff Pokémon'),
('Windveiled Pokémon'),
('Bulb Pokémon'),
('Flowering Pokémon'),
('Hostile Pokémon'),
('Desert Croc Pokémon'),
('Intimidation Pokémon'),
('Zen Charm Pokémon'),
('Blazing Pokémon'),
('Rock Inn Pokémon'),
('Stone Home Pokémon'),
('Shredding Pokémon'),
('Hoodlum Pokémon'),
('Avianoid Pokémon'),
('Spirit Pokémon'),
('Coffin Pokémon'),
('Prototurtle Pokémon'),
('First Bird Pokémon'),
('Trash Bag Pokémon'),
('Trash Heap Pokémon'),
('Tricky Fox Pokémon'),
('Illusion Fox Pokémon'),
('Chinchilla Pokémon'),
('Scarf Pokémon'),
('Fixation Pokémon'),
('Astral Body Pokémon'),
('Cell Pokémon'),
('Mitosis Pokémon'),
('Multiplying Pokémon'),
('White Bird Pokémon'),
('Icy Snow Pokémon'),
('Snowstorm Pokémon'),
('Season Pokémon'),
('Sky Squirrel Pokémon'),
('Clamping Pokémon'),
('Cavalry Pokémon'),
('Floating Pokémon'),
('Caring Pokémon'),
('Attaching Pokémon'),
('EleSpider Pokémon'),
('Thorn Seed Pokémon'),
('Thorn Pod Pokémon'),
('Gear Pokémon'),
('EleFish Pokémon'),
('Cerebral Pokémon'),
('Candle Pokémon'),
('Lamp Pokémon'),
('Luring Pokémon'),
('Tusk Pokémon'),
('Axe Jaw Pokémon'),
('Chill Pokémon'),
('Freezing Pokémon'),
('Crystallizing Pokémon'),
('Snail Pokémon'),
('Shell Out Pokémon'),
('Trap Pokémon'),
('Martial Arts Pokémon'),
('Automaton Pokémon'),
('Sharp Blade Pokémon'),
('Sword Blade Pokémon'),
('Bash Buffalo Pokémon'),
('Eaglet Pokémon'),
('Valiant Pokémon'),
('Diapered Pokémon'),
('Bone Vulture Pokémon'),
('Anteater Pokémon'),
('Iron Ant Pokémon'),
('Irate Pokémon'),
('Torch Pokémon'),
('Iron Will Pokémon'),
('Cavern Pokémon'),
('Grassland Pokémon'),
('Cyclone Pokémon'),
('Bolt Strike Pokémon'),
('Vast White Pokémon'),
('Deep Black Pokémon'),
('Abundance Pokémon'),
('Boundary Pokémon'),
('Colt Pokémon'),
('Melody Pokémon'),
('Paleozoic Pokémon')
;

# Introduced in KALOS
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Spiny Nut Pokémon'),
('Spiny Armor Pokémon'),
('Bubble Frog Pokémon'),
('Digging Pokémon'),
('Tiny Robin Pokémon'),
('Scorching Pokémon'),
('Scatterdust Pokémon'),
('Scale Pokémon'),
('Lion Cub Pokémon'),
('Single Bloom Pokémon'),
('Garden Pokémon'),
('Mount Pokémon'),
('Daunting Pokémon'),
('Poodle Pokémon'),
('Restraint Pokémon'),
('Constraint Pokémon'),
('Sword Pokémon'),
('Royal Sword Pokémon'),
('Perfume Pokémon'),
('Fragrance Pokémon'),
('Cotton Candy Pokémon'),
('Meringue Pokémon'),
('Revolving Pokémon'),
('Overturning Pokémon'),
('Two-Handed Pokémon'),
('Collective Pokémon'),
('Mock Kelp Pokémon'),
('Water Gun Pokémon'),
('Howitzer Pokémon'),
('Generator Pokémon'),
('Royal Heir Pokémon'),
('Despot Pokémon'),
('Tundra Pokémon'),
('Intertwining Pokémon'),
('Wrestling Pokémon'),
('Antenna Pokémon'),
('Jewel Pokémon'),
('Soft Tissue Pokémon'),
('Key Ring Pokémon'),
('Stump Pokémon'),
('Elder Tree Pokémon'),
('Pumpkin Pokémon'),
('Ice Chunk Pokémon'),
('Sound Wave Pokémon'),
('Life Pokémon'),
('Destruction Pokémon'),
('Order Pokémon'),
('Mischief Pokémon'),
('Djinn Pokémon'),
('Steam Pokémon')
;

# Introduced in ALOLA
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Grass Quill Pokémon'),
('Blade Quill Pokémon'),
('Arrow Quill Pokémon'),
('Fire Cat Pokémon'),
('Heel Pokémon'),
('Pop Star Pokémon'),
('Soloist Pokémon'),
('Woodpecker Pokémon'),
('Bugle Beak Pokémon'),
('Cannon Pokémon'),
('Loitering Pokémon'),
('Stakeout Pokémon'),
('Larva Pokémon'),
('Battery Pokémon'),
('Boxing Pokémon'),
('Wooly Crab Pokémon'),
('Dancing Pokémon'),
('Bee Fly Pokémon'),
('Wolf Pokémon'),
('Small Fry Pokémon'),
('Brutal Star Pokémon'),
('Donkey Pokémon'),
('Draft Horse Pokémon'),
('Water Bubble Pokémon'),
('Sickle Grass Pokémon'),
('Bloom Sickle Pokémon'),
('Illuminating Pokémon'),
('Toxic Lizard Pokémon'),
('Flailing Pokémon'),
('Strong Arm Pokémon'),
('Posy Picker Pokémon'),
('Sage Pokémon'),
('Teamwork Pokémon'),
('Turn Tail Pokémon'),
('Hard Scale Pokémon'),
('Sand Heap Pokémon'),
('Sand Castle Pokémon'),
('Sea Cucumber Pokémon'),
('Synthetic Pokémon'),
('Meteor Pokémon'),
('Blast Turtle Pokémon'),
('Roly-Poly Pokémon'),
('Disguise Pokémon'),
('Gnash Teeth Pokémon'),
('Placid Pokémon'),
('Sea Creeper Pokémon'),
('Scaly Pokémon'),
('Land Spirit Pokémon'),
('Nebula Pokémon'),
('Protostar Pokémon'),
('Sunne Pokémon'),
('Moone Pokémon'),
('Parasite Pokémon'),
('Swollen Pokémon'),
('Lissome Pokémon'),
('Glowing Pokémon'),
('Launch Pokémon'),
('Drawn Sword Pokémon'),
('Junkivore Pokémon'),
('Prism Pokémon'),
('Artificial Pokémon'),
('Gloomdweller Pokémon'),
('Rampart Pokémon'),
('Fireworks Pokémon'),
('Thunderclap Pokémon'),
('Hex Nut Pokémon')
;

# Introduced in GALAR
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Unique Horn Pokémon'),
('Beat Pokémon'),
('Drummer Pokémon'),
('Striker Pokémon'),
('Water Lizard Pokémon'),
('Secret Agent Pokémon'),
('Cheeky Pokémon'),
('Greedy Pokémon'),
('Raven Pokémon'),
('Radome Pokémon'),
('Seven Spot Pokémon'),
('Cotton Bloom Pokémon'),
('Sheep Pokémon'),
('Snapping Pokémon'),
('Dog Pokémon'),
('Apple Core Pokémon'),
('Apple Wing Pokémon'),
('Apple Nectar Pokémon'),
('Sand Snake Pokémon'),
('Gulp Pokémon'),
('Rush Pokémon'),
('Skewer Pokémon'),
('Baby Pokémon'),
('Punk Pokémon'),
('Radiator Pokémon'),
('Tantrum Pokémon'),
('Jujitsu Pokémon'),
('Black Tea Pokémon'),
('Calm Pokémon'),
('Serene Pokémon'),
('Silent Pokémon'),
('Wily Pokémon'),
('Bulk Up Pokémon'),
('Blocking Pokémon'),
('Viking Pokémon'),
('Comedian Pokémon'),
('Grudge Pokémon'),
('Cream Pokémon'),
('Formation Pokémon'),
('Sea Urchin Pokémon'),
('Frosmoth Pokémon'),
('Big Rock Pokémon'),
('Two-Sided Pokémon'),
('Copperderm Pokémon'),
('Alloy Pokémon'),
('Lingering Pokémon'),
('Caretaker Pokémon'),
('Stealth Pokémon'),
('Warrior Pokémon'),
('Gigantic Pokémon'),
# insert any other abilities here - Isle of Armor
('Wushu Pokémon'),
('Rogue Monkey Pokémon'),
# insert any other abilities here - Crown Tundra (legendary birds' descriptions must go first, Galarian Articuno's already listed)
('Strong Legs Pokémon'),			# Galarian Zapdos
('Malevolent Pokémon'),				# Galarian Moltres
('Hexpert Pokémon'),				# Galarian Slowbro
('Electron Pokémon'),				# Regieleki
('Dragon Orb Pokémon'),				# Regidrago
('Wild Horse Pokémon'),				# Glastrier
('Swift Horse Pokémon'),			# Spectrier
('King Pokémon'),					# Calyrex
('High King Pokémon')				# Calyrex (Ice Rider & Shadow Rider)
;

# Introduced in HISUI
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Sphere Pokémon'),				# Hisuian Voltorb & Electrode
('Ghost Flame Pokémon'),		# Hisuian Typhlosion
('Spinning Pokémon'),			# Hisuian Lilligant
('Spiteful Fox Pokémon'),		# Hisuian Zorua
('Baneful Fox Pokémon'),		# Hisuian Zoroark
('Battle Cry Pokémon'),			# Hisuian Braviary
('Shell Bunker Pokémon'),		# Hisuian Goodra
('Axe Pokémon'),				# Kleavor
('Peat Pokémon'),				# Ursaluna
('Big Fish Pokémon'),			# Basculeigon
('Free Climb Pokémon'),			# Sneasler
('Pin Cluster Pokémon'),		# Overqwil
('Love-Hate Pokémon')			# Enamorus
;

# Introduced in GEN 9
INSERT INTO `pokemon_desc`(`desc`) VALUES 
('Grass Cat'),			# Sprigatito
('Fire Croc Cat'),		# Fuecoco
('Duckling'),			# Quaxly
('')		# keep this for future pending entries
;

# BABY POKEMON
UPDATE `pokemon_desc` SET `baby` = true WHERE `id` IN (
	172, 	# PICHU
    173,	# CLEFFA
    174, 	# IGGLYBUFF
    175,	# TOGEPI
    236,	# TYROGUE
    238,	# SMOOCHUM
    239,	# ELEKID
    240,	# MAGBY
    298,	# AZURILL
    360,	# WYNAUT
    406,	# BUDEW
    433,	# CHINGLING
    438,	# BONSLY
    439,	# MIME JR.
    440,	# HAPPINY
    446,	# MUNCHLAX
    447,	# RIOLU
    458,	# MANTYKE
    848		# TOXEL
);

DROP TABLE IF EXISTS `ability`;
CREATE TABLE `ability`(
	`id`			INT NOT NULL AUTO_INCREMENT,
	`ability_name`	VARCHAR(50) NOT NULL,
    `effect`		VARCHAR(500) NOT NULL,
    
    PRIMARY KEY(`id`)
);

INSERT INTO `ability`(`ability_name`, `effect`) VALUES
('Stench', 'By releasing stench when attacking, this Pokémon may cause the target to flinch.'),
('Drizzle', 'The Pokémon makes it rain when it enters a battle.'),
('Speed Boost', 'Its Speed stat is boosted every turn.'),
('Battle Armor', 'Hard armor protects the Pokémon from critical hits.'),
('Sturdy', 'It cannot be knocked out with one hit. One-hit KO moves cannot knock it out, either.'),
('Damp', 'Prevents the use of explosive moves, such as Self-Destruct, by dampening its surroundings.'),
('Limber', 'Its limber body protects the Pokémon from paralysis.'),
('Sand Veil', 'Boosts the Pokémon\'s evasiveness in a sandstorm.'),
('Static', 'The Pokémon is charged with static electricity, so contact with it may cause paralysis.'),
('Volt Absorb', 'Restores HP if hit by an Electric-type move instead of taking damage.'),
('Water Absorb', 'Restores HP if hit by a Water-type move instead of taking damage.'),
('Oblivious', 'The Pokémon is oblivious, and that keeps it from being infatuated or falling for taunts.'),
('Cloud Nine', 'Eliminates the effects of weather.'),
('Compound Eyes', 'The Pokémon\'s compound eyes boost its accuracy.'),
('Insomnia', 'The Pokémon is suffering from insomnia and cannot fall asleep.'),
('Color Change', 'The Pokémon\'s type becomes the type of the move used on it.'),
('Immunity', 'The immune system of the Pokémon prevents it from getting poisoned.'),
('Flash Fire', 'Powers up the Pokémon\'s Fire-type moves if it\'s hit by one.'),
('Shield Dust', 'This Pokémon\'s dust blocks the additional effects of attacks taken.'),
('Own Tempo', 'This Pokémon has its own tempo, and that prevents it from being confused.'),
('Suction Cups', 'This Pokémon uses suction cups to stay in one spot to negate all moves and items that force switching out.'),
('Intimidate', 'This Pokémon intimidates opposing Pokémon upon entering battle, lowering their Attack stat.'),
('Shadow Tag', 'This Pokémon steps on the opposing Pokémon\'s shadow to prevent it from escaping.'),
('Rough Skin', 'This Pokémon inflicts damage with its rough skin to the attacker on contact.'),
('Wonder Guard', 'Its mysterious power only lets supereffective moves hit the Pokémon.'),
('Levitate', 'By floating in the air, the Pokémon receives full immunity to all Ground-type moves.'),
('Effect Spore', 'Contact with the Pokémon may inflict poison, sleep, or paralysis on its attacker.'),
('Synchronize', 'The attacker will receive the same status condition if it inflicts a burn, poison, or paralysis to the Pokémon.'),
('Clear Body', 'Prevents other Pokémon\'s moves or Abilities from lowering the Pokémon\'s stats.'),
('Natural Cure', 'All status conditions heal when the Pokémon switches out.'),
('Lightning Rod', 'The Pokémon draws in all Electric-type moves. Instead of being hit by Electric-type moves, it boosts its Sp. Atk.'),
('Serene Grace', 'Boosts the likelihood of additional effects occurring when attacking.'),
('Swift Swim', 'Boosts the Pokémon\'s Speed stat in rain.'),
('Chlorophyll', 'Boosts the Pokémon\'s Speed stat in harsh sunlight.'),
('Illuminate', 'Raises the likelihood of meeting wild Pokémon by illuminating the surroundings.'),
('Trace', 'When it enters a battle, the Pokémon copies an opposing Pokémon\'s Ability.'),
('Huge Power', 'Doubles the Pokémon\'s Attack stat.'),
('Poison Point', 'Contact with the Pokémon may poison the attacker.'),
('Inner Focus', 'The Pokémon\'s intensely focused, and that protects the Pokémon from flinching.'),
('Magma Armor', 'The Pokémon is covered with hot magma, which prevents the Pokémon from becoming frozen.'),
('Water Veil', 'The Pokémon is covered with a water veil, which prevents the Pokémon from getting a burn.'),
('Magnet Pull', 'Prevents Steel-type Pokémon from escaping using its magnetic force.'),
('Soundproof', 'Soundproofing gives the Pokémon full immunity to all sound-based moves.'),
('Rain Dish', 'The Pokémon gradually regains HP in rain.'),
('Sand Stream', 'The Pokémon summons a sandstorm when it enters a battle.'),
('Pressure', 'By putting pressure on the opposing Pokémon, it raises their PP usage.'),
('Thick Fat', 'The Pokémon is protected by a layer of thick fat, which halves the damage taken from Fire- and Ice-type moves.'),
('Early Bird', 'The Pokémon awakens from sleep twice as fast as other Pokémon.'),
('Flame Body', 'Contact with the Pokémon may burn the attacker.'),
('Run Away', 'Enables a sure getaway from wild Pokémon.'),
('Keen Eye', 'Keen eyes prevent other Pokémon from lowering this Pokémon\'s accuracy.'),
('Hyper Cutter', 'The Pokémon\'s proud of its powerful pincers. They prevent other Pokémon from lowering its Attack stat.'),
('Pickup', 'The Pokémon may pick up the item an opposing Pokémon used during a battle. It may pick up items outside of battle, too.'),
('Truant', 'The Pokémon can\'t use a move if it had used a move on the previous turn.'),
('Hustle', 'Boosts the Attack stat, but lowers accuracy.'),
('Cute Charm', 'Contact with the Pokémon may cause infatuation.'),
('Plus', 'Boosts the Sp. Atk stat of the Pokémon if an ally with the Plus or Minus Ability is also in battle.'),
('Minus', 'Boosts the Sp. Atk stat of the Pokémon if an ally with the Plus or Minus Ability is also in battle.'),
('Forecast', 'The Pokémon transforms with the weather to change its type to Water, Fire, or Ice.'),
('Sticky Hold', 'Items held by the Pokémon are stuck fast and cannot be removed by other Pokémon.'),
('Shed Skin', 'The Pokémon may heal its own status conditions by shedding its skin.'),
('Guts', 'It\'s so gutsy that having a status condition boosts the Pokémon\'s Attack stat.'),
('Marvel Scale', 'The Pokémon\'s marvelous scales boost the Defense stat if it has a status condition.'),
('Liquid Ooze', 'The oozed liquid has a strong stench, which damages attackers using any draining move.'),
('Overgrow', 'Powers up Grass-type moves when the Pokémon\'s HP is low.'),
('Blaze', 'Powers up Fire-type moves when the Pokémon\'s HP is low.'),
('Torrent', 'Powers up Water-type moves when the Pokémon\'s HP is low.'),
('Swarm', 'Powers up Bug-type moves when the Pokémon\'s HP is low.'),
('Rock Head', 'Protects the Pokémon from recoil damage.'),
('Drought', 'Turns the sunlight harsh when the Pokémon enters a battle.'),
('Arena Trap', 'Prevents opposing Pokémon from fleeing.'),
('Vital Spirit', 'The Pokémon is full of vitality, and that prevents it from falling asleep.'),
('White Smoke', 'The Pokémon is protected by its white smoke, which prevents other Pokémon from lowering its stats.'),
('Pure Power', 'Using its pure power, the Pokémon doubles its Attack stat.'),
('Shell Armor', 'A hard shell protects the Pokémon from critical hits.'),
('Air Lock', 'Eliminates the effects of weather.'),
('Tangled Feet', 'Raises evasiveness if the Pokémon is confused.'),
('Motor Drive', 'Boosts its Speed stat if hit by an Electric-type move instead of taking damage.'),
('Rivalry', 'Becomes competitive and deals more damage to Pokémon of the same gender, but deals less to Pokémon of the opposite gender.'),
('Steadfast', 'The Pokémon\'s determination boosts the Speed stat each time the Pokémon flinches.'),
('Snow Cloak', 'Boosts evasiveness in a hailstorm.'),
('Gluttony', 'Makes the Pokémon eat a held Berry when its HP drops to half or less, which is sooner than usual.'),
('Anger Point', 'The Pokémon is angered when it takes a critical hit, and that maxes its Attack stat.'),
('Unburden', 'Boosts the Speed stat if the Pokémon\'s held item is used or lost.'),
('Heatproof', 'The heatproof body of the Pokémon halves the damage from Fire-type moves that hit it.'),
('Simple', 'The stat changes the Pokémon receives are doubled.'),
('Dry Skin', 'Restores HP in rain or when hit by Water-type moves. Reduces HP in harsh sunlight, and increases the damage received from Fire-type moves.'),
('Download', 'Compares an opposing Pokémon\'s Defense and Sp. Def stats before raising its own Attack or Sp. Atk stat–whichever will be more effective.'),
('Iron Fist', 'Powers up punching moves.'),
('Poison Heal', 'Restores HP if the Pokémon is poisoned instead of losing HP.'),
('Adaptability', 'Powers up moves of the same type as the Pokémon.'),
('Skill Link', 'Maximizes the number of times multistrike moves hit.'),
('Hydration', 'Heals status conditions if it\'s raining.'),
('Solar Power', 'Boosts the Sp. Atk stat in harsh sunlight, but HP decreases every turn.'),
('Quick Feet', 'Boosts the Speed stat if the Pokémon has a status condition.'),
('Normalize', 'All the Pokémon\'s moves become Normal type. The power of those moves is boosted a little.'),
('Sniper', 'Powers up moves if they become critical hits when attacking.'),
('Magic Guard', 'The Pokémon only takes damage from attacks.'),
('No Guard', 'The Pokémon employs no-guard tactics to ensure incoming and outgoing attacks always land.'),
('Stall', 'The Pokémon moves after all other Pokémon do.'),
('Technician', 'Powers up the Pokémon\'s weaker moves.'),
('Leaf Guard', 'Prevents status conditions in harsh sunlight.'),
('Klutz', 'The Pokémon can\'t use any held items.'),
('Mold Breaker', 'Moves can be used on the target regardless of its Abilities.'),
('Super Luck', 'The Pokémon is so lucky that the critical hit ratios of its moves are boosted.'),
('Aftermath', 'Damages the attacker if it contacts the Pokémon with a finishing hit.'),
('Anticipation', 'The Pokémon can sense an opposing Pokémon\'s dangerous moves.'),
('Forewarn', 'When it enters a battle, the Pokémon can tell one of the moves an opposing Pokémon has.'),
('Unaware', 'When attacking, the Pokémon ignores the target Pokémon\'s stat changes.'),
('Tinted Lens', 'The Pokémon can use "not very effective" moves to deal regular damage.'),
('Filter', 'Reduces the power of supereffective attacks taken.'),
('Slow Start', 'For five turns, the Pokémon\'s Attack and Speed stats are halved.'),
('Scrappy', 'The Pokémon can hit Ghost-type Pokémon with Normal- and Fighting-type moves.'),
('Storm Drain', 'Draws in all Water-type moves. Instead of being hit by Water-type moves, it boosts its Sp. Atk.'),
('Ice Body', 'The Pokémon gradually regains HP in a hailstorm.'),
('Solid Rock', 'Reduces the power of supereffective attacks taken.'),
('Snow Warning', 'The Pokémon summons a hailstorm when it enters a battle.'),
('Honey Gather', 'The Pokémon may gather Honey after a battle.'),
('Frisk', 'When it enters a battle, the Pokémon can check an opposing Pokémon\'s held item.'),
('Reckless', 'Powers up moves that have recoil damage.'),
('Multitype', 'Changes the Pokémon\'s type to match the Plate or Z-Crystal it holds.'),
('Flower Gift', 'Boosts the Attack and Sp. Def stats of itself and allies in harsh sunlight.'),
('Bad Dreams', 'Reduces the HP of sleeping opposing Pokémon.'),
('Pickpocket', 'Steals an item from an attacker that made direct contact.'),
('Sheer Force', 'Removes additional effects to increase the power of moves when attacking.'),
('Contrary', 'Makes stat changes have an opposite effect.'),
('Unnerve', 'Unnerves opposing Pokémon and makes them unable to eat Berries.'),
('Defiant', 'Boosts the Pokémon\'s Attack stat sharply when its stats are lowered.'),
('Defeatist', 'Halves the Pokémon\'s Attack and Sp. Atk stats when its HP becomes half or less.'),
('Cursed Body', 'May disable a move used on the Pokémon.'),
('Healer', 'Sometimes heals an ally\'s status condition.'),
('Friend Guard', 'Reduces damage done to allies.'),
('Weak Armor', 'Physical attacks to the Pokémon lower its Defense stat but sharply raise its Speed stat.'),
('Heavy Metal', 'Doubles the Pokémon\'s weight.'),
('Light Metal', 'Halves the Pokémon\'s weight.'),
('Multiscale', 'Reduces the amount of damage the Pokémon takes while its HP is full.'),
('Toxic Boost', 'Powers up physical attacks when the Pokémon is poisoned.'),
('Flare Boost', 'Powers up special attacks when the Pokémon is burned.'),
('Harvest', 'May create another Berry after one is used.'),
('Telepathy', 'Anticipates an ally\'s attack and dodges it.'),
('Moody', 'Raises one stat sharply and lowers another every turn.'),
('Overcoat', 'Protects the Pokémon from things like sand, hail, and powder.'),
('Poison Touch', 'May poison a target when the Pokémon makes contact.'),
('Regenerator', 'Restores a little HP when withdrawn from battle.'),
('Big Pecks', 'Protects the Pokémon from Defense-lowering effects.'),
('Sand Rush', 'Boosts the Pokémon\'s Speed stat in a sandstorm.'),
('Wonder Skin', 'Makes status moves more likely to miss.'),
('Analytic', 'Boosts move power when the Pokémon moves last.'),
('Illusion', 'Comes out disguised as the Pokémon in the party\'s last spot.'),
('Imposter', 'The Pokémon transforms itself into the Pokémon it\'s facing.'),
('Infiltrator', 'Passes through the opposing Pokémon\'s barrier, substitute, and the like and strikes.'),
('Mummy', 'Contact with the Pokémon changes the attacker\'s Ability to Mummy.'),
('Moxie', 'The Pokémon shows moxie, and that boosts the Attack stat after knocking out any Pokémon.'),
('Justified', 'Being hit by a Dark-type move boosts the Attack stat of the Pokémon, for justice.'),
('Rattled', 'Dark-, Ghost-, and Bug-type moves scare the Pokémon and boost its Speed stat.'),
('Magic Bounce', 'Reflects status moves instead of getting hit by them.'),
('Sap Sipper', 'Boosts the Attack stat if hit by a Grass-type move instead of taking damage.'),
('Prankster', 'Gives priority to a status move.'),
('Sand Force', 'Boosts the power of Rock-, Ground, and Steel-type moves in a sandstorm.'),
('Iron Barbs', 'Inflicts damage on the attacker upon contact with iron barbs.'),
('Zen Mode', 'Changes the Pokémon\'s shape when HP is half or less.'),
('Victory Star', 'Boosts the accuracy of its allies and itself.'),
('Turboblaze', 'Moves can be used on the target regardless of its Abilities.'),
('Teravolt', 'Moves can be used on the target regardless of its Abilities.'),
('Aroma Veil', 'Protects itself and its allies from attacks that limit their move choices.'),
('Flower Veil', 'Ally Grass-type Pokémon are protected from status conditions and the lowering of their stats.'),
('Cheek Pouch', 'Restores HP as well when the Pokémon eats a Berry.'),
('Protean', 'Changes the Pokémon\'s type to the type of the move it\'s about to use.'),
('Fur Coat', 'Halves the damage from physical moves.'),
('Magician', 'The Pokémon steals the held item of a Pokémon it hits with a move.'),
('Bulletproof', 'Protects the Pokémon from some ball and bomb moves.'),
('Competitive', 'Boosts the Sp. Atk stat sharply when a stat is lowered.'),
('Strong Jaw', 'The Pokémon\'s strong jaw boosts the power of its biting moves.'),
('Refrigerate', 'Normal-type moves become Ice-type moves. The power of those moves is boosted a little.'),
('Sweet Veil', 'Prevents itself and ally Pokémon from falling asleep.'),
('Stance Change', 'The Pokémon changes its form to Blade Forme when it uses an attack move and changes to Shield Forme when it uses King\'s Shield.'),
('Gale Wings', 'Gives priority to Flying-type moves when the Pokémon\'s HP is full.'),
('Mega Launcher', 'Powers up aura and pulse moves.'),
('Grass Pelt', 'Boosts the Pokémon\'s Defense stat on Grassy Terrain.'),
('Symbiosis', 'The Pokémon passes its item to an ally that has used up an item.'),
('Tough Claws', 'Powers up moves that make direct contact.'),
('Pixilate', 'Normal-type moves become Fairy-type moves. The power of those moves is boosted a little.'),
('Gooey', 'Contact with the Pokémon lowers the attacker\'s Speed stat.'),
('Aerilate', 'Normal-type moves become Flying-type moves. The power of those moves is boosted a little.'),
('Parental Bond', 'Parent and child each attacks.'),
('Dark Aura', 'Powers up each Pokémon\'s Dark-type moves.'),
('Fairy Aura', 'Powers up each Pokémon\'s Fairy-type moves.'),
('Aura Break', 'The effects of "Aura" Abilities are reversed to lower the power of affected moves.'),
('Primordial Sea', 'The Pokémon changes the weather to nullify Fire-type attacks.'),
('Desolate Land', 'The Pokémon changes the weather to nullify Water-type attacks.'),
('Delta Stream', 'The Pokémon changes the weather to eliminate all of the Flying-type\'s weaknesses.'),
('Stamina', 'Boosts the Defense stat when hit by an attack.'),
('Wimp Out', 'The Pokémon cowardly switches out when its HP becomes half or less.'),
('Emergency Exit', 'The Pokémon, sensing danger, switches out when its HP becomes half or less.'),
('Water Compaction', 'Boosts the Pokémon\'s Defense stat sharply when hit by a Water-type move.'),
('Merciless', 'The Pokémon\'s attacks become critical hits if the target is poisoned.'),
('Shields Down', 'When its HP becomes half or less, the Pokémon\'s shell breaks and it becomes aggressive.'),
('Stakeout', 'Doubles the damage dealt to the target\'s replacement if the target switches out.'),
('Water Bubble', 'Lowers the power of Fire-type moves done to the Pokémon and prevents the Pokémon from getting a burn.'),
('Steelworker', 'Powers up Steel-type moves.'),
('Berserk', 'Boosts the Pokémon\'s Sp. Atk stat when it takes a hit that causes its HP to become half or less.'),
('Slush Rush', 'Boosts the Pokémon\'s Speed stat in a hailstorm.'),
('Long Reach', 'The Pokémon uses its moves without making contact with the target.'),
('Liquid Voice', 'All sound-based moves become Water-type moves.'),
('Triage', 'Gives priority to a healing move.'),
('Galvanize', 'Normal-type moves become Electric-type moves. The power of those moves is boosted a little.'),
('Surge Surfer', 'Doubles the Pokémon\'s Speed stat on Electric Terrain.'),
('Schooling', 'When it has a lot of HP, the Pokémon forms a powerful school. It stops schooling when its HP is low.'),
('Disguise', 'Once per battle, the shroud that covers the Pokémon can protect it from an attack.'),
('Battle Bond', 'Defeating an opposing Pokémon strengthens the Pokémon\'s bond with its Trainer, and it becomes Ash-Greninja. Water Shuriken gets more powerful.'),
('Power Construct', 'Other Cells gather to aid when its HP becomes half or less. Then the Pokémon changes its form to Complete Forme.'),
('Corrosion', 'The Pokémon can poison the target even if it\'s a Steel or Poison type.'),
('Comatose', 'It\'s always drowsing and will never wake up. it can attack without waking up.'),
('Queenly Majesty', 'Its majesty pressures the opposing Pokémon, making it unable to attack using priority moves.'),
('Innards Out', 'Damages the attacker landing the finishing hit by the amount equal to its last HP.'),
('Dancer', 'When another Pokémon uses a dance move, it can use a dance move following it regardless of its Speed.'),
('Battery', 'Powers up ally Pokémon\'s special moves.'),
('Fluffy', 'Halves the damage taken from moves that make direct contact, but doubles that of Fire-type moves.'),
('Dazzling', 'Surprises the opposing Pokémon, making it unable to attack using priority moves.'),
('Soul-Heart', 'Boosts its Sp. Atk stat every time a Pokémon faints.'),
('Tangling Hair', 'Contact with the Pokémon lowers the attacker\'s Speed stat.'),
('Receiver', 'The Pokémon copies the Ability of a defeated ally.'),
('Power of Alchemy', 'The Pokémon copies the Ability of a defeated ally.'),
('Beast Boost', 'The Pokémon boosts its most proficient stat each time it knocks out a Pokémon.'),
('RKS System', 'Changes the Pokémon\'s type to match the memory disc it holds.'),
('Electric Surge', 'Turns the ground into Electric Terrain when the Pokémon enters a battle.'),
('Psychic Surge', 'Turns the ground into Psychic Terrain when the Pokémon enters a battle.'),
('Misty Surge', 'Turns the ground into Misty Terrain when the Pokémon enters a battle.'),
('Grassy Surge', 'Turns the ground into Grassy Terrain when the Pokémon enters a battle.'),
('Full Metal Body', 'Prevents other Pokémon\'s moves or Abilities from lowering the Pokémon\'s stats.'),
('Shadow Shield', 'Reduces the amount of damage the Pokémon takes while its HP is full.'),
('Prism Armor', 'Reduces the power of supereffective attacks taken.'),
('Neuroforce', 'Powers up moves that are super effective.'),
('Intrepid Sword', 'Boosts the Pokémon\'s Attack stat when the Pokémon enters a battle.'),
('Dauntless Shield', 'Boosts the Pokémon\'s Defense stat when the Pokémon enters a battle.'),
('Libero', 'Changes the Pokémon\'s type to the type of the move it\'s about to use.'),
('Ball Fetch', 'If the Pokémon is not holding an item, it will fetch the Poké Ball from the first failed throw of the battle.'),
('Cotton Down', 'When the Pokémon is hit by an attack, it scatters cotton fluff around and lowers the Speed stat of all Pokémon except itself.'),
('Propeller Tail', 'Ignores the effects of opposing Pokémon\'s Abilities and moves that draw in moves.'),
('Mirror Armor', 'Bounces back only the stat-lowering effects that the Pokémon receives.'),
('Gulp Missile', 'When the Pokémon uses Surf or Dive, it will come back with prey. When it takes damage, it will spit out the prey to attack.'),
('Stalwart', 'Ignores the effects of opposing Pokémon\'s Abilities and moves that draw in moves.'),
('Steam Engine', 'Boosts the Pokémon\'s Speed stat drastically if hit by a Fire- or Water-type move.'),
('Punk Rock', 'Boosts the power of sound-based moves. The Pokémon also takes half the damage from these kinds of moves.'),
('Sand Spit', 'The Pokémon creates a sandstorm when it\'s hit by an attack.'),
('Ice Scales', 'The Pokémon is protected by ice scales, which halve the damage taken from special moves.'),
('Ripen', 'Ripens Berries and doubles their effect.'),
('Ice Face', 'The Pokémon\'s ice head can take a physical attack as a substitute, but the attack also changes the Pokémon\'s appearance. The ice will be restored when it hails.'),
('Power Spot', 'Just being next to the Pokémon powers up moves.'),
('Mimicry', 'Changes the Pokémon\'s type depending on the terrain.'),
('Screen Cleaner', 'When the Pokémon enters a battle, the effects of Light Screen, Reflect, and Aurora Veil are nullified for both opposing and ally Pokémon.'),
('Steely Spirit', 'Powers up ally Pokémon\'s Steel-type moves.'),
('Perish Body', 'When hit by a move that makes direct contact, the Pokémon and the attacker will faint after three turns unless they switch out of battle.'),
('Wandering Spirit', 'The Pokémon exchanges Abilities with a Pokémon that hits it with a move that makes direct contact.'),
('Gorilla Tactics', 'Boosts the Pokémon\'s Attack stat but only allows the use of the first selected move.'),
('Neutralizing Gas', 'If the Pokémon with Neutralizing Gas is in the battle, the effects of all Pokémon\'s Abilities will be nullified or will not be triggered.'),
('Pastel Veil', 'Protects the Pokémon and its ally Pokémon from being poisoned.'),
('Hunger Switch', 'The Pokémon changes its form, alternating between its Full Belly Mode and Hangry Mode after the end of each turn.'),
('Quick Draw', 'Enables the Pokémon to move first occasionally.'),
('Unseen Fist', 'If the Pokémon uses moves that make direct contact, it can attack the target even if the target protects itself.'),
('Curious Medicine', 'When the Pokémon enters a battle, it scatters medicine from its shell, which removes all stat changes from allies.'),
('Transistor', 'Powers up Electric-type moves.'),
('Dragon\'s Maw', 'Powers up Dragon-type moves.'),
('Chilling Neigh', 'When the Pokémon knocks out a target, it utters a chilling neigh, which boosts its Attack stat.'),
('Grim Neigh', 'When the Pokémon knocks out a target, it utters a chilling neigh, which boosts its Sp. Atk stat.'),
('As One', 'This Ability combines the effects of both Calyrex\'s Unnerve Ability and Glastrier\'s Chilling Neigh Ability/Spectrier\'s Grim Neigh Ability.')
;

# Z-move (Generation 7 only)
DROP TABLE IF EXISTS `excl_z`;
CREATE TABLE `excl_z` (
	`id`				INT NOT NULL AUTO_INCREMENT,
	`excl_z_move`		VARCHAR(100) NULL,
    `excl_z_move_type`	INT NULL,
    `excl_z_move_cat`	VARCHAR(15) NULL,		# Category: "physical"/"special"/"status"
    `excl_z_crystal`	VARCHAR(30) NULL,
    `excl_z_req_move`	VARCHAR(30) NULL,
    `excl_z_power`		INT NULL,
    
    PRIMARY KEY(`id`),
    FOREIGN KEY(`excl_z_move_type`) REFERENCES `types`(`id`)
);

INSERT INTO `excl_z`(`excl_z_move`, `excl_z_move_type`, `excl_z_move_cat`, `excl_z_crystal`, `excl_z_req_move`, `excl_z_power`) VALUES
('10,000,000 Volt Thunderbolt', 7, 'special', 'Pikashunium Z', 'Thunderbolt', 195),
('Catastropika', 7, 'physical', 'Pikanium Z', 'Volt Tackle', 210),
('Clangorous Soulblaze', 0, 'special', 'Kommonium Z', 'Clanging Scales', 185),
('Extreme Evoboost', 12, 'status', 'Eevium Z', 'Last Resort', NULL),
('Genesis Supernova', 16, 'special', 'Mewnium Z', 'Psychic', 185),
('Guardian of Alola', 17, 'special', 'Tapunium Z', 'Nature\'s Madness', NULL),
('Let\'s Snuggle Forever', 17, 'physical', 'Mimikium Z', 'Play Rough', 190),
('Light That Burns the Sky', 16, 'special', 'Ultranecrozium Z', 'Photon Geyser', 200),
('Malicious Moonsault', 10, 'physical', 'Incinium Z', 'Darkest Lariat', 180),
('Menacing Moonraze Maelstrom', 1, 'special', 'Lunalium Z', 'Moongeist Beam', 200),
('Oceanic Operetta', 6, 'special', 'Primarium Z', 'Sparkling Aria', 195),
('Pulverizing Pancake', 12, 'physical', 'Snorlium Z', 'Giga Impact', 210),
('Searing Sunraze Smash', 12, 'physical', 'Snorlium Z', 'Giga Impact', 210),
('Sinister Arrow Raid', 1, 'physical', 'Decidium Z', 'Spirit Shackle', 180),
('Soul-Stealing 7-Star Strike', 1, 'physical', 'Marshadium Z', 'Spectral Thief', 195),
('Splintered Stormshards', 8, 'physical', 'Lycanium Z', 'Stone Edge', 190),
('Stoked Sparksurfer', 7, 'special', 'Alolaraichium Z', 'Thunderbolt', 175)
;

DROP TABLE IF EXISTS `type_bundle`;
CREATE TABLE `type_bundle` (
	`type_name`			VARCHAR(50) NOT NULL DEFAULT 'default',
	`jp_type_desc`		VARCHAR(200) NULL,
	`type_desc`			VARCHAR(200) NOT NULL DEFAULT '',
    `type1`				INT NOT NULL,
    `type2`				INT NULL,
    `mega_stone`		VARCHAR(50) NULL,
    `excl_z_ref`		INT NULL,
	`g_max_move`		VARCHAR(100) NULL,
	`g_max_type`		INT NULL,
    `pokedex_ref`		INT NOT NULL,
    `ability1`			INT NULL,
    `ability2`			INT NULL,
    `hidden_ability`	INT NULL,
    
    UNIQUE KEY (`type_name`, `pokedex_ref`),
    
    FOREIGN KEY(`type_desc`) REFERENCES `pokemon_desc`(`desc`),
    FOREIGN KEY(`type1`) REFERENCES `types`(`id`),
    FOREIGN KEY(`type2`) REFERENCES `types`(`id`),
    FOREIGN KEY(`excl_z_ref`) REFERENCES `excl_z`(`id`),
    FOREIGN KEY(`g_max_type`) REFERENCES `types`(`id`),
	FOREIGN KEY(`pokedex_ref`) REFERENCES `pokemon_list`(`id`),
    FOREIGN KEY(`ability1`) REFERENCES `ability`(`id`),
    FOREIGN KEY(`ability2`) REFERENCES `ability`(`id`),
    FOREIGN KEY(`hidden_ability`) REFERENCES `ability`(`id`)
);

# KANTO regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(1, 9, 4),
(2, 9, 4),
(3, 9, 4),
(4, 13, NULL),
(5, 13, NULL),
(6, 13, 3),
(7, 6, NULL),
(8, 6, NULL),
(9, 6, NULL),
(10, 5, NULL),
(11, 5, NULL),
(12, 5, 3),
(13, 5, 4),
(14, 5, 4),
(15, 5, 4),
(16, 12, 3),
(17, 12, 3),
(18, 12, 3),
(19, 12, NULL),
(20, 12, NULL),
(21, 12, 3),
(22, 12, 3),
(23, 4, NULL),
(24, 4, NULL),
(25, 7, NULL),  # #25 PIKACHU's other forms to be entered separately
(26, 7, NULL),
(27, 2, NULL),
(28, 2, NULL),
(29, 4, NULL),
(30, 4, NULL),
(31, 4, 2),
(32, 4, NULL),
(33, 4, NULL),
(34, 4, 2),
(35, 17, NULL),
(36, 17, NULL),
(37, 13, NULL),
(38, 13, NULL),
(39, 12, 17),
(40, 12, 17),
(41, 4, 3),
(42, 4, 3),
(43, 9, 4),
(44, 9, 4),
(45, 9, 4),
(46, 5, 9),
(47, 5, 9),
(48, 5, 4),
(49, 5, 4),
(50, 2, NULL),
(51, 2, NULL),
(52, 12, NULL),
(53, 12, NULL),
(54, 6, NULL),
(55, 6, NULL),
(56, 14, NULL),
(57, 14, NULL),
(58, 13, NULL),
(59, 13, NULL),
(60, 6, NULL),
(61, 6, NULL),
(62, 6, 14),
(63, 16, NULL),
(64, 16, NULL),
(65, 16, NULL),
(66, 14, NULL),
(67, 14, NULL),
(68, 14, NULL),
(69, 9, 4), 
(70, 9, 4), 
(71, 9, 4), 
(72, 6, 4), 
(73, 6, 4), 
(74, 8, 2), 
(75, 8, 2), 
(76, 8, 2), 
(77, 13, NULL), 
(78, 13, NULL), 
(79, 6, 16), 
(80, 6, 16), 
(81, 7, 15), 
(82, 7, 15), 
(83, 12, 3), 
(84, 12, 3), 
(85, 12, 3), 
(86, 6, NULL), 
(87, 6, 11), 
(88, 4, NULL), 
(89, 4, NULL), 
(90, 6, NULL), 
(91, 6, 11),
(92, 1, 4), 
(93, 1, 4), 
(94, 1, 4), 
(95, 8, 2), 
(96, 16, NULL),
(97, 16, NULL),
(98, 6, NULL),
(99, 6, NULL),
(100, 7, NULL),
(101, 7, NULL),
(102, 9, 16),
(103, 9, 16),
(104, 2, NULL),
(105, 2, NULL),
(106, 14, NULL), 
(107, 14, NULL), 
(108, 12, NULL), 
(109, 4, NULL),
(110, 4, NULL),
(111, 2, 8),
(112, 2, 8),
(113, 12, NULL),
(114, 9, NULL),
(115, 12, NULL),
(116, 6, NULL),
(117, 6, NULL),
(118, 6, NULL),
(119, 6, NULL),
(120, 6, NULL),
(121, 6, NULL),
(122, 16, 17),
(123, 5, 3),
(124, 11, 16),
(125, 7, NULL),
(126, 13, NULL),
(127, 5, NULL),
(128, 12, NULL),
(129, 6, NULL), 
(130, 6, 3), 
(131, 6, 11), 
(132, 12, NULL), 
(133, 12, NULL), 
(134, 6, NULL), 
(135, 7, NULL), 
(136, 13, NULL),
(137, 12, NULL),
(138, 8, 6),
(139, 8, 6),
(140, 8, 6),
(141, 8, 6),
(142, 8, 3),
(143, 12, NULL),
(144, 11, 3), 
(145, 7, 3), 
(146, 13, 3),
(147, 0, NULL), 
(148, 0, NULL), 
(149, 0, 3),
(150, 16, NULL), 
(151, 16, NULL)
;

# #25 PIKACHU
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'cosplay_pikachu', 'おきがえピカチュウ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'original_cap', 'オリジナルキャップ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'hoenn_cap', 'ホウエンキャップ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'sinnoh_cap', 'シンオウキャップ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'unova_cap', 'イッシュキャップ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'kalos_cap', 'カロスキャップ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'alola_cap', 'アローラキャップ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'partner_cap', 'キミにきめたキャップ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (25, 7, NULL, 'world_cap', 'ワールドキャップ');

# JOHTO regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(152, 9, NULL),
(153, 9, NULL),
(154, 9, NULL),
(155, 13, NULL),
(156, 13, NULL),
(157, 13, NULL),
(158, 6, NULL),
(159, 6, NULL),
(160, 6, NULL),
(161, 12, NULL),
(162, 12, NULL),
(163, 12, 3),
(164, 12, 3),
(165, 5, 3),
(166, 5, 3),
(167, 5, 4),
(168, 5, 4),
(169, 4, 3),
(170, 6, 7),
(171, 6, 7),
(172, 7, NULL),
(173, 17, NULL),
(174, 12, 17),
(175, 17, NULL),
(176, 17, 3),
(177, 16, 3),
(178, 16, 3),
(179, 7, NULL),
(180, 7, NULL),
(181, 7, NULL),
(182, 9, NULL),
(183, 6, 17),
(184, 6, 17),
(185, 8, NULL),
(186, 6, NULL),
(187, 9, 3),
(188, 9, 3),
(189, 9, 3),
(190, 12, NULL),
(191, 9, NULL),
(192, 9, NULL),
(193, 5, 3),
(194, 6, 2),
(195, 6, 2),
(196, 16, NULL),
(197, 10, NULL),
(198, 10, 3),
(199, 6, 16),
(200, 1, NULL),
(201, 16, NULL),
(202, 16, NULL),
(203, 12, 16),
(204, 5, NULL),
(205, 5, 15),
(206, 12, NULL),
(207, 2, 3),
(208, 15, 2),
(209, 17, NULL),
(210, 17, NULL),
(211, 6, 4),
(212, 5, 15),
(213, 5, 8),
(214, 5, 14),
(215, 10, 11),
(216, 12, NULL),
(217, 12, NULL),
(218, 13, NULL),
(219, 13, 8),
(220, 11, 2),
(221, 11, 2),
(222, 6, 8),
(223, 6, NULL),
(224, 6, NULL),
(225, 11, 3),
(226, 6, 3),
(227, 15, 3),
(228, 10, 13),
(229, 10, 13),
(230, 6, 0),
(231, 2, NULL),
(232, 2, NULL),
(233, 12, NULL),
(234, 12, NULL),
(235, 12, NULL),
(236, 14, NULL),
(237, 14, NULL),
(238, 11, 16),
(239, 7, NULL),
(240, 13, NULL),
(241, 12, NULL),
(242, 12, NULL),
(243, 7, NULL),
(244, 13, NULL),
(245, 6, NULL),
(246, 8, 2),
(247, 8, 2),
(248, 8, 10),
(249, 16, 3),
(250, 13, 3),
(251, 16, 9)
;

# HOENN regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(252, 9, NULL),
(253, 9, NULL),
(254, 9, NULL),
(255, 13, NULL),
(256, 13, 14),
(257, 13, 14),
(258, 6, NULL),
(259, 6, 2),
(260, 6, 2),
(261, 10, NULL),
(262, 10, NULL),
(263, 12, NULL),
(264, 12, NULL),
(265, 5, NULL),
(266, 5, NULL),
(267, 5, 3),
(268, 5, NULL),
(269, 5, 4),
(270, 6, 9),
(271, 6, 9),
(272, 6, 9),
(273, 9, NULL),
(274, 9, 10),
(275, 9, 10),
(276, 12, 3),
(277, 12, 3),
(278, 6, 3),
(279, 6, 3),
(280, 16, 17),
(281, 16, 17),
(282, 16, 17),
(283, 5, 6),
(284, 5, 3),
(285, 9, NULL),
(286, 9, 14),
(287, 12, NULL),
(288, 12, NULL),
(289, 12, NULL),
(290, 5, 2),
(291, 5, 3),
(292, 5, 1),
(293, 12, NULL),
(294, 12, NULL),
(295, 12, NULL),
(296, 14, NULL),
(297, 14, NULL),
(298, 12, 17),
(299, 8, NULL),
(300, 12, NULL),
(301, 12, NULL),
(302, 10, 1),
(303, 15, 17),
(304, 15, 8),
(305, 15, 8),
(306, 15, 8),
(307, 14, 16),
(308, 14, 16),
(309, 7, NULL),
(310, 7, NULL),
(311, 7, NULL),
(312, 7, NULL),
(313, 5, NULL),
(314, 5, NULL),
(315, 9, 4),
(316, 4, NULL),
(317, 4, NULL),
(318, 6, 10),
(319, 6, 10),
(320, 6, NULL),
(321, 6, NULL),
(322, 13, 2),
(323, 13, 2),
(324, 13, NULL),
(325, 16, NULL),
(326, 16, NULL),
(327, 12, NULL),
(328, 2, NULL),
(329, 2, 0),
(330, 2, 0),
(331, 9, NULL),
(332, 9, 10),
(333, 12, 3),
(334, 0, 3),
(335, 12, NULL),
(336, 4, NULL),
(337, 8, 16),
(338, 8, 16),
(339, 6, 2),
(340, 6, 2),
(341, 6, NULL),
(342, 6, 10),
(343, 2, 16),
(344, 2, 16),
(345, 8, 9),
(346, 8, 9),
(347, 8, 5),
(348, 8, 5),
(349, 6, NULL),
(350, 6, NULL),
# #351 CASTFORM to be entered separately
(352, 12, NULL),
(353, 1, NULL),
(354, 1, NULL),
(355, 1, NULL),
(356, 1, NULL),
(357, 9, 3),
(358, 16, NULL),
(359, 10, NULL),
(360, 16, NULL),
(361, 11, NULL),
(362, 11, NULL),
(363, 11, 6),
(364, 11, 6),
(365, 11, 6),
(366, 6, NULL),
(367, 6, NULL),
(368, 6, NULL),
(369, 6, 8),
(370, 6, NULL),
(371, 0, NULL),
(372, 0, NULL),
(373, 0, 3),
(374, 15, 16),
(375, 15, 16),
(376, 15, 16),
(377, 8, NULL),
(378, 11, NULL),
(379, 15, NULL),
(380, 0, 16),
(381, 0, 16),
(382, 6, NULL),		# #382 KYOGRE's other form to be entered separately
(383, 2, NULL),     # #383 GROUDON's other form to be entered separately
(384, 0, 3),
(385, 15, 16)
# #386 DEOXYS to be entered separately
;

# #351 CASTFORM
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (351, 12, NULL, 'normal_form', 'ポワルンのすがた');	
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (351, 13, NULL, 'sunny_form', 'たいようのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (351, 6, NULL, 'rainy_form', 'あまみずのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (351, 11, NULL, 'snowy_form', 'ゆきぐものすがた');

# #382 KYOGRE
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`) VALUES (382, 6, NULL, 'primal');

# #383 GROUDON
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`) VALUES (383, 2, 13, 'primal');

# #386 DEOXYS
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (386, 16, NULL, 'normal_forme', 'ノーマルフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (386, 16, NULL, 'attack_forme', 'アタックフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (386, 16, NULL, 'defense_forme', 'ディフィンスッフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (386, 16, NULL, 'speed_forme', 'スピードフォルム');

# SINNOH regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(387, 9, NULL),
(388, 9, NULL),
(389, 9, 2),
(390, 13, NULL),
(391, 13, 14),
(392, 13, 14),
(393, 6, NULL),
(394, 6, NULL),
(395, 6, 15),
(396, 12, 3),
(397, 12, 3),
(398, 12, 3),
(399, 12, NULL),
(400, 12, 6),
(401, 5, NULL),
(402, 5, NULL),
(403, 7, NULL),
(404, 7, NULL),
(405, 7, NULL),
(406, 9, 4),
(407, 9, 4),
(408, 8, NULL),
(409, 8, NULL),
(410, 8, 15),
(411, 8, 15),
# #412 BURMY to be entered separately
# #413 WORMADAM to be entered separately
(414, 5, 3),
(415, 5, 3),
(416, 5, 3),
(417, 7, NULL),
(418, 6, NULL),
(419, 6, NULL),
(420, 9, NULL),
(421, 9, NULL),
# #422 SHELLOS to be entered separately
# #423 GASTRODON to be entered separately
(424, 12, NULL),
(425, 1, 3),
(426, 1, 3),
(427, 12, NULL),
(428, 12, NULL),
(429, 1, NULL),
(430, 10, 3),
(431, 12, NULL),
(432, 12, NULL),
(433, 16, NULL),
(434, 4, 10),
(435, 4, 10),
(436, 15, 16),
(437, 15, 16),
(438, 8, NULL),
(439, 16, 17),
(440, 12, NULL),
(441, 12, 3),
(442, 1, 10),
(443, 0, 2),
(444, 0, 2),
(445, 0, 2),
(446, 12, NULL),
(447, 14, NULL),
(448, 14, 15),
(449, 2, NULL),
(450, 2, NULL),
(451, 4, 5),
(452, 4, 10),
(453, 4, 14),
(454, 4, 14),
(455, 9, NULL),
(456, 6, NULL),
(457, 6, NULL),
(458, 6, 3),
(459, 9, 11),
(460, 9, 11),
(461, 10, 11),
(462, 7, 15),
(463, 12, NULL),
(464, 2, 8),
(465, 9, NULL),
(466, 7, NULL),
(467, 13, NULL),
(468, 17, 3),
(469, 5, 3),
(470, 9, NULL),
(471, 11, NULL),
(472, 2, 3),
(473, 11, 2),
(474, 12, NULL),
(475, 16, 14),
(476, 8, 15),
(477, 1, NULL),
(478, 11, 1),
(479, 7, 1),
(480, 16, NULL),	# #480 ROTOM's other forms to be entered separately
(481, 16, NULL),
(482, 16, NULL),
(483, 15, 0),		# #483 DIALGA's other forms to be entered separately
(484, 6, 0),		# #484 PALKIA's other forms to be entered separately
(485, 13, 15),
(486, 12, NULL),
# 487 GIRATINA to be entered separately
(488, 16, NULL),
(489, 6, NULL),
(490, 6, NULL),
(491, 10, NULL),
# #492 SHAYMIN to be entered separately
(493, 12, NULL)
;

# #412 BURMY
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (412, 5, NULL, 'plant_cloak', 'くさきのミノ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (412, 5, NULL, 'sandy_cloak', 'すなちのミノ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (412, 5, NULL, 'trash_cloak', 'ゴミの');

# #413 WORMADAM
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (413, 5, 9, 'plant_cloak', 'くさきのミノ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (413, 5, 2, 'sandy_cloak', 'すなちのミノ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (413, 5, 15, 'trash_cloak', 'ゴミの');

# #422 SHELLOS
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (422, 6, 2, 'west_sea', 'にしのうみ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (422, 6, 2, 'east_sea', 'ひがしのうみ');

# #423 GASTRODON
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (423, 6, 2, 'west_sea', 'にしのうみ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (423, 6, 2, 'east_sea', 'ひがしのうみ');

# #479 ROTOM
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (479, 7, 13, 'heat_rotom', 'ヒートロトム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (479, 7, 6, 'wash_rotom', 'ウォッシュロトム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (479, 7, 11, 'frost_rotom', 'フロストロトム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (479, 7, 3, 'fan_rotom', 'スピンロトム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (479, 7, 9, 'mow_rotom', 'カットロトム');

# #483 DIALGA
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (483, 15, 0, 'lord_forme', '');

# #484 PALKIA
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (484, 6, 0, 'lord_forme', '');

# #487 GIRATINA
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (487, 1, 0, 'origin_forme', 'オリジンフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (487, 1, 0, 'altered_forme', 'アナザーフォルム');

# #492 SHAYMIN
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (492, 9, NULL, 'land_forme', 'ランドフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (492, 9, 3, 'sky_forme', 'スカイフォルム');

# UNOVA regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(494, 16, 13),
(495, 9, NULL),
(496, 9, NULL),
(497, 9, NULL),
(498, 13, NULL),
(499, 13, 14),
(500, 13, 14),
(501, 6, NULL),
(502, 6, NULL),
(503, 6, NULL),
(504, 12, NULL),
(505, 12, NULL),
(506, 12, NULL),
(507, 12, NULL),
(508, 12, NULL),
(509, 10, NULL),
(510, 10, NULL),
(511, 9, NULL),
(512, 9, NULL),
(513, 13, NULL),
(514, 13, NULL),
(515, 6, NULL),
(516, 6, NULL),
(517, 16, NULL),
(518, 16, NULL),
(519, 12, 3),
(520, 12, 3),
(521, 12, 3),
(522, 7, NULL),
(523, 7, NULL),
(524, 8, NULL),
(525, 8, NULL),
(526, 8, NULL),
(527, 16, 3),
(528, 16, 3),
(529, 2, NULL),
(530, 2, 15),
(531, 12, NULL),
(532, 14, NULL),
(533, 14, NULL),
(534, 14, NULL),
(535, 6, NULL),
(536, 6, 2),
(537, 6, 2),
(538, 14, NULL),
(539, 14, NULL),
(540, 5, 9),
(541, 5, 9),
(542, 5, 9),
(543, 5, 4),
(544, 5, 4),
(545, 5, 4),
(546, 9, 17),
(547, 9, 17),
(548, 9, NULL),
(549, 9, NULL),
# #550 BASCULIN to be entered separately
(551, 2, 10),
(552, 2, 10),
(553, 2, 10),
(554, 13, NULL),
# #555 DARMANITAN to be entered separately
(556, 9, NULL),
(557, 5, 8),
(558, 5, 8),
(559, 10, 14),
(560, 10, 14),
(561, 16, 3),
(562, 1, NULL),
(563, 1, NULL),
(564, 6, 8),
(565, 6, 8),
(566, 8, 3),
(567, 8, 3),
(568, 4, NULL),
(569, 4, NULL),
(570, 10, NULL),
(571, 10, NULL),
(572, 12, NULL),
(573, 12, NULL),
(574, 16, NULL),
(575, 16, NULL),
(576, 16, NULL),
(577, 16, NULL),
(578, 16, NULL),
(579, 16, NULL),
(580, 6, 3),
(581, 6, 3),
(582, 11, NULL),
(583, 11, NULL),
(584, 11, NULL),
# #585 DEERLING to be entered separately
# #586 SAWSBUCK to be entered separately
(587, 7, 3),
(588, 5, NULL),
(589, 5, 15),
(590, 9, 4),
(591, 9, 4),
(592, 6, 1),
(593, 6, 1),
(594, 6, NULL),
(595, 5, 7),
(596, 5, 7),
(597, 9, 15),
(598, 9, 15),
(599, 15, NULL),
(600, 15, NULL),
(601, 15, NULL),
(602, 7, NULL),
(603, 7, NULL),
(604, 7, NULL),
(605, 16, NULL),
(606, 16, NULL),
(607, 1, 13),
(608, 1, 13),
(609, 1, 13),
(610, 0, NULL),
(611, 0, NULL),
(612, 0, NULL),
(613, 11, NULL),
(614, 11, NULL),
(615, 11, NULL),
(616, 5, NULL),
(617, 5, NULL),
(618, 2, 7),
(619, 14, NULL),
(620, 14, NULL),
(621, 0, NULL),
(622, 2, 1),
(623, 2, 1),
(624, 10, 15),
(625, 10, 15),
(626, 12, NULL),
(627, 12, 3),
(628, 12, 3),
(629, 10, 3),
(630, 10, 3),
(631, 13, NULL),
(632, 5, 15),
(633, 10, 0),
(634, 10, 0),
(635, 10, 0),
(636, 5, 13),
(637, 5, 13),
(638, 15, 14),
(639, 8, 14),
(640, 9, 14),
# #641 TORNADUS to be entered separately
# #642 THUNDRUS to be entered separately
(643, 0, 13),
(644, 0, 7),
# #645 LANDORUS to be entered separately
(646, 0, 11),       # #646 KYUREM's other forms to be entered separately
# #647 KELDEO to be entered separately
# #648 MELOETTA to be entered separately
(649, 5, 15)
;

# #550 BASCULIN
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (550, 6, NULL, 'red-striped_form', 'ノーマルモード');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (550, 6, NULL, 'blue-striped_form', 'ダルマモード');
# INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (550, 6, NULL, 'white-striped_form', '');

# #555 DARMANITAN
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (555, 13, NULL, 'standard_mode', 'ノーマルモード');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (555, 13, 16, 'zen_mode', 'ダルマモード');

# #585 DEERLING
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (585, 12, 9, 'spring_form', 'はるのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (585, 12, 9, 'summer_form', 'なつのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (585, 12, 9, 'autumn_form', 'あきのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (585, 12, 9, 'winter_form', 'ふゆのすがた');

# #586 SAWSBUCK
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (586, 12, 9, 'spring_form', 'はるのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (586, 12, 9, 'summer_form', 'なつのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (586, 12, 9, 'autumn_form', 'あきのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (586, 12, 9, 'winter_form', 'ふゆのすがた');

# #641 TORNADUS
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (641, 3, NULL, 'incarnate_forme', 'けしんフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (641, 3, NULL, 'therian_forme', 'れいじゅうフォルム');

# #642 THUNDRUS
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (642, 7, 3, 'incarnate_forme', 'けしんフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (642, 7, 3, 'therian_forme', 'れいじゅうフォルム');

# #645 LANDORUS
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (645, 2, 3, 'incarnate_forme', 'けしんフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (645, 2, 3, 'therian_forme', 'れいじゅうフォルム');

# #646 KYUREM
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (646, 0, 11, 'white_kyurem', 'ホワイトキュレム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (646, 0, 11, 'black_kyurem', 'ブラックキュレム');

# #647 KELDEO
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (647, 6, 14, 'ordinary_form', 'いつものすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (647, 6, 14, 'resolute_form', 'かくごのすがた');

# #648 MELOETTA
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (648, 12, 16, 'aria_forme', 'ボイスフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (648, 12, 14, 'step_forme', 'ステップフォルム');

# KALOS regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(650, 9, NULL),
(651, 9, NULL),
(652, 9, 14),
(653, 13, NULL),
(654, 13, NULL),
(655, 13, 16),
(656, 6, NULL),
(657, 6, NULL),
(658, 6, 10),   # #658's other form to be entered separately
(659, 12, NULL),
(660, 12, 2),
(661, 12, 3),
(662, 13, 3),
(663, 13, 3),
(664, 5, NULL),
(665, 5, NULL),
(666, 5, 3),
(667, 13, 12),
(668, 13, 12),
(669, 17, NULL),
(670, 17, NULL),
(671, 17, NULL),
(672, 9, NULL),
(673, 9, NULL),
(674, 14, NULL),
(675, 14, 10),
(676, 12, NULL),
(677, 16, NULL),
# #678 MEOWSTIC to be entered separately
(679, 15, 1),
(680, 15, 1),
(681, 15, 1),
(682, 17, NULL),
(683, 17, NULL),
(684, 17, NULL),
(685, 17, NULL),
(686, 10, 16),
(687, 10, 16),
(688, 8, 6),
(689, 8, 6),
(690, 4, 6),
(691, 4, 0),
(692, 6, NULL),
(693, 6, NULL),
(694, 7, 12),
(695, 7, 12),
(696, 8, 0),
(697, 8, 0),
(698, 8, 11),
(699, 8, 11),
(700, 17, NULL),
(701, 14, 3),
(702, 7, 17),
(703, 8, 17),
(704, 0, NULL),
(705, 0, NULL),
(706, 0, NULL),
(707, 15, 17),
(708, 1, 9),
(709, 1, 9),
(710, 1, 9),
(711, 1, 9),
(712, 11, NULL),
(713, 11, NULL),
(714, 3, 0),
(715, 3, 0),
(716, 17, NULL),
(717, 10, 3),
# #718 ZYGARDE to be entered separately
(719, 8, 17),
# #720 HOOPA to be entered separately
(721, 13, 6)
;

# #658 GRENINJA
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (658, 6, 10, 'ash_greninja', 'サトシゲッコウガ ');

# #678 MEOWSTIC
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`) VALUES (678, 16, NULL, 'default_f');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`) VALUES (678, 16, NULL, 'default_m');

# #718 ZYGARDE
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (718, 0, 2, 'zygarde_10percent_forme', 'ジガルデ・１０％フォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (718, 0, 2, 'zygarde_50percent_forme', 'ジガルデ・５０％フォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (718, 0, 2, 'zygarde_complete_forme', 'ジガルデ・パーフェクトフォルム');

# #720 HOOPA
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (720, 16, 1, 'hoopa_confined', 'いましめられしフーパ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (720, 16, 10, 'hoopa_unbound', 'ときはなたれしフーパ');

# ALOLA regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(722, 9, 3),
(723, 9, 3),
(724, 9, 1),
(725, 13, NULL),
(726, 13, NULL),
(727, 13, 10),
(728, 6, NULL),
(729, 6, NULL),
(730, 6, 17),
(731, 12, 3),
(732, 12, 3),
(733, 12, 3),
(734, 12, NULL),
(735, 12, NULL),
(736, 5, NULL),
(737, 5, 7),
(738, 5, 7),
(739, 14, NULL),
(740, 14, 11),
# #741 ORICORIO to be entered separately
(742, 5, 17),
(743, 5, 17),
(744, 8, NULL),	    # #744 ROCKRUFF has a special form (to be entered separately)
# #745 LYCANROC to be entered separately
(746, 6, NULL),
(747, 4, 6),
(748, 4, 6),
(749, 2, NULL),
(750, 2, NULL),
(751, 6, 5),
(752, 6, 5),
(753, 9, NULL),
(754, 9, NULL),
(755, 9, 17),
(756, 9, 17),
(757, 4, 13),
(758, 4, 13),
(759, 12, 14),
(760, 12, 14),
(761, 9, NULL),
(762, 9, NULL),
(763, 9, NULL),
(764, 17, NULL),
(765, 12, 16),
(766, 14, NULL),
(767, 5, 6),
(768, 5, 6),
(769, 1, 2),
(770, 1, 2),
(771, 6, NULL),
(772, 12, NULL),
(773, 12, NULL),
(774, 8, 3),
(775, 12, NULL),
(776, 13, 0),
(777, 7, 15),
(778, 1, 17),
(779, 12, 0),
(780, 12, 0),
(781, 1, 9),
(782, 0, NULL),
(783, 0, 14),
(784, 0, 14),
(785, 7, 17),
(786, 16, 17),
(787, 9, 17),
(788, 6, 17),
(789, 16, NULL),
(790, 16, NULL),
(791, 16, 15),
(792, 16, 1),
(793, 8, 4),
(794, 5, 14),
(795, 5, 14),
(796, 7, NULL),
(797, 15, 3),
(798, 9, 15),
(799, 10, 0),
(800, 16, NULL),    # #800 NECROZMA's other forms to be entered separately
(801, 15, 17),
(802, 14, 1),
(803, 4, NULL),
(804, 4, 0),
(805, 8, 15),
(806, 13, 1),
(807, 7, NULL),
(808, 15, NULL),
(809, 15, NULL)
;

# #741 ORICORIO
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (741, 13, 3, 'baile_style', 'メラメラスタイル');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (741, 7, 3, 'pompom_style', 'パチパチスタイル');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (741, 16, 3, 'pa\'u_style', 'フラフラスタイル');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (741, 1, 3, 'sensu_style', 'まいまいスタイル');

# #744 ROCKRUFF
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`) VALUES (744, 8, NULL, 'special');

# #745 LYCANROC
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (745, 8, NULL, 'midday_form', 'まひるのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (745, 8, NULL, 'midnight_form', 'まよなかのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (745, 8, NULL, 'dusk_form', 'たそがれのすがた');

# #800 NECROZMA
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (800, 8, 15, 'dusk_mane_necrozma', 'ネクロズマ（たそがれのたてがみ）');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (800, 8, 1, 'dawn_wings_necrozma', 'ネクロズマ（あかつきのつばさ）');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (800, 8, 0, 'ultra_necrozma', 'ウルトラネクロズマ');

# GALAR regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(810, 9, NULL),
(811, 9, NULL),
(812, 9, NULL),
(813, 13, NULL),
(814, 13, NULL),
(815, 13, NULL),
(816, 6, NULL),
(817, 6, NULL),
(818, 6, NULL),
(819, 12, NULL),
(820, 12, NULL),
(821, 3, NULL),
(822, 3, NULL),
(823, 3, 15),
(824, 5, NULL),
(825, 5, 16),
(826, 5, 16),
(827, 10, NULL),
(828, 10, NULL),
(829, 9, NULL),
(830, 9, NULL),
(831, 12, NULL),
(832, 12, NULL),
(833, 6, NULL),
(834, 6, 8),
(835, 7, NULL),
(836, 7, NULL),
(837, 8, NULL),
(838, 8, 13),
(839, 8, 13),
(840, 9, 0),
(841, 9, 0),
(842, 9, 0),
(843, 2, NULL),
(844, 2, NULL),
(845, 3, 6),
(846, 6, NULL),
(847, 6, NULL),
(848, 7, 4),
# #849 TOXTRICITY to be entered separately
(850, 13, 5),
(851, 13, 5),
(852, 14, NULL),
(853, 14, NULL),
(854, 1, NULL),
(855, 1, NULL),
(856, 16, NULL),
(857, 16, NULL),
(858, 16, 17),
(859, 10, 17),
(860, 10, 17),
(861, 10, 17),
(862, 10, 12),
(863, 15, NULL),
(864, 1, NULL),
(865, 14, NULL),
(866, 11, 16),
(867, 2, 1),
(868, 17, NULL),
(869, 17, NULL),
(870, 14, NULL),
(871, 7, NULL),
(872, 11, 5),
(873, 11, 5),
(874, 8, NULL),
(875, 11, NULL),
# #876 INDEEDEE to be entered separately
(877, 7, 10),
(878, 15, NULL),
(879, 15, NULL),
(880, 7, 0),
(881, 7, 11),
(882, 6, 0),
(883, 6, 11),
(884, 15, 0),
(885, 0, 1),
(886, 0, 1),
(887, 0, 1),
# #888 ZACIAN to be entered separately
# #889 ZAMAZENTA to be entered separately
(890, 4, 0),
(891, 14, NULL),
# #892 URSHIFU to be entered separately
(893, 10, 9),
(894, 7, NULL),
(895, 0, NULL),
(896, 11, NULL),
(897, 1, NULL),
(898, 16, 9)		# #898 CALYREX's other forms to be entered separately
;

# #849 TOXTRICITY
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (849, 7, 4, 'amped_form', 'ハイなすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (849, 7, 4, 'low_key_form', 'ローなすがた');

# #876 INDEEDEE
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`) VALUES (876, 16, 12, 'default_f');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`) VALUES (876, 16, 12, 'default_m');

# #888 ZACIAN
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (888, 17, NULL, 'hero_of_many_battles', 'れきせんのゆうしゃ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (888, 17, 15, 'crowned_sword', 'けんのおう');

# #889 ZAMAZENTA
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (889, 14, NULL, 'hero_of_many_battles', 'れきせんのゆうしゃ');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (889, 14, 15, 'crowned_shield', 'たてのおう');

# #892 URSHIFU
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (892, 14, 10, 'single_strike_style', 'いちげきのかた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (892, 14, 6, 'rapid_strike_style', 'れんげきのかた');

# #898 CALYREX
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (898, 16, 11, 'ice_rider', 'はくばじょうのすがた');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (898, 16, 1, 'shadow_rider', 'はくばじょうのすがた');

# HISUI regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(899, 12, 16),		# #899 WYRDEER
(900, 5, 8),		# #900 KLEAVOR
(901, 12, 2),		# #901 URSALUNA
(902, 6, 1),		# #902 BASCULEIGON
(903, 14, 4),		# #903 SNEASLER 
(904, 10, 4)		# #904 OVERQWIL
# #905 ENAMORUS to be entered separately
;

# #905 ENAMORUS
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (905, 17, 3, 'incarnate_forme', 'けしんフォルム');
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`, `type_name`, `jp_type_desc`) VALUES (905, 17, 3, 'therian_forme', 'れいじゅうフォルム');

# GEN 9 regulars
INSERT INTO `type_bundle`(`pokedex_ref`, `type1`, `type2`) VALUES
(906, 9, NULL),		# #906 SPRIGATITO
(909, 13, NULL),	# #909 FUECOCO
(912, 6, NULL)		# #912 QUAXLY
;

# megas
INSERT INTO `type_bundle`(`type_name`, `type1`, `type2`, `pokedex_ref`, `mega_stone`) VALUES
('mega', 9, 4, 3, 'Venusaurite'),				# Venusaur
('mega_x', 13, 0, 6, 'Charizardite X'),			# Charizard X
('mega_y', 13, 3, 6, 'Charizardite Y'),			# Charizard Y
('mega', 6, NULL, 9, 'Blastoisinite'),			# Blastoise
('mega', 5, 4, 15, 'Beedrillite'),				# Beedrill
('mega', 12, 3, 18, 'Pidgeotite'),				# Pidgeot
('mega', 16, NULL, 65, 'Alakazamite'),			# Alakazam
('mega', 6, 16, 80, 'Slowbronite'),				# Slowbro
('mega', 0, 1, 94, 'Gengarite'),				# Gengar
('mega', 12, NULL, 115, 'Kangaskhanite'),		# Kangaskhan
('mega', 5, 3, 127, 'Pinsirite'),				# Pinsir
('mega', 6, 10, 130, 'Gyaradosite'),			# Gyarados
('mega', 8, 3, 142, 'Aerodactylite'),			# Aerodactyl
('mega_x', 16, 14, 150, 'Mewtwonite X'),		# Mewtwo X
('mega_y', 16, NULL, 150, 'Mewtwonite Y'),		# Mewtwo Y
('mega', 7, 0, 181, 'Ampharosite'),				# Ampharos
('mega', 15, 2, 208, 'Steelixite'),				# Steelix
('mega', 5, 15, 212, 'Scizorite'),				# Scizor
('mega', 5, 14, 214, 'Heracronite'),			# Heracross
('mega', 10, 13, 229, 'Houndoominite'),			# Houndoom
('mega', 8, 10, 248, 'Tyranitarite'),			# Tyranitar
('mega', 9, 0, 254, 'Sceptilite'),				# Sceptile
('mega', 13, 14, 257, 'Blazikenite'),			# Blaziken
('mega', 6, 2, 260, 'Swampertite'),				# Swampert
('mega', 16, 17, 282, 'Gardevoirite'),			# Gardevoir
('mega', 0, 1, 302, 'Sablenite'),				# Sableye
('mega', 15, 17, 303, 'Mawilite'),				# Mawile
('mega', 15, 8, 306, 'Aggronite'),				# Aggron
('mega', 14, 16, 308, 'Medichamite'),			# Medicham
('mega', 14, NULL, 310, 'Manectite'),			# Manectric
('mega', 6, 10, 319, 'Sharpedonite'),			# Sharpedo
('mega', 13, 2, 323, 'Cameruptite'),			# Camerupt
('mega', 0, 17, 334, 'Altarianite'),			# Altaria
('mega', 1, NULL, 354, 'Banettite'),			# Banette
('mega', 10, NULL, 359, 'Absolite'),			# Absol
('mega', 11, NULL, 362, 'Glalitite'),			# Glalie
('mega', 0, 3, 373, 'Salamencite'),				# Salamence
('mega', 15, 16, 376, 'Metagrossite'),			# Metagross
('mega', 0, 16, 380, 'Latiasite'),				# Latias
('mega', 0, 16, 381, 'Latiosite'),				# Latios
('mega', 0, 3, 384, NULL),						# Rayquaza (no mega stone used)
('mega', 12, 14, 428, 'Lopunnite'),				# Lopunny
('mega', 0, 2, 445, 'Garchompite'),				# Garchomp
('mega', 14, 15, 448, 'Lucarionite'),			# Lucario
('mega', 9, 11, 460, 'Abomasnite'),				# Abomasnow
('mega', 16, 14, 475, 'Galladite'),				# Gallade
('mega', 12, 17, 531, 'Audinite'),				# Audino
('mega', 8, 17, 719, 'Diancite')				# Diancie
;

# alola_variant
INSERT INTO `type_bundle`(`type_name`, `type1`, `type2`, `pokedex_ref`) VALUES
('alola_variant', 10, 12, 19),					# Rattata
('alola_variant', 10, 12, 20),					# Raticate
('alola_variant', 7, 16, 26),					# Raichu
('alola_variant', 11, 15, 27),					# Sandshrew
('alola_variant', 11, 15, 28),					# Sandslash
('alola_variant', 11, NULL, 37),				# Vulpix
('alola_variant', 11, 17, 38),					# Ninetales
('alola_variant', 2, 15, 50),					# Diglett
('alola_variant', 2, 15, 51),					# Dugtrio
('alola_variant', 10, NULL, 52),				# Meowth
('alola_variant', 10, NULL, 53),				# Persian
('alola_variant', 8, 7, 74),					# Geodude
('alola_variant', 8, 7, 75),					# Graveler
('alola_variant', 8, 7, 76),					# Golem
('alola_variant', 4, 10, 88),					# Grimer
('alola_variant', 4, 10, 89),					# Muk
('alola_variant', 9, 0, 103),					# Exeggutor
('alola_variant', 13, 1, 105)					# Marowak
;

# galar_variant
INSERT INTO `type_bundle`(`type_name`, `type1`, `type2`, `pokedex_ref`) VALUES
('galar_variant', 15, NULL, 52),				# Meowth
('galar_variant', 16, NULL, 77),				# Ponyta
('galar_variant', 16, 17, 78),					# Rapidash
('galar_variant', 16, NULL, 79),				# Slowpoke
('galar_variant', 4, 16, 80),					# Slowbro
('galar_variant', 14, NULL, 83),				# Farfetch'd
('galar_variant', 4, 17, 110),					# Weezing
('galar_variant', 11, 16, 122),					# Mr Mime
('galar_variant', 16, 3, 144),					# Articuno
('galar_variant', 14, 3, 145),					# Zapdos
('galar_variant', 10, 3, 146),					# Moltres
('galar_variant', 4, 16, 199),					# Slowking
('galar_variant', 1, NULL, 222),				# Corsola
('galar_variant', 10, 12, 263),					# Zigzagoon
('galar_variant', 10, 12, 264),					# Linoone
('galar_variant', 11, NULL, 554),				# Darumaka
('galar_standard_mode', 11, NULL, 555),			# Darmanitan
('galar_zen_mode', 11, 13, 555),				# Darmanitan Zen Mode
('galar_variant', 2, 1, 562),					# Yamask
('galar_variant', 2, 15, 618)					# Stunfisk
;

UPDATE `type_bundle` SET `jp_type_desc` = "ガラルノーマルモード" WHERE `pokedex_ref` IN (555) AND `type_name` = 'galar_standard_mode';
UPDATE `type_bundle` SET `jp_type_desc` = "ガラルダルマモード" WHERE `pokedex_ref` IN (555) AND `type_name` = 'galar_zen_mode';

# hisui_variant
INSERT INTO `type_bundle`(`type_name`, `type1`, `type2`, `pokedex_ref`) VALUES
('hisui_variant', 13, 8, 58),					# Growlithe
('hisui_variant', 13, 8, 59),					# Arcanine
('hisui_variant', 7, 9, 100),					# Voltorb
('hisui_variant', 7, 9, 101),					# Electrode
('hisui_variant', 13, 1, 157),					# Typhlosion
('hisui_variant', 10, 4, 211),					# Qwilfish
('hisui_variant', 14, 4, 215),					# Sneasel
# ('hisui_variant', 10, 4, 412),					# Burmy
('hisui_variant', 6, 10, 503),					# Samurott
('hisui_variant', 9, 14, 549),					# Lilligant
('hisui_variant', 12, 1, 570),					# Zorua
('hisui_variant', 12, 1, 571),					# Zoroark
('hisui_variant', 16, 3, 628),					# Braviary
('hisui_variant', 15, 0, 705),					# Sliggoo
('hisui_variant', 15, 0, 706),					# Goodra
('hisui_variant', 11, 8, 713),					# Avalugg
('hisui_variant', 9, 14, 724)					# Decidueye
;

# KANTO PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 1) WHERE `pokedex_ref` IN (1, 2, 3, 191);				# Seed
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 2) WHERE `pokedex_ref` IN (4);							# Lizard
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 3) WHERE `pokedex_ref` IN (5, 6, 136, 146, 392);			# Flame
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 4) WHERE `pokedex_ref` IN (7);							# Tiny Turtle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 5) WHERE `pokedex_ref` IN (8);							# Turtle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 6) WHERE `pokedex_ref` IN (9, 140, 141);					# Shellfish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 7) WHERE `pokedex_ref` IN (10, 265, 872);				# Worm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 8) WHERE `pokedex_ref` IN (11, 14, 266, 268);			# Cocoon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 9) WHERE `pokedex_ref` IN (12, 267);						# Butterfly
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 10) WHERE `pokedex_ref` IN (13);							# Hairy Bug
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 11) WHERE `pokedex_ref` IN (15);							# Poison Bee
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 12) WHERE `pokedex_ref` IN (16, 21, 177, 821);			# Tiny Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 13) WHERE `pokedex_ref` IN (17, 18);						# Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 14) WHERE `pokedex_ref` IN (
19, 20, 25, 26, 27, 28);		# Mouse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 15) WHERE `pokedex_ref` IN (22);							# Beak
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 16) WHERE `pokedex_ref` IN (23);							# Snake
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 17) WHERE `pokedex_ref` IN (24);							# Cobra
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 18) WHERE `pokedex_ref` IN (
29, 30, 32, 33, 803, 804);		# Poison Pin
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 19) WHERE `pokedex_ref` IN (31, 34, 112, 464);			# Drill
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 20) WHERE `pokedex_ref` IN (35, 36, 209, 210);			# Fairy
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 21) WHERE `pokedex_ref` IN (
37, 38, 653, 654, 655, 827, 828);		# Fox
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 22) WHERE `pokedex_ref` IN (39, 40, 174, 211, 425);		# Balloon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 23) WHERE `pokedex_ref` IN (41, 42, 169, 527);			# Bat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 24) WHERE `pokedex_ref` IN (43, 44);						# Weed
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 25) WHERE `pokedex_ref` IN (45, 69, 182);				# Flower
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 26) WHERE `pokedex_ref` IN (
46, 47, 285, 286, 590, 591);			# Mushroom
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 27) WHERE `pokedex_ref` IN (48);							# Insect
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 28) WHERE `pokedex_ref` IN (49, 269);					# Poison Moth
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 29) WHERE `pokedex_ref` IN (50, 51, 529);				# Mole
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 30) WHERE `pokedex_ref` IN (52);							# Scratch Cat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 31) WHERE `pokedex_ref` IN (53);							# Classy Cat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 32) WHERE `pokedex_ref` IN (54, 55);						# Duck
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 33) WHERE `pokedex_ref` IN (56, 57);						# Pig Monkey
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 34) WHERE `pokedex_ref` IN (58, 506, 744, 835);			# Puppy
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 35) WHERE `pokedex_ref` IN (59);							# Legendary
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 36) WHERE `pokedex_ref` IN (60, 61, 62, 535);			# Tadpole
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 37) WHERE `pokedex_ref` IN (63, 64, 65);					# Psi
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 38) WHERE `pokedex_ref` IN (66, 67, 68);					# Superpower
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 39) WHERE `pokedex_ref` IN (70, 71);						# Flycatcher
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 40) WHERE `pokedex_ref` IN (72, 73);						# Jellyfish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 41) WHERE `pokedex_ref` IN (74, 75);						# Rock
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 42) WHERE `pokedex_ref` IN (76);							# Megaton
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 43) WHERE `pokedex_ref` IN (77, 78);						# Fire Horse
#UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 44) WHERE `pokedex_ref` IN ();				# Unique Horn
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 44) WHERE `pokedex_ref` IN (79);							# Dopey
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 45) WHERE `pokedex_ref` IN (80);							# Hermit Crab
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 46) WHERE `pokedex_ref` IN (81, 82);						# Magnet
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 47) WHERE `pokedex_ref` IN (83, 865);					# Wild Duck
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 48) WHERE `pokedex_ref` IN (84);							# Twin Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 49) WHERE `pokedex_ref` IN (85);							# Triple Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 50) WHERE `pokedex_ref` IN (86, 87, 728);				# Sea Lion
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 51) WHERE `pokedex_ref` IN (88, 89);						# Sludge
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 52) WHERE `pokedex_ref` IN (90, 91, 366);				# Bivalve
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 53) WHERE `pokedex_ref` IN (92, 93);						# Gas
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 54) WHERE `pokedex_ref` IN (94);							# Shadow
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 55) WHERE `pokedex_ref` IN (95);							# Rock Snake
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 56) WHERE `pokedex_ref` IN (96, 97);						# Hypnosis
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 57) WHERE `pokedex_ref` IN (98);							# River Crab
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 58) WHERE `pokedex_ref` IN (99, 212);					# Pincer
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 59) WHERE `pokedex_ref` IN (100, 101);					# Ball
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 60) WHERE `pokedex_ref` IN (102, 113);					# Egg
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 61) WHERE `pokedex_ref` IN (103);						# Coconut
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 62) WHERE `pokedex_ref` IN (104);						# Lonely
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 63) WHERE `pokedex_ref` IN (105);						# Bone Keeper
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 64) WHERE `pokedex_ref` IN (106);						# Kicking
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 65) WHERE `pokedex_ref` IN (107);						# Punching
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 66) WHERE `pokedex_ref` IN (108, 463);					# Licking
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 67) WHERE `pokedex_ref` IN (109, 110);					# Poison Gas
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 68) WHERE `pokedex_ref` IN (111);						# Spikes
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 69) WHERE `pokedex_ref` IN (114, 465);					# Vine
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 70) WHERE `pokedex_ref` IN (115);						# Parent
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 71) WHERE `pokedex_ref` IN (
116, 117, 147, 148, 149, 230, 373, 706);		# Dragon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 72) WHERE `pokedex_ref` IN (118, 119);					# Goldfish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 73) WHERE `pokedex_ref` IN (120, 173);					# Star Shape
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 74) WHERE `pokedex_ref` IN (121);						# Mysterious
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 75) WHERE `pokedex_ref` IN (122);						# Barrier
#UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 77) WHERE `pokedex_ref` IN ();				# Dancing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 76) WHERE `pokedex_ref` IN (123);						# Mantis
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 77) WHERE `pokedex_ref` IN (124);						# Jynx
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 78) WHERE `pokedex_ref` IN (125, 145, 239);				# Electric
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 79) WHERE `pokedex_ref` IN (126);						# Spitfire
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 80) WHERE `pokedex_ref` IN (127, 738);					# Stag Beetle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 81) WHERE `pokedex_ref` IN (128);						# Wild Bull
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 82) WHERE `pokedex_ref` IN (129, 349);					# Fish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 83) WHERE `pokedex_ref` IN (130);						# Atrocious
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 84) WHERE `pokedex_ref` IN (131);						# Transport
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 85) WHERE `pokedex_ref` IN (132);						# Transform
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 86) WHERE `pokedex_ref` IN (133);						# Evolution
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 87) WHERE `pokedex_ref` IN (134);						# Bubble Jet
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 88) WHERE `pokedex_ref` IN (135, 309);					# Lightning
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 89) WHERE `pokedex_ref` IN (137, 233, 474);				# Virtual
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 90) WHERE `pokedex_ref` IN (138, 139);					# Spiral
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 91) WHERE `pokedex_ref` IN (142, 880, 881, 882, 883);	# Fossil
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 92) WHERE `pokedex_ref` IN (143);						# Sleeping
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 93) WHERE `pokedex_ref` IN (144);						# Freeze
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 94) WHERE `pokedex_ref` IN (150);						# Genetic
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 95) WHERE `pokedex_ref` IN (151);						# New Species

# JOHTO PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 96) WHERE `pokedex_ref` IN (152, 153);					# Leaf
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 97) WHERE `pokedex_ref` IN (154);						# Herb
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 98) WHERE `pokedex_ref` IN (155);						# Fire Mouse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 99) WHERE `pokedex_ref` IN (156, 157, 244);				# Volcano
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 100) WHERE `pokedex_ref` IN (158, 159, 160);				# Big Jaw
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 101) WHERE `pokedex_ref` IN (161, 504);					# Scout
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 102) WHERE `pokedex_ref` IN (162);						# Long Body
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 103) WHERE `pokedex_ref` IN (163, 164);					# Owl
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 104) WHERE `pokedex_ref` IN (165, 166);					# Five Star
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 105) WHERE `pokedex_ref` IN (167);						# String Spit
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 106) WHERE `pokedex_ref` IN (168);						# Long Leg
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 107) WHERE `pokedex_ref` IN (170);						# Angler
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 108) WHERE `pokedex_ref` IN (171, 181);					# Light
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 109) WHERE `pokedex_ref` IN (172);						# Tiny Mouse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 110) WHERE `pokedex_ref` IN (175);						# Spike Ball
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 111) WHERE `pokedex_ref` IN (176, 242);					# Happiness
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 112) WHERE `pokedex_ref` IN (178, 330);					# Mystic
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 113) WHERE `pokedex_ref` IN (179, 180);					# Wool
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 114) WHERE `pokedex_ref` IN (183);						# Aqua Mouse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 115) WHERE `pokedex_ref` IN (184);						# Aqua Rabbit
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 116) WHERE `pokedex_ref` IN (185);						# Imitation
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 117) WHERE `pokedex_ref` IN (186);						# Frog
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 118) WHERE `pokedex_ref` IN (187, 188, 189);				# Cottonweed
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 119) WHERE `pokedex_ref` IN (190, 424);					# Long Tail
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 120) WHERE `pokedex_ref` IN (192, 196, 637);				# Sun
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 121) WHERE `pokedex_ref` IN (193);						# Clear Wing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 122) WHERE `pokedex_ref` IN (194, 195);					# Water Fish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 123) WHERE `pokedex_ref` IN (197);						# Moonlight
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 124) WHERE `pokedex_ref` IN (198, 302);					# Darkness
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 125) WHERE `pokedex_ref` IN (199, 668);					# Royal
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 126) WHERE `pokedex_ref` IN (200);						# Screech
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 127) WHERE `pokedex_ref` IN (201);						# Symbol
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 128) WHERE `pokedex_ref` IN (202);						# Patient
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 129) WHERE `pokedex_ref` IN (203);						# Long Neck
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 130) WHERE `pokedex_ref` IN (204, 205, 412, 413);		# Bagworm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 131) WHERE `pokedex_ref` IN (206);						# Land Snake
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 132) WHERE `pokedex_ref` IN (207);						# Fly Scorpion
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 133) WHERE `pokedex_ref` IN (208);						# Iron Snake
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 134) WHERE `pokedex_ref` IN (213);						# Mold
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 135) WHERE `pokedex_ref` IN (214);						# Single Horn
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 136) WHERE `pokedex_ref` IN (215, 461);					# Sharp Claw
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 137) WHERE `pokedex_ref` IN (216);						# Little Bear
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 138) WHERE `pokedex_ref` IN (217);						# Hibernator
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 139) WHERE `pokedex_ref` IN (218, 219);					# Lava
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 140) WHERE `pokedex_ref` IN (220);						# Pig
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 141) WHERE `pokedex_ref` IN (221);						# Swine
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 142) WHERE `pokedex_ref` IN (222, 864);					# Coral
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 143) WHERE `pokedex_ref` IN (223, 224);					# Jet
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 144) WHERE `pokedex_ref` IN (225);						# Delivery
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 145) WHERE `pokedex_ref` IN (226, 458);					# Kite
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 146) WHERE `pokedex_ref` IN (227);						# Armor Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 147) WHERE `pokedex_ref` IN (228, 229);					# Dark
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 148) WHERE `pokedex_ref` IN (231);						# Long Nose
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 149) WHERE `pokedex_ref` IN (232, 248);					# Armor
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 150) WHERE `pokedex_ref` IN (234, 899);					# Big Horn
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 151) WHERE `pokedex_ref` IN (235);						# Painter
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 152) WHERE `pokedex_ref` IN (236);						# Scuffle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 153) WHERE `pokedex_ref` IN (237);						# Handstand
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 154) WHERE `pokedex_ref` IN (238);						# Kiss
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 155) WHERE `pokedex_ref` IN (240);						# Live Coal
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 156) WHERE `pokedex_ref` IN (241);						# Milk Cow
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 157) WHERE `pokedex_ref` IN (243);						# Thunder
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 158) WHERE `pokedex_ref` IN (245);						# Aurora
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 159) WHERE `pokedex_ref` IN (246);						# Rock Skin
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 160) WHERE `pokedex_ref` IN (247);						# Hard Shell
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 161) WHERE `pokedex_ref` IN (249);						# Diving
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 162) WHERE `pokedex_ref` IN (250);						# Rainbow
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 163) WHERE `pokedex_ref` IN (251);						# Time Travel

# HOENN PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 164) WHERE `pokedex_ref` IN (252, 253);					# Wood Gecko
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 165) WHERE `pokedex_ref` IN (254);						# Forest
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 166) WHERE `pokedex_ref` IN (255);						# Chick
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 167) WHERE `pokedex_ref` IN (256);						# Young Fowl
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 168) WHERE `pokedex_ref` IN (257);						# Blaze
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 169) WHERE `pokedex_ref` IN (258, 259, 260);				# Mud Fish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 170) WHERE `pokedex_ref` IN (261, 262, 834);				# Bite
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 171) WHERE `pokedex_ref` IN (263);						# Tiny Raccoon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 172) WHERE `pokedex_ref` IN (264);						# Rushing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 173) WHERE `pokedex_ref` IN (270);						# Water Weed
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 174) WHERE `pokedex_ref` IN (271);						# Jolly
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 175) WHERE `pokedex_ref` IN (272);						# Carefree
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 176) WHERE `pokedex_ref` IN (273);						# Acorn
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 177) WHERE `pokedex_ref` IN (274);						# Willy
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 178) WHERE `pokedex_ref` IN (275);						# Wicked
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 179) WHERE `pokedex_ref` IN (276);						# Tiny Swallow
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 180) WHERE `pokedex_ref` IN (277);						# Swallow
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 181) WHERE `pokedex_ref` IN (278);						# Seagull
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 182) WHERE `pokedex_ref` IN (279, 580);					# Water Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 183) WHERE `pokedex_ref` IN (280);						# Feeling
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 184) WHERE `pokedex_ref` IN (281, 481, 876);				# Emotion
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 185) WHERE `pokedex_ref` IN (282);						# Embrace
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 186) WHERE `pokedex_ref` IN (283);						# Pond Skater
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 187) WHERE `pokedex_ref` IN (284);						# Eyeball
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 188) WHERE `pokedex_ref` IN (287);						# Slacker
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 189) WHERE `pokedex_ref` IN (288);						# Wild Monkey
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 190) WHERE `pokedex_ref` IN (289);						# Lazy
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 191) WHERE `pokedex_ref` IN (290);						# Trainee
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 192) WHERE `pokedex_ref` IN (291, 658);					# Ninja
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 193) WHERE `pokedex_ref` IN (292);						# Shed
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 194) WHERE `pokedex_ref` IN (293);						# Whisper
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 195) WHERE `pokedex_ref` IN (294);						# Big Voice
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 196) WHERE `pokedex_ref` IN (295);						# Loud Noise
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 197) WHERE `pokedex_ref` IN (296);						# Guts
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 198) WHERE `pokedex_ref` IN (297);						# Arm Thrust
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 199) WHERE `pokedex_ref` IN (298);						# Polka Dot
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 200) WHERE `pokedex_ref` IN (299, 476);					# Compass
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 201) WHERE `pokedex_ref` IN (300);						# Kitten
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 202) WHERE `pokedex_ref` IN (301);						# Prim
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 203) WHERE `pokedex_ref` IN (303);						# Deceiver
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 204) WHERE `pokedex_ref` IN (304, 305, 306);				# Iron Armor
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 205) WHERE `pokedex_ref` IN (307, 308);					# Meditate
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 206) WHERE `pokedex_ref` IN (310);						# Discharge
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 207) WHERE `pokedex_ref` IN (311, 312);					# Cheering
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 208) WHERE `pokedex_ref` IN (313, 314);					# Firefly
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 209) WHERE `pokedex_ref` IN (315);						# Thorn
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 210) WHERE `pokedex_ref` IN (316);						# Stomach
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 211) WHERE `pokedex_ref` IN (317);						# Poison Bag
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 212) WHERE `pokedex_ref` IN (318);						# Savage
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 213) WHERE `pokedex_ref` IN (319, 635);					# Brutal
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 214) WHERE `pokedex_ref` IN (320);						# Ball Whale
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 215) WHERE `pokedex_ref` IN (321);						# Float Whale
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 216) WHERE `pokedex_ref` IN (322);						# Numb
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 217) WHERE `pokedex_ref` IN (323);						# Eruption
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 218) WHERE `pokedex_ref` IN (324, 837, 838, 839);		# Coal
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 219) WHERE `pokedex_ref` IN (325);						# Bounce
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 220) WHERE `pokedex_ref` IN (326, 575);					# Manipulate
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 221) WHERE `pokedex_ref` IN (327);						# Spot Panda
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 222) WHERE `pokedex_ref` IN (328);						# Ant Pit
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 223) WHERE `pokedex_ref` IN (329, 536, 537);				# Vibration
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 224) WHERE `pokedex_ref` IN (331, 556);					# Cactus
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 225) WHERE `pokedex_ref` IN (332);						# Scarecrow
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 226) WHERE `pokedex_ref` IN (333);						# Cotton Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 227) WHERE `pokedex_ref` IN (334);						# Humming
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 228) WHERE `pokedex_ref` IN (335);						# Cat Ferret
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 229) WHERE `pokedex_ref` IN (336);						# Fang Snake
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 230) WHERE `pokedex_ref` IN (337, 338);					# Meteorite
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 231) WHERE `pokedex_ref` IN (339, 340);					# Whiskers
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 232) WHERE `pokedex_ref` IN (341);						# Ruffian
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 233) WHERE `pokedex_ref` IN (342);						# Rogue
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 234) WHERE `pokedex_ref` IN (343, 344);					# Clay Doll
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 235) WHERE `pokedex_ref` IN (345);						# Sea Lily
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 236) WHERE `pokedex_ref` IN (346);						# Barnacle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 237) WHERE `pokedex_ref` IN (347);						# Old Shrimp
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 238) WHERE `pokedex_ref` IN (348);						# Plate
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 239) WHERE `pokedex_ref` IN (350);						# Tender
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 240) WHERE `pokedex_ref` IN (351);						# Weather
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 241) WHERE `pokedex_ref` IN (352);						# Color Swap
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 242) WHERE `pokedex_ref` IN (353);						# Puppet
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 243) WHERE `pokedex_ref` IN (354);						# Marionette
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 244) WHERE `pokedex_ref` IN (355);						# Requiem
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 245) WHERE `pokedex_ref` IN (356);						# Beckon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 246) WHERE `pokedex_ref` IN (357, 761, 762, 763);		# Fruit
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 247) WHERE `pokedex_ref` IN (358);						# Wind Chime
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 248) WHERE `pokedex_ref` IN (359);						# Disaster
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 249) WHERE `pokedex_ref` IN (360);						# Bright
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 250) WHERE `pokedex_ref` IN (361);						# Snow Hat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 251) WHERE `pokedex_ref` IN (362);						# Face
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 252) WHERE `pokedex_ref` IN (363);						# Clap
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 253) WHERE `pokedex_ref` IN (364);						# Ball Roll
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 254) WHERE `pokedex_ref` IN (365);						# Ice Break
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 255) WHERE `pokedex_ref` IN (367);						# Deep Sea
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 256) WHERE `pokedex_ref` IN (368);						# South Sea
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 257) WHERE `pokedex_ref` IN (369);						# Longevity
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 258) WHERE `pokedex_ref` IN (370);						# Rendezvous
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 259) WHERE `pokedex_ref` IN (371);						# Rock Head
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 260) WHERE `pokedex_ref` IN (372);						# Endurance
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 261) WHERE `pokedex_ref` IN (374);						# Iron Ball
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 262) WHERE `pokedex_ref` IN (375);						# Iron Claw
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 263) WHERE `pokedex_ref` IN (376);						# Iron Leg
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 264) WHERE `pokedex_ref` IN (377);						# Rock Peak
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 265) WHERE `pokedex_ref` IN (378, 713);					# Iceberg
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 266) WHERE `pokedex_ref` IN (379);						# Iron
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 267) WHERE `pokedex_ref` IN (380, 381);					# Eon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 268) WHERE `pokedex_ref` IN (382);						# Sea Basin
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 269) WHERE `pokedex_ref` IN (383, 389);					# Continent
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 270) WHERE `pokedex_ref` IN (384);						# Sky High
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 271) WHERE `pokedex_ref` IN (385);						# Wish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 272) WHERE `pokedex_ref` IN (386);						# DNA

# SINNOH PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 273) WHERE `pokedex_ref` IN (387);						# Tiny Leaf
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 274) WHERE `pokedex_ref` IN (388);						# Grove
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 275) WHERE `pokedex_ref` IN (390, 810);					# Chimp
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 276) WHERE `pokedex_ref` IN (391, 674);					# Playful
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 277) WHERE `pokedex_ref` IN (393, 394, 875);				# Penguin
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 278) WHERE `pokedex_ref` IN (395);						# Emperor
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 279) WHERE `pokedex_ref` IN (396, 397);					# Starling
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 280) WHERE `pokedex_ref` IN (398);						# Predator
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 281) WHERE `pokedex_ref` IN (399);						# Plump Mouse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 282) WHERE `pokedex_ref` IN (400);						# Beaver
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 283) WHERE `pokedex_ref` IN (401, 402);					# Cricket
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 284) WHERE `pokedex_ref` IN (403);						# Flash
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 285) WHERE `pokedex_ref` IN (404);						# Spark
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 286) WHERE `pokedex_ref` IN (405);						# Gleam Eyes
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 287) WHERE `pokedex_ref` IN (406);						# Bud
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 288) WHERE `pokedex_ref` IN (407);						# Bouquet
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 289) WHERE `pokedex_ref` IN (408, 409);					# Head Butt
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 290) WHERE `pokedex_ref` IN (410, 411);					# Shield
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 291) WHERE `pokedex_ref` IN (414);						# Moth
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 292) WHERE `pokedex_ref` IN (415);						# Tiny Bee
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 293) WHERE `pokedex_ref` IN (416);						# Beehive
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 294) WHERE `pokedex_ref` IN (417);						# EleSquirrel
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 295) WHERE `pokedex_ref` IN (418, 419);					# Sea Weasel
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 296) WHERE `pokedex_ref` IN (420);						# Cherry
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 297) WHERE `pokedex_ref` IN (421);						# Blossom
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 298) WHERE `pokedex_ref` IN (422, 423);					# Sea Slug
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 299) WHERE `pokedex_ref` IN (426);						# Blimp
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 300) WHERE `pokedex_ref` IN (427, 428, 813, 814);		# Rabbit
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 301) WHERE `pokedex_ref` IN (429);						# Magical
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 302) WHERE `pokedex_ref` IN (430);						# Big Boss
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 303) WHERE `pokedex_ref` IN (431);						# Catty
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 304) WHERE `pokedex_ref` IN (432);						# Tiger Cat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 305) WHERE `pokedex_ref` IN (433);						# Bell
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 306) WHERE `pokedex_ref` IN (434, 435);					# Skunk
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 307) WHERE `pokedex_ref` IN (436);						# Bronze
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 308) WHERE `pokedex_ref` IN (437);						# Bronze Bell
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 309) WHERE `pokedex_ref` IN (438);						# Bonsai
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 310) WHERE `pokedex_ref` IN (439);						# Mime
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 311) WHERE `pokedex_ref` IN (440);						# Playhouse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 312) WHERE `pokedex_ref` IN (441);						# Music Note
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 313) WHERE `pokedex_ref` IN (442);						# Forbidden
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 314) WHERE `pokedex_ref` IN (443);						# Land Shark
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 315) WHERE `pokedex_ref` IN (444, 621);						# Cave
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 316) WHERE `pokedex_ref` IN (445);						# Mach
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 317) WHERE `pokedex_ref` IN (446);						# Big Eater
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 318) WHERE `pokedex_ref` IN (447);						# Emanation
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 319) WHERE `pokedex_ref` IN (448);						# Aura
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 320) WHERE `pokedex_ref` IN (449);						# Hippo
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 321) WHERE `pokedex_ref` IN (450);						# Heavyweight
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 322) WHERE `pokedex_ref` IN (451);						# Scorpion
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 323) WHERE `pokedex_ref` IN (452);						# Ogre Scorpion
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 324) WHERE `pokedex_ref` IN (453, 454);					# Toxic Mouth
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 325) WHERE `pokedex_ref` IN (455);						# Bug Catcher
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 326) WHERE `pokedex_ref` IN (456);						# Wing Fish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 327) WHERE `pokedex_ref` IN (457);						# Neon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 328) WHERE `pokedex_ref` IN (459, 460);					# Frost Tree
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 329) WHERE `pokedex_ref` IN (461);						# Magnet Area
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 330) WHERE `pokedex_ref` IN (466, 523);					# Thunderbolt
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 331) WHERE `pokedex_ref` IN (467);						# Blast
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 332) WHERE `pokedex_ref` IN (468);						# Jubilee
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 333) WHERE `pokedex_ref` IN (469);						# Ogre Darner
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 334) WHERE `pokedex_ref` IN (470);						# Verdant
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 335) WHERE `pokedex_ref` IN (471, 582);					# Fresh Snow
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 336) WHERE `pokedex_ref` IN (472);						# Fang Scorpion
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 337) WHERE `pokedex_ref` IN (473);						# Twin Tusk
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 338) WHERE `pokedex_ref` IN (474);						# Blade
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 339) WHERE `pokedex_ref` IN (477);						# Gripper
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 340) WHERE `pokedex_ref` IN (478);						# Snow Land
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 341) WHERE `pokedex_ref` IN (479);						# Plasma
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 342) WHERE `pokedex_ref` IN (480);						# Knowledge
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 343) WHERE `pokedex_ref` IN (482);						# Willpower
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 344) WHERE `pokedex_ref` IN (483);						# Temporal
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 345) WHERE `pokedex_ref` IN (484);						# Spatial
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 346) WHERE `pokedex_ref` IN (485);						# Lava Dome
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 347) WHERE `pokedex_ref` IN (486);						# Colossal
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 348) WHERE `pokedex_ref` IN (487);						# Renegade
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 349) WHERE `pokedex_ref` IN (488);						# Lunar
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 350) WHERE `pokedex_ref` IN (489);						# Sea Drifter
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 351) WHERE `pokedex_ref` IN (490);						# Seafaring
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 352) WHERE `pokedex_ref` IN (491);						# Pitch-Black
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 353) WHERE `pokedex_ref` IN (492);						# Gratitude
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 354) WHERE `pokedex_ref` IN (493);						# Alpha

# UNOVA PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 355) WHERE `pokedex_ref` IN (494);						# Victory
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 356) WHERE `pokedex_ref` IN (495, 496);					# Grass Snake
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 357) WHERE `pokedex_ref` IN (497);						# Regal
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 358) WHERE `pokedex_ref` IN (498, 499);					# Fire Pig
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 359) WHERE `pokedex_ref` IN (500);						# Mega Fire Pig
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 360) WHERE `pokedex_ref` IN (501);						# Sea Otter
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 361) WHERE `pokedex_ref` IN (502);						# Discipline
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 362) WHERE `pokedex_ref` IN (503);						# Formidable
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 363) WHERE `pokedex_ref` IN (505);						# Lookout
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 364) WHERE `pokedex_ref` IN (507);						# Loyal Dog
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 365) WHERE `pokedex_ref` IN (508);						# Big-Hearted
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 366) WHERE `pokedex_ref` IN (509, 860);					# Devious
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 367) WHERE `pokedex_ref` IN (510);						# Cruel
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 368) WHERE `pokedex_ref` IN (511);						# Grass Monkey
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 369) WHERE `pokedex_ref` IN (512);						# Thorn Monkey
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 370) WHERE `pokedex_ref` IN (513);						# High Temp
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 371) WHERE `pokedex_ref` IN (514, 662);					# Ember
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 372) WHERE `pokedex_ref` IN (515);						# Spray
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 373) WHERE `pokedex_ref` IN (516);						# Geyser
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 374) WHERE `pokedex_ref` IN (517);						# Dream Eater
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 375) WHERE `pokedex_ref` IN (518, 775);					# Drowsing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 376) WHERE `pokedex_ref` IN (519);						# Tiny Pigeon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 377) WHERE `pokedex_ref` IN (520);						# Wild Pigeon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 378) WHERE `pokedex_ref` IN (521);						# Proud
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 379) WHERE `pokedex_ref` IN (522);						# Electrified
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 380) WHERE `pokedex_ref` IN (524);						# Mantle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 381) WHERE `pokedex_ref` IN (525);						# Ore
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 382) WHERE `pokedex_ref` IN (526);						# Compressed
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 383) WHERE `pokedex_ref` IN (528);						# Courting
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 384) WHERE `pokedex_ref` IN (530);						# Subterrene
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 385) WHERE `pokedex_ref` IN (531);						# Hearing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 386) WHERE `pokedex_ref` IN (532, 533, 534);				# Muscular
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 387) WHERE `pokedex_ref` IN (538);						# Judo
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 388) WHERE `pokedex_ref` IN (539);						# Karate
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 389) WHERE `pokedex_ref` IN (540);						# Sewing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 390) WHERE `pokedex_ref` IN (541);						# Leaf-Wrapped
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 391) WHERE `pokedex_ref` IN (542);						# Nurturing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 392) WHERE `pokedex_ref` IN (543);						# Centipede
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 393) WHERE `pokedex_ref` IN (544);						# Curlipede
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 394) WHERE `pokedex_ref` IN (545);						# Megapede
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 395) WHERE `pokedex_ref` IN (546);						# Cotton Puff
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 396) WHERE `pokedex_ref` IN (547);						# Windveiled
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 397) WHERE `pokedex_ref` IN (548);						# Bulb
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 398) WHERE `pokedex_ref` IN (549, 829);					# Flowering
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 399) WHERE `pokedex_ref` IN (550, 634);					# Hostile
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 400) WHERE `pokedex_ref` IN (551, 552);					# Desert Croc
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 401) WHERE `pokedex_ref` IN (553);						# Intimidation
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 402) WHERE `pokedex_ref` IN (554);						# Zen Charm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 403) WHERE `pokedex_ref` IN (555);						# Blazing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 404) WHERE `pokedex_ref` IN (557);						# Rock Inn
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 405) WHERE `pokedex_ref` IN (558);						# Stone Home
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 406) WHERE `pokedex_ref` IN (559);						# Shredding
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 407) WHERE `pokedex_ref` IN (560);						# Hoodlum
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 408) WHERE `pokedex_ref` IN (561);						# Avianoid
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 409) WHERE `pokedex_ref` IN (562);						# Spirit
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 410) WHERE `pokedex_ref` IN (563);						# Coffin
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 411) WHERE `pokedex_ref` IN (564, 565);					# Prototurtle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 412) WHERE `pokedex_ref` IN (566, 567);					# First Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 413) WHERE `pokedex_ref` IN (568);						# Trash Bag
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 414) WHERE `pokedex_ref` IN (569);						# Trash Heap
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 415) WHERE `pokedex_ref` IN (570);						# Tricky Fox
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 416) WHERE `pokedex_ref` IN (571);						# Illusion Fox
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 417) WHERE `pokedex_ref` IN (572);						# Chinchilla
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 418) WHERE `pokedex_ref` IN (573);						# Scarf
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 419) WHERE `pokedex_ref` IN (574);						# Fixation
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 420) WHERE `pokedex_ref` IN (576);						# Astral Body
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 421) WHERE `pokedex_ref` IN (577);						# Cell
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 422) WHERE `pokedex_ref` IN (578);						# Mitosis
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 423) WHERE `pokedex_ref` IN (579);						# Multiplying
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 424) WHERE `pokedex_ref` IN (581);						# White Bird
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 425) WHERE `pokedex_ref` IN (583);						# Icy Snow
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 426) WHERE `pokedex_ref` IN (584);						# Snowstorm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 427) WHERE `pokedex_ref` IN (585, 586);					# Season
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 428) WHERE `pokedex_ref` IN (587);						# Sky Squirrel
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 429) WHERE `pokedex_ref` IN (588);						# Clamping
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 430) WHERE `pokedex_ref` IN (589);						# Cavalry
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 431) WHERE `pokedex_ref` IN (592, 593);					# Floating
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 432) WHERE `pokedex_ref` IN (594);						# Caring
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 433) WHERE `pokedex_ref` IN (595);						# Attaching
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 434) WHERE `pokedex_ref` IN (596);						# EleSpider
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 435) WHERE `pokedex_ref` IN (597);						# Thorn Seed
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 436) WHERE `pokedex_ref` IN (598);						# Thorn Pod
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 437) WHERE `pokedex_ref` IN (599, 600, 601);				# Gear
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 438) WHERE `pokedex_ref` IN (602, 603, 604);				# EleFish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 439) WHERE `pokedex_ref` IN (605, 606);					# Cerebral
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 440) WHERE `pokedex_ref` IN (607);						# Candle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 441) WHERE `pokedex_ref` IN (608);						# Lamp
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 442) WHERE `pokedex_ref` IN (609);						# Luring
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 443) WHERE `pokedex_ref` IN (610);						# Tusk
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 444) WHERE `pokedex_ref` IN (611, 612);					# Axe Jaw
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 445) WHERE `pokedex_ref` IN (613);						# Chill
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 446) WHERE `pokedex_ref` IN (614);						# Freezing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 447) WHERE `pokedex_ref` IN (615);						# Crystallizing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 448) WHERE `pokedex_ref` IN (616);						# Snail
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 449) WHERE `pokedex_ref` IN (617);						# Shell Out
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 450) WHERE `pokedex_ref` IN (618);						# Trap
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 451) WHERE `pokedex_ref` IN (619, 620);					# Martial Arts
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 452) WHERE `pokedex_ref` IN (622, 623);					# Automaton
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 453) WHERE `pokedex_ref` IN (624);						# Sharp Blade
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 454) WHERE `pokedex_ref` IN (625);						# Sword Blade
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 455) WHERE `pokedex_ref` IN (626);						# Bash Buffalo
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 456) WHERE `pokedex_ref` IN (627);						# Eaglet
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 457) WHERE `pokedex_ref` IN (628);						# Valiant
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 458) WHERE `pokedex_ref` IN (629);						# Diapered
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 459) WHERE `pokedex_ref` IN (630);						# Bone Vulture
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 460) WHERE `pokedex_ref` IN (631);						# Anteater
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 461) WHERE `pokedex_ref` IN (632);						# Iron Ant
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 462) WHERE `pokedex_ref` IN (633);						# Irate
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 463) WHERE `pokedex_ref` IN (636);						# Torch
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 464) WHERE `pokedex_ref` IN (638);						# Iron Will
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 465) WHERE `pokedex_ref` IN (639);						# Cavern
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 466) WHERE `pokedex_ref` IN (640);						# Grassland
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 467) WHERE `pokedex_ref` IN (641);						# Cyclone
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 468) WHERE `pokedex_ref` IN (642);						# Bolt Strike
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 469) WHERE `pokedex_ref` IN (643);						# Vast White
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 470) WHERE `pokedex_ref` IN (644);						# Deep Black
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 471) WHERE `pokedex_ref` IN (645);						# Abundance
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 472) WHERE `pokedex_ref` IN (646);						# Boundary
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 473) WHERE `pokedex_ref` IN (647);						# Colt
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 474) WHERE `pokedex_ref` IN (648);						# Melody
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 475) WHERE `pokedex_ref` IN (649);						# Paleozoic
# UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 1) WHERE `pokedex_ref` IN (1, 2, 3) AND `type_desc` = 'mega';

# KALOS PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 476) WHERE `pokedex_ref` IN (650);						# Spiny Nut
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 477) WHERE `pokedex_ref` IN (651, 652);					# Spiny Armor
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 478) WHERE `pokedex_ref` IN (656, 657);					# Bubble Frog
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 479) WHERE `pokedex_ref` IN (659, 660);					# Digging
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 480) WHERE `pokedex_ref` IN (661);						# Tiny Robin
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 481) WHERE `pokedex_ref` IN (663);						# Scorching
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 482) WHERE `pokedex_ref` IN (664, 665);					# Scatterdust
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 483) WHERE `pokedex_ref` IN (666);						# Scale
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 484) WHERE `pokedex_ref` IN (667);						# Lion Cub
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 485) WHERE `pokedex_ref` IN (669, 670);					# Single Bloom
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 486) WHERE `pokedex_ref` IN (671);						# Garden
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 487) WHERE `pokedex_ref` IN (672, 673);					# Mount
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 488) WHERE `pokedex_ref` IN (675);						# Daunting
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 489) WHERE `pokedex_ref` IN (676);						# Poodle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 490) WHERE `pokedex_ref` IN (677);						# Restraint
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 491) WHERE `pokedex_ref` IN (678);						# Constraint
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 492) WHERE `pokedex_ref` IN (679, 680);					# Sword
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 493) WHERE `pokedex_ref` IN (681);						# Royal Sword
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 494) WHERE `pokedex_ref` IN (682);						# Perfume
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 495) WHERE `pokedex_ref` IN (683);						# Fragrance
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 496) WHERE `pokedex_ref` IN (684);						# Cotton Candy
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 497) WHERE `pokedex_ref` IN (685);						# Meringue
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 498) WHERE `pokedex_ref` IN (686);						# Revolving
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 499) WHERE `pokedex_ref` IN (687);						# Overturning
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 500) WHERE `pokedex_ref` IN (688);						# Two-Handed
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 501) WHERE `pokedex_ref` IN (689);						# Collective
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 502) WHERE `pokedex_ref` IN (690, 691);					# Mock Kelp
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 503) WHERE `pokedex_ref` IN (692);						# Water Gun
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 504) WHERE `pokedex_ref` IN (693);						# Howitzer
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 505) WHERE `pokedex_ref` IN (694, 695);					# Generator
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 506) WHERE `pokedex_ref` IN (696);						# Royal Heir
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 507) WHERE `pokedex_ref` IN (697);						# Despot
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 508) WHERE `pokedex_ref` IN (698, 699);					# Tundra
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 509) WHERE `pokedex_ref` IN (700);						# Intertwining
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 510) WHERE `pokedex_ref` IN (701);						# Wrestling
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 511) WHERE `pokedex_ref` IN (702);						# Antenna
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 512) WHERE `pokedex_ref` IN (703, 719);					# Jewel
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 513) WHERE `pokedex_ref` IN (704, 705);					# Soft Tissue
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 514) WHERE `pokedex_ref` IN (707);						# Key Ring
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 515) WHERE `pokedex_ref` IN (708);						# Stump
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 516) WHERE `pokedex_ref` IN (709);						# Elder Tree
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 517) WHERE `pokedex_ref` IN (710, 711);					# Pumpkin
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 518) WHERE `pokedex_ref` IN (712);						# Ice Chunk
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 519) WHERE `pokedex_ref` IN (714, 715);					# Sound Wave
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 520) WHERE `pokedex_ref` IN (716);						# Life
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 521) WHERE `pokedex_ref` IN (717);						# Destruction
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 522) WHERE `pokedex_ref` IN (718);						# Order
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 523) WHERE `pokedex_ref` IN (720) AND `type_name` = "hoopa_confined";		# Mischief - Hoopa Confined
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 524) WHERE `pokedex_ref` IN (720) AND `type_name` = "hoopa_unbound";			# Djinn - Hoopa Confined
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 525) WHERE `pokedex_ref` IN (721);						# Steam

# ALOLA PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 14) WHERE `pokedex_ref` IN (19, 20, 25, 27, 28) AND INSTR(`type_name`, 'alola') > 0;	# Mouse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 21) WHERE `pokedex_ref` IN (37, 38) AND INSTR(`type_name`, 'alola') > 0;				# Fox
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 29) WHERE `pokedex_ref` IN (50, 51) AND INSTR(`type_name`, 'alola') > 0;				# Mole
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 30) WHERE `pokedex_ref` IN (52) AND INSTR(`type_name`, 'alola') > 0;					# Scratch Cat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 31) WHERE `pokedex_ref` IN (53) AND INSTR(`type_name`, 'alola') > 0;					# Classy Cat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 41) WHERE `pokedex_ref` IN (74, 75) AND INSTR(`type_name`, 'alola') > 0;				# Rock
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 42) WHERE `pokedex_ref` IN (76) AND INSTR(`type_name`, 'alola') > 0;					# Megaton
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 51) WHERE `pokedex_ref` IN (88, 89) AND INSTR(`type_name`, 'alola') > 0;				# Sludge
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 61) WHERE `pokedex_ref` IN (103) AND INSTR(`type_name`, 'alola') > 0;				# Coconut
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 63) WHERE `pokedex_ref` IN (105) AND INSTR(`type_name`, 'alola') > 0;				# Bone Keeper

# ALOLA PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 526) WHERE `pokedex_ref` IN (722);						# Grass Quill
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 527) WHERE `pokedex_ref` IN (723);						# Blade Quill
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 528) WHERE `pokedex_ref` IN (724);						# Arrow Quill
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 529) WHERE `pokedex_ref` IN (725, 726);					# Fire Cat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 530) WHERE `pokedex_ref` IN (727);						# Heel
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 531) WHERE `pokedex_ref` IN (729);						# Pop Star
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 532) WHERE `pokedex_ref` IN (730);						# Soloist
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 533) WHERE `pokedex_ref` IN (731);						# Woodpecker
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 534) WHERE `pokedex_ref` IN (732);						# Bugle Beak
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 535) WHERE `pokedex_ref` IN (733);						# Cannon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 536) WHERE `pokedex_ref` IN (734);						# Loitering
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 537) WHERE `pokedex_ref` IN (735);						# Stakeout
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 538) WHERE `pokedex_ref` IN (736, 824);					# Larva
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 539) WHERE `pokedex_ref` IN (737);						# Battery
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 540) WHERE `pokedex_ref` IN (739);						# Boxing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 541) WHERE `pokedex_ref` IN (740);						# Wooly Crab
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 542) WHERE `pokedex_ref` IN (741);						# Dancing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 543) WHERE `pokedex_ref` IN (742, 743);					# Bee Fly
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 544) WHERE `pokedex_ref` IN (745);						# Wolf
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 545) WHERE `pokedex_ref` IN (746);						# Small Fry
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 546) WHERE `pokedex_ref` IN (747, 748);					# Brutal Star
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 547) WHERE `pokedex_ref` IN (749);						# Donkey
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 548) WHERE `pokedex_ref` IN (750);						# Draft Horse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 549) WHERE `pokedex_ref` IN (751, 752);					# Water Bubble
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 550) WHERE `pokedex_ref` IN (753);						# Sickle Grass
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 551) WHERE `pokedex_ref` IN (754);						# Bloom Sickle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 552) WHERE `pokedex_ref` IN (755, 756);					# Illuminating
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 553) WHERE `pokedex_ref` IN (757, 758);					# Toxic Lizard
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 554) WHERE `pokedex_ref` IN (759);						# Flailing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 555) WHERE `pokedex_ref` IN (760);						# Strong Arm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 556) WHERE `pokedex_ref` IN (764);						# Posy Picker
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 557) WHERE `pokedex_ref` IN (765);						# Sage
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 558) WHERE `pokedex_ref` IN (766);						# Teamwork
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 559) WHERE `pokedex_ref` IN (767);						# Turn Tail
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 560) WHERE `pokedex_ref` IN (768);						# Hard Scale
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 561) WHERE `pokedex_ref` IN (769);						# Sand Heap
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 562) WHERE `pokedex_ref` IN (770);						# Sand Castle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 563) WHERE `pokedex_ref` IN (771);						# Sea Cucumber
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 564) WHERE `pokedex_ref` IN (772, 773);					# Synthetic
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 565) WHERE `pokedex_ref` IN (774);						# Meteor
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 566) WHERE `pokedex_ref` IN (776);						# Blast Turtle
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 567) WHERE `pokedex_ref` IN (777);						# Roly-Poly
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 568) WHERE `pokedex_ref` IN (778);						# Disguise
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 569) WHERE `pokedex_ref` IN (779);						# Gnash Teeth
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 570) WHERE `pokedex_ref` IN (780);						# Placid
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 571) WHERE `pokedex_ref` IN (781);						# Sea Creeper
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 572) WHERE `pokedex_ref` IN (782, 783, 784);				# Scaly
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 573) WHERE `pokedex_ref` IN (785, 786, 787, 788);		# Land Spirit
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 574) WHERE `pokedex_ref` IN (789);						# Nebula
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 575) WHERE `pokedex_ref` IN (790);						# Protostar
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 576) WHERE `pokedex_ref` IN (791);						# Sunne
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 577) WHERE `pokedex_ref` IN (792);						# Moone
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 578) WHERE `pokedex_ref` IN (793);						# Parasite
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 579) WHERE `pokedex_ref` IN (794);						# Swollen
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 580) WHERE `pokedex_ref` IN (795);						# Lissome
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 581) WHERE `pokedex_ref` IN (796);						# Glowing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 582) WHERE `pokedex_ref` IN (797);						# Launch
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 583) WHERE `pokedex_ref` IN (798);						# Drawn Sword
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 584) WHERE `pokedex_ref` IN (799);						# Junkivore
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 585) WHERE `pokedex_ref` IN (800);						# Prism
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 586) WHERE `pokedex_ref` IN (801);						# Artificial
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 587) WHERE `pokedex_ref` IN (802);						# Gloomdweller
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 588) WHERE `pokedex_ref` IN (805);						# Rampart
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 589) WHERE `pokedex_ref` IN (806);						# Fireworks
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 590) WHERE `pokedex_ref` IN (807);						# Thunderclap
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 591) WHERE `pokedex_ref` IN (808, 809);					# Hex Nut

# GALAR PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 30) WHERE `pokedex_ref` IN (52) AND INSTR(`type_name`, 'galar') > 0;					# Scratch Cat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 592) WHERE `pokedex_ref` IN (77, 78) AND INSTR(`type_name`, 'galar') > 0;			# Unique Horn
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 44) WHERE `pokedex_ref` IN (79) AND INSTR(`type_name`, 'galar') > 0;					# Dopey
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 45) WHERE `pokedex_ref` IN (80) AND INSTR(`type_name`, 'galar') > 0;					# Hermit Crab
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 47) WHERE `pokedex_ref` IN (83) AND INSTR(`type_name`, 'galar') > 0;					# Wild Duck
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 67) WHERE `pokedex_ref` IN (110) AND INSTR(`type_name`, 'galar') > 0;				# Poison Gas
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 542) WHERE `pokedex_ref` IN (122) AND INSTR(`type_name`, 'galar') > 0;				# Dancing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 367) WHERE `pokedex_ref` IN (144) AND INSTR(`type_name`, 'galar') > 0;				# Cruel
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 644) WHERE `pokedex_ref` IN (145) AND INSTR(`type_name`, 'galar') > 0;				# Strong Legs
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 645) WHERE `pokedex_ref` IN (146) AND INSTR(`type_name`, 'galar') > 0;				# Malevolent
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 646) WHERE `pokedex_ref` IN (199) AND INSTR(`type_name`, 'galar') > 0;				# Hexpert
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 142) WHERE `pokedex_ref` IN (222) AND INSTR(`type_name`, 'galar') > 0;				# Coral
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 171) WHERE `pokedex_ref` IN (263) AND INSTR(`type_name`, 'galar') > 0;				# Tiny Raccoon
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 172) WHERE `pokedex_ref` IN (264) AND INSTR(`type_name`, 'galar') > 0;				# Rushing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 402) WHERE `pokedex_ref` IN (554) AND INSTR(`type_name`, 'galar') > 0;				# Zen Charm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 402) WHERE `pokedex_ref` IN (555) AND `type_name` = 'galar_standard_mode';			# Zen Charm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 409) WHERE `pokedex_ref` IN (562) AND INSTR(`type_name`, 'galar') > 0;				# Spirit
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 450) WHERE `pokedex_ref` IN (618) AND INSTR(`type_name`, 'galar') > 0;				# Trap
# pending: 145, 146

# GALAR PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 593) WHERE `pokedex_ref` IN (811);						# Beat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 594) WHERE `pokedex_ref` IN (812);						# Drummer
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 595) WHERE `pokedex_ref` IN (815);						# Striker
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 596) WHERE `pokedex_ref` IN (816, 817);					# Water Lizard
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 597) WHERE `pokedex_ref` IN (818);						# Secret Agent
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 598) WHERE `pokedex_ref` IN (819);						# Cheeky
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 599) WHERE `pokedex_ref` IN (820);						# Greedy
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 600) WHERE `pokedex_ref` IN (822, 823);					# Raven
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 601) WHERE `pokedex_ref` IN (825);						# Radome
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 602) WHERE `pokedex_ref` IN (826);						# Seven Spot
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 603) WHERE `pokedex_ref` IN (830);						# Cotton Bloom
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 604) WHERE `pokedex_ref` IN (831, 832);					# Sheep
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 605) WHERE `pokedex_ref` IN (833);						# Snapping
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 606) WHERE `pokedex_ref` IN (836);						# Dog
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 607) WHERE `pokedex_ref` IN (840);						# Apple Core
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 608) WHERE `pokedex_ref` IN (841);						# Apple Wing
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 609) WHERE `pokedex_ref` IN (842);						# Apple Nectar
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 610) WHERE `pokedex_ref` IN (843, 844);					# Sand Snake
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 611) WHERE `pokedex_ref` IN (845);						# Gulp
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 612) WHERE `pokedex_ref` IN (846);						# Rush
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 613) WHERE `pokedex_ref` IN (847);						# Skewer
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 614) WHERE `pokedex_ref` IN (848);						# Baby
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 615) WHERE `pokedex_ref` IN (849);						# Punk
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 616) WHERE `pokedex_ref` IN (850, 851);					# Radiator
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 617) WHERE `pokedex_ref` IN (852);						# Tantrum
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 618) WHERE `pokedex_ref` IN (853);						# Jujitsu
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 619) WHERE `pokedex_ref` IN (854, 855);					# Black Tea
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 620) WHERE `pokedex_ref` IN (856);						# Calm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 621) WHERE `pokedex_ref` IN (857);						# Serene
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 622) WHERE `pokedex_ref` IN (858);						# Silent
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 623) WHERE `pokedex_ref` IN (859);						# Wily
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 624) WHERE `pokedex_ref` IN (861);						# Bulk Up
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 625) WHERE `pokedex_ref` IN (862);						# Blocking
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 626) WHERE `pokedex_ref` IN (863);						# Viking
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 627) WHERE `pokedex_ref` IN (866);						# Comedian
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 628) WHERE `pokedex_ref` IN (867);						# Grudge
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 629) WHERE `pokedex_ref` IN (868, 869);					# Cream
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 630) WHERE `pokedex_ref` IN (870);						# Formation
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 631) WHERE `pokedex_ref` IN (871);						# Sea Urchin
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 632) WHERE `pokedex_ref` IN (873);						# Frost Moth
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 633) WHERE `pokedex_ref` IN (874);						# Big Rock
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 634) WHERE `pokedex_ref` IN (877);						# Two-Sided
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 635) WHERE `pokedex_ref` IN (878, 879);					# Copperderm
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 636) WHERE `pokedex_ref` IN (884);						# Alloy
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 637) WHERE `pokedex_ref` IN (885);						# Lingering
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 638) WHERE `pokedex_ref` IN (886);						# Caretaker
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 639) WHERE `pokedex_ref` IN (887);						# Stealth
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 640) WHERE `pokedex_ref` IN (888, 889);					# Warrior
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 641) WHERE `pokedex_ref` IN (890);						# Gigantic
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 642) WHERE `pokedex_ref` IN (891, 892);					# Wushu
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 643) WHERE `pokedex_ref` IN (893);						# Rogue Monkey
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 647) WHERE `pokedex_ref` IN (894);						# Electron
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 648) WHERE `pokedex_ref` IN (895);						# Dragon Orb
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 649) WHERE `pokedex_ref` IN (896);						# Wild Horse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 650) WHERE `pokedex_ref` IN (897);						# Swift Horse
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 651) WHERE `pokedex_ref` IN (898);						# King

# #898 CALYREX Descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 652) WHERE `pokedex_ref` IN (898) AND INSTR(`type_name`, 'rider') > 0;				# High King

# HISUI PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 101) WHERE `pokedex_ref` IN (58) AND INSTR(`type_name`, 'hisui') > 0;			# Scout
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 653) WHERE `pokedex_ref` IN (100, 101) AND INSTR(`type_name`, 'hisui') > 0;		# Sphere
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 654) WHERE `pokedex_ref` IN (157) AND INSTR(`type_name`, 'hisui') > 0;			# Ghost Flame
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 655) WHERE `pokedex_ref` IN (549) AND INSTR(`type_name`, 'hisui') > 0;			# Spinning
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 656) WHERE `pokedex_ref` IN (570) AND INSTR(`type_name`, 'hisui') > 0;			# Spiteful
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 657) WHERE `pokedex_ref` IN (571) AND INSTR(`type_name`, 'hisui') > 0;			# Baneful
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 658) WHERE `pokedex_ref` IN (628) AND INSTR(`type_name`, 'hisui') > 0;			# Battle Cry
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 448) WHERE `pokedex_ref` IN (705) AND INSTR(`type_name`, 'hisui') > 0;			# Snail
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 659) WHERE `pokedex_ref` IN (706) AND INSTR(`type_name`, 'hisui') > 0;			# Shell Bunker

# HISUI PKMN descriptions
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 660) WHERE `pokedex_ref` IN (900);						# Axe
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 661) WHERE `pokedex_ref` IN (901);						# Peat
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 662) WHERE `pokedex_ref` IN (902);						# Big Fish
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 663) WHERE `pokedex_ref` IN (903);						# Free Climb
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 664) WHERE `pokedex_ref` IN (904);						# Pin Cluster
UPDATE `type_bundle` SET `type_desc` = (SELECT `desc` FROM `pokemon_desc` WHERE `id` = 665) WHERE `pokedex_ref` IN (905);						# Love-Hate


# insert exclusive Z-moves
# UPDATE `type_bundle` SET `excl_z_ref` = 1 WHERE `pokedex_ref` = 25 AND INSTR(`type_name`, 'cap');						# 10,000,000 Volt Thunderbolt (Cap Pikachu)
UPDATE `type_bundle` SET `excl_z_ref` = 1 WHERE `pokedex_ref` = 25 AND INSTR(`type_name`, 'cap') AND NOT INSTR(`type_name`, 'world');			# 10,000,000 Volt Thunderbolt (Cap Pikachu)
UPDATE `type_bundle` SET `excl_z_ref` = 2 WHERE `pokedex_ref` = 25 AND `type_name` = 'default';							# Catastropika (Pikachu - regular only)
UPDATE `type_bundle` SET `excl_z_ref` = 3 WHERE `pokedex_ref` = 784 AND `type_name` = 'default';						# Clangorous Soulblaze (Kommo-o)
UPDATE `type_bundle` SET `excl_z_ref` = 4 WHERE `pokedex_ref` = 133 AND `type_name` = 'default';						# Extreme Evoboost(Eevee)
UPDATE `type_bundle` SET `excl_z_ref` = 5 WHERE `pokedex_ref` = 151 AND `type_name` = 'default';						# Genesis Supernova (Mew)
UPDATE `type_bundle` SET `excl_z_ref` = 6 WHERE `pokedex_ref` IN (785, 786, 787, 788) AND `type_name` = 'default';		# Guardian of Alola (Tapu Koko, Tapu Lele, Tapu Bulu, Tapu Fini)
UPDATE `type_bundle` SET `excl_z_ref` = 7 WHERE `pokedex_ref` = 778 AND `type_name` = 'default';						# Let's Snuggle Forever (Mimikyu)
UPDATE `type_bundle` SET `excl_z_ref` = 8 WHERE `pokedex_ref` = 800 AND `type_name` = 'ultra_necrozma';					# Light That Burns the Sky (Ultra Necrozma)
UPDATE `type_bundle` SET `excl_z_ref` = 9 WHERE `pokedex_ref` = 727 AND `type_name` = 'default';						# Malicious Moonsault (Incineroar)
UPDATE `type_bundle` SET `excl_z_ref` = 10 WHERE (
	`pokedex_ref` = 792 AND `type_name` = 'default') OR (`pokedex_ref` = 800 AND `type_name` = 'dawn_wings_necrozma');	# Menacing Moonraze Maelstrom (Lunala, Dawn Wings Necrozma)
UPDATE `type_bundle` SET `excl_z_ref` = 11 WHERE `pokedex_ref` = 730 AND `type_name` = 'default';						# Oceanic Operetta (Primarina)
UPDATE `type_bundle` SET `excl_z_ref` = 12 WHERE `pokedex_ref` = 143 AND `type_name` = 'default';						# Pulverizing Pancake (Snorlax)
UPDATE `type_bundle` SET `excl_z_ref` = 13 WHERE (
	`pokedex_ref` = 791 AND `type_name` = 'default') OR (`pokedex_ref` = 800 AND `type_name` = 'dusk_mane_necrozma');	# Searing Sunraze Smash (Solgaleo, Dusk Mane Necrozma)
UPDATE `type_bundle` SET `excl_z_ref` = 14 WHERE `pokedex_ref` = 724 AND `type_name` = 'default';						# Sinister Arrow Raid (Decidueye)
UPDATE `type_bundle` SET `excl_z_ref` = 15 WHERE `pokedex_ref` = 802 AND `type_name` = 'default';						# Soul-Stealing 7-Star Strike (Marshadow)
UPDATE `type_bundle` SET `excl_z_ref` = 16 WHERE `pokedex_ref` = 745 AND `type_name` IN ('midday_form', 'midnight_form', 'dusk_form');	# Splintered Stormshards (Lycanroc - midday, midnight, dusk)
UPDATE `type_bundle` SET `excl_z_ref` = 17 WHERE `pokedex_ref` = 26 AND `type_name` = 'alola_variant';					# Stoked Sparksurfer (Raichu - Alola Variant)

UPDATE `type_bundle` SET `g_max_move` = 'G-Max Vine Lash', `g_max_type` = 9 WHERE `pokedex_ref` = 3 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Wildfire', `g_max_type` = 13 WHERE `pokedex_ref` = 6 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Cannonade', `g_max_type` = 6 WHERE `pokedex_ref` = 9 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Befuddle', `g_max_type` = 5 WHERE `pokedex_ref` = 12 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Volt Crash', `g_max_type` = 7 WHERE `pokedex_ref` = 25 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Gold Rush', `g_max_type` = 12 WHERE `pokedex_ref` = 52 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Chi Strike', `g_max_type` = 14 WHERE `pokedex_ref` = 68 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Terror', `g_max_type` = 1 WHERE `pokedex_ref` = 94 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Foam Burst', `g_max_type` = 6 WHERE `pokedex_ref` = 99 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Resonance', `g_max_type` = 11 WHERE `pokedex_ref` = 131 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Cuddle', `g_max_type` = 12 WHERE `pokedex_ref` = 133 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Replenish', `g_max_type` = 12 WHERE `pokedex_ref` = 143 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Malodor', `g_max_type` = 4 WHERE `pokedex_ref` = 569 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Meltdown', `g_max_type` = 15 WHERE `pokedex_ref` = 809 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Drum Solo', `g_max_type` = 9 WHERE `pokedex_ref` = 812 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Fireball', `g_max_type` = 13 WHERE `pokedex_ref` = 815 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Hydrosnipe', `g_max_type` = 6 WHERE `pokedex_ref` = 818 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Wind Rage', `g_max_type` = 3 WHERE `pokedex_ref` = 823 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Gravitas', `g_max_type` = 16 WHERE `pokedex_ref` = 826 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Stonesurge', `g_max_type` = 6 WHERE `pokedex_ref` = 834 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Volcalith', `g_max_type` = 8 WHERE `pokedex_ref` = 839 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Tartness', `g_max_type` = 9 WHERE `pokedex_ref` = 841 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Sweetness', `g_max_type` = 9 WHERE `pokedex_ref` = 842 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Sandblast', `g_max_type` = 2 WHERE `pokedex_ref` = 844 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Stun Shock', `g_max_type` = 7 WHERE `pokedex_ref` = 849 AND `type_name` IN ('amped_form', 'low_key_form');
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Centiferno', `g_max_type` = 13 WHERE `pokedex_ref` = 851 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Smite', `g_max_type` = 17 WHERE `pokedex_ref` = 858 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Snooze', `g_max_type` = 10 WHERE `pokedex_ref` = 861 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Finale', `g_max_type` = 17 WHERE `pokedex_ref` = 869 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Steelsurge', `g_max_type` = 15 WHERE `pokedex_ref` = 879 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Depletion', `g_max_type` = 0 WHERE `pokedex_ref` = 884 AND `type_name` = 'default';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max One Blow', `g_max_type` = 10 WHERE `pokedex_ref` = 892 AND `type_name` = 'single_strike_style';
UPDATE `type_bundle` SET `g_max_move` = 'G-Max Rapid Flow', `g_max_type` = 6 WHERE `pokedex_ref` = 892 AND `type_name` = 'rapid_strike_style';

# Stench
UPDATE `type_bundle` SET `ability1` = 1 WHERE
(`pokedex_ref` = 88 AND `type_name` = 'default') OR		# Grimer
(`pokedex_ref` = 89 AND `type_name` = 'default') OR		# Muk
(`pokedex_ref` = 434 AND `type_name` = 'default') OR	# Stunky
(`pokedex_ref` = 435 AND `type_name` = 'default') OR	# Skunktank
(`pokedex_ref` = 568 AND `type_name` = 'default') OR	# Trubbish
(`pokedex_ref` = 569 AND `type_name` = 'default');		# Garbodor
UPDATE `type_bundle` SET `hidden_ability` = 1 WHERE 
(`pokedex_ref` = 44 AND `type_name` = 'default') OR		# Gloom
(`pokedex_ref` = 109 AND `type_name` = 'default') OR	# Koffing
(`pokedex_ref` = 110 AND `type_name` = 'default');		# Weezing

# Drizzle
UPDATE `type_bundle` SET `ability1` = 2 WHERE (`pokedex_ref` = 382 AND `type_name` = 'default');	# Kyogre
UPDATE `type_bundle` SET `ability2` = 2 WHERE (`pokedex_ref` = 279 AND `type_name` = 'default');	# Pelipper
UPDATE `type_bundle` SET `hidden_ability` = 2 WHERE (`pokedex_ref` = 186 AND `type_name` = 'default');	# Politoed

# Speed Boost
UPDATE `type_bundle` SET `ability1` = 3 WHERE
(`pokedex_ref` = 193 AND `type_name` = 'default') OR	# Yanma
(`pokedex_ref` = 257 AND `type_name` = 'mega') OR		# MEGA Blaziken
(`pokedex_ref` = 291 AND `type_name` = 'default') OR	# Ninjask
(`pokedex_ref` = 469 AND `type_name` = 'default');		# Yanmega
UPDATE `type_bundle` SET `hidden_ability` = 3 WHERE 
(`pokedex_ref` = 255 AND `type_name` = 'default') OR	# Torchic
(`pokedex_ref` = 256 AND `type_name` = 'default') OR	# Combusken
(`pokedex_ref` = 257 AND `type_name` = 'default') OR	# Blaziken
(`pokedex_ref` = 318 AND `type_name` = 'default') OR	# Carvanha
(`pokedex_ref` = 319 AND `type_name` = 'default') OR	# Sharpedo
(`pokedex_ref` = 543 AND `type_name` = 'default') OR	# Venipede
(`pokedex_ref` = 544 AND `type_name` = 'default') OR	# Whirlipede
(`pokedex_ref` = 545 AND `type_name` = 'default');		# Scolipede

# Battle Armor
UPDATE `type_bundle` SET `ability1` = 4 WHERE
(`pokedex_ref` = 347 AND `type_name` = 'default') OR	# Anorith
(`pokedex_ref` = 348 AND `type_name` = 'default') OR	# Armaldo
(`pokedex_ref` = 451 AND `type_name` = 'default') OR	# Skorupi
(`pokedex_ref` = 452 AND `type_name` = 'default') OR	# Drapion
(`pokedex_ref` = 772 AND `type_name` = 'default') OR	# Type: Null
(`pokedex_ref` = 863 AND `type_name` = 'default') OR	# Perrserker
(`pokedex_ref` = 870 AND `type_name` = 'default');		# Falinks
UPDATE `type_bundle` SET `ability2` = 4 WHERE
(`pokedex_ref` = 140 AND `type_name` = 'default') OR	# Kabuto
(`pokedex_ref` = 141 AND `type_name` = 'default');		# Kabutops
UPDATE `type_bundle` SET `hidden_ability` = 4 WHERE 
(`pokedex_ref` = 104 AND `type_name` = 'default') OR	# Cubone
(`pokedex_ref` = 105 AND `type_name` = 'default');		# Marowak

# Sturdy
UPDATE `type_bundle` SET `ability1` = 5 WHERE
(`pokedex_ref` = 185 AND `type_name` = 'default') OR	# Sudowoodo
(`pokedex_ref` = 204 AND `type_name` = 'default') OR	# Pineco
(`pokedex_ref` = 205 AND `type_name` = 'default') OR	# Forretress
(`pokedex_ref` = 213 AND `type_name` = 'default') OR	# Shuckle
(`pokedex_ref` = 232 AND `type_name` = 'default') OR	# Donphan
(`pokedex_ref` = 299 AND `type_name` = 'default') OR	# Nosepass
(`pokedex_ref` = 304 AND `type_name` = 'default') OR	# Aron
(`pokedex_ref` = 305 AND `type_name` = 'default') OR	# Lairon
(`pokedex_ref` = 306 AND `type_name` = 'default') OR	# Aggron
(`pokedex_ref` = 410 AND `type_name` = 'default') OR	# Shieldon
(`pokedex_ref` = 411 AND `type_name` = 'default') OR	# Bastiodon
(`pokedex_ref` = 438 AND `type_name` = 'default') OR	# Bonsly
(`pokedex_ref` = 476 AND `type_name` = 'default') OR	# Probopass
(`pokedex_ref` = 524 AND `type_name` = 'default') OR	# Roggenrola
(`pokedex_ref` = 525 AND `type_name` = 'default') OR	# Boldore
(`pokedex_ref` = 526 AND `type_name` = 'default') OR	# Gigalith
(`pokedex_ref` = 539 AND `type_name` = 'default') OR	# Sawk
(`pokedex_ref` = 557 AND `type_name` = 'default') OR	# Dwebble
(`pokedex_ref` = 558 AND `type_name` = 'default') OR	# Crustle
(`pokedex_ref` = 790 AND `type_name` = 'default');		# Cosmoem
UPDATE `type_bundle` SET `ability2` = 5 WHERE
(`pokedex_ref` = 74 AND `type_name` = 'default') OR			# Geodude
(`pokedex_ref` = 74 AND `type_name` = 'alola_variant') OR	# Geodude (Alola)
(`pokedex_ref` = 75 AND `type_name` = 'default') OR			# Graveler
(`pokedex_ref` = 75 AND `type_name` = 'alola_variant') OR	# Graveler (Alola)
(`pokedex_ref` = 76 AND `type_name` = 'default') OR			# Golem
(`pokedex_ref` = 76 AND `type_name` = 'alola_variant') OR	# Golem (Alola)
(`pokedex_ref` = 81 AND `type_name` = 'default') OR			# Magnemite
(`pokedex_ref` = 82 AND `type_name` = 'default') OR			# Magneton
(`pokedex_ref` = 95 AND `type_name` = 'default') OR			# Onix
(`pokedex_ref` = 208 AND `type_name` = 'default') OR		# Steelix
(`pokedex_ref` = 227 AND `type_name` = 'default') OR		# Skarmory
(`pokedex_ref` = 462 AND `type_name` = 'default') OR		# Magnezone
(`pokedex_ref` = 564 AND `type_name` = 'default') OR		# Tirtouga
(`pokedex_ref` = 565 AND `type_name` = 'default');			# Carracosta
UPDATE `type_bundle` SET `hidden_ability` = 5 WHERE 
(`pokedex_ref` = 369 AND `type_name` = 'default') OR		# Relicanth
(`pokedex_ref` = 377 AND `type_name` = 'default') OR		# Regirock
(`pokedex_ref` = 696 AND `type_name` = 'default') OR		# Tyrunt
(`pokedex_ref` = 703 AND `type_name` = 'default') OR		# Carbink
(`pokedex_ref` = 712 AND `type_name` = 'default') OR		# Bergmite
(`pokedex_ref` = 713 AND `type_name` = 'default') OR		# Avalugg
(`pokedex_ref` = 713 AND `type_name` = 'hisui_variant') OR	# Avalugg (Hisui)
(`pokedex_ref` = 777 AND `type_name` = 'default');			# Togedemaru

# Damp
UPDATE `type_bundle` SET `ability1` = 6 WHERE
(`pokedex_ref` = 54 AND `type_name` = 'default') OR		# Psyduck
(`pokedex_ref` = 55 AND `type_name` = 'default') OR		# Golduck
(`pokedex_ref` = 194 AND `type_name` = 'default') OR	# Wooper
(`pokedex_ref` = 195 AND `type_name` = 'default');		# Quagsire
UPDATE `type_bundle` SET `ability2` = 6 WHERE
(`pokedex_ref` = 60 AND `type_name` = 'default') OR		# Poliwag
(`pokedex_ref` = 61 AND `type_name` = 'default') OR		# Poliwhirl
(`pokedex_ref` = 62 AND `type_name` = 'default') OR		# Poliwrath
(`pokedex_ref` = 186 AND `type_name` = 'default');		# Politoed
UPDATE `type_bundle` SET `hidden_ability` = 6 WHERE 
(`pokedex_ref` = 46 AND `type_name` = 'default') OR		# Paras
(`pokedex_ref` = 47 AND `type_name` = 'default') OR		# Parasect
(`pokedex_ref` = 116 AND `type_name` = 'default') OR	# Horsea
(`pokedex_ref` = 117 AND `type_name` = 'default') OR	# Seadra
(`pokedex_ref` = 230 AND `type_name` = 'default') OR	# Kingdra
(`pokedex_ref` = 258 AND `type_name` = 'default') OR	# Mudkip
(`pokedex_ref` = 259 AND `type_name` = 'default') OR	# Marshtomp
(`pokedex_ref` = 260 AND `type_name` = 'default') OR	# Swampert
(`pokedex_ref` = 592 AND `type_name` = 'default') OR	# Frillish
(`pokedex_ref` = 593 AND `type_name` = 'default');		# Jellicent

# Limber
UPDATE `type_bundle` SET `ability1` = 7 WHERE
(`pokedex_ref` = 53 AND `type_name` = 'default') OR		# Persian
(`pokedex_ref` = 106 AND `type_name` = 'default') OR	# Hitmonlee
(`pokedex_ref` = 132 AND `type_name` = 'default') OR	# Ditto
(`pokedex_ref` = 431 AND `type_name` = 'default') OR	# Glameow
(`pokedex_ref` = 509 AND `type_name` = 'default') OR	# Purrloin
(`pokedex_ref` = 510 AND `type_name` = 'default') OR	# Liepard
(`pokedex_ref` = 701 AND `type_name` = 'default') OR	# Hawlucha
(`pokedex_ref` = 852 AND `type_name` = 'default') OR	# Clobbopus
(`pokedex_ref` = 853 AND `type_name` = 'default');		# Grapploct
UPDATE `type_bundle` SET `ability2` = 7 WHERE
(`pokedex_ref` = 618 AND `type_name` = 'default') OR	# Stunfisk
(`pokedex_ref` = 747 AND `type_name` = 'default') OR	# Mareanie
(`pokedex_ref` = 748 AND `type_name` = 'default');		# Toxapex
UPDATE `type_bundle` SET `hidden_ability` = 7 WHERE
(`pokedex_ref` = 427 AND `type_name` = 'default') OR	# Buneary
(`pokedex_ref` = 428 AND `type_name` = 'default');  	# Lopunny

# Sand Veil
UPDATE `type_bundle` SET `ability1` = 8 WHERE
(`pokedex_ref` = 27 AND `type_name` = 'default') OR			# Sandshrew
(`pokedex_ref` = 28 AND `type_name` = 'default') OR			# Sandslash
(`pokedex_ref` = 50 AND `type_name` = 'default') OR			# Diglett
(`pokedex_ref` = 50 AND `type_name` = 'alola_variant') OR	# Diglett (Alola)
(`pokedex_ref` = 51 AND `type_name` = 'default') OR			# Dugtrio
(`pokedex_ref` = 51 AND `type_name` = 'alola_variant') OR	# Dugtrio (Alola)
(`pokedex_ref` = 331 AND `type_name` = 'default') OR		# Cacnea
(`pokedex_ref` = 332 AND `type_name` = 'default') OR		# Cacturne
(`pokedex_ref` = 443 AND `type_name` = 'default') OR		# Gible
(`pokedex_ref` = 444 AND `type_name` = 'default') OR		# Gabite
(`pokedex_ref` = 445 AND `type_name` = 'default');			# Garchomp
UPDATE `type_bundle` SET `ability2` = 8 WHERE
(`pokedex_ref` = 207 AND `type_name` = 'default') OR	# Gligar
(`pokedex_ref` = 472 AND `type_name` = 'default') OR	# Gliscor
(`pokedex_ref` = 694 AND `type_name` = 'default') OR	# Helioptile
(`pokedex_ref` = 695 AND `type_name` = 'default');		# Heliolisk
UPDATE `type_bundle` SET `hidden_ability` = 8 WHERE
(`pokedex_ref` = 74 AND `type_name` = 'default') OR		# Geodude
(`pokedex_ref` = 75 AND `type_name` = 'default') OR		# Graveler
(`pokedex_ref` = 76 AND `type_name` = 'default') OR		# Golem
(`pokedex_ref` = 231 AND `type_name` = 'default') OR	# Phanpy
(`pokedex_ref` = 232 AND `type_name` = 'default') OR	# Donphan
(`pokedex_ref` = 246 AND `type_name` = 'default') OR	# Larvitar
(`pokedex_ref` = 618 AND `type_name` = 'default') OR	# Stunfisk
(`pokedex_ref` = 769 AND `type_name` = 'default') OR	# Sandygast
(`pokedex_ref` = 770 AND `type_name` = 'default') OR	# Palossand
(`pokedex_ref` = 843 AND `type_name` = 'default') OR	# Silicobra
(`pokedex_ref` = 844 AND `type_name` = 'default');		# Sandaconda

# Static
UPDATE `type_bundle` SET `ability1` = 9 WHERE
(`pokedex_ref` = 25 AND `type_name` = 'default') OR				# Pikachu
(`pokedex_ref` = 25 AND `type_name` = 'original_cap') OR		# Pikachu (Original Cap)
(`pokedex_ref` = 25 AND `type_name` = 'hoenn_cap') OR			# Pikachu (Hoenn Cap)
(`pokedex_ref` = 25 AND `type_name` = 'sinnoh_cap') OR			# Pikachu (Sinnoh Cap)
(`pokedex_ref` = 25 AND `type_name` = 'unova_cap') OR			# Pikachu (Unova Cap)
(`pokedex_ref` = 25 AND `type_name` = 'kalos_cap') OR			# Pikachu (Kalos Cap)
(`pokedex_ref` = 25 AND `type_name` = 'alola_cap') OR			# Pikachu (Alola Cap)
(`pokedex_ref` = 25 AND `type_name` = 'partner_cap') OR			# Pikachu (Partner Cap)
(`pokedex_ref` = 25 AND `type_name` = 'world_cap') OR			# Pikachu (World Cap)
(`pokedex_ref` = 26 AND `type_name` = 'default') OR				# Raichu
(`pokedex_ref` = 125 AND `type_name` = 'default') OR			# Electabuzz
(`pokedex_ref` = 172 AND `type_name` = 'default') OR			# Pichu
(`pokedex_ref` = 179 AND `type_name` = 'default') OR			# Mareep
(`pokedex_ref` = 180 AND `type_name` = 'default') OR			# Flaaffy
(`pokedex_ref` = 181 AND `type_name` = 'default') OR			# Ampharos
(`pokedex_ref` = 239 AND `type_name` = 'default') OR			# Elekid
(`pokedex_ref` = 309 AND `type_name` = 'default') OR			# Electrike
(`pokedex_ref` = 310 AND `type_name` = 'default') OR			# Manectric
(`pokedex_ref` = 587 AND `type_name` = 'default') OR			# Emolga
(`pokedex_ref` = 618 AND `type_name` = 'default');				# Stunfisk
UPDATE `type_bundle` SET `ability2` = 9 WHERE
(`pokedex_ref` = 100 AND `type_name` = 'default') OR			# Voltorb
(`pokedex_ref` = 100 AND `type_name` = 'hisui_variant') OR		# Voltorb (Hisui)
(`pokedex_ref` = 101 AND `type_name` = 'default') OR			# Electrode
(`pokedex_ref` = 101 AND `type_name` = 'hisui_variant') OR		# Electrode (Hisui)
(`pokedex_ref` = 848 AND `type_name` = 'default') OR			# Toxel
(`pokedex_ref` = 881 AND `type_name` = 'default');				# Arctozolt
UPDATE `type_bundle` SET `hidden_ability` = 9 WHERE
(`pokedex_ref` = 145 AND `type_name` = 'default');		# Zapdos

# Volt Absorb
UPDATE `type_bundle` SET `ability1` = 10 WHERE
(`pokedex_ref` = 135 AND `type_name` = 'default') OR		# Jolteon
(`pokedex_ref` = 170 AND `type_name` = 'default') OR		# Chinchou
(`pokedex_ref` = 171 AND `type_name` = 'default') OR		# Lanturn
(`pokedex_ref` = 642 AND `type_name` = 'therian_forme') OR	# Thundrus (Therian Forme)
(`pokedex_ref` = 807 AND `type_name` = 'default') OR		# Zeraora
(`pokedex_ref` = 880 AND `type_name` = 'default') OR		# Dracozolt
(`pokedex_ref` = 881 AND `type_name` = 'default');			# Arctozolt
UPDATE `type_bundle` SET `hidden_ability` = 10 WHERE
(`pokedex_ref` = 312 AND `type_name` = 'default') OR	# Minun
(`pokedex_ref` = 417 AND `type_name` = 'default');		# Pachirisu

# Water Absorb
UPDATE `type_bundle` SET `ability1` = 11 WHERE
(`pokedex_ref` = 60 AND `type_name` = 'default') OR		# Poliwag
(`pokedex_ref` = 61 AND `type_name` = 'default') OR		# Poliwhirl
(`pokedex_ref` = 62 AND `type_name` = 'default') OR		# Poliwrath
(`pokedex_ref` = 131 AND `type_name` = 'default') OR	# Lapras
(`pokedex_ref` = 134 AND `type_name` = 'default') OR	# Vaporeon
(`pokedex_ref` = 186 AND `type_name` = 'default') OR	# Politoed
(`pokedex_ref` = 556 AND `type_name` = 'default') OR	# Maractus
(`pokedex_ref` = 592 AND `type_name` = 'default') OR	# Frillish
(`pokedex_ref` = 593 AND `type_name` = 'default') OR	# Jellicent
(`pokedex_ref` = 721 AND `type_name` = 'default') OR	# Volcanion
(`pokedex_ref` = 882 AND `type_name` = 'default') OR	# Dracovish
(`pokedex_ref` = 883 AND `type_name` = 'default');		# Arctovish
UPDATE `type_bundle` SET `ability2` = 11 WHERE
(`pokedex_ref` = 194 AND `type_name` = 'default') OR	# Wooper
(`pokedex_ref` = 195 AND `type_name` = 'default') OR	# Quagsire
(`pokedex_ref` = 226 AND `type_name` = 'default') OR	# Mantine
(`pokedex_ref` = 458 AND `type_name` = 'default');		# Mantyke
UPDATE `type_bundle` SET `hidden_ability` = 11 WHERE
(`pokedex_ref` = 170 AND `type_name` = 'default') OR	# Chinchou
(`pokedex_ref` = 171 AND `type_name` = 'default') OR	# Lanturn
(`pokedex_ref` = 331 AND `type_name` = 'default') OR	# Cacnea
(`pokedex_ref` = 332 AND `type_name` = 'default') OR	# Cacturne
(`pokedex_ref` = 535 AND `type_name` = 'default') OR	# Tympole
(`pokedex_ref` = 536 AND `type_name` = 'default') OR	# Palpitoad
(`pokedex_ref` = 537 AND `type_name` = 'default') OR	# Seismitoad
(`pokedex_ref` = 751 AND `type_name` = 'default') OR	# Dewpider
(`pokedex_ref` = 752 AND `type_name` = 'default');		# Araquanid

# Oblivious
UPDATE `type_bundle` SET `ability1` = 12 WHERE
(`pokedex_ref` = 79 AND `type_name` = 'default') OR		# Slowpoke
(`pokedex_ref` = 80 AND `type_name` = 'default') OR		# Slowbro
(`pokedex_ref` = 124 AND `type_name` = 'default') OR	# Jynx
(`pokedex_ref` = 199 AND `type_name` = 'default') OR	# Slowking
(`pokedex_ref` = 220 AND `type_name` = 'default') OR	# Swinub
(`pokedex_ref` = 221 AND `type_name` = 'default') OR	# Piloswine
(`pokedex_ref` = 238 AND `type_name` = 'default') OR	# Smoochum
(`pokedex_ref` = 314 AND `type_name` = 'default') OR	# Illumise
(`pokedex_ref` = 322 AND `type_name` = 'default') OR	# Numel
(`pokedex_ref` = 339 AND `type_name` = 'default') OR	# Barboach
(`pokedex_ref` = 340 AND `type_name` = 'default') OR	# Whiscash
(`pokedex_ref` = 473 AND `type_name` = 'default');		# Mamoswine
UPDATE `type_bundle` SET `ability2` = 12 WHERE
(`pokedex_ref` = 108 AND `type_name` = 'default') OR	# Lickitung
(`pokedex_ref` = 320 AND `type_name` = 'default') OR	# Wailmer
(`pokedex_ref` = 321 AND `type_name` = 'default') OR	# Wailord
(`pokedex_ref` = 349 AND `type_name` = 'default') OR	# Feebas
(`pokedex_ref` = 463 AND `type_name` = 'default') OR	# Lickilicky
(`pokedex_ref` = 761 AND `type_name` = 'default') OR	# Bounsweet
(`pokedex_ref` = 762 AND `type_name` = 'default');		# Steenee
UPDATE `type_bundle` SET `hidden_ability` = 12 WHERE
(`pokedex_ref` = 363 AND `type_name` = 'default') OR	# Spheal
(`pokedex_ref` = 364 AND `type_name` = 'default') OR	# Sealeo
(`pokedex_ref` = 365 AND `type_name` = 'default') OR	# Walrein
(`pokedex_ref` = 757 AND `type_name` = 'default') OR	# Salandit
(`pokedex_ref` = 758 AND `type_name` = 'default');		# Salazzle

# Cloud Nine
UPDATE `type_bundle` SET `ability2` = 13 WHERE
(`pokedex_ref` = 54 AND `type_name` = 'default') OR		# Psyduck
(`pokedex_ref` = 55 AND `type_name` = 'default');		# Golduck
UPDATE `type_bundle` SET `hidden_ability` = 13 WHERE
(`pokedex_ref` = 108 AND `type_name` = 'default') OR	# Lickitung
(`pokedex_ref` = 333 AND `type_name` = 'default') OR	# Swablu
(`pokedex_ref` = 334 AND `type_name` = 'default') OR	# Altaria
(`pokedex_ref` = 463 AND `type_name` = 'default') OR	# Lickilicky
(`pokedex_ref` = 780 AND `type_name` = 'default');		# Drampa

# Compound Eyes
UPDATE `type_bundle` SET `ability1` = 14 WHERE
(`pokedex_ref` = 12 AND `type_name` = 'default') OR		# Butterfree
(`pokedex_ref` = 48 AND `type_name` = 'default') OR		# Venonat
(`pokedex_ref` = 290 AND `type_name` = 'default') OR	# Nincada
(`pokedex_ref` = 595 AND `type_name` = 'default') OR	# Joltik
(`pokedex_ref` = 596 AND `type_name` = 'default');		# Galvantula
UPDATE `type_bundle` SET `ability2` = 14 WHERE
(`pokedex_ref` = 193 AND `type_name` = 'default') OR	# Yanma
(`pokedex_ref` = 664 AND `type_name` = 'default') OR	# Scatterbug
(`pokedex_ref` = 666 AND `type_name` = 'default') OR	# Vivillon
(`pokedex_ref` = 824 AND `type_name` = 'default') OR	# Blipbug
(`pokedex_ref` = 825 AND `type_name` = 'default');		# Dottler
UPDATE `type_bundle` SET `hidden_ability` = 14 WHERE
(`pokedex_ref` = 269 AND `type_name` = 'default');		# Dustox

# Insomnia
UPDATE `type_bundle` SET `ability1` = 15 WHERE
(`pokedex_ref` = 96 AND `type_name` = 'default') OR		# Drowzee
(`pokedex_ref` = 97 AND `type_name` = 'default') OR		# Hypno
(`pokedex_ref` = 150 AND `type_name` = 'mega_y') OR		# MEGA Mewtwo Y
(`pokedex_ref` = 163 AND `type_name` = 'default') OR	# Hoothoot
(`pokedex_ref` = 164 AND `type_name` = 'default') OR	# Noctowl
(`pokedex_ref` = 198 AND `type_name` = 'default') OR	# Murkrow
(`pokedex_ref` = 353 AND `type_name` = 'default') OR	# Shuppet
(`pokedex_ref` = 354 AND `type_name` = 'default') OR	# Banette
(`pokedex_ref` = 430 AND `type_name` = 'default');		# Honchkrow
UPDATE `type_bundle` SET `ability2` = 15 WHERE
(`pokedex_ref` = 167 AND `type_name` = 'default') OR	# Spinarak
(`pokedex_ref` = 168 AND `type_name` = 'default');		# Ariados
UPDATE `type_bundle` SET `hidden_ability` = 15 WHERE
(`pokedex_ref` = 225 AND `type_name` = 'default') OR	# Delibird
(`pokedex_ref` = 710 AND `type_name` = 'default') OR	# Pumpkaboo
(`pokedex_ref` = 711 AND `type_name` = 'default');		# Gourgeist

# Color Change
UPDATE `type_bundle` SET `ability1` = 16 WHERE
(`pokedex_ref` = 352 AND `type_name` = 'default');	    # Kecleon

# Immunity
UPDATE `type_bundle` SET `ability1` = 17 WHERE
(`pokedex_ref` = 143 AND `type_name` = 'default') OR	# Immunity
(`pokedex_ref` = 335 AND `type_name` = 'default');	    # Zangoose
UPDATE `type_bundle` SET `hidden_ability` = 17 WHERE
(`pokedex_ref` = 207 AND `type_name` = 'default');	    # Gligar

# Flash Fire
UPDATE `type_bundle` SET `ability1` = 18 WHERE
(`pokedex_ref` = 37 AND `type_name` = 'default') OR				# Vulpix
(`pokedex_ref` = 38 AND `type_name` = 'default') OR				# Ninetales
(`pokedex_ref` = 136 AND `type_name` = 'default') OR			# Flareon
(`pokedex_ref` = 485 AND `type_name` = 'default') OR			# Heatran
(`pokedex_ref` = 607 AND `type_name` = 'default') OR			# Litwick
(`pokedex_ref` = 608 AND `type_name` = 'default') OR			# Lampent
(`pokedex_ref` = 609 AND `type_name` = 'default') OR			# Chandelure
(`pokedex_ref` = 850 AND `type_name` = 'default') OR			# Sizzlipede
(`pokedex_ref` = 851 AND `type_name` = 'default');	    		# Centiskorch
UPDATE `type_bundle` SET `ability2` = 18 WHERE
(`pokedex_ref` = 58 AND `type_name` = 'default') OR				# Growlithe
(`pokedex_ref` = 59 AND `type_name` = 'default') OR				# Arcanine
(`pokedex_ref` = 77 AND `type_name` = 'default') OR				# Ponyta
(`pokedex_ref` = 78 AND `type_name` = 'default') OR				# Rapidash
(`pokedex_ref` = 228 AND `type_name` = 'default') OR			# Houndour
(`pokedex_ref` = 229 AND `type_name` = 'default') OR			# Houndoom
(`pokedex_ref` = 631 AND `type_name` = 'default');				# Heatmor
UPDATE `type_bundle` SET `hidden_ability` = 18 WHERE
(`pokedex_ref` = 58 AND `type_name` = 'hisui_variant') OR		# Growlithe (Hisui)
(`pokedex_ref` = 59 AND `type_name` = 'hisui_variant') OR		# Arcanine (Hisui)
(`pokedex_ref` = 155 AND `type_name` = 'default') OR			# Cyndaquil
(`pokedex_ref` = 156 AND `type_name` = 'default') OR			# Quilava
(`pokedex_ref` = 157 AND `type_name` = 'default') OR			# Typhlosion
(`pokedex_ref` = 157 AND `type_name` = 'hisui_variant') OR		# Typhlosion (Hisui)
(`pokedex_ref` = 837 AND `type_name` = 'default') OR			# Rolycoly
(`pokedex_ref` = 838 AND `type_name` = 'default') OR			# Carkol
(`pokedex_ref` = 839 AND `type_name` = 'default');				# Coalossal

# Shield Dust
UPDATE `type_bundle` SET `ability1` = 19 WHERE
(`pokedex_ref` = 10 AND `type_name` = 'default') OR		# Caterpie
(`pokedex_ref` = 13 AND `type_name` = 'default') OR		# Weedle
(`pokedex_ref` = 49 AND `type_name` = 'default') OR		# Venomoth
(`pokedex_ref` = 265 AND `type_name` = 'default') OR	# Wurmple
(`pokedex_ref` = 269 AND `type_name` = 'default') OR	# Dustox
(`pokedex_ref` = 664 AND `type_name` = 'default') OR	# Scatterbug
(`pokedex_ref` = 666 AND `type_name` = 'default') OR	# Vivillon
(`pokedex_ref` = 872 AND `type_name` = 'default') OR	# Snom
(`pokedex_ref` = 873 AND `type_name` = 'default');	    # Frosmoth
UPDATE `type_bundle` SET `ability2` = 19 WHERE
(`pokedex_ref` = 742 AND `type_name` = 'default') OR	# Cutiefly
(`pokedex_ref` = 743 AND `type_name` = 'default');		# Ribombee

# Own Tempo
UPDATE `type_bundle` SET `ability1` = 20 WHERE
(`pokedex_ref` = 108 AND `type_name` = 'default') OR		# Lickitung
(`pokedex_ref` = 235 AND `type_name` = 'default') OR		# Smeargle
(`pokedex_ref` = 327 AND `type_name` = 'default') OR		# Spinda
(`pokedex_ref` = 463 AND `type_name` = 'default') OR		# Lickilicky
(`pokedex_ref` = 712 AND `type_name` = 'default') OR		# Bergmite
(`pokedex_ref` = 713 AND `type_name` = 'default') OR		# Avalugg
(`pokedex_ref` = 744 AND `type_name` = 'special') OR	    # Rockruff (Special)
(`pokedex_ref` = 749 AND `type_name` = 'default') OR		# Mudbray
(`pokedex_ref` = 750 AND `type_name` = 'default') OR		# Mudsdale
(`pokedex_ref` = 876 AND `type_name` = 'default_f');	    # Indeedee (F)
UPDATE `type_bundle` SET `ability2` = 20 WHERE
(`pokedex_ref` = 79 AND `type_name` = 'default') OR			# Slowpoke
(`pokedex_ref` = 79 AND `type_name` = 'galar_variant') OR	# Slowpoke (Galar)
(`pokedex_ref` = 80 AND `type_name` = 'default') OR			# Slowbro
(`pokedex_ref` = 80 AND `type_name` = 'galar_variant') OR	# Slowbro (Galar)
(`pokedex_ref` = 199 AND `type_name` = 'default') OR		# Slowking
(`pokedex_ref` = 325 AND `type_name` = 'default') OR		# Spoink
(`pokedex_ref` = 326 AND `type_name` = 'default') OR		# Grumpig
(`pokedex_ref` = 431 AND `type_name` = 'default') OR		# Glameow
(`pokedex_ref` = 432 AND `type_name` = 'default') OR		# Purugly
(`pokedex_ref` = 548 AND `type_name` = 'default') OR		# Petilil
(`pokedex_ref` = 549 AND `type_name` = 'default');			# Lilligant
UPDATE `type_bundle` SET `hidden_ability` = 20 WHERE
(`pokedex_ref` = 270 AND `type_name` = 'default') OR	# Lotad
(`pokedex_ref` = 271 AND `type_name` = 'default') OR	# Lombre
(`pokedex_ref` = 272 AND `type_name` = 'default') OR	# Ludicolo
(`pokedex_ref` = 322 AND `type_name` = 'default') OR	# Numel
(`pokedex_ref` = 677 AND `type_name` = 'default');		# Espurr

# Suction Cups
UPDATE `type_bundle` SET `ability1` = 21 WHERE
(`pokedex_ref` = 224 AND `type_name` = 'default') OR	# Octillery
(`pokedex_ref` = 345 AND `type_name` = 'default') OR	# Lileep
(`pokedex_ref` = 346 AND `type_name` = 'default');		# Cradily
UPDATE `type_bundle` SET `ability2` = 21 WHERE
(`pokedex_ref` = 686 AND `type_name` = 'default') OR	# Inkay
(`pokedex_ref` = 687 AND `type_name` = 'default');		# Malamar

# Intimidate
UPDATE `type_bundle` SET `ability1` = 22 WHERE
(`pokedex_ref` = 23 AND `type_name` = 'default') OR			# Ekans
(`pokedex_ref` = 24 AND `type_name` = 'default') OR			# Arbok
(`pokedex_ref` = 58 AND `type_name` = 'default') OR			# Growlithe
(`pokedex_ref` = 58 AND `type_name` = 'hisui_variant') OR	# Growlithe (Hisui)
(`pokedex_ref` = 59 AND `type_name` = 'default') OR			# Arcanine
(`pokedex_ref` = 59 AND `type_name` = 'hisui_variant') OR	# Arcanine (Hisui)
(`pokedex_ref` = 128 AND `type_name` = 'default') OR		# Tauros
(`pokedex_ref` = 130 AND `type_name` = 'default') OR		# Gyarados
(`pokedex_ref` = 209 AND `type_name` = 'default') OR		# Snubbull
(`pokedex_ref` = 210 AND `type_name` = 'default') OR		# Granbull
(`pokedex_ref` = 234 AND `type_name` = 'default') OR		# Stantler
(`pokedex_ref` = 237 AND `type_name` = 'default') OR		# Hitmontop
(`pokedex_ref` = 262 AND `type_name` = 'default') OR		# Mightyena
(`pokedex_ref` = 284 AND `type_name` = 'default') OR		# Masquerain
(`pokedex_ref` = 310 AND `type_name` = 'mega') OR			# MEGA Manectric
(`pokedex_ref` = 373 AND `type_name` = 'default') OR		# Salamence
(`pokedex_ref` = 397 AND `type_name` = 'default') OR		# Staravia
(`pokedex_ref` = 398 AND `type_name` = 'default') OR		# Staraptor
(`pokedex_ref` = 507 AND `type_name` = 'default') OR		# Herdier
(`pokedex_ref` = 508 AND `type_name` = 'default') OR		# Stoutland
(`pokedex_ref` = 551 AND `type_name` = 'default') OR		# Sandile
(`pokedex_ref` = 552 AND `type_name` = 'default') OR		# Krokorok
(`pokedex_ref` = 553 AND `type_name` = 'default') OR		# Krookodile
(`pokedex_ref` = 645 AND `type_name` = 'therian_forme') OR	# Landorus (Therian Forme)
(`pokedex_ref` = 725 AND `type_name` = 'default') OR		# Litten
(`pokedex_ref` = 726 AND `type_name` = 'default') OR		# Torracat
(`pokedex_ref` = 727 AND `type_name` = 'default') OR    	# Incineroar
(`pokedex_ref` = 899 AND `type_name` = 'default');	    	# Wyrdeer
UPDATE `type_bundle` SET `ability2` = 22 WHERE
(`pokedex_ref` = 303 AND `type_name` = 'default') OR		# Mawile
(`pokedex_ref` = 403 AND `type_name` = 'default') OR		# Shinx
(`pokedex_ref` = 404 AND `type_name` = 'default') OR		# Luxio
(`pokedex_ref` = 405 AND `type_name` = 'default');			# Luxray
UPDATE `type_bundle` SET `hidden_ability` = 22 WHERE
(`pokedex_ref` = 211 AND `type_name` = 'default') OR		# Qwilfish
(`pokedex_ref` = 211 AND `type_name` = 'hisui_variant') OR	# Qwilfish (Hisui)
(`pokedex_ref` = 559 AND `type_name` = 'default') OR		# Scraggy
(`pokedex_ref` = 560 AND `type_name` = 'default') OR		# Scrafty
(`pokedex_ref` = 725 AND `type_name` = 'default') OR		# Litten
(`pokedex_ref` = 726 AND `type_name` = 'default') OR		# Torracat
(`pokedex_ref` = 727 AND `type_name` = 'default') OR		# Incineroar
(`pokedex_ref` = 904 AND `type_name` = 'default');			# Overqwil

# Shadow Tag
UPDATE `type_bundle` SET `ability1` = 23 WHERE
(`pokedex_ref` = 94 AND `type_name` = 'mega') OR		# MEGA Gengar
(`pokedex_ref` = 202 AND `type_name` = 'default') OR	# Wobuffet
(`pokedex_ref` = 360 AND `type_name` = 'default');		# Wynaut
UPDATE `type_bundle` SET `hidden_ability` = 23 WHERE
(`pokedex_ref` = 574 AND `type_name` = 'default') OR	# Gothita
(`pokedex_ref` = 575 AND `type_name` = 'default') OR	# Gothorita
(`pokedex_ref` = 576 AND `type_name` = 'default');		# Gothitelle

# Rough Skin
UPDATE `type_bundle` SET `ability1` = 24 WHERE
(`pokedex_ref` = 318 AND `type_name` = 'default') OR	# Carvanha
(`pokedex_ref` = 319 AND `type_name` = 'default') OR	# Sharpedo
(`pokedex_ref` = 621 AND `type_name` = 'default');	    # Druddigon
UPDATE `type_bundle` SET `hidden_ability` = 24 WHERE
(`pokedex_ref` = 443 AND `type_name` = 'default') OR	# Gible
(`pokedex_ref` = 444 AND `type_name` = 'default') OR	# Gabite
(`pokedex_ref` = 445 AND `type_name` = 'default');		# Garchomp

# Wonder Guard
UPDATE `type_bundle` SET `ability1` = 25 WHERE
(`pokedex_ref` = 292 AND `type_name` = 'default');	    # Shedinja

# Levitate
UPDATE `type_bundle` SET `ability1` = 26 WHERE
(`pokedex_ref` = 92 AND `type_name` = 'default') OR			# Gastly
(`pokedex_ref` = 93 AND `type_name` = 'default') OR			# Haunter
(`pokedex_ref` = 109 AND `type_name` = 'default') OR		# Koffing
(`pokedex_ref` = 110 AND `type_name` = 'default') OR		# Weezing
(`pokedex_ref` = 110 AND `type_name` = 'galar_variant') OR	# Weezing (Galar)
(`pokedex_ref` = 200 AND `type_name` = 'default') OR		# Misdreavus
(`pokedex_ref` = 201 AND `type_name` = 'default') OR		# Unown
(`pokedex_ref` = 329 AND `type_name` = 'default') OR		# Vibrava
(`pokedex_ref` = 330 AND `type_name` = 'default') OR		# Flygon
(`pokedex_ref` = 337 AND `type_name` = 'default') OR		# Lunatone
(`pokedex_ref` = 338 AND `type_name` = 'default') OR		# Solrock
(`pokedex_ref` = 343 AND `type_name` = 'default') OR		# Baltoy
(`pokedex_ref` = 344 AND `type_name` = 'default') OR		# Claydol
(`pokedex_ref` = 355 AND `type_name` = 'default') OR		# Duskull
(`pokedex_ref` = 358 AND `type_name` = 'default') OR		# Chimecho
(`pokedex_ref` = 380 AND `type_name` = 'default') OR		# Latias
(`pokedex_ref` = 380 AND `type_name` = 'mega') OR			# MEGA Latias
(`pokedex_ref` = 381 AND `type_name` = 'default') OR		# Latios
(`pokedex_ref` = 381 AND `type_name` = 'mega') OR			# MEGA Latios
(`pokedex_ref` = 429 AND `type_name` = 'default') OR		# Mismagius
(`pokedex_ref` = 433 AND `type_name` = 'default') OR		# Chingling
(`pokedex_ref` = 436 AND `type_name` = 'default') OR		# Bronzor
(`pokedex_ref` = 437 AND `type_name` = 'default') OR		# Bronzong
(`pokedex_ref` = 455 AND `type_name` = 'default') OR		# Carnivine
(`pokedex_ref` = 479 AND `type_name` = 'default') OR		# Rotom
(`pokedex_ref` = 479 AND `type_name` = 'heat_rotom') OR		# Heat Rotom
(`pokedex_ref` = 479 AND `type_name` = 'wash_rotom') OR		# Wash Rotom
(`pokedex_ref` = 479 AND `type_name` = 'frost_rotom') OR	# Frost Rotom
(`pokedex_ref` = 479 AND `type_name` = 'fan_rotom') OR		# Fan Rotom
(`pokedex_ref` = 479 AND `type_name` = 'mow_rotom') OR		# Mow Rotom
(`pokedex_ref` = 480 AND `type_name` = 'default') OR		# Uxie
(`pokedex_ref` = 481 AND `type_name` = 'default') OR		# Mesprit
(`pokedex_ref` = 482 AND `type_name` = 'default') OR		# Azelf
(`pokedex_ref` = 487 AND `type_name` = 'origin_forme') OR	# Giratina (Origin Forme)
(`pokedex_ref` = 488 AND `type_name` = 'default') OR		# Cresselia
(`pokedex_ref` = 602 AND `type_name` = 'default') OR		# Tynamo
(`pokedex_ref` = 603 AND `type_name` = 'default') OR		# Eelektrik
(`pokedex_ref` = 604 AND `type_name` = 'default') OR		# Eelektross
(`pokedex_ref` = 615 AND `type_name` = 'default') OR		# Cryogonal
(`pokedex_ref` = 635 AND `type_name` = 'default') OR		# Hydriegon
(`pokedex_ref` = 738 AND `type_name` = 'default');	    	# Vikavolt

# Effect Spore
UPDATE `type_bundle` SET `ability1` = 27 WHERE
(`pokedex_ref` = 46 AND `type_name` = 'default') OR		# Paras
(`pokedex_ref` = 47 AND `type_name` = 'default') OR		# Parasect
(`pokedex_ref` = 285 AND `type_name` = 'default') OR	# Shroomish
(`pokedex_ref` = 286 AND `type_name` = 'default') OR	# Breloom
(`pokedex_ref` = 590 AND `type_name` = 'default') OR	# Foongus
(`pokedex_ref` = 591 AND `type_name` = 'default');		# Amoonguss
UPDATE `type_bundle` SET `ability2` = 27 WHERE
(`pokedex_ref` = 755 AND `type_name` = 'default') OR	# Morelull
(`pokedex_ref` = 756 AND `type_name` = 'default');		# Shiinotic
UPDATE `type_bundle` SET `hidden_ability` = 27 WHERE
(`pokedex_ref` = 45 AND `type_name` = 'default') OR		# Vileplume
(`pokedex_ref` = 829 AND `type_name` = 'default') OR	# Gossifleur
(`pokedex_ref` = 830 AND `type_name` = 'default');		# Eldegoss

# Synchronize
UPDATE `type_bundle` SET `ability1` = 28 WHERE
(`pokedex_ref` = 63 AND `type_name` = 'default') OR		# Abra
(`pokedex_ref` = 64 AND `type_name` = 'default') OR		# Kadabra
(`pokedex_ref` = 65 AND `type_name` = 'default') OR		# Alakazam
(`pokedex_ref` = 151 AND `type_name` = 'default') OR	# Mew
(`pokedex_ref` = 177 AND `type_name` = 'default') OR	# Natu
(`pokedex_ref` = 178 AND `type_name` = 'default') OR	# Xatu
(`pokedex_ref` = 196 AND `type_name` = 'default') OR	# Espeon
(`pokedex_ref` = 197 AND `type_name` = 'default') OR	# Umbreon
(`pokedex_ref` = 280 AND `type_name` = 'default') OR	# Raltz
(`pokedex_ref` = 281 AND `type_name` = 'default') OR	# Kirlia
(`pokedex_ref` = 282 AND `type_name` = 'default');		# Gardevoir
UPDATE `type_bundle` SET `ability2` = 28 WHERE
(`pokedex_ref` = 517 AND `type_name` = 'default') OR	# Munna
(`pokedex_ref` = 518 AND `type_name` = 'default') OR	# Musharna
(`pokedex_ref` = 605 AND `type_name` = 'default') OR	# Elgyem
(`pokedex_ref` = 606 AND `type_name` = 'default') OR	# Beeheeyem
(`pokedex_ref` = 876 AND `type_name` = 'default_m') OR	# Indeedee (M)
(`pokedex_ref` = 876 AND `type_name` = 'default_f');	# Indeedee (F)

# Clear Body
UPDATE `type_bundle` SET `ability1` = 29 WHERE
(`pokedex_ref` = 72 AND `type_name` = 'default') OR		# Tentacool
(`pokedex_ref` = 73 AND `type_name` = 'default') OR		# Tentacruel
(`pokedex_ref` = 374 AND `type_name` = 'default') OR	# Beldum
(`pokedex_ref` = 375 AND `type_name` = 'default') OR	# Metang
(`pokedex_ref` = 376 AND `type_name` = 'default') OR	# Metagross
(`pokedex_ref` = 377 AND `type_name` = 'default') OR	# Regirock
(`pokedex_ref` = 378 AND `type_name` = 'default') OR	# Regice
(`pokedex_ref` = 379 AND `type_name` = 'default') OR	# Registeel
(`pokedex_ref` = 703 AND `type_name` = 'default') OR	# Carbink
(`pokedex_ref` = 719 AND `type_name` = 'default') OR	# Diancie
(`pokedex_ref` = 885 AND `type_name` = 'default') OR	# Dreepy
(`pokedex_ref` = 886 AND `type_name` = 'default') OR	# Drakloak
(`pokedex_ref` = 887 AND `type_name` = 'default');		# Dragapult
UPDATE `type_bundle` SET `hidden_ability` = 29 WHERE
(`pokedex_ref` = 599 AND `type_name` = 'default') OR	# Klink
(`pokedex_ref` = 600 AND `type_name` = 'default') OR	# Klang
(`pokedex_ref` = 601 AND `type_name` = 'default');		# Klinklang

# Natural Cure
UPDATE `type_bundle` SET `ability1` = 30 WHERE
(`pokedex_ref` = 113 AND `type_name` = 'default') OR	# Chansey
(`pokedex_ref` = 242 AND `type_name` = 'default') OR	# Blissey
(`pokedex_ref` = 251 AND `type_name` = 'default') OR	# Celebi
(`pokedex_ref` = 315 AND `type_name` = 'default') OR	# Roselia
(`pokedex_ref` = 333 AND `type_name` = 'default') OR	# Swablu
(`pokedex_ref` = 334 AND `type_name` = 'default') OR	# Altaria
(`pokedex_ref` = 406 AND `type_name` = 'default') OR	# Budew
(`pokedex_ref` = 407 AND `type_name` = 'default') OR	# Roserade
(`pokedex_ref` = 440 AND `type_name` = 'default') OR	# Happiny
(`pokedex_ref` = 492 AND `type_name` = 'land_forme') OR	# Shaymin (Land Forme)
(`pokedex_ref` = 708 AND `type_name` = 'default') OR	# Phantump
(`pokedex_ref` = 709 AND `type_name` = 'default');		# Trevenant
UPDATE `type_bundle` SET `ability2` = 30 WHERE
(`pokedex_ref` = 120 AND `type_name` = 'default') OR	# Staryu
(`pokedex_ref` = 121 AND `type_name` = 'default') OR	# Starmie
(`pokedex_ref` = 222 AND `type_name` = 'default');		# Corsola
UPDATE `type_bundle` SET `hidden_ability` = 30 WHERE
(`pokedex_ref` = 764 AND `type_name` = 'default');		# Comfey

# Lightning Rod
UPDATE `type_bundle` SET `ability1` = 31 WHERE
(`pokedex_ref` = 25 AND `type_name` = 'cosplay_pikachu') OR		# Pikachu (Cosplay Pikachu)
(`pokedex_ref` = 111 AND `type_name` = 'default') OR			# Rhyhorn
(`pokedex_ref` = 112 AND `type_name` = 'default') OR			# Rhydon
(`pokedex_ref` = 464 AND `type_name` = 'default') OR			# Rhyperior
(`pokedex_ref` = 522 AND `type_name` = 'default') OR			# Blitzle
(`pokedex_ref` = 523 AND `type_name` = 'default') OR			# Zebstrika
(`pokedex_ref` = 871 AND `type_name` = 'default');				# Pincurchin
UPDATE `type_bundle` SET `ability2` = 31 WHERE
(`pokedex_ref` = 104 AND `type_name` = 'default') OR		# Cubone
(`pokedex_ref` = 105 AND `type_name` = 'default') OR		# Marowak
(`pokedex_ref` = 105 AND `type_name` = 'alola_variant') OR	# Marowak (Alola)
(`pokedex_ref` = 309 AND `type_name` = 'default') OR		# Electrike
(`pokedex_ref` = 310 AND `type_name` = 'default') OR		# Manectric
(`pokedex_ref` = 777 AND `type_name` = 'default');			# Togedemaru
UPDATE `type_bundle` SET `hidden_ability` = 31 WHERE
(`pokedex_ref` = 25 AND `type_name` = 'default') OR		# Pikachu
(`pokedex_ref` = 26 AND `type_name` = 'default') OR		# Raichu
(`pokedex_ref` = 118 AND `type_name` = 'default') OR	# Goldeen
(`pokedex_ref` = 119 AND `type_name` = 'default') OR	# Seaking
(`pokedex_ref` = 172 AND `type_name` = 'default') OR	# Pichu
(`pokedex_ref` = 254 AND `type_name` = 'mega') OR		# MEGA Sceptile
(`pokedex_ref` = 311 AND `type_name` = 'default');		# Plusle

# Serene Grace
UPDATE `type_bundle` SET `ability1` = 32 WHERE
(`pokedex_ref` = 206 AND `type_name` = 'default') OR		# Dunsparce
(`pokedex_ref` = 385 AND `type_name` = 'default') OR		# Jirachi
(`pokedex_ref` = 492 AND `type_name` = 'sky_forme') OR		# Shaymin (Sky Forme)
(`pokedex_ref` = 648 AND `type_name` = 'aria_forme') OR		# Meloetta (Aria Forme)
(`pokedex_ref` = 648 AND `type_name` = 'step_forme');		# Meloetta (Step Forme)
UPDATE `type_bundle` SET `ability2` = 32 WHERE
(`pokedex_ref` = 113 AND `type_name` = 'default') OR	# Chansey
(`pokedex_ref` = 175 AND `type_name` = 'default') OR	# Togepi
(`pokedex_ref` = 176 AND `type_name` = 'default') OR	# Togetic
(`pokedex_ref` = 242 AND `type_name` = 'default') OR	# Blissey
(`pokedex_ref` = 440 AND `type_name` = 'default') OR	# Happiny
(`pokedex_ref` = 468 AND `type_name` = 'default');		# Togekiss
UPDATE `type_bundle` SET `hidden_ability` = 32 WHERE
(`pokedex_ref` = 585 AND `type_name` = 'spring_form') OR	# Deerling (Spring Form)
(`pokedex_ref` = 585 AND `type_name` = 'summer_form') OR	# Deerling (Summer Form)
(`pokedex_ref` = 585 AND `type_name` = 'autumn_form') OR	# Deerling (Autumn Form)
(`pokedex_ref` = 585 AND `type_name` = 'winter_form') OR	# Deerling (Winter Form)
(`pokedex_ref` = 586 AND `type_name` = 'spring_form') OR	# Sawsbuck (Spring Form)
(`pokedex_ref` = 586 AND `type_name` = 'summer_form') OR	# Sawsbuck (Summer Form)
(`pokedex_ref` = 586 AND `type_name` = 'autumn_form') OR	# Sawsbuck (Autumn Form)
(`pokedex_ref` = 586 AND `type_name` = 'winter_form');		# Sawsbuck (Winter Form)

# Swift Swim
UPDATE `type_bundle` SET `ability1` = 33 WHERE
(`pokedex_ref` = 116 AND `type_name` = 'default') OR			# Horsea
(`pokedex_ref` = 118 AND `type_name` = 'default') OR			# Goldeen
(`pokedex_ref` = 119 AND `type_name` = 'default') OR			# Seaking
(`pokedex_ref` = 129 AND `type_name` = 'default') OR			# Swift Swim
(`pokedex_ref` = 138 AND `type_name` = 'default') OR			# Omanyte
(`pokedex_ref` = 139 AND `type_name` = 'default') OR			# Omastar
(`pokedex_ref` = 140 AND `type_name` = 'default') OR			# Kabuto
(`pokedex_ref` = 141 AND `type_name` = 'default') OR			# Kabutops
(`pokedex_ref` = 226 AND `type_name` = 'default') OR			# Mantine
(`pokedex_ref` = 230 AND `type_name` = 'default') OR			# Kingdra
(`pokedex_ref` = 260 AND `type_name` = 'mega') OR				# MEGA Swampert
(`pokedex_ref` = 270 AND `type_name` = 'default') OR			# Lotad
(`pokedex_ref` = 271 AND `type_name` = 'default') OR			# Lombre
(`pokedex_ref` = 272 AND `type_name` = 'default') OR			# Ludicolo
(`pokedex_ref` = 283 AND `type_name` = 'default') OR			# Surskit
(`pokedex_ref` = 349 AND `type_name` = 'default') OR			# Feebas
(`pokedex_ref` = 367 AND `type_name` = 'default') OR			# Huntail
(`pokedex_ref` = 368 AND `type_name` = 'default') OR			# Gorebyss
(`pokedex_ref` = 369 AND `type_name` = 'default') OR			# Relicanth
(`pokedex_ref` = 370 AND `type_name` = 'default') OR			# Luvdisc
(`pokedex_ref` = 418 AND `type_name` = 'default') OR			# Buizel
(`pokedex_ref` = 419 AND `type_name` = 'default') OR			# Floatzel
(`pokedex_ref` = 456 AND `type_name` = 'default') OR			# Finneon
(`pokedex_ref` = 457 AND `type_name` = 'default') OR			# Lumineon
(`pokedex_ref` = 458 AND `type_name` = 'default') OR			# Mantyke
(`pokedex_ref` = 535 AND `type_name` = 'default') OR			# Tympole
(`pokedex_ref` = 536 AND `type_name` = 'default') OR			# Palpitoad
(`pokedex_ref` = 537 AND `type_name` = 'default') OR			# Seismitoad
(`pokedex_ref` = 846 AND `type_name` = 'default') OR			# Arrokuda
(`pokedex_ref` = 847 AND `type_name` = 'default');				# Barraskewda
UPDATE `type_bundle` SET `ability2` = 33 WHERE
(`pokedex_ref` = 211 AND `type_name` = 'default') OR			# Qwilfish
(`pokedex_ref` = 211 AND `type_name` = 'hisui_variant') OR		# Qwilfish (Hisui)
(`pokedex_ref` = 904 AND `type_name` = 'default');				# Overqwil
UPDATE `type_bundle` SET `hidden_ability` = 33 WHERE
(`pokedex_ref` = 54 AND `type_name` = 'default') OR		# Psyduck
(`pokedex_ref` = 55 AND `type_name` = 'default') OR		# Golduck
(`pokedex_ref` = 60 AND `type_name` = 'default') OR		# Poliwag
(`pokedex_ref` = 61 AND `type_name` = 'default') OR		# Poliwhirl
(`pokedex_ref` = 62 AND `type_name` = 'default') OR		# Poliwrath
(`pokedex_ref` = 347 AND `type_name` = 'default') OR	# Anorith
(`pokedex_ref` = 348 AND `type_name` = 'default') OR	# Armaldo
(`pokedex_ref` = 564 AND `type_name` = 'default') OR	# Tirtouga
(`pokedex_ref` = 565 AND `type_name` = 'default') OR	# Carracosta
(`pokedex_ref` = 614 AND `type_name` = 'default') OR	# Beartic
(`pokedex_ref` = 833 AND `type_name` = 'default') OR	# Chewtle
(`pokedex_ref` = 834 AND `type_name` = 'default');		# Drednaw

# Chlorophyll
UPDATE `type_bundle` SET `ability1` = 34 WHERE
(`pokedex_ref` = 43 AND `type_name` = 'default') OR			# Oddish
(`pokedex_ref` = 44 AND `type_name` = 'default') OR			# Gloom
(`pokedex_ref` = 45 AND `type_name` = 'default') OR			# Vileplume
(`pokedex_ref` = 69 AND `type_name` = 'default') OR			# Bellsprout
(`pokedex_ref` = 70 AND `type_name` = 'default') OR			# Weepinbell
(`pokedex_ref` = 71 AND `type_name` = 'default') OR			# Victreebel
(`pokedex_ref` = 102 AND `type_name` = 'default') OR		# Exeggcute
(`pokedex_ref` = 103 AND `type_name` = 'default') OR		# Exeggutor
(`pokedex_ref` = 114 AND `type_name` = 'default') OR		# Tangela
(`pokedex_ref` = 182 AND `type_name` = 'default') OR		# Bellossom
(`pokedex_ref` = 187 AND `type_name` = 'default') OR		# Hoppip
(`pokedex_ref` = 188 AND `type_name` = 'default') OR		# Skiploom
(`pokedex_ref` = 189 AND `type_name` = 'default') OR		# Jumpluff
(`pokedex_ref` = 191 AND `type_name` = 'default') OR		# Sunkern
(`pokedex_ref` = 192 AND `type_name` = 'default') OR		# Sunflora
(`pokedex_ref` = 273 AND `type_name` = 'default') OR		# Seedot
(`pokedex_ref` = 274 AND `type_name` = 'default') OR		# Nuzleaf
(`pokedex_ref` = 275 AND `type_name` = 'default') OR		# Shiftry
(`pokedex_ref` = 357 AND `type_name` = 'default') OR		# Tropius
(`pokedex_ref` = 420 AND `type_name` = 'default') OR		# Cherubi
(`pokedex_ref` = 465 AND `type_name` = 'default') OR		# Tangrowth
(`pokedex_ref` = 548 AND `type_name` = 'default') OR		# Petilil
(`pokedex_ref` = 549 AND `type_name` = 'default') OR		# Lilligant
(`pokedex_ref` = 549 AND `type_name` = 'hisui_variant') OR	# Lilligant (Hisui)
(`pokedex_ref` = 585 AND `type_name` = 'spring_form') OR	# Deerling (Spring Form)
(`pokedex_ref` = 585 AND `type_name` = 'summer_form') OR	# Deerling (Summer Form)
(`pokedex_ref` = 585 AND `type_name` = 'autumn_form') OR	# Deerling (Autumn Form)
(`pokedex_ref` = 585 AND `type_name` = 'winter_form') OR	# Deerling (Winter Form)
(`pokedex_ref` = 586 AND `type_name` = 'spring_form') OR	# Sawsbuck (Spring Form)
(`pokedex_ref` = 586 AND `type_name` = 'summer_form') OR	# Sawsbuck (Summer Form)
(`pokedex_ref` = 586 AND `type_name` = 'autumn_form') OR	# Sawsbuck (Autumn Form)
(`pokedex_ref` = 586 AND `type_name` = 'winter_form');		# Sawsbuck (Winter Form)
UPDATE `type_bundle` SET `ability2` = 34 WHERE
(`pokedex_ref` = 540 AND `type_name` = 'default') OR	# Sewaddle
(`pokedex_ref` = 541 AND `type_name` = 'default') OR	# Swadloon
(`pokedex_ref` = 542 AND `type_name` = 'default') OR	# Leavanny
(`pokedex_ref` = 556 AND `type_name` = 'default');		# Maractus
UPDATE `type_bundle` SET `hidden_ability` = 34 WHERE
(`pokedex_ref` = 1 AND `type_name` = 'default') OR		# Bulbasaur
(`pokedex_ref` = 2 AND `type_name` = 'default') OR		# Ivysaur
(`pokedex_ref` = 3 AND `type_name` = 'default') OR		# Venusaur
(`pokedex_ref` = 470 AND `type_name` = 'default') OR	# Leafeon
(`pokedex_ref` = 546 AND `type_name` = 'default') OR	# Cottonee
(`pokedex_ref` = 547 AND `type_name` = 'default');		# Whimsicott

# Illuminate
UPDATE `type_bundle` SET `ability1` = 35 WHERE
(`pokedex_ref` = 120 AND `type_name` = 'default') OR	# Staryu
(`pokedex_ref` = 121 AND `type_name` = 'default') OR	# Starmie
(`pokedex_ref` = 313 AND `type_name` = 'default') OR	# Volbeat
(`pokedex_ref` = 505 AND `type_name` = 'default') OR	# Watchog
(`pokedex_ref` = 755 AND `type_name` = 'default') OR	# Morelull
(`pokedex_ref` = 756 AND `type_name` = 'default');		# Shiinotic
UPDATE `type_bundle` SET `ability2` = 35 WHERE
(`pokedex_ref` = 170 AND `type_name` = 'default') OR	# Chinchou
(`pokedex_ref` = 171 AND `type_name` = 'default');		# Lanturn

# Trace
UPDATE `type_bundle` SET `ability1` = 36 WHERE
(`pokedex_ref` = 65 AND `type_name` = 'mega') OR		# MEGA Alakazam
(`pokedex_ref` = 137 AND `type_name` = 'default') OR	# Porygon
(`pokedex_ref` = 233 AND `type_name` = 'default');		# Porygon2
UPDATE `type_bundle` SET `ability2` = 36 WHERE
(`pokedex_ref` = 280 AND `type_name` = 'default') OR	# Raltz
(`pokedex_ref` = 281 AND `type_name` = 'default') OR	# Kirlia
(`pokedex_ref` = 282 AND `type_name` = 'default');		# Gardevoir

# Huge Power
UPDATE `type_bundle` SET `ability1` = 37 WHERE
(`pokedex_ref` = 303 AND `type_name` = 'mega');			# MEGA Mawile
UPDATE `type_bundle` SET `ability2` = 37 WHERE
(`pokedex_ref` = 183 AND `type_name` = 'default') OR	# Marill
(`pokedex_ref` = 184 AND `type_name` = 'default') OR	# Azumarill
(`pokedex_ref` = 298 AND `type_name` = 'default');		# Azurill
UPDATE `type_bundle` SET `hidden_ability` = 37 WHERE
(`pokedex_ref` = 659 AND `type_name` = 'default') OR	# Bunnelby
(`pokedex_ref` = 660 AND `type_name` = 'default');		# Diggersby

# Poison Point
UPDATE `type_bundle` SET `ability1` = 38 WHERE
(`pokedex_ref` = 29 AND `type_name` = 'default') OR			# Nidoran ♀
(`pokedex_ref` = 30 AND `type_name` = 'default') OR			# Nidorina
(`pokedex_ref` = 31 AND `type_name` = 'default') OR			# Nidoqueen
(`pokedex_ref` = 32 AND `type_name` = 'default') OR			# Nidoran ♂
(`pokedex_ref` = 33 AND `type_name` = 'default') OR			# Nidorino
(`pokedex_ref` = 34 AND `type_name` = 'default') OR			# Nidoking
(`pokedex_ref` = 117 AND `type_name` = 'default') OR		# Seadra
(`pokedex_ref` = 211 AND `type_name` = 'default') OR		# Qwilfish
(`pokedex_ref` = 211 AND `type_name` = 'hisui_variant') OR	# Qwilfish (Hisui)
(`pokedex_ref` = 543 AND `type_name` = 'default') OR		# Venipede
(`pokedex_ref` = 544 AND `type_name` = 'default') OR		# Whirlipede
(`pokedex_ref` = 545 AND `type_name` = 'default') OR		# Scolipede
(`pokedex_ref` = 690 AND `type_name` = 'default') OR		# Skrelp
(`pokedex_ref` = 691 AND `type_name` = 'default') OR		# Dragalge
(`pokedex_ref` = 904 AND `type_name` = 'default');			# Overqwil
UPDATE `type_bundle` SET `ability2` = 38 WHERE
(`pokedex_ref` = 315 AND `type_name` = 'default') OR		# Roselia
(`pokedex_ref` = 406 AND `type_name` = 'default') OR		# Budew
(`pokedex_ref` = 407 AND `type_name` = 'default');			# Roserade

# Inner Focus
UPDATE `type_bundle` SET `ability1` = 39 WHERE
(`pokedex_ref` = 41 AND `type_name` = 'default') OR			# Zubat
(`pokedex_ref` = 42 AND `type_name` = 'default') OR			# Golbat
(`pokedex_ref` = 149 AND `type_name` = 'default') OR		# Dragonite
(`pokedex_ref` = 169 AND `type_name` = 'default') OR		# Crobat
(`pokedex_ref` = 203 AND `type_name` = 'default') OR		# Girafarig
(`pokedex_ref` = 215 AND `type_name` = 'default') OR		# Sneasel
(`pokedex_ref` = 215 AND `type_name` = 'hisui_variant') OR	# Sneasel (Hisui)
(`pokedex_ref` = 361 AND `type_name` = 'default') OR		# Snorunt
(`pokedex_ref` = 362 AND `type_name` = 'default') OR		# Glalie
(`pokedex_ref` = 475 AND `type_name` = 'mega') OR			# MEGA Gallade
(`pokedex_ref` = 619 AND `type_name` = 'default') OR		# Mienfoo
(`pokedex_ref` = 620 AND `type_name` = 'default') OR		# Mienshao
(`pokedex_ref` = 765 AND `type_name` = 'default') OR		# Oranguru
(`pokedex_ref` = 876 AND `type_name` = 'default_m') OR		# Indeedee (M)
(`pokedex_ref` = 891 AND `type_name` = 'default');			# Kubfu
UPDATE `type_bundle` SET `ability2` = 39 WHERE
(`pokedex_ref` = 63 AND `type_name` = 'default') OR		# Abra
(`pokedex_ref` = 64 AND `type_name` = 'default') OR		# Kadabra
(`pokedex_ref` = 65 AND `type_name` = 'default') OR		# Alakazam
(`pokedex_ref` = 83 AND `type_name` = 'default') OR		# Farfetch'd
(`pokedex_ref` = 447 AND `type_name` = 'default') OR	# Riolu
(`pokedex_ref` = 448 AND `type_name` = 'default') OR	# Lucario
(`pokedex_ref` = 538 AND `type_name` = 'default') OR	# Throh
(`pokedex_ref` = 539 AND `type_name` = 'default') OR	# Sawk
(`pokedex_ref` = 624 AND `type_name` = 'default') OR	# Pawniard
(`pokedex_ref` = 625 AND `type_name` = 'default');		# Bisharp
UPDATE `type_bundle` SET `hidden_ability` = 39 WHERE
(`pokedex_ref` = 96 AND `type_name` = 'default') OR			# Drowzee
(`pokedex_ref` = 97 AND `type_name` = 'default') OR			# Hypno
(`pokedex_ref` = 107 AND `type_name` = 'default') OR		# Hitmonchan
(`pokedex_ref` = 115 AND `type_name` = 'default') OR		# Kangaskhan
(`pokedex_ref` = 197 AND `type_name` = 'default') OR		# Umbreon
(`pokedex_ref` = 243 AND `type_name` = 'default') OR		# Raikou
(`pokedex_ref` = 244 AND `type_name` = 'default') OR		# Entei
(`pokedex_ref` = 245 AND `type_name` = 'default') OR		# Suicune
(`pokedex_ref` = 554 AND `type_name` = 'default') OR		# Darumaka
(`pokedex_ref` = 554 AND `type_name` = 'galar_variant') OR	# Darumaka (Galar)
(`pokedex_ref` = 749 AND `type_name` = 'default') OR		# Mudbray
(`pokedex_ref` = 750 AND `type_name` = 'default');			# Mudsdale

# Magma Armor
UPDATE `type_bundle` SET `ability1` = 40 WHERE
(`pokedex_ref` = 218 AND `type_name` = 'default') OR	# Magma Armor
(`pokedex_ref` = 219 AND `type_name` = 'default') OR	# Magcargo
(`pokedex_ref` = 323 AND `type_name` = 'default');		# Camerupt

# Water Veil
UPDATE `type_bundle` SET `ability1` = 41 WHERE
(`pokedex_ref` = 320 AND `type_name` = 'default') OR	# Wailmer
(`pokedex_ref` = 321 AND `type_name` = 'default');		# Wailord
UPDATE `type_bundle` SET `ability2` = 41 WHERE
(`pokedex_ref` = 118 AND `type_name` = 'default') OR	# Goldeen
(`pokedex_ref` = 119 AND `type_name` = 'default');		# Seaking
UPDATE `type_bundle` SET `hidden_ability` = 41 WHERE
(`pokedex_ref` = 226 AND `type_name` = 'default') OR	# Mantine
(`pokedex_ref` = 367 AND `type_name` = 'default') OR	# Huntail
(`pokedex_ref` = 418 AND `type_name` = 'default') OR	# Buizel
(`pokedex_ref` = 419 AND `type_name` = 'default') OR	# Floatzel
(`pokedex_ref` = 456 AND `type_name` = 'default') OR	# Finneon
(`pokedex_ref` = 457 AND `type_name` = 'default') OR	# Lumineon
(`pokedex_ref` = 458 AND `type_name` = 'default');		# Mantyke

# Magnet Pull
UPDATE `type_bundle` SET `ability1` = 42 WHERE
(`pokedex_ref` = 74 AND `type_name` = 'alola_variant') OR	# Geodude (Alola)
(`pokedex_ref` = 75 AND `type_name` = 'alola_variant') OR	# Graveler (Alola)
(`pokedex_ref` = 76 AND `type_name` = 'alola_variant') OR	# Golem (Alola)
(`pokedex_ref` = 81 AND `type_name` = 'default') OR			# Magnemite
(`pokedex_ref` = 82 AND `type_name` = 'default') OR			# Magneton
(`pokedex_ref` = 462 AND `type_name` = 'default') OR		# Magnezone
(`pokedex_ref` = 808 AND `type_name` = 'default');			# Meltan
UPDATE `type_bundle` SET `ability2` = 42 WHERE
(`pokedex_ref` = 299 AND `type_name` = 'default') OR	# Nosepass
(`pokedex_ref` = 476 AND `type_name` = 'default');		# Probopass

# Soundproof
UPDATE `type_bundle` SET `ability1` = 43 WHERE
(`pokedex_ref` = 100 AND `type_name` = 'default') OR		# Voltorb
(`pokedex_ref` = 100 AND `type_name` = 'hisui_variant') OR	# Voltorb (Hisui)
(`pokedex_ref` = 101 AND `type_name` = 'default') OR		# Electrode
(`pokedex_ref` = 101 AND `type_name` = 'hisui_variant') OR	# Voltorb (Hisui)
(`pokedex_ref` = 122 AND `type_name` = 'default') OR		# Mr Mime
(`pokedex_ref` = 293 AND `type_name` = 'default') OR		# Whismur
(`pokedex_ref` = 294 AND `type_name` = 'default') OR		# Loudred
(`pokedex_ref` = 295 AND `type_name` = 'default') OR		# Exploud
(`pokedex_ref` = 439 AND `type_name` = 'default');			# Mime Jr
UPDATE `type_bundle` SET `ability2` = 43 WHERE
(`pokedex_ref` = 782 AND `type_name` = 'default') OR		# Jangmo-o
(`pokedex_ref` = 783 AND `type_name` = 'default') OR		# Hakomo-o
(`pokedex_ref` = 784 AND `type_name` = 'default');			# Kommo-o
UPDATE `type_bundle` SET `hidden_ability` = 43 WHERE
(`pokedex_ref` = 410 AND `type_name` = 'default') OR		# Shieldon
(`pokedex_ref` = 411 AND `type_name` = 'default') OR		# Bastiodon
(`pokedex_ref` = 459 AND `type_name` = 'default') OR		# Snover
(`pokedex_ref` = 460 AND `type_name` = 'default') OR		# Abomasnow
(`pokedex_ref` = 626 AND `type_name` = 'default');			# Bouffalant

# Rain Dish
UPDATE `type_bundle` SET `ability2` = 44 WHERE
(`pokedex_ref` = 270 AND `type_name` = 'default') OR	# Lotad
(`pokedex_ref` = 271 AND `type_name` = 'default') OR	# Lombre
(`pokedex_ref` = 272 AND `type_name` = 'default');		# Ludicolo
UPDATE `type_bundle` SET `hidden_ability` = 44 WHERE
(`pokedex_ref` = 4 AND `type_name` = 'default') OR		# Squirtle
(`pokedex_ref` = 5 AND `type_name` = 'default') OR		# Wartotle
(`pokedex_ref` = 6 AND `type_name` = 'default') OR		# Blastoise
(`pokedex_ref` = 72 AND `type_name` = 'default') OR		# Tentacool
(`pokedex_ref` = 73 AND `type_name` = 'default') OR		# Tentacruel
(`pokedex_ref` = 278 AND `type_name` = 'default') OR	# Wingull
(`pokedex_ref` = 279 AND `type_name` = 'default') OR	# Pelipper
(`pokedex_ref` = 283 AND `type_name` = 'default') OR	# Surskit
(`pokedex_ref` = 755 AND `type_name` = 'default') OR	# Morelull
(`pokedex_ref` = 756 AND `type_name` = 'default');		# Shiinotic

# Sand Stream
UPDATE `type_bundle` SET `ability1` = 45 WHERE
(`pokedex_ref` = 248 AND `type_name` = 'default') OR	# Tyranitar
(`pokedex_ref` = 248 AND `type_name` = 'mega') OR		# MEGA Tyranitar
(`pokedex_ref` = 449 AND `type_name` = 'default') OR	# Hippopotas
(`pokedex_ref` = 450 AND `type_name` = 'default');		# Hippowdon
UPDATE `type_bundle` SET `ability2` = 45 WHERE
(`pokedex_ref` = 526 AND `type_name` = 'default');		# Gigalith

# Pressure
UPDATE `type_bundle` SET `ability1` = 46 WHERE
(`pokedex_ref` = 144 AND `type_name` = 'default') OR		# Articuno
(`pokedex_ref` = 145 AND `type_name` = 'default') OR		# Zapdos
(`pokedex_ref` = 146 AND `type_name` = 'default') OR		# Moltres
(`pokedex_ref` = 150 AND `type_name` = 'default') OR		# Mewtwo
(`pokedex_ref` = 243 AND `type_name` = 'default') OR		# Raikou
(`pokedex_ref` = 244 AND `type_name` = 'default') OR		# Entei
(`pokedex_ref` = 245 AND `type_name` = 'default') OR		# Suicune
(`pokedex_ref` = 249 AND `type_name` = 'default') OR		# Lugia
(`pokedex_ref` = 250 AND `type_name` = 'default') OR		# Ho-Oh
(`pokedex_ref` = 356 AND `type_name` = 'default') OR		# Dusclops
(`pokedex_ref` = 359 AND `type_name` = 'default') OR		# Absol
(`pokedex_ref` = 386 AND `type_name` = 'normal_forme') OR	# Deoxys (Normal Forme)
(`pokedex_ref` = 386 AND `type_name` = 'attack_forme') OR	# Deoxys (Attack Forme)
(`pokedex_ref` = 386 AND `type_name` = 'defense_forme') OR	# Deoxys (Defense Forme)
(`pokedex_ref` = 386 AND `type_name` = 'speed_forme') OR	# Deoxys (Speed Forme)
(`pokedex_ref` = 416 AND `type_name` = 'default') OR		# Vespiquen
(`pokedex_ref` = 442 AND `type_name` = 'default') OR		# Spiritomb
(`pokedex_ref` = 461 AND `type_name` = 'default') OR		# Weavile
(`pokedex_ref` = 477 AND `type_name` = 'default') OR		# Dusknoir
(`pokedex_ref` = 483 AND `type_name` = 'default') OR		# Dialga
(`pokedex_ref` = 483 AND `type_name` = 'lord_forme') OR		# Dialga (Lord Forme)
(`pokedex_ref` = 484 AND `type_name` = 'default') OR		# Palkia
(`pokedex_ref` = 484 AND `type_name` = 'lord_forme') OR		# Palkia (Lord Forme)
(`pokedex_ref` = 487 AND `type_name` = 'altered_forme') OR	# Giratina (Altered Forme)
(`pokedex_ref` = 646 AND `type_name` = 'default') OR		# Kyurem
(`pokedex_ref` = 823 AND `type_name` = 'default') OR		# Corviknight
(`pokedex_ref` = 890 AND `type_name` = 'default') OR		# Eternatus
(`pokedex_ref` = 903 AND `type_name` = 'default');			# Sneasler
UPDATE `type_bundle` SET `ability2` = 46 WHERE
(`pokedex_ref` = 142 AND `type_name` = 'default');		# Aerodactyl
UPDATE `type_bundle` SET `hidden_ability` = 46 WHERE
(`pokedex_ref` = 320 AND `type_name` = 'default') OR	# Wailmer
(`pokedex_ref` = 321 AND `type_name` = 'default') OR	# Wailord
(`pokedex_ref` = 624 AND `type_name` = 'default') OR	# Pawniard
(`pokedex_ref` = 625 AND `type_name` = 'default');		# Bisharp

# Thick Fat
UPDATE `type_bundle` SET `ability1` = 47 WHERE
(`pokedex_ref` = 3 AND `type_name` = 'mega') OR			# MEGA Venusaur
(`pokedex_ref` = 86 AND `type_name` = 'default') OR		# Seel
(`pokedex_ref` = 87 AND `type_name` = 'default') OR		# Dewgong
(`pokedex_ref` = 183 AND `type_name` = 'default') OR	# Marill
(`pokedex_ref` = 184 AND `type_name` = 'default') OR	# Azumarill
(`pokedex_ref` = 241 AND `type_name` = 'default') OR	# Miltank
(`pokedex_ref` = 296 AND `type_name` = 'default') OR	# Makuhita
(`pokedex_ref` = 297 AND `type_name` = 'default') OR	# Hariyama
(`pokedex_ref` = 298 AND `type_name` = 'default') OR	# Azurill
(`pokedex_ref` = 325 AND `type_name` = 'default') OR	# Spoink
(`pokedex_ref` = 326 AND `type_name` = 'default') OR	# Grumpig
(`pokedex_ref` = 363 AND `type_name` = 'default') OR	# Spheal
(`pokedex_ref` = 364 AND `type_name` = 'default') OR	# Sealeo
(`pokedex_ref` = 365 AND `type_name` = 'default') OR	# Walrein
(`pokedex_ref` = 432 AND `type_name` = 'default');		# Purugly
UPDATE `type_bundle` SET `ability2` = 47 WHERE
(`pokedex_ref` = 143 AND `type_name` = 'default') OR	# Snorlax
(`pokedex_ref` = 446 AND `type_name` = 'default');		# Munchlax
UPDATE `type_bundle` SET `hidden_ability` = 47 WHERE
(`pokedex_ref` = 19 AND `type_name` = 'alola_variant') OR	# Rattata (Alola)
(`pokedex_ref` = 20 AND `type_name` = 'alola_variant') OR	# Raticate (Alola)
(`pokedex_ref` = 220 AND `type_name` = 'default') OR		# Swinub
(`pokedex_ref` = 221 AND `type_name` = 'default') OR		# Piloswine
(`pokedex_ref` = 473 AND `type_name` = 'default') OR		# Mamoswine
(`pokedex_ref` = 498 AND `type_name` = 'default') OR		# Tepig
(`pokedex_ref` = 499 AND `type_name` = 'default') OR		# Pignite
(`pokedex_ref` = 842 AND `type_name` = 'default');			# Appletun

# Early Bird
UPDATE `type_bundle` SET `ability1` = 48 WHERE
(`pokedex_ref` = 115 AND `type_name` = 'default') OR	# Kangaskhan
(`pokedex_ref` = 228 AND `type_name` = 'default') OR	# Houndour
(`pokedex_ref` = 229 AND `type_name` = 'default');		# Houndoom
UPDATE `type_bundle` SET `ability2` = 48 WHERE
(`pokedex_ref` = 84 AND `type_name` = 'default') OR		# Doduo
(`pokedex_ref` = 85 AND `type_name` = 'default') OR		# Dodrio
(`pokedex_ref` = 165 AND `type_name` = 'default') OR	# Ledyba
(`pokedex_ref` = 166 AND `type_name` = 'default') OR	# Ledian
(`pokedex_ref` = 177 AND `type_name` = 'default') OR	# Natu
(`pokedex_ref` = 178 AND `type_name` = 'default') OR	# Xatu
(`pokedex_ref` = 203 AND `type_name` = 'default') OR	# Girafariq
(`pokedex_ref` = 273 AND `type_name` = 'default') OR	# Seedot
(`pokedex_ref` = 274 AND `type_name` = 'default') OR	# Nuzleaf
(`pokedex_ref` = 275 AND `type_name` = 'default');		# Shiftry
UPDATE `type_bundle` SET `hidden_ability` = 48 WHERE
(`pokedex_ref` = 191 AND `type_name` = 'default') OR	# Sunkern
(`pokedex_ref` = 192 AND `type_name` = 'default');		# Sunflora

# Flame Body
UPDATE `type_bundle` SET `ability1` = 49 WHERE
(`pokedex_ref` = 126 AND `type_name` = 'default') OR	# Magmar
(`pokedex_ref` = 240 AND `type_name` = 'default') OR	# Magby
(`pokedex_ref` = 467 AND `type_name` = 'default') OR	# Magmotar
(`pokedex_ref` = 636 AND `type_name` = 'default') OR	# Larvesta
(`pokedex_ref` = 637 AND `type_name` = 'default') OR	# Volcarona
(`pokedex_ref` = 662 AND `type_name` = 'default') OR	# Fletchinder
(`pokedex_ref` = 663 AND `type_name` = 'default');		# Talonflame
UPDATE `type_bundle` SET `ability2` = 49 WHERE
(`pokedex_ref` = 218 AND `type_name` = 'default') OR	# Slugma
(`pokedex_ref` = 219 AND `type_name` = 'default') OR	# Magcargo
(`pokedex_ref` = 607 AND `type_name` = 'default') OR	# Litwick
(`pokedex_ref` = 608 AND `type_name` = 'default') OR	# Lampent
(`pokedex_ref` = 609 AND `type_name` = 'default') OR	# Chandelure
(`pokedex_ref` = 838 AND `type_name` = 'default') OR	# Carkol
(`pokedex_ref` = 839 AND `type_name` = 'default');		# Coalossal
UPDATE `type_bundle` SET `hidden_ability` = 49 WHERE
(`pokedex_ref` = 77 AND `type_name` = 'default') OR		# Ponyta
(`pokedex_ref` = 78 AND `type_name` = 'default') OR		# Rapidash
(`pokedex_ref` = 146 AND `type_name` = 'default') OR	# Moltres
(`pokedex_ref` = 485 AND `type_name` = 'default') OR	# Heatran
(`pokedex_ref` = 850 AND `type_name` = 'default') OR	# Sizzlipede
(`pokedex_ref` = 851 AND `type_name` = 'default');		# Centiskorch

# Run Away
UPDATE `type_bundle` SET `ability1` = 50 WHERE
(`pokedex_ref` = 19 AND `type_name` = 'default') OR			# Rattata
(`pokedex_ref` = 20 AND `type_name` = 'default') OR			# Raticate
(`pokedex_ref` = 77 AND `type_name` = 'default') OR			# Ponyta
(`pokedex_ref` = 77 AND `type_name` = 'galar_variant') OR	# Ponyta (Galar)
(`pokedex_ref` = 78 AND `type_name` = 'default') OR			# Rapidash
(`pokedex_ref` = 78 AND `type_name` = 'galar_variant') OR	# Rapidash (Galar)
(`pokedex_ref` = 84 AND `type_name` = 'default') OR			# Doduo
(`pokedex_ref` = 85 AND `type_name` = 'default') OR			# Dodrio
(`pokedex_ref` = 133 AND `type_name` = 'default') OR		# Eevee
(`pokedex_ref` = 161 AND `type_name` = 'default') OR		# Sentret
(`pokedex_ref` = 162 AND `type_name` = 'default') OR		# Furret
(`pokedex_ref` = 190 AND `type_name` = 'default') OR		# Aipom
(`pokedex_ref` = 261 AND `type_name` = 'default') OR		# Poochyena
(`pokedex_ref` = 417 AND `type_name` = 'default') OR		# Pachirisu
(`pokedex_ref` = 427 AND `type_name` = 'default') OR		# Buneary
(`pokedex_ref` = 504 AND `type_name` = 'default') OR		# Patrat
(`pokedex_ref` = 827 AND `type_name` = 'default') OR		# Nickit
(`pokedex_ref` = 828 AND `type_name` = 'default');			# Thievul
UPDATE `type_bundle` SET `ability2` = 50 WHERE
(`pokedex_ref` = 206 AND `type_name` = 'default') OR	# Dunsparce
(`pokedex_ref` = 209 AND `type_name` = 'default') OR	# Snubbull
(`pokedex_ref` = 831 AND `type_name` = 'default');		# Wooloo
UPDATE `type_bundle` SET `hidden_ability` = 50 WHERE
(`pokedex_ref` = 10 AND `type_name` = 'default') OR		# Caterpie
(`pokedex_ref` = 13 AND `type_name` = 'default') OR		# Weedle
(`pokedex_ref` = 43 AND `type_name` = 'default') OR		# Oddish
(`pokedex_ref` = 48 AND `type_name` = 'default') OR		# Venonat
(`pokedex_ref` = 265 AND `type_name` = 'default') OR	# Wurmple
(`pokedex_ref` = 290 AND `type_name` = 'default') OR	# Nincada
(`pokedex_ref` = 401 AND `type_name` = 'default') OR	# Kricketot
(`pokedex_ref` = 506 AND `type_name` = 'default');		# Lillipup

# Keen Eye
UPDATE `type_bundle` SET `ability1` = 51 WHERE
(`pokedex_ref` = 16 AND `type_name` = 'default') OR			# Pidgey
(`pokedex_ref` = 17 AND `type_name` = 'default') OR			# Pidgeotto
(`pokedex_ref` = 18 AND `type_name` = 'default') OR			# Pidgeot
(`pokedex_ref` = 21 AND `type_name` = 'default') OR			# Spearow
(`pokedex_ref` = 22 AND `type_name` = 'default') OR			# Fearow
(`pokedex_ref` = 83 AND `type_name` = 'default') OR			# Farfetch'd
(`pokedex_ref` = 107 AND `type_name` = 'default') OR		# Hitmonchan
(`pokedex_ref` = 227 AND `type_name` = 'default') OR		# Skarmory
(`pokedex_ref` = 278 AND `type_name` = 'default') OR		# Wingull
(`pokedex_ref` = 279 AND `type_name` = 'default') OR		# Pelipper
(`pokedex_ref` = 302 AND `type_name` = 'default') OR		# Sableye
(`pokedex_ref` = 396 AND `type_name` = 'default') OR		# Starly
(`pokedex_ref` = 441 AND `type_name` = 'default') OR		# Chatot
(`pokedex_ref` = 580 AND `type_name` = 'default') OR		# Ducklett
(`pokedex_ref` = 581 AND `type_name` = 'default') OR		# Swanna
(`pokedex_ref` = 627 AND `type_name` = 'default') OR		# Rufflet
(`pokedex_ref` = 628 AND `type_name` = 'default') OR		# Braviary
(`pokedex_ref` = 628 AND `type_name` = 'hisui_variant') OR	# Braviary (Hisui)
(`pokedex_ref` = 677 AND `type_name` = 'default') OR		# Espurr
(`pokedex_ref` = 678 AND `type_name` = 'default_f') OR		# Meowstic (F)
(`pokedex_ref` = 678 AND `type_name` = 'default_m') OR		# Meowstic (M)
(`pokedex_ref` = 731 AND `type_name` = 'default') OR		# Pikipek
(`pokedex_ref` = 732 AND `type_name` = 'default') OR		# Trumbeak
(`pokedex_ref` = 733 AND `type_name` = 'default') OR		# Toucannon
(`pokedex_ref` = 744 AND `type_name` = 'default') OR		# Rockruff
(`pokedex_ref` = 745 AND `type_name` = 'midday_form') OR	# Lycanroc (Midday Form)
(`pokedex_ref` = 745 AND `type_name` = 'midnight_form') OR	# Lycanroc (Midnight Form)
(`pokedex_ref` = 821 AND `type_name` = 'default') OR		# Rookidee
(`pokedex_ref` = 822 AND `type_name` = 'default');			# Corvisquire
UPDATE `type_bundle` SET `ability2` = 51 WHERE
(`pokedex_ref` = 161 AND `type_name` = 'default') OR		# Sentret
(`pokedex_ref` = 162 AND `type_name` = 'default') OR		# Furret
(`pokedex_ref` = 163 AND `type_name` = 'default') OR		# Hoothoot
(`pokedex_ref` = 164 AND `type_name` = 'default') OR		# Noctowl
(`pokedex_ref` = 215 AND `type_name` = 'default') OR		# Sneasel
(`pokedex_ref` = 215 AND `type_name` = 'hisui_variant') OR	# Sneasel (Hisui)
(`pokedex_ref` = 504 AND `type_name` = 'default') OR		# Patrat
(`pokedex_ref` = 505 AND `type_name` = 'default');			# Watchog
UPDATE `type_bundle` SET `hidden_ability` = 51 WHERE
(`pokedex_ref` = 431 AND `type_name` = 'default') OR	# Glameow
(`pokedex_ref` = 434 AND `type_name` = 'default') OR	# Stunky
(`pokedex_ref` = 435 AND `type_name` = 'default') OR	# Skunktank
(`pokedex_ref` = 451 AND `type_name` = 'default') OR	# Skorupi
(`pokedex_ref` = 452 AND `type_name` = 'default');		# Drapion

# Hyper Cutter
UPDATE `type_bundle` SET `ability1` = 52 WHERE
(`pokedex_ref` = 98 AND `type_name` = 'default') OR		# Krabby
(`pokedex_ref` = 99 AND `type_name` = 'default') OR		# Kingler
(`pokedex_ref` = 127 AND `type_name` = 'default') OR	# Pinsir
(`pokedex_ref` = 207 AND `type_name` = 'default') OR	# Gligar
(`pokedex_ref` = 303 AND `type_name` = 'default') OR	# Mawile
(`pokedex_ref` = 328 AND `type_name` = 'default') OR	# Trapinch
(`pokedex_ref` = 341 AND `type_name` = 'default') OR	# Corphish
(`pokedex_ref` = 342 AND `type_name` = 'default') OR	# Crawdunt
(`pokedex_ref` = 472 AND `type_name` = 'default') OR	# Gliscor
(`pokedex_ref` = 739 AND `type_name` = 'default') OR	# Crabrawler
(`pokedex_ref` = 740 AND `type_name` = 'default');		# Crabominable

# Pickup
UPDATE `type_bundle` SET `ability1` = 53 WHERE
(`pokedex_ref` = 52 AND `type_name` = 'default') OR			# Meowth
(`pokedex_ref` = 52 AND `type_name` = 'alola_variant') OR	# Meowth (Alola)
(`pokedex_ref` = 52 AND `type_name` = 'galar_variant') OR	# Meowth (Galar)
(`pokedex_ref` = 216 AND `type_name` = 'default') OR		# Teddiursa
(`pokedex_ref` = 231 AND `type_name` = 'default') OR		# Phanpy
(`pokedex_ref` = 263 AND `type_name` = 'default') OR		# Zigzagoon
(`pokedex_ref` = 263 AND `type_name` = 'galar_variant') OR	# Zigzagoon (Galar)
(`pokedex_ref` = 264 AND `type_name` = 'default') OR		# Linoone
(`pokedex_ref` = 264 AND `type_name` = 'galar_variant') OR	# Linoone (Galar)
(`pokedex_ref` = 446 AND `type_name` = 'default') OR		# Munchlax
(`pokedex_ref` = 659 AND `type_name` = 'default') OR		# Bunnelby
(`pokedex_ref` = 660 AND `type_name` = 'default') OR		# Diggersby
(`pokedex_ref` = 710 AND `type_name` = 'default') OR		# Pumpkaboo
(`pokedex_ref` = 711 AND `type_name` = 'default');			# Gourgeist
UPDATE `type_bundle` SET `ability2` = 53 WHERE
(`pokedex_ref` = 190 AND `type_name` = 'default') OR	# Aipom
(`pokedex_ref` = 417 AND `type_name` = 'default') OR	# Pachirisu
(`pokedex_ref` = 424 AND `type_name` = 'default') OR	# Ambipom
(`pokedex_ref` = 506 AND `type_name` = 'default') OR	# Lillipup
(`pokedex_ref` = 702 AND `type_name` = 'default');		# Dedenne
UPDATE `type_bundle` SET `hidden_ability` = 53 WHERE
(`pokedex_ref` = 731 AND `type_name` = 'default') OR	# Pikipek
(`pokedex_ref` = 732 AND `type_name` = 'default');		# Trumbeak

# Truant
UPDATE `type_bundle` SET `ability1` = 54 WHERE
(`pokedex_ref` = 287 AND `type_name` = 'default') OR	# Slakoth
(`pokedex_ref` = 289 AND `type_name` = 'default');		# Slaking
UPDATE `type_bundle` SET `hidden_ability` = 54 WHERE
(`pokedex_ref` = 632 AND `type_name` = 'default');		# Durant

# Hustle
UPDATE `type_bundle` SET `ability1` = 55 WHERE
(`pokedex_ref` = 175 AND `type_name` = 'default') OR		# Togepi
(`pokedex_ref` = 176 AND `type_name` = 'default') OR		# Togetic
(`pokedex_ref` = 222 AND `type_name` = 'default') OR		# Corsola
(`pokedex_ref` = 223 AND `type_name` = 'default') OR		# Remoraid
(`pokedex_ref` = 468 AND `type_name` = 'default') OR		# Togekiss
(`pokedex_ref` = 554 AND `type_name` = 'default') OR		# Darumaka
(`pokedex_ref` = 554 AND `type_name` = 'galar_variant') OR	# Darumaka (Galar)
(`pokedex_ref` = 633 AND `type_name` = 'default') OR		# Deino
(`pokedex_ref` = 634 AND `type_name` = 'default');			# Zweilous
UPDATE `type_bundle` SET `ability2` = 55 WHERE
(`pokedex_ref` = 19 AND `type_name` = 'alola_variant') OR	# Rattata (Alola)
(`pokedex_ref` = 20 AND `type_name` = 'alola_variant') OR	# Raticate (Alola)
(`pokedex_ref` = 225 AND `type_name` = 'default') OR		# Delibird
(`pokedex_ref` = 549 AND `type_name` = 'hisui_variant') OR	# Lilligant (Hisui)
(`pokedex_ref` = 632 AND `type_name` = 'default') OR		# Durant
(`pokedex_ref` = 880 AND `type_name` = 'default');			# Dracozolt
UPDATE `type_bundle` SET `hidden_ability` = 55 WHERE
(`pokedex_ref` = 19 AND `type_name` = 'default') OR		# Rattata
(`pokedex_ref` = 20 AND `type_name` = 'default') OR		# Raticate
(`pokedex_ref` = 29 AND `type_name` = 'default') OR		# Nidoran ♀
(`pokedex_ref` = 30 AND `type_name` = 'default') OR		# Nidorina
(`pokedex_ref` = 32 AND `type_name` = 'default') OR		# Nidoran ♂
(`pokedex_ref` = 33 AND `type_name` = 'default') OR		# Nidorino
(`pokedex_ref` = 415 AND `type_name` = 'default') OR	# Combee
(`pokedex_ref` = 627 AND `type_name` = 'default') OR	# Rufflet
(`pokedex_ref` = 841 AND `type_name` = 'default');		# Flapple

# Cute Charm
UPDATE `type_bundle` SET `ability1` = 56 WHERE
(`pokedex_ref` = 35 AND `type_name` = 'default') OR		# Clefairy
(`pokedex_ref` = 36 AND `type_name` = 'default') OR		# Clefable
(`pokedex_ref` = 39 AND `type_name` = 'default') OR		# Jigglypuff
(`pokedex_ref` = 40 AND `type_name` = 'default') OR		# Wigglytuff
(`pokedex_ref` = 173 AND `type_name` = 'default') OR	# Cleffa
(`pokedex_ref` = 174 AND `type_name` = 'default') OR	# Igglybuff
(`pokedex_ref` = 300 AND `type_name` = 'default') OR	# Skitty
(`pokedex_ref` = 301 AND `type_name` = 'default') OR	# Delcatty
(`pokedex_ref` = 428 AND `type_name` = 'default') OR	# Lopunny
(`pokedex_ref` = 572 AND `type_name` = 'default') OR	# Minccino
(`pokedex_ref` = 573 AND `type_name` = 'default') OR	# Cinccino
(`pokedex_ref` = 700 AND `type_name` = 'default');		# Sylveon
UPDATE `type_bundle` SET `hidden_ability` = 56 WHERE
(`pokedex_ref` = 350 AND `type_name` = 'default') OR	# Milotic
(`pokedex_ref` = 759 AND `type_name` = 'default');		# Stufful

# Plus
UPDATE `type_bundle` SET `ability1` = 57 WHERE
(`pokedex_ref` = 311 AND `type_name` = 'default') OR	# Plusle
(`pokedex_ref` = 599 AND `type_name` = 'default') OR	# Klink
(`pokedex_ref` = 600 AND `type_name` = 'default') OR	# Klang
(`pokedex_ref` = 601 AND `type_name` = 'default');		# Klinklang
UPDATE `type_bundle` SET `ability2` = 57 WHERE
(`pokedex_ref` = 849 AND `type_name` = 'amped_form');	# Toxtricity (Amped Form)
UPDATE `type_bundle` SET `hidden_ability` = 57 WHERE
(`pokedex_ref` = 179 AND `type_name` = 'default') OR	# Mareep
(`pokedex_ref` = 180 AND `type_name` = 'default') OR	# Flaaffy
(`pokedex_ref` = 181 AND `type_name` = 'default') OR	# Ampharos
(`pokedex_ref` = 702 AND `type_name` = 'default');		# Dedenne

# Minus
UPDATE `type_bundle` SET `ability1` = 58 WHERE
(`pokedex_ref` = 312 AND `type_name` = 'default');		# Minun
UPDATE `type_bundle` SET `ability2` = 58 WHERE
(`pokedex_ref` = 599 AND `type_name` = 'default') OR		# Klink
(`pokedex_ref` = 600 AND `type_name` = 'default') OR		# Klang
(`pokedex_ref` = 601 AND `type_name` = 'default') OR		# Klinklang
(`pokedex_ref` = 849 AND `type_name` = 'low_key_form');		# Toxtricity (Low Key Form)
UPDATE `type_bundle` SET `hidden_ability` = 58 WHERE
(`pokedex_ref` = 309 AND `type_name` = 'default') OR	# Electrike
(`pokedex_ref` = 310 AND `type_name` = 'default');		# Manectric

# Forecast
UPDATE `type_bundle` SET `ability1` = 59 WHERE
(`pokedex_ref` = 351 AND `type_name` = 'normal_form') OR	# Castform (Normal Form)
(`pokedex_ref` = 351 AND `type_name` = 'sunny_form') OR		# Castform (Sunny Form)
(`pokedex_ref` = 351 AND `type_name` = 'rainy_form') OR		# Castform (Rainy Form)
(`pokedex_ref` = 351 AND `type_name` = 'snowy_form');		# Castform (Snowy Form)

# Sticky Hold
UPDATE `type_bundle` SET `ability1` = 60 WHERE
(`pokedex_ref` = 422 AND `type_name` = 'east_sea') OR	# Shellos (East Sea)
(`pokedex_ref` = 422 AND `type_name` = 'west_sea') OR	# Shellos (West Sea)
(`pokedex_ref` = 423 AND `type_name` = 'east_sea') OR	# Gastrodon (East Sea)
(`pokedex_ref` = 423 AND `type_name` = 'west_sea');		# Gastrodon (West Sea)
UPDATE `type_bundle` SET `ability2` = 60 WHERE
(`pokedex_ref` = 88 AND `type_name` = 'default') OR		# Grimer
(`pokedex_ref` = 89 AND `type_name` = 'default') OR		# Muk
(`pokedex_ref` = 316 AND `type_name` = 'default') OR	# Gulpin
(`pokedex_ref` = 317 AND `type_name` = 'default') OR	# Swalot
(`pokedex_ref` = 568 AND `type_name` = 'default') OR	# Trubbish
(`pokedex_ref` = 617 AND `type_name` = 'default');		# Accelgor

# Shed Skin
UPDATE `type_bundle` SET `ability1` = 61 WHERE
(`pokedex_ref` = 11 AND `type_name` = 'default') OR			# Metapod
(`pokedex_ref` = 14 AND `type_name` = 'default') OR			# Kakuna
(`pokedex_ref` = 147 AND `type_name` = 'default') OR		# Dratini
(`pokedex_ref` = 148 AND `type_name` = 'default') OR		# Dragonair
(`pokedex_ref` = 247 AND `type_name` = 'default') OR		# Pupitar
(`pokedex_ref` = 266 AND `type_name` = 'default') OR		# Silcoon
(`pokedex_ref` = 268 AND `type_name` = 'default') OR		# Cascoon
(`pokedex_ref` = 336 AND `type_name` = 'default') OR		# Seviper
(`pokedex_ref` = 401 AND `type_name` = 'default') OR		# Kricketot
(`pokedex_ref` = 412 AND `type_name` = 'plant_cloak') OR	# Burmy (Plant Cloak)
(`pokedex_ref` = 412 AND `type_name` = 'sandy_cloak') OR	# Burmy (Sandy Cloak)
(`pokedex_ref` = 412 AND `type_name` = 'trash_cloak') OR	# Burmy (Trash Cloak)
(`pokedex_ref` = 559 AND `type_name` = 'default') OR		# Scraggy
(`pokedex_ref` = 560 AND `type_name` = 'default') OR		# Scrafty
(`pokedex_ref` = 665 AND `type_name` = 'default');			# Spewpa
UPDATE `type_bundle` SET `ability2` = 61 WHERE
(`pokedex_ref` = 23 AND `type_name` = 'default') OR		# Ekans
(`pokedex_ref` = 24 AND `type_name` = 'default') OR		# Arbok
(`pokedex_ref` = 588 AND `type_name` = 'default') OR	# Karrablast
(`pokedex_ref` = 843 AND `type_name` = 'default') OR	# Silicobra
(`pokedex_ref` = 844 AND `type_name` = 'default');		# Sandaconda

# Guts
UPDATE `type_bundle` SET `ability1` = 62 WHERE
(`pokedex_ref` = 66 AND `type_name` = 'default') OR		# Machop
(`pokedex_ref` = 67 AND `type_name` = 'default') OR		# Machoke
(`pokedex_ref` = 68 AND `type_name` = 'default') OR		# Machamp
(`pokedex_ref` = 217 AND `type_name` = 'default') OR	# Ursaring
(`pokedex_ref` = 236 AND `type_name` = 'default') OR	# Tyrogue
(`pokedex_ref` = 246 AND `type_name` = 'default') OR	# Larvitar
(`pokedex_ref` = 276 AND `type_name` = 'default') OR	# Taillow
(`pokedex_ref` = 277 AND `type_name` = 'default') OR	# Swellow
(`pokedex_ref` = 532 AND `type_name` = 'default') OR	# Timburr
(`pokedex_ref` = 533 AND `type_name` = 'default') OR	# Gurdurr
(`pokedex_ref` = 534 AND `type_name` = 'default') OR	# Conkeldurr
(`pokedex_ref` = 538 AND `type_name` = 'default') OR	# Throh
(`pokedex_ref` = 901 AND `type_name` = 'default');		# Ursaluna
UPDATE `type_bundle` SET `ability2` = 62 WHERE
(`pokedex_ref` = 19 AND `type_name` = 'default') OR		# Rattata
(`pokedex_ref` = 20 AND `type_name` = 'default') OR		# Raticate
(`pokedex_ref` = 214 AND `type_name` = 'default') OR	# Heracross
(`pokedex_ref` = 296 AND `type_name` = 'default') OR	# Makuhita
(`pokedex_ref` = 297 AND `type_name` = 'default') OR	# Hariyama
(`pokedex_ref` = 862 AND `type_name` = 'default');		# Obstagoon
UPDATE `type_bundle` SET `hidden_ability` = 62 WHERE
(`pokedex_ref` = 136 AND `type_name` = 'default') OR	# Flareon
(`pokedex_ref` = 403 AND `type_name` = 'default') OR	# Shinx
(`pokedex_ref` = 404 AND `type_name` = 'default') OR	# Luxio
(`pokedex_ref` = 405 AND `type_name` = 'default');		# Luxray

# Marvel Scale
UPDATE `type_bundle` SET `ability1` = 63 WHERE
(`pokedex_ref` = 350 AND `type_name` = 'default');		# Milotic
UPDATE `type_bundle` SET `hidden_ability` = 63 WHERE
(`pokedex_ref` = 147 AND `type_name` = 'default') OR	# Dratini
(`pokedex_ref` = 148 AND `type_name` = 'default');		# Dragonair

# Liquid Ooze
UPDATE `type_bundle` SET `ability1` = 64 WHERE
(`pokedex_ref` = 316 AND `type_name` = 'default') OR	# Gulpin
(`pokedex_ref` = 317 AND `type_name` = 'default');		# Swalot
UPDATE `type_bundle` SET `ability2` = 64 WHERE
(`pokedex_ref` = 72 AND `type_name` = 'default') OR		# Tentacool
(`pokedex_ref` = 73 AND `type_name` = 'default');		# Tentacruel

# Overgrow
UPDATE `type_bundle` SET `ability1` = 65 WHERE
(`pokedex_ref` = 1 AND `type_name` = 'default') OR			# Bulbasaur
(`pokedex_ref` = 2 AND `type_name` = 'default') OR			# Ivysaur
(`pokedex_ref` = 3 AND `type_name` = 'default') OR			# Venusaur
(`pokedex_ref` = 152 AND `type_name` = 'default') OR		# Chikorita
(`pokedex_ref` = 153 AND `type_name` = 'default') OR		# Bayleef
(`pokedex_ref` = 154 AND `type_name` = 'default') OR		# Meganium
(`pokedex_ref` = 252 AND `type_name` = 'default') OR		# Treecko
(`pokedex_ref` = 253 AND `type_name` = 'default') OR		# Grovyle
(`pokedex_ref` = 254 AND `type_name` = 'default') OR		# Sceptile
(`pokedex_ref` = 387 AND `type_name` = 'default') OR		# Turtwig
(`pokedex_ref` = 388 AND `type_name` = 'default') OR		# Grotle
(`pokedex_ref` = 389 AND `type_name` = 'default') OR		# Torterra
(`pokedex_ref` = 495 AND `type_name` = 'default') OR		# Snivy
(`pokedex_ref` = 496 AND `type_name` = 'default') OR		# Servine
(`pokedex_ref` = 497 AND `type_name` = 'default') OR		# Serperior
(`pokedex_ref` = 650 AND `type_name` = 'default') OR		# Chespin
(`pokedex_ref` = 651 AND `type_name` = 'default') OR		# Quilladin
(`pokedex_ref` = 652 AND `type_name` = 'default') OR		# Chesnaught
(`pokedex_ref` = 722 AND `type_name` = 'default') OR		# Rowlet
(`pokedex_ref` = 723 AND `type_name` = 'default') OR		# Dartrix
(`pokedex_ref` = 724 AND `type_name` = 'default') OR		# Decidueye
(`pokedex_ref` = 724 AND `type_name` = 'hisui_variant') OR	# Decidueye (Hisui)
(`pokedex_ref` = 810 AND `type_name` = 'default') OR		# Grookey
(`pokedex_ref` = 811 AND `type_name` = 'default') OR		# Thwackey
(`pokedex_ref` = 812 AND `type_name` = 'default') OR		# Rillaboom
(`pokedex_ref` = 906 AND `type_name` = 'default') OR		# Sprigatito
(`pokedex_ref` = 907 AND `type_name` = 'default') OR		# Sprigatito Evo 1
(`pokedex_ref` = 908 AND `type_name` = 'default');			# Sprigatito Evo 2
UPDATE `type_bundle` SET `hidden_ability` = 65 WHERE
(`pokedex_ref` = 511 AND `type_name` = 'default') OR		# Pansage
(`pokedex_ref` = 512 AND `type_name` = 'default');			# Simisage

# Blaze
UPDATE `type_bundle` SET `ability1` = 66 WHERE
(`pokedex_ref` = 4 AND `type_name` = 'default') OR			# Charmander
(`pokedex_ref` = 5 AND `type_name` = 'default') OR			# Charmeleon
(`pokedex_ref` = 6 AND `type_name` = 'default') OR			# Charizard
(`pokedex_ref` = 155 AND `type_name` = 'default') OR		# Cyndaquill
(`pokedex_ref` = 156 AND `type_name` = 'default') OR		# Quilava
(`pokedex_ref` = 157 AND `type_name` = 'default') OR		# Typhlosion
(`pokedex_ref` = 157 AND `type_name` = 'hisui_variant') OR	# Typhlosion (Hisui)
(`pokedex_ref` = 255 AND `type_name` = 'default') OR		# Torchic
(`pokedex_ref` = 256 AND `type_name` = 'default') OR		# Combusken
(`pokedex_ref` = 257 AND `type_name` = 'default') OR		# Blaziken
(`pokedex_ref` = 390 AND `type_name` = 'default') OR		# Chimchar
(`pokedex_ref` = 391 AND `type_name` = 'default') OR		# Monferno
(`pokedex_ref` = 392 AND `type_name` = 'default') OR		# Infernape
(`pokedex_ref` = 498 AND `type_name` = 'default') OR		# Tepig
(`pokedex_ref` = 499 AND `type_name` = 'default') OR		# Pignite
(`pokedex_ref` = 500 AND `type_name` = 'default') OR		# Emboar
(`pokedex_ref` = 653 AND `type_name` = 'default') OR		# Fennekin
(`pokedex_ref` = 654 AND `type_name` = 'default') OR		# Braixen
(`pokedex_ref` = 655 AND `type_name` = 'default') OR		# Delphox
(`pokedex_ref` = 725 AND `type_name` = 'default') OR		# Litten
(`pokedex_ref` = 726 AND `type_name` = 'default') OR		# Torracat
(`pokedex_ref` = 727 AND `type_name` = 'default') OR		# Incineroar
(`pokedex_ref` = 813 AND `type_name` = 'default') OR		# Scorbunny
(`pokedex_ref` = 814 AND `type_name` = 'default') OR		# Raboot
(`pokedex_ref` = 815 AND `type_name` = 'default') OR		# Cinderace
(`pokedex_ref` = 909 AND `type_name` = 'default') OR		# Fuecoco
(`pokedex_ref` = 910 AND `type_name` = 'default') OR		# Fuecoco Evo 1
(`pokedex_ref` = 911 AND `type_name` = 'default');			# Fuecoco Evo 2
UPDATE `type_bundle` SET `hidden_ability` = 66 WHERE
(`pokedex_ref` = 513 AND `type_name` = 'default') OR		# Pansear
(`pokedex_ref` = 514 AND `type_name` = 'default');			# Simisear

# Torrent
UPDATE `type_bundle` SET `ability1` = 67 WHERE
(`pokedex_ref` = 7 AND `type_name` = 'default') OR			# Squirtle
(`pokedex_ref` = 8 AND `type_name` = 'default') OR			# Wartotle
(`pokedex_ref` = 9 AND `type_name` = 'default') OR			# Blastoise
(`pokedex_ref` = 158 AND `type_name` = 'default') OR		# Totodile
(`pokedex_ref` = 159 AND `type_name` = 'default') OR		# Croconaw
(`pokedex_ref` = 160 AND `type_name` = 'default') OR		# Feraligatr
(`pokedex_ref` = 258 AND `type_name` = 'default') OR		# Mudkip
(`pokedex_ref` = 259 AND `type_name` = 'default') OR		# Marshtomp
(`pokedex_ref` = 260 AND `type_name` = 'default') OR		# Swampert
(`pokedex_ref` = 393 AND `type_name` = 'default') OR		# Piplup
(`pokedex_ref` = 394 AND `type_name` = 'default') OR		# Prinplup
(`pokedex_ref` = 395 AND `type_name` = 'default') OR		# Empoleon
(`pokedex_ref` = 501 AND `type_name` = 'default') OR		# Oshawott
(`pokedex_ref` = 502 AND `type_name` = 'default') OR		# Dewott
(`pokedex_ref` = 503 AND `type_name` = 'default') OR		# Samurott
(`pokedex_ref` = 503 AND `type_name` = 'hisui_variant') OR	# Samurott (Hisui)
(`pokedex_ref` = 656 AND `type_name` = 'default') OR		# Froakie
(`pokedex_ref` = 657 AND `type_name` = 'default') OR		# Frogadier
(`pokedex_ref` = 658 AND `type_name` = 'default') OR		# Greninja
(`pokedex_ref` = 728 AND `type_name` = 'default') OR		# Popplio
(`pokedex_ref` = 729 AND `type_name` = 'default') OR		# Brionne
(`pokedex_ref` = 730 AND `type_name` = 'default') OR		# Primarina
(`pokedex_ref` = 816 AND `type_name` = 'default') OR		# Sobble
(`pokedex_ref` = 817 AND `type_name` = 'default') OR		# Drizzile
(`pokedex_ref` = 818 AND `type_name` = 'default') OR		# Inteleon
(`pokedex_ref` = 912 AND `type_name` = 'default') OR		# Quaxly
(`pokedex_ref` = 913 AND `type_name` = 'default') OR		# Quaxly Evo 1
(`pokedex_ref` = 914 AND `type_name` = 'default');			# Quaxly Evo 2
UPDATE `type_bundle` SET `hidden_ability` = 67 WHERE
(`pokedex_ref` = 515 AND `type_name` = 'default') OR		# Panpour
(`pokedex_ref` = 516 AND `type_name` = 'default');			# Simipour

# Swarm
UPDATE `type_bundle` SET `ability1` = 68 WHERE
(`pokedex_ref` = 15 AND `type_name` = 'default') OR		# Beedrill
(`pokedex_ref` = 123 AND `type_name` = 'default') OR	# Scyther
(`pokedex_ref` = 165 AND `type_name` = 'default') OR	# Ledyba
(`pokedex_ref` = 166 AND `type_name` = 'default') OR	# Ledian
(`pokedex_ref` = 167 AND `type_name` = 'default') OR	# Spinarak
(`pokedex_ref` = 168 AND `type_name` = 'default') OR	# Ariados
(`pokedex_ref` = 212 AND `type_name` = 'default') OR	# Scizor
(`pokedex_ref` = 214 AND `type_name` = 'default') OR	# Heracross
(`pokedex_ref` = 267 AND `type_name` = 'default') OR	# Beautifly
(`pokedex_ref` = 402 AND `type_name` = 'default') OR	# Kricketune
(`pokedex_ref` = 414 AND `type_name` = 'default') OR	# Mothim
(`pokedex_ref` = 540 AND `type_name` = 'default') OR	# Sewaddle
(`pokedex_ref` = 542 AND `type_name` = 'default') OR	# Leavanny
(`pokedex_ref` = 588 AND `type_name` = 'default') OR	# Karrablast
(`pokedex_ref` = 589 AND `type_name` = 'default') OR	# Escavalier
(`pokedex_ref` = 632 AND `type_name` = 'default') OR	# Durant
(`pokedex_ref` = 736 AND `type_name` = 'default') OR	# Grubbin
(`pokedex_ref` = 824 AND `type_name` = 'default') OR	# Blipbug
(`pokedex_ref` = 825 AND `type_name` = 'default') OR	# Dottler
(`pokedex_ref` = 826 AND `type_name` = 'default') OR	# Orbeetle
(`pokedex_ref` = 900 AND `type_name` = 'default');		# Kleavor
UPDATE `type_bundle` SET `ability2` = 68 WHERE
(`pokedex_ref` = 313 AND `type_name` = 'default') OR	# Volbeat
(`pokedex_ref` = 543 AND `type_name` = 'default') OR	# Venipede
(`pokedex_ref` = 544 AND `type_name` = 'default') OR	# Whirlipede
(`pokedex_ref` = 545 AND `type_name` = 'default');		# Scolipede
UPDATE `type_bundle` SET `hidden_ability` = 68 WHERE
(`pokedex_ref` = 595 AND `type_name` = 'default') OR	# Joltik
(`pokedex_ref` = 596 AND `type_name` = 'default') OR	# Galvantula
(`pokedex_ref` = 636 AND `type_name` = 'default') OR	# Larvesta
(`pokedex_ref` = 637 AND `type_name` = 'default');		# Volcarona

# Rock Head
UPDATE `type_bundle` SET `ability1` = 69 WHERE
(`pokedex_ref` = 74 AND `type_name` = 'default') OR				# Geodude
(`pokedex_ref` = 75 AND `type_name` = 'default') OR				# Graveler
(`pokedex_ref` = 76 AND `type_name` = 'default') OR				# Golem
(`pokedex_ref` = 95 AND `type_name` = 'default') OR				# Onix
(`pokedex_ref` = 104 AND `type_name` = 'default') OR			# Cubone
(`pokedex_ref` = 105 AND `type_name` = 'default') OR			# Marowak
(`pokedex_ref` = 142 AND `type_name` = 'default') OR			# Aerodactyl
(`pokedex_ref` = 208 AND `type_name` = 'default') OR			# Steelix
(`pokedex_ref` = 371 AND `type_name` = 'default') OR			# Bagon
(`pokedex_ref` = 372 AND `type_name` = 'default') OR			# Shelgon
(`pokedex_ref` = 550 AND `type_name` = 'blue-striped_form');	# Basculin (Blue-Striped Form)
UPDATE `type_bundle` SET `ability2` = 69 WHERE
(`pokedex_ref` = 111 AND `type_name` = 'default') OR	# Rhyhorn
(`pokedex_ref` = 112 AND `type_name` = 'default') OR	# Rhydon
(`pokedex_ref` = 185 AND `type_name` = 'default') OR	# Sudowoodo
(`pokedex_ref` = 304 AND `type_name` = 'default') OR	# Aron
(`pokedex_ref` = 305 AND `type_name` = 'default') OR	# Lairon
(`pokedex_ref` = 306 AND `type_name` = 'default') OR	# Aggron
(`pokedex_ref` = 369 AND `type_name` = 'default') OR	# Relicanth
(`pokedex_ref` = 438 AND `type_name` = 'default');		# Bonsly
UPDATE `type_bundle` SET `hidden_ability` = 69 WHERE
(`pokedex_ref` = 105 AND `type_name` = 'alola_variant') OR	# Marowak (Alola)
(`pokedex_ref` = 697 AND `type_name` = 'default');			# Tyrantrum

# Drought
UPDATE `type_bundle` SET `ability1` = 70 WHERE
(`pokedex_ref` = 6 AND `type_name` = 'mega_y') OR		# MEGA Charizard Y
(`pokedex_ref` = 383 AND `type_name` = 'default');		# Groudon
UPDATE `type_bundle` SET `ability2` = 70 WHERE
(`pokedex_ref` = 324 AND `type_name` = 'default');		# Torkoal
UPDATE `type_bundle` SET `hidden_ability` = 70 WHERE
(`pokedex_ref` = 37 AND `type_name` = 'default') OR		# Vulpix
(`pokedex_ref` = 38 AND `type_name` = 'default');		# Ninetales

# Arena Trap
UPDATE `type_bundle` SET `ability2` = 71 WHERE
(`pokedex_ref` = 50 AND `type_name` = 'default') OR		# Diglett
(`pokedex_ref` = 51 AND `type_name` = 'default') OR		# Dugtrio
(`pokedex_ref` = 328 AND `type_name` = 'default');		# Trapinch

# Vital Spirit
UPDATE `type_bundle` SET `ability1` = 72 WHERE
(`pokedex_ref` = 56 AND `type_name` = 'default') OR			# Mankey
(`pokedex_ref` = 57 AND `type_name` = 'default') OR			# Primeape
(`pokedex_ref` = 122 AND `type_name` = 'galar_variant') OR	# Mr Mime (Galar)
(`pokedex_ref` = 225 AND `type_name` = 'default') OR		# Delibird
(`pokedex_ref` = 288 AND `type_name` = 'default') OR		# Vigoroth
(`pokedex_ref` = 506 AND `type_name` = 'default');			# Lillipup
UPDATE `type_bundle` SET `ability2` = 72 WHERE
(`pokedex_ref` = 744 AND `type_name` = 'default') OR		# Rockruff
(`pokedex_ref` = 745 AND `type_name` = 'midnight_form');	# Lycanroc (Midnight Form)
UPDATE `type_bundle` SET `hidden_ability` = 72 WHERE
(`pokedex_ref` = 125 AND `type_name` = 'default') OR	# Electabuzz
(`pokedex_ref` = 126 AND `type_name` = 'default') OR	# Magmar
(`pokedex_ref` = 236 AND `type_name` = 'default') OR	# Tyrogue
(`pokedex_ref` = 239 AND `type_name` = 'default') OR	# Elekid
(`pokedex_ref` = 240 AND `type_name` = 'default') OR	# Magby
(`pokedex_ref` = 466 AND `type_name` = 'default') OR	# Electivire
(`pokedex_ref` = 467 AND `type_name` = 'default');		# Magmotar

# White Smoke
UPDATE `type_bundle` SET `ability1` = 73 WHERE
(`pokedex_ref` = 324 AND `type_name` = 'default');		# Torkoal
UPDATE `type_bundle` SET `ability2` = 73 WHERE
(`pokedex_ref` = 850 AND `type_name` = 'default') OR	# Sizzlipede
(`pokedex_ref` = 851 AND `type_name` = 'default');		# Centiskorch
UPDATE `type_bundle` SET `hidden_ability` = 73 WHERE
(`pokedex_ref` = 631 AND `type_name` = 'default');		# Heatmor

# Pure Power
UPDATE `type_bundle` SET `ability1` = 74 WHERE
(`pokedex_ref` = 307 AND `type_name` = 'default') OR	# Meditite
(`pokedex_ref` = 308 AND `type_name` = 'default') OR	# Medicham
(`pokedex_ref` = 308 AND `type_name` = 'mega');			# MEGA Medicham

# Shell Armor
UPDATE `type_bundle` SET `ability1` = 75 WHERE
(`pokedex_ref` = 80 AND `type_name` = 'mega') OR			# MEGA Slowbro
(`pokedex_ref` = 90 AND `type_name` = 'default') OR			# Shellder
(`pokedex_ref` = 91 AND `type_name` = 'default') OR			# Cloyster
(`pokedex_ref` = 366 AND `type_name` = 'default') OR		# Clamperl
(`pokedex_ref` = 776 AND `type_name` = 'default');			# Turtonator
UPDATE `type_bundle` SET `ability2` = 75 WHERE
(`pokedex_ref` = 98 AND `type_name` = 'default') OR			# Krabby
(`pokedex_ref` = 99 AND `type_name` = 'default') OR			# Kingler
(`pokedex_ref` = 131 AND `type_name` = 'default') OR		# Lapras
(`pokedex_ref` = 138 AND `type_name` = 'default') OR		# Omanyte
(`pokedex_ref` = 139 AND `type_name` = 'default') OR		# Omastar
(`pokedex_ref` = 341 AND `type_name` = 'default') OR		# Corphish
(`pokedex_ref` = 342 AND `type_name` = 'default') OR		# Crawdunt
(`pokedex_ref` = 557 AND `type_name` = 'default') OR		# Dwebble
(`pokedex_ref` = 558 AND `type_name` = 'default') OR		# Crustle
(`pokedex_ref` = 589 AND `type_name` = 'default') OR		# Escavalier
(`pokedex_ref` = 616 AND `type_name` = 'default') OR		# Shelmet
(`pokedex_ref` = 833 AND `type_name` = 'default') OR		# Chewtle
(`pokedex_ref` = 834 AND `type_name` = 'default');			# Drednaw
UPDATE `type_bundle` SET `hidden_ability` = 75 WHERE
(`pokedex_ref` = 324 AND `type_name` = 'default') OR		# Torkoal
(`pokedex_ref` = 387 AND `type_name` = 'default') OR		# Turtwig
(`pokedex_ref` = 388 AND `type_name` = 'default') OR		# Grotle
(`pokedex_ref` = 389 AND `type_name` = 'default') OR		# Torterra
(`pokedex_ref` = 501 AND `type_name` = 'default') OR		# Oshawott
(`pokedex_ref` = 502 AND `type_name` = 'default') OR		# Dewott
(`pokedex_ref` = 503 AND `type_name` = 'default') OR		# Samurott
(`pokedex_ref` = 503 AND `type_name` = 'hisui_variant');	# Samurott (Hisui)

# Air Lock
UPDATE `type_bundle` SET `ability1` = 76 WHERE
(`pokedex_ref` = 384 AND `type_name` = 'default');		# Rayquaza

# Tangled Feet
UPDATE `type_bundle` SET `ability1` = 77 WHERE
(`pokedex_ref` = 866 AND `type_name` = 'default');		# Mr Rime
UPDATE `type_bundle` SET `ability2` = 77 WHERE
(`pokedex_ref` = 16 AND `type_name` = 'default') OR		# Pidgey
(`pokedex_ref` = 17 AND `type_name` = 'default') OR		# Pidgeotto
(`pokedex_ref` = 18 AND `type_name` = 'default') OR		# Pidgeot
(`pokedex_ref` = 327 AND `type_name` = 'default') OR	# Spinda
(`pokedex_ref` = 441 AND `type_name` = 'default');		# Chatot
UPDATE `type_bundle` SET `hidden_ability` = 77 WHERE
(`pokedex_ref` = 84 AND `type_name` = 'default') OR		# Doduo
(`pokedex_ref` = 85 AND `type_name` = 'default');		# Dodrio

# Motor Drive
UPDATE `type_bundle` SET `ability1` = 78 WHERE
(`pokedex_ref` = 466 AND `type_name` = 'default');		# Electivire
UPDATE `type_bundle` SET `ability2` = 78 WHERE
(`pokedex_ref` = 522 AND `type_name` = 'default') OR	# Blitzle
(`pokedex_ref` = 523 AND `type_name` = 'default');		# Zebstrika
UPDATE `type_bundle` SET `hidden_ability` = 78 WHERE
(`pokedex_ref` = 587 AND `type_name` = 'default');		# Emolga

# Rivalry
UPDATE `type_bundle` SET `ability1` = 79 WHERE
(`pokedex_ref` = 403 AND `type_name` = 'default') OR	# Shinx
(`pokedex_ref` = 404 AND `type_name` = 'default') OR	# Luxio
(`pokedex_ref` = 405 AND `type_name` = 'default') OR	# Luxray
(`pokedex_ref` = 610 AND `type_name` = 'default') OR	# Axew
(`pokedex_ref` = 611 AND `type_name` = 'default') OR	# Fraxure
(`pokedex_ref` = 612 AND `type_name` = 'default') OR	# Haxorus
(`pokedex_ref` = 667 AND `type_name` = 'default') OR	# Litleo
(`pokedex_ref` = 668 AND `type_name` = 'default');		# Pyroar
UPDATE `type_bundle` SET `ability2` = 79 WHERE
(`pokedex_ref` = 29 AND `type_name` = 'default') OR		# Nidoran ♀
(`pokedex_ref` = 30 AND `type_name` = 'default') OR		# Nidorina
(`pokedex_ref` = 31 AND `type_name` = 'default') OR		# Nidoqueen
(`pokedex_ref` = 32 AND `type_name` = 'default') OR		# Nidoran ♂
(`pokedex_ref` = 33 AND `type_name` = 'default') OR		# Nidorino
(`pokedex_ref` = 34 AND `type_name` = 'default');		# Nidoking
UPDATE `type_bundle` SET `hidden_ability` = 79 WHERE
(`pokedex_ref` = 267 AND `type_name` = 'default') OR	# Beautifly
(`pokedex_ref` = 519 AND `type_name` = 'default') OR	# Pidove
(`pokedex_ref` = 520 AND `type_name` = 'default') OR	# Tranquill
(`pokedex_ref` = 521 AND `type_name` = 'default');		# Unfezant

# Steadfast
UPDATE `type_bundle` SET `ability1` = 80 WHERE
(`pokedex_ref` = 83 AND `type_name` = 'galar_variant') OR		# Farfetch'd (Galar)
(`pokedex_ref` = 150 AND `type_name` = 'mega_x') OR				# MEGA Mewtwo X
(`pokedex_ref` = 447 AND `type_name` = 'default') OR			# Riolu
(`pokedex_ref` = 448 AND `type_name` = 'default') OR			# Lucario
(`pokedex_ref` = 475 AND `type_name` = 'default') OR			# Gallade
(`pokedex_ref` = 865 AND `type_name` = 'default');				# Sirfetch'd
UPDATE `type_bundle` SET `ability2` = 80 WHERE
(`pokedex_ref` = 236 AND `type_name` = 'default') OR	# Tyrogue
(`pokedex_ref` = 832 AND `type_name` = 'default');		# Dubwool
UPDATE `type_bundle` SET `hidden_ability` = 80 WHERE
(`pokedex_ref` = 66 AND `type_name` = 'default') OR			# Machop
(`pokedex_ref` = 67 AND `type_name` = 'default') OR			# Machoke
(`pokedex_ref` = 68 AND `type_name` = 'default') OR			# Machamp
(`pokedex_ref` = 123 AND `type_name` = 'default') OR		# Scyther
(`pokedex_ref` = 237 AND `type_name` = 'default') OR		# Hitmontop
(`pokedex_ref` = 744 AND `type_name` = 'default') OR		# Rockruff
(`pokedex_ref` = 745 AND `type_name` = 'midday_form') OR	# Lycanroc (Midday Form)
(`pokedex_ref` = 900 AND `type_name` = 'default');			# Kleavor

# Snow Cloak
UPDATE `type_bundle` SET `ability1` = 81 WHERE
(`pokedex_ref` = 27 AND `type_name` = 'alola_variant') OR		# Sandshrew (Alola)
(`pokedex_ref` = 28 AND `type_name` = 'alola_variant') OR		# Sandslash (Alola)
(`pokedex_ref` = 37 AND `type_name` = 'alola_variant') OR		# Vulpix (Alola)
(`pokedex_ref` = 38 AND `type_name` = 'alola_variant') OR		# Ninetales (Alola)
(`pokedex_ref` = 471 AND `type_name` = 'default') OR			# Glaceon
(`pokedex_ref` = 478 AND `type_name` = 'default') OR			# Froslass
(`pokedex_ref` = 613 AND `type_name` = 'default') OR			# Cubchoo
(`pokedex_ref` = 614 AND `type_name` = 'default');				# Beartic
UPDATE `type_bundle` SET `ability2` = 81 WHERE
(`pokedex_ref` = 220 AND `type_name` = 'default') OR	# Swinub
(`pokedex_ref` = 221 AND `type_name` = 'default') OR	# Piloswine
(`pokedex_ref` = 473 AND `type_name` = 'default') OR	# Mamoswine
(`pokedex_ref` = 582 AND `type_name` = 'default') OR	# Vanillite
(`pokedex_ref` = 583 AND `type_name` = 'default');		# Vanillish
UPDATE `type_bundle` SET `hidden_ability` = 81 WHERE
(`pokedex_ref` = 0 AND `type_name` = 'default') OR	# 
(`pokedex_ref` = 144 AND `type_name` = 'default');		# Articuno

# Gluttony
UPDATE `type_bundle` SET `ability1` = 82 WHERE
(`pokedex_ref` = 19 AND `type_name` = 'alola_variant') OR	# Rattata (Alola)
(`pokedex_ref` = 20 AND `type_name` = 'alola_variant') OR	# Raticate (Alola)
(`pokedex_ref` = 79 AND `type_name` = 'galar_variant') OR	# Slowpoke (Galar)
(`pokedex_ref` = 511 AND `type_name` = 'default') OR		# Pansage
(`pokedex_ref` = 512 AND `type_name` = 'default') OR		# Simisage
(`pokedex_ref` = 513 AND `type_name` = 'default') OR		# Pansear
(`pokedex_ref` = 514 AND `type_name` = 'default') OR		# Simisear
(`pokedex_ref` = 515 AND `type_name` = 'default') OR		# Panpour
(`pokedex_ref` = 516 AND `type_name` = 'default') OR		# Simipour 
(`pokedex_ref` = 631 AND `type_name` = 'default');			# Heatmor
UPDATE `type_bundle` SET `ability2` = 82 WHERE
(`pokedex_ref` = 88 AND `type_name` = 'alola_variant') OR		# Grimer (Alola)
(`pokedex_ref` = 89 AND `type_name` = 'alola_variant') OR		# Muk (Alola)
(`pokedex_ref` = 213 AND `type_name` = 'default') OR			# Shuckle
(`pokedex_ref` = 263 AND `type_name` = 'default') OR			# Zigzagoon
(`pokedex_ref` = 263 AND `type_name` = 'galar_variant') OR		# Zigzagoon (Galar)
(`pokedex_ref` = 264 AND `type_name` = 'default') OR			# Linoone
(`pokedex_ref` = 264 AND `type_name` = 'galar_variant') OR		# Linoone (Galar)
(`pokedex_ref` = 840 AND `type_name` = 'default') OR			# Applin
(`pokedex_ref` = 841 AND `type_name` = 'default') OR			# Flapple
(`pokedex_ref` = 842 AND `type_name` = 'default');				# Appletun
UPDATE `type_bundle` SET `hidden_ability` = 82 WHERE
(`pokedex_ref` = 69 AND `type_name` = 'default') OR		# Bellsprout
(`pokedex_ref` = 70 AND `type_name` = 'default') OR		# Weepinbell
(`pokedex_ref` = 71 AND `type_name` = 'default') OR		# Victreebel
(`pokedex_ref` = 143 AND `type_name` = 'default') OR	# Snorlax
(`pokedex_ref` = 316 AND `type_name` = 'default') OR	# Gulpin
(`pokedex_ref` = 317 AND `type_name` = 'default') OR	# Swalot
(`pokedex_ref` = 325 AND `type_name` = 'default') OR	# Spoink
(`pokedex_ref` = 326 AND `type_name` = 'default') OR	# Grumpig
(`pokedex_ref` = 446 AND `type_name` = 'default') OR	# Munchlax
(`pokedex_ref` = 819 AND `type_name` = 'default') OR	# Skwovet
(`pokedex_ref` = 820 AND `type_name` = 'default');		# Greedent

# Anger Point
UPDATE `type_bundle` SET `ability2` = 83 WHERE
(`pokedex_ref` = 56 AND `type_name` = 'default') OR		# Mankey
(`pokedex_ref` = 57 AND `type_name` = 'default') OR		# Primeape
(`pokedex_ref` = 128 AND `type_name` = 'default');		# Tauros
UPDATE `type_bundle` SET `hidden_ability` = 83 WHERE
(`pokedex_ref` = 323 AND `type_name` = 'default') OR	# Anger Point
(`pokedex_ref` = 551 AND `type_name` = 'default') OR	# Sandile
(`pokedex_ref` = 552 AND `type_name` = 'default') OR	# Krokorok
(`pokedex_ref` = 553 AND `type_name` = 'default') OR	# Krookodile
(`pokedex_ref` = 739 AND `type_name` = 'default') OR	# Crabrawler
(`pokedex_ref` = 740 AND `type_name` = 'default');		# Crabominable

# Unburden
UPDATE `type_bundle` SET `ability2` = 84 WHERE
(`pokedex_ref` = 425 AND `type_name` = 'default') OR	# Drifloon
(`pokedex_ref` = 426 AND `type_name` = 'default') OR	# Drifblim
(`pokedex_ref` = 509 AND `type_name` = 'default') OR	# Purrloin
(`pokedex_ref` = 510 AND `type_name` = 'default') OR	# Liepard
(`pokedex_ref` = 701 AND `type_name` = 'default') OR	# Hawlucha
(`pokedex_ref` = 827 AND `type_name` = 'default') OR	# Nickit
(`pokedex_ref` = 828 AND `type_name` = 'default');		# Thievul
UPDATE `type_bundle` SET `hidden_ability` = 84 WHERE
(`pokedex_ref` = 106 AND `type_name` = 'default') OR	# Hitmonlee
(`pokedex_ref` = 252 AND `type_name` = 'default') OR	# Treecko
(`pokedex_ref` = 253 AND `type_name` = 'default') OR	# Grovyle
(`pokedex_ref` = 254 AND `type_name` = 'default') OR	# Sceptile
(`pokedex_ref` = 617 AND `type_name` = 'default') OR	# Accelgor
(`pokedex_ref` = 684 AND `type_name` = 'default') OR	# Swirlix
(`pokedex_ref` = 685 AND `type_name` = 'default');		# Slurpuff

# Heatproof
UPDATE `type_bundle` SET `ability2` = 85 WHERE
(`pokedex_ref` = 436 AND `type_name` = 'default') OR	# Bronzor
(`pokedex_ref` = 437 AND `type_name` = 'default') OR	# Bronzong
(`pokedex_ref` = 837 AND `type_name` = 'default');		# Rolycoly

# Simple
UPDATE `type_bundle` SET `ability1` = 86 WHERE
(`pokedex_ref` = 399 AND `type_name` = 'default') OR	# Bidoof
(`pokedex_ref` = 400 AND `type_name` = 'default');		# Bibarel
UPDATE `type_bundle` SET `ability2` = 86 WHERE
(`pokedex_ref` = 322 AND `type_name` = 'default');		# Numel
UPDATE `type_bundle` SET `hidden_ability` = 86 WHERE
(`pokedex_ref` = 527 AND `type_name` = 'default') OR	# Woobat
(`pokedex_ref` = 528 AND `type_name` = 'default');		# Swoobat

# Dry Skin
UPDATE `type_bundle` SET `ability1` = 87 WHERE
(`pokedex_ref` = 694 AND `type_name` = 'default') OR	# Helioptile
(`pokedex_ref` = 695 AND `type_name` = 'default');		# Heliolisk
UPDATE `type_bundle` SET `ability2` = 87 WHERE
(`pokedex_ref` = 46 AND `type_name` = 'default') OR		# Paras
(`pokedex_ref` = 47 AND `type_name` = 'default') OR		# Parasect
(`pokedex_ref` = 453 AND `type_name` = 'default') OR	# Croagunk
(`pokedex_ref` = 454 AND `type_name` = 'default');		# Toxicroak
UPDATE `type_bundle` SET `hidden_ability` = 87 WHERE
(`pokedex_ref` = 124 AND `type_name` = 'default');		# Jynx

# Download
UPDATE `type_bundle` SET `ability1` = 88 WHERE
(`pokedex_ref` = 649 AND `type_name` = 'default');		# Genesect
UPDATE `type_bundle` SET `ability2` = 88 WHERE
(`pokedex_ref` = 137 AND `type_name` = 'default') OR	# Porygon
(`pokedex_ref` = 233 AND `type_name` = 'default') OR	# Porygon2
(`pokedex_ref` = 474 AND `type_name` = 'default');		# Porygon-Z

# Iron Fist
UPDATE `type_bundle` SET `ability1` = 89 WHERE
(`pokedex_ref` = 622 AND `type_name` = 'default') OR	# Golett
(`pokedex_ref` = 623 AND `type_name` = 'default') OR	# Golurk
(`pokedex_ref` = 674 AND `type_name` = 'default') OR	# Pancham
(`pokedex_ref` = 675 AND `type_name` = 'default') OR	# Pangoro
(`pokedex_ref` = 809 AND `type_name` = 'default');		# Melmetal
UPDATE `type_bundle` SET `ability2` = 89 WHERE
(`pokedex_ref` = 107 AND `type_name` = 'default') OR	# Hitmonchan
(`pokedex_ref` = 739 AND `type_name` = 'default') OR	# Crabrawler
(`pokedex_ref` = 740 AND `type_name` = 'default');		# Crabominable
UPDATE `type_bundle` SET `hidden_ability` = 89 WHERE
(`pokedex_ref` = 166 AND `type_name` = 'default') OR	# Ledian
(`pokedex_ref` = 390 AND `type_name` = 'default') OR	# Chimchar
(`pokedex_ref` = 391 AND `type_name` = 'default') OR	# Monferno
(`pokedex_ref` = 392 AND `type_name` = 'default') OR	# Infernape
(`pokedex_ref` = 532 AND `type_name` = 'default') OR	# Timburr
(`pokedex_ref` = 533 AND `type_name` = 'default') OR	# Gurdurr
(`pokedex_ref` = 534 AND `type_name` = 'default');		# Conkeldurr

# Poison Heal
UPDATE `type_bundle` SET `ability2` = 90 WHERE
(`pokedex_ref` = 285 AND `type_name` = 'default') OR	# Shroomish
(`pokedex_ref` = 286 AND `type_name` = 'default');		# Breloom
UPDATE `type_bundle` SET `hidden_ability` = 90 WHERE
(`pokedex_ref` = 472 AND `type_name` = 'default');		# Gliscor

# Adaptability
UPDATE `type_bundle` SET `ability1` = 91 WHERE
(`pokedex_ref` = 15 AND `type_name` = 'mega') OR		# MEGA Beedrill
(`pokedex_ref` = 448 AND `type_name` = 'mega') OR		# MEGA Lucario
(`pokedex_ref` = 474 AND `type_name` = 'default');		# Porygon-Z
UPDATE `type_bundle` SET `ability2` = 91 WHERE
(`pokedex_ref` = 133 AND `type_name` = 'default') OR			# Eevee
(`pokedex_ref` = 550 AND `type_name` = 'red-striped_form') OR	# Basculin (Red-Striped Form)
(`pokedex_ref` = 550 AND `type_name` = 'blue-striped_form') OR	# Basculin (Red-Striped Form)
(`pokedex_ref` = 550 AND `type_name` = 'white-striped_form') OR	# Basculin (White-Striped Form)
(`pokedex_ref` = 902 AND `type_name` = 'default');				# Basculeigon
UPDATE `type_bundle` SET `hidden_ability` = 91 WHERE
(`pokedex_ref` = 341 AND `type_name` = 'default') OR	# Corphish
(`pokedex_ref` = 342 AND `type_name` = 'default') OR	# Crawdunt
(`pokedex_ref` = 349 AND `type_name` = 'default') OR	# Feebas
(`pokedex_ref` = 690 AND `type_name` = 'default') OR	# Skrelp
(`pokedex_ref` = 691 AND `type_name` = 'default') OR	# Dragalge
(`pokedex_ref` = 734 AND `type_name` = 'default') OR	# Yungoos
(`pokedex_ref` = 735 AND `type_name` = 'default');		# Gumshoos

# Skill Link
UPDATE `type_bundle` SET `ability1` = 92 WHERE
(`pokedex_ref` = 0 AND `type_name` = 'default') OR		# 
(`pokedex_ref` = 214 AND `type_name` = 'mega');			# MEGA Heracross
UPDATE `type_bundle` SET `ability2` = 92 WHERE
(`pokedex_ref` = 90 AND `type_name` = 'default') OR		# Shellder
(`pokedex_ref` = 91 AND `type_name` = 'default') OR		# Cloyster
(`pokedex_ref` = 731 AND `type_name` = 'default') OR	# Pikipek
(`pokedex_ref` = 732 AND `type_name` = 'default') OR	# Trumbeak
(`pokedex_ref` = 733 AND `type_name` = 'default');		# Toucannon
UPDATE `type_bundle` SET `hidden_ability` = 92 WHERE
(`pokedex_ref` = 190 AND `type_name` = 'default') OR	# Aipom
(`pokedex_ref` = 424 AND `type_name` = 'default') OR	# Ambipom
(`pokedex_ref` = 572 AND `type_name` = 'default') OR	# Minccino
(`pokedex_ref` = 573 AND `type_name` = 'default');		# Cinccino

# Hydration
UPDATE `type_bundle` SET `ability1` = 93 WHERE
(`pokedex_ref` = 489 AND `type_name` = 'default') OR	# Phione
(`pokedex_ref` = 490 AND `type_name` = 'default') OR	# Manaphy
(`pokedex_ref` = 616 AND `type_name` = 'default') OR	# Shelmet
(`pokedex_ref` = 617 AND `type_name` = 'default');		# Accelgor
UPDATE `type_bundle` SET `ability2` = 93 WHERE
(`pokedex_ref` = 86 AND `type_name` = 'default') OR		# Seel
(`pokedex_ref` = 87 AND `type_name` = 'default') OR		# Dewgong
(`pokedex_ref` = 278 AND `type_name` = 'default') OR	# Wingull
(`pokedex_ref` = 535 AND `type_name` = 'default') OR	# Tympole
(`pokedex_ref` = 536 AND `type_name` = 'default') OR	# Palpitoad
(`pokedex_ref` = 594 AND `type_name` = 'default') OR	# Hydration
(`pokedex_ref` = 704 AND `type_name` = 'default') OR	# Goomy
(`pokedex_ref` = 705 AND `type_name` = 'default') OR	# Sliggoo
(`pokedex_ref` = 706 AND `type_name` = 'default');		# Goodra
UPDATE `type_bundle` SET `hidden_ability` = 93 WHERE
(`pokedex_ref` = 131 AND `type_name` = 'default') OR	# Lapras
(`pokedex_ref` = 134 AND `type_name` = 'default') OR	# Vaporeon
(`pokedex_ref` = 238 AND `type_name` = 'default') OR	# Smoochum
(`pokedex_ref` = 339 AND `type_name` = 'default') OR	# Barboach
(`pokedex_ref` = 340 AND `type_name` = 'default') OR	# Whiscash
(`pokedex_ref` = 368 AND `type_name` = 'default') OR	# Gorebyss
(`pokedex_ref` = 370 AND `type_name` = 'default') OR	# Luvdisc
(`pokedex_ref` = 580 AND `type_name` = 'default') OR	# Ducklett
(`pokedex_ref` = 581 AND `type_name` = 'default');		# Swanna

# Solar Power
UPDATE `type_bundle` SET `ability1` = 94 WHERE
(`pokedex_ref` = 229 AND `type_name` = 'mega');			# MEGA Houndoom
UPDATE `type_bundle` SET `ability2` = 94 WHERE
(`pokedex_ref` = 191 AND `type_name` = 'default') OR	# Sunkern
(`pokedex_ref` = 192 AND `type_name` = 'default') OR	# Sunflora
(`pokedex_ref` = 357 AND `type_name` = 'default');		# Tropius
UPDATE `type_bundle` SET `hidden_ability` = 94 WHERE
(`pokedex_ref` = 4 AND `type_name` = 'default') OR		# Charmander
(`pokedex_ref` = 5 AND `type_name` = 'default') OR		# Charmeleon
(`pokedex_ref` = 6 AND `type_name` = 'default') OR		# Charizard
(`pokedex_ref` = 694 AND `type_name` = 'default') OR	# Helioptile
(`pokedex_ref` = 695 AND `type_name` = 'default');		# Heliolisk

# Quick Feet
UPDATE `type_bundle` SET `ability2` = 95 WHERE
(`pokedex_ref` = 210 AND `type_name` = 'default') OR	# Granbull
(`pokedex_ref` = 216 AND `type_name` = 'default') OR	# Teddiursa
(`pokedex_ref` = 217 AND `type_name` = 'default') OR	# Ursaring
(`pokedex_ref` = 261 AND `type_name` = 'default') OR	# Poochyena
(`pokedex_ref` = 262 AND `type_name` = 'default');		# Mightyena
UPDATE `type_bundle` SET `hidden_ability` = 95 WHERE
(`pokedex_ref` = 135 AND `type_name` = 'default') OR			# Jolteon
(`pokedex_ref` = 263 AND `type_name` = 'default') OR			# Zigzagoon
(`pokedex_ref` = 263 AND `type_name` = 'galar_variant') OR		# Zigzagoon (Galar)
(`pokedex_ref` = 264 AND `type_name` = 'default') OR			# Linoone
(`pokedex_ref` = 264 AND `type_name` = 'galar_variant') OR		# Linoone (Galar)
(`pokedex_ref` = 285 AND `type_name` = 'default');				# Shroomish

# Normalize
UPDATE `type_bundle` SET `ability2` = 96 WHERE
(`pokedex_ref` = 300 AND `type_name` = 'default') OR	# Skitty
(`pokedex_ref` = 301 AND `type_name` = 'default');		# Delcatty

# Sniper
UPDATE `type_bundle` SET `ability2` = 97 WHERE
(`pokedex_ref` = 116 AND `type_name` = 'default') OR	# Horsea
(`pokedex_ref` = 117 AND `type_name` = 'default') OR	# Seadra
(`pokedex_ref` = 223 AND `type_name` = 'default') OR	# Remoraid
(`pokedex_ref` = 224 AND `type_name` = 'default') OR	# Octillery
(`pokedex_ref` = 230 AND `type_name` = 'default') OR	# Kingdra
(`pokedex_ref` = 451 AND `type_name` = 'default') OR	# Skorupi
(`pokedex_ref` = 452 AND `type_name` = 'default') OR	# Drapion
(`pokedex_ref` = 688 AND `type_name` = 'default') OR	# Binacle
(`pokedex_ref` = 689 AND `type_name` = 'default');		# Barbaracle
UPDATE `type_bundle` SET `hidden_ability` = 97 WHERE
(`pokedex_ref` = 15 AND `type_name` = 'default') OR		# Beedrill
(`pokedex_ref` = 21 AND `type_name` = 'default') OR		# Spearow
(`pokedex_ref` = 22 AND `type_name` = 'default') OR		# Fearow
(`pokedex_ref` = 167 AND `type_name` = 'default') OR	# Spinarak
(`pokedex_ref` = 168 AND `type_name` = 'default') OR	# Ariados
(`pokedex_ref` = 816 AND `type_name` = 'default') OR	# Sobble
(`pokedex_ref` = 817 AND `type_name` = 'default') OR	# Drizzile
(`pokedex_ref` = 818 AND `type_name` = 'default');		# Inteleon

# Magic Guard
UPDATE `type_bundle` SET `ability2` = 98 WHERE
(`pokedex_ref` = 35 AND `type_name` = 'default') OR		# Clefairy
(`pokedex_ref` = 36 AND `type_name` = 'default') OR		# Clefable
(`pokedex_ref` = 173 AND `type_name` = 'default') OR	# Cleffa
(`pokedex_ref` = 561 AND `type_name` = 'default') OR	# Sigilyph
(`pokedex_ref` = 577 AND `type_name` = 'default') OR	# Solosis
(`pokedex_ref` = 578 AND `type_name` = 'default') OR	# Duosion
(`pokedex_ref` = 579 AND `type_name` = 'default');		# Reuniclus
UPDATE `type_bundle` SET `hidden_ability` = 98 WHERE
(`pokedex_ref` = 63 AND `type_name` = 'default') OR		# Abra
(`pokedex_ref` = 64 AND `type_name` = 'default') OR		# Kadabra
(`pokedex_ref` = 65 AND `type_name` = 'default');		# Alakazam

# No Guard
UPDATE `type_bundle` SET `ability1` = 99 WHERE
(`pokedex_ref` = 18 AND `type_name` = 'mega') OR		# MEGA Pidgeot
(`pokedex_ref` = 679 AND `type_name` = 'default') OR	# Honedge
(`pokedex_ref` = 680 AND `type_name` = 'default');		# Doublade
UPDATE `type_bundle` SET `ability2` = 99 WHERE
(`pokedex_ref` = 66 AND `type_name` = 'default') OR			# Machop
(`pokedex_ref` = 67 AND `type_name` = 'default') OR			# Machoke
(`pokedex_ref` = 68 AND `type_name` = 'default');			# Machamp
UPDATE `type_bundle` SET `hidden_ability` = 99 WHERE
(`pokedex_ref` = 588 AND `type_name` = 'default') OR		# Karrablast
(`pokedex_ref` = 622 AND `type_name` = 'default') OR		# Golett
(`pokedex_ref` = 623 AND `type_name` = 'default') OR		# Golurk
(`pokedex_ref` = 745 AND `type_name` = 'midnight_form');	# Lycanroc (Midnight Form)

# Stall
UPDATE `type_bundle` SET `ability2` = 100 WHERE
(`pokedex_ref` = 302 AND `type_name` = 'default');		# Sableye

# Technician
UPDATE `type_bundle` SET `ability1` = 101 WHERE
(`pokedex_ref` = 212 AND `type_name` = 'mega') OR		# MEGA Scizor
(`pokedex_ref` = 424 AND `type_name` = 'default') OR	# Ambipom
(`pokedex_ref` = 802 AND `type_name` = 'default');		# Marshadow
UPDATE `type_bundle` SET `ability2` = 101 WHERE
(`pokedex_ref` = 52 AND `type_name` = 'default') OR			# Meowth
(`pokedex_ref` = 52 AND `type_name` = 'alola_variant') OR	# Meowth (Alola)
(`pokedex_ref` = 53 AND `type_name` = 'default') OR			# Persian
(`pokedex_ref` = 53 AND `type_name` = 'alola_variant') OR	# Persian (Alola)
(`pokedex_ref` = 123 AND `type_name` = 'default') OR		# Scyther
(`pokedex_ref` = 212 AND `type_name` = 'default') OR		# Scizor
(`pokedex_ref` = 235 AND `type_name` = 'default') OR		# Smeargle
(`pokedex_ref` = 237 AND `type_name` = 'default') OR		# Hitmontop
(`pokedex_ref` = 572 AND `type_name` = 'default') OR		# Minccino
(`pokedex_ref` = 573 AND `type_name` = 'default');			# Cinccino
UPDATE `type_bundle` SET `hidden_ability` = 101 WHERE
(`pokedex_ref` = 122 AND `type_name` = 'default') OR		# Mr Mime
(`pokedex_ref` = 286 AND `type_name` = 'default') OR		# Breloom
(`pokedex_ref` = 402 AND `type_name` = 'default') OR		# Kricketune
(`pokedex_ref` = 407 AND `type_name` = 'default') OR		# Roserade
(`pokedex_ref` = 439 AND `type_name` = 'default') OR		# Mime Jr
(`pokedex_ref` = 849 AND `type_name` = 'amped_form') OR		# Toxtricity (Amped Form)
(`pokedex_ref` = 849 AND `type_name` = 'low_key_form') OR	# Toxtricity (Low Key Form)
(`pokedex_ref` = 852 AND `type_name` = 'default') OR		# Clobbopus
(`pokedex_ref` = 853 AND `type_name` = 'default');			# Grapploct

# Leaf Guard
UPDATE `type_bundle` SET `ability1` = 102 WHERE
(`pokedex_ref` = 470 AND `type_name` = 'default') OR		# Leafeon
(`pokedex_ref` = 541 AND `type_name` = 'default') OR		# Swadloon
(`pokedex_ref` = 753 AND `type_name` = 'default') OR		# Fomantis
(`pokedex_ref` = 754 AND `type_name` = 'default') OR		# Lurantis
(`pokedex_ref` = 761 AND `type_name` = 'default') OR		# Bounsweet
(`pokedex_ref` = 762 AND `type_name` = 'default') OR		# Steenee
(`pokedex_ref` = 763 AND `type_name` = 'default') OR		# Tsareena
(`pokedex_ref` = 893 AND `type_name` = 'default');			# Zarude

UPDATE `type_bundle` SET `ability2` = 102 WHERE
(`pokedex_ref` = 114 AND `type_name` = 'default') OR		# Tangela
(`pokedex_ref` = 187 AND `type_name` = 'default') OR		# Hoppip
(`pokedex_ref` = 188 AND `type_name` = 'default') OR		# Skiploom
(`pokedex_ref` = 189 AND `type_name` = 'default') OR		# Jumpluff
(`pokedex_ref` = 465 AND `type_name` = 'default');			# Tangrowth
UPDATE `type_bundle` SET `hidden_ability` = 102 WHERE
(`pokedex_ref` = 152 AND `type_name` = 'default') OR		# Chikorita
(`pokedex_ref` = 153 AND `type_name` = 'default') OR		# Bayleef
(`pokedex_ref` = 154 AND `type_name` = 'default') OR		# Meganium
(`pokedex_ref` = 315 AND `type_name` = 'default') OR		# Roselia
(`pokedex_ref` = 406 AND `type_name` = 'default') OR		# Budew
(`pokedex_ref` = 548 AND `type_name` = 'default') OR		# Petilil
(`pokedex_ref` = 549 AND `type_name` = 'default') OR		# Lilligant 
(`pokedex_ref` = 549 AND `type_name` = 'hisui_variant');	# Lilligant (Hisui)

# Klutz
UPDATE `type_bundle` SET `ability2` = 103 WHERE
(`pokedex_ref` = 427 AND `type_name` = 'default') OR	# Buneary
(`pokedex_ref` = 428 AND `type_name` = 'default') OR	# Lopunny
(`pokedex_ref` = 527 AND `type_name` = 'default') OR	# Woobat
(`pokedex_ref` = 528 AND `type_name` = 'default') OR	# Swoobat
(`pokedex_ref` = 622 AND `type_name` = 'default') OR	# Golett
(`pokedex_ref` = 623 AND `type_name` = 'default') OR	# Golurk
(`pokedex_ref` = 759 AND `type_name` = 'default') OR	# Stufful
(`pokedex_ref` = 760 AND `type_name` = 'default');		# Bewear
UPDATE `type_bundle` SET `hidden_ability` = 103 WHERE
(`pokedex_ref` = 531 AND `type_name` = 'default') OR	# Audino
(`pokedex_ref` = 848 AND `type_name` = 'default');		# Toxel

# Mold Breaker
UPDATE `type_bundle` SET `ability1` = 104 WHERE
(`pokedex_ref` = 130 AND `type_name` = 'mega') OR		# MEGA Gyarados
(`pokedex_ref` = 181 AND `type_name` = 'mega') OR		# MEGA Ampharos
(`pokedex_ref` = 408 AND `type_name` = 'default') OR	# Cranidos
(`pokedex_ref` = 409 AND `type_name` = 'default');		# Rampardos
UPDATE `type_bundle` SET `ability2` = 104 WHERE
(`pokedex_ref` = 127 AND `type_name` = 'default') OR	# Pinsir
(`pokedex_ref` = 610 AND `type_name` = 'default') OR	# Axew
(`pokedex_ref` = 611 AND `type_name` = 'default') OR	# Fraxure
(`pokedex_ref` = 612 AND `type_name` = 'default') OR	# Haxorus
(`pokedex_ref` = 674 AND `type_name` = 'default') OR	# Pancham
(`pokedex_ref` = 675 AND `type_name` = 'default');		# Pangoro
UPDATE `type_bundle` SET `hidden_ability` = 104 WHERE 
(`pokedex_ref` = 529 AND `type_name` = 'default') OR			# Drilbur
(`pokedex_ref` = 530 AND `type_name` = 'default') OR			# Excadrill
(`pokedex_ref` = 538 AND `type_name` = 'default') OR			# Throh
(`pokedex_ref` = 539 AND `type_name` = 'default') OR			# Sawk
(`pokedex_ref` = 550 AND `type_name` = 'red-striped_form') OR	# Basculin (Red-Striped Form)
(`pokedex_ref` = 550 AND `type_name` = 'blue-striped_form') OR	# Basculin (Blue-Striped Form)
(`pokedex_ref` = 550 AND `type_name` = 'white-striped_form') OR	# Basculin (White-Striped Form)
(`pokedex_ref` = 621 AND `type_name` = 'default') OR			# Druddigon
(`pokedex_ref` = 701 AND `type_name` = 'default') OR			# Hawlucha
(`pokedex_ref` = 902 AND `type_name` = 'default');				# Basculeigon

# Super Luck
UPDATE `type_bundle` SET `ability2` = 105 WHERE
(`pokedex_ref` = 198 AND `type_name` = 'default') OR	# Murkrow
(`pokedex_ref` = 359 AND `type_name` = 'default') OR	# Absol
(`pokedex_ref` = 430 AND `type_name` = 'default') OR	# Honchkrow
(`pokedex_ref` = 519 AND `type_name` = 'default') OR	# Pidove
(`pokedex_ref` = 520 AND `type_name` = 'default') OR	# Tranquill
(`pokedex_ref` = 521 AND `type_name` = 'default');		# Unfezant
UPDATE `type_bundle` SET `hidden_ability` = 105 WHERE
(`pokedex_ref` = 175 AND `type_name` = 'default') OR	# Togepi
(`pokedex_ref` = 176 AND `type_name` = 'default') OR	# Togetic
(`pokedex_ref` = 468 AND `type_name` = 'default');		# Togekiss

# Aftermath
UPDATE `type_bundle` SET `ability1` = 106 WHERE
(`pokedex_ref` = 425 AND `type_name` = 'default') OR		# Drifloon
(`pokedex_ref` = 426 AND `type_name` = 'default');			# Drifblim
UPDATE `type_bundle` SET `ability2` = 106 WHERE
(`pokedex_ref` = 434 AND `type_name` = 'default') OR		# Stunky
(`pokedex_ref` = 435 AND `type_name` = 'default');			# Skunktank
UPDATE `type_bundle` SET `hidden_ability` = 106 WHERE
(`pokedex_ref` = 100 AND `type_name` = 'default') OR		# Voltorb
(`pokedex_ref` = 100 AND `type_name` = 'hisui_variant') OR	# Voltorb (Hisui)
(`pokedex_ref` = 101 AND `type_name` = 'default') OR		# Electrode
(`pokedex_ref` = 101 AND `type_name` = 'hisui_variant') OR	# Electrode (Hisui)
(`pokedex_ref` = 568 AND `type_name` = 'default') OR		# Trubbish
(`pokedex_ref` = 569 AND `type_name` = 'default');			# Garbodor

# Anticipation
UPDATE `type_bundle` SET `ability1` = 107 WHERE
(`pokedex_ref` = 413 AND `type_name` = 'plant_cloak') OR	# Wormadam (Plant Cloak)
(`pokedex_ref` = 413 AND `type_name` = 'sandy_cloak') OR	# Wormadam (Sandy Cloak)
(`pokedex_ref` = 413 AND `type_name` = 'trash_cloak') OR	# Wormadam (Trash Cloak)
(`pokedex_ref` = 453 AND `type_name` = 'default') OR		# Croagunk
(`pokedex_ref` = 454 AND `type_name` = 'default');			# Toxicroak
UPDATE `type_bundle` SET `ability2` = 107 WHERE
(`pokedex_ref` = 339 AND `type_name` = 'default') OR	# Barboach
(`pokedex_ref` = 340 AND `type_name` = 'default') OR	# Whiscash
(`pokedex_ref` = 856 AND `type_name` = 'default') OR	# Hatenna
(`pokedex_ref` = 857 AND `type_name` = 'default') OR	# Hattrem
(`pokedex_ref` = 858 AND `type_name` = 'default');		# Hatterene
UPDATE `type_bundle` SET `hidden_ability` = 107 WHERE
(`pokedex_ref` = 77 AND `type_name` = 'galar_variant') OR	# Ponyta (Galar)
(`pokedex_ref` = 78 AND `type_name` = 'galar_variant') OR	# Rapidash (Galar)
(`pokedex_ref` = 133 AND `type_name` = 'default') OR		# Eevee
(`pokedex_ref` = 598 AND `type_name` = 'default');			# Ferrothorn

# Forewarn
UPDATE `type_bundle` SET `ability1` = 108 WHERE
(`pokedex_ref` = 517 AND `type_name` = 'default') OR	# Munna
(`pokedex_ref` = 518 AND `type_name` = 'default');		# Musharna
UPDATE `type_bundle` SET `ability2` = 108 WHERE
(`pokedex_ref` = 96 AND `type_name` = 'default') OR		# Drowzee
(`pokedex_ref` = 97 AND `type_name` = 'default') OR		# Hypno
(`pokedex_ref` = 124 AND `type_name` = 'default') OR	# Jynx
(`pokedex_ref` = 238 AND `type_name` = 'default');		# Smoochum

# Unaware
UPDATE `type_bundle` SET `ability1` = 109 WHERE
(`pokedex_ref` = 527 AND `type_name` = 'default') OR	# Woobat
(`pokedex_ref` = 528 AND `type_name` = 'default') OR	# Swoobat
(`pokedex_ref` = 789 AND `type_name` = 'default');		# Cosmog
UPDATE `type_bundle` SET `ability2` = 109 WHERE
(`pokedex_ref` = 399 AND `type_name` = 'default') OR	# Bidoof
(`pokedex_ref` = 400 AND `type_name` = 'default');		# Bibarel
UPDATE `type_bundle` SET `hidden_ability` = 109 WHERE
(`pokedex_ref` = 36 AND `type_name` = 'default') OR		# Clefable
(`pokedex_ref` = 194 AND `type_name` = 'default') OR	# Wooper
(`pokedex_ref` = 195 AND `type_name` = 'default') OR	# Quagsire
(`pokedex_ref` = 771 AND `type_name` = 'default');		# Pyukumuku

# Tinted Lens
UPDATE `type_bundle` SET `ability2` = 110 WHERE
(`pokedex_ref` = 48 AND `type_name` = 'default') OR		# Venonat
(`pokedex_ref` = 49 AND `type_name` = 'default') OR		# Venomoth
(`pokedex_ref` = 314 AND `type_name` = 'default') OR	# Illumise
(`pokedex_ref` = 469 AND `type_name` = 'default');		# Yanmega
UPDATE `type_bundle` SET `hidden_ability` = 110 WHERE
(`pokedex_ref` = 12 AND `type_name` = 'default') OR		# Butterfree
(`pokedex_ref` = 163 AND `type_name` = 'default') OR	# Hoothoot
(`pokedex_ref` = 164 AND `type_name` = 'default') OR	# Noctowl
(`pokedex_ref` = 414 AND `type_name` = 'default') OR	# Mothim
(`pokedex_ref` = 561 AND `type_name` = 'default');		# Sigilyph

# Filter
UPDATE `type_bundle` SET `ability1` = 111 WHERE
(`pokedex_ref` = 306 AND `type_name` = 'mega');			# MEGA Aggron
UPDATE `type_bundle` SET `ability2` = 111 WHERE
(`pokedex_ref` = 122 AND `type_name` = 'default') OR	# Mr Mime
(`pokedex_ref` = 439 AND `type_name` = 'default');		# Mime Jr

# Slow Start
UPDATE `type_bundle` SET `ability1` = 112 WHERE
(`pokedex_ref` = 486 AND `type_name` = 'default');		# Regigigas

# Scrappy
UPDATE `type_bundle` SET `ability1` = 113 WHERE
(`pokedex_ref` = 428 AND `type_name` = 'mega');			# MEGA Lopunny
UPDATE `type_bundle` SET `ability2` = 113 WHERE
(`pokedex_ref` = 115 AND `type_name` = 'default') OR	# Kangaskhan
(`pokedex_ref` = 241 AND `type_name` = 'default');		# Miltank
UPDATE `type_bundle` SET `hidden_ability` = 113 WHERE
(`pokedex_ref` = 83 AND `type_name` = 'galar_variant') OR	# Farfetch'd (Galar)
(`pokedex_ref` = 276 AND `type_name` = 'default') OR		# Taillow
(`pokedex_ref` = 277 AND `type_name` = 'default') OR		# Swellow
(`pokedex_ref` = 294 AND `type_name` = 'default') OR		# Loudred
(`pokedex_ref` = 295 AND `type_name` = 'default') OR		# Exploud
(`pokedex_ref` = 507 AND `type_name` = 'default') OR		# Herdier
(`pokedex_ref` = 508 AND `type_name` = 'default') OR		# Stoutland
(`pokedex_ref` = 674 AND `type_name` = 'default') OR		# Pancham
(`pokedex_ref` = 675 AND `type_name` = 'default') OR		# Pangoro
(`pokedex_ref` = 865 AND `type_name` = 'default');			# Sirfetch'd

# Storm Drain
UPDATE `type_bundle` SET `ability2` = 114 WHERE
(`pokedex_ref` = 422 AND `type_name` = 'east_sea') OR	# Shellos (East Sea)
(`pokedex_ref` = 422 AND `type_name` = 'west_sea') OR	# Shellos (West Sea)
(`pokedex_ref` = 423 AND `type_name` = 'east_sea') OR	# Gastrodon (East Sea)
(`pokedex_ref` = 423 AND `type_name` = 'west_sea') OR	# Gastrodon (West Sea)
(`pokedex_ref` = 456 AND `type_name` = 'default') OR	# Finneon
(`pokedex_ref` = 457 AND `type_name` = 'default');		# Lumineon
UPDATE `type_bundle` SET `hidden_ability` = 114 WHERE
(`pokedex_ref` = 345 AND `type_name` = 'default') OR	# Storm Drain
(`pokedex_ref` = 346 AND `type_name` = 'default') OR	# Cradily
(`pokedex_ref` = 556 AND `type_name` = 'default');		# Maractus

# Ice Body
UPDATE `type_bundle` SET `ability1` = 115 WHERE
(`pokedex_ref` = 582 AND `type_name` = 'default') OR		# Vanillite
(`pokedex_ref` = 583 AND `type_name` = 'default') OR		# Vanillish
(`pokedex_ref` = 584 AND `type_name` = 'default');			# Vanilluxe
UPDATE `type_bundle` SET `ability2` = 115 WHERE
(`pokedex_ref` = 361 AND `type_name` = 'default') OR		# Snorunt
(`pokedex_ref` = 362 AND `type_name` = 'default') OR		# Glalie
(`pokedex_ref` = 363 AND `type_name` = 'default') OR		# Spheal
(`pokedex_ref` = 364 AND `type_name` = 'default') OR		# Sealeo
(`pokedex_ref` = 365 AND `type_name` = 'default') OR		# Walrein
(`pokedex_ref` = 712 AND `type_name` = 'default') OR		# Bergmite
(`pokedex_ref` = 713 AND `type_name` = 'default') OR		# Avalugg
(`pokedex_ref` = 713 AND `type_name` = 'hisui_variant') OR	# Avalugg (Hisui)
(`pokedex_ref` = 883 AND `type_name` = 'default');			# Arctovish
UPDATE `type_bundle` SET `hidden_ability` = 115 WHERE
(`pokedex_ref` = 86 AND `type_name` = 'default') OR			# Seel
(`pokedex_ref` = 87 AND `type_name` = 'default') OR			# Dewgong
(`pokedex_ref` = 122 AND `type_name` = 'galar_variant') OR	# Mr Mime (Galar)
(`pokedex_ref` = 471 AND `type_name` = 'default') OR		# Glaceon
(`pokedex_ref` = 378 AND `type_name` = 'default') OR		# Regice
(`pokedex_ref` = 866 AND `type_name` = 'default');			# Mr Rime

# Solid Rock
UPDATE `type_bundle` SET `ability1` = 116 WHERE
(`pokedex_ref` = 564 AND `type_name` = 'default') OR	# Tirtouga
(`pokedex_ref` = 565 AND `type_name` = 'default');		# Carracosta
UPDATE `type_bundle` SET `ability2` = 116 WHERE
(`pokedex_ref` = 323 AND `type_name` = 'default') OR	# Camerupt
(`pokedex_ref` = 464 AND `type_name` = 'default');		# Rhyperior

# Snow Warning
UPDATE `type_bundle` SET `ability1` = 117 WHERE
(`pokedex_ref` = 459 AND `type_name` = 'default') OR	# Snover
(`pokedex_ref` = 460 AND `type_name` = 'default') OR	# Abomasnow
(`pokedex_ref` = 460 AND `type_name` = 'mega');			# MEGA Abomasnow
UPDATE `type_bundle` SET `ability2` = 117 WHERE
(`pokedex_ref` = 584 AND `type_name` = 'default');		# Vanilluxe
UPDATE `type_bundle` SET `hidden_ability` = 117 WHERE
(`pokedex_ref` = 37 AND `type_name` = 'alola_variant') OR	# Vulpix (Alola)
(`pokedex_ref` = 38 AND `type_name` = 'alola_variant') OR	# Ninetales (Alola)
(`pokedex_ref` = 698 AND `type_name` = 'default') OR		# Amaura
(`pokedex_ref` = 699 AND `type_name` = 'default');			# Aurorus

# Honey Gather
UPDATE `type_bundle` SET `ability1` = 118 WHERE
(`pokedex_ref` = 415 AND `type_name` = 'default') OR	# Combee
(`pokedex_ref` = 742 AND `type_name` = 'default') OR	# Cutiefly
(`pokedex_ref` = 743 AND `type_name` = 'default');		# Ribombee
UPDATE `type_bundle` SET `hidden_ability` = 118 WHERE
(`pokedex_ref` = 216 AND `type_name` = 'default');		# Teddiursa

# Frisk
UPDATE `type_bundle` SET `ability1` = 119 WHERE
(`pokedex_ref` = 103 AND `type_name` = 'alola_variant') OR	# Exeggutor (Alola)
(`pokedex_ref` = 574 AND `type_name` = 'default') OR		# Gothita
(`pokedex_ref` = 575 AND `type_name` = 'default') OR		# Gothorita
(`pokedex_ref` = 576 AND `type_name` = 'default') OR		# Gothitelle
(`pokedex_ref` = 714 AND `type_name` = 'default') OR		# Noibat
(`pokedex_ref` = 715 AND `type_name` = 'default');			# Noivern
UPDATE `type_bundle` SET `ability2` = 119 WHERE
(`pokedex_ref` = 234 AND `type_name` = 'default') OR	# Stantler
(`pokedex_ref` = 353 AND `type_name` = 'default') OR	# Shuppet
(`pokedex_ref` = 354 AND `type_name` = 'default') OR	# Banette
(`pokedex_ref` = 708 AND `type_name` = 'default') OR	# Phantump
(`pokedex_ref` = 709 AND `type_name` = 'default') OR	# Trevenant
(`pokedex_ref` = 710 AND `type_name` = 'default') OR	# Pumpkaboo
(`pokedex_ref` = 711 AND `type_name` = 'default') OR	# Gourgeist
(`pokedex_ref` = 826 AND `type_name` = 'default') OR	# Orbeetle
(`pokedex_ref` = 859 AND `type_name` = 'default') OR	# Impidimp
(`pokedex_ref` = 860 AND `type_name` = 'default') OR	# Morgrem
(`pokedex_ref` = 861 AND `type_name` = 'default') OR	# Grimmsnarl
(`pokedex_ref` = 899 AND `type_name` = 'default');		# Wyrdeer
UPDATE `type_bundle` SET `hidden_ability` = 119 WHERE
(`pokedex_ref` = 40 AND `type_name` = 'default') OR		# Wigglytuff
(`pokedex_ref` = 161 AND `type_name` = 'default') OR	# Sentret
(`pokedex_ref` = 162 AND `type_name` = 'default') OR	# Furret
(`pokedex_ref` = 193 AND `type_name` = 'default') OR	# Yanma
(`pokedex_ref` = 355 AND `type_name` = 'default') OR	# Duskull
(`pokedex_ref` = 356 AND `type_name` = 'default') OR	# Dusclops
(`pokedex_ref` = 469 AND `type_name` = 'default') OR	# Yanmega
(`pokedex_ref` = 477 AND `type_name` = 'default');		# Dusknoir

# Reckless
UPDATE `type_bundle` SET `ability1` = 120 WHERE
(`pokedex_ref` = 550 AND `type_name` = 'red-striped_form') OR	# Basculin (Red-Striped Form)
(`pokedex_ref` = 626 AND `type_name` = 'default') OR			# Bouffalant
(`pokedex_ref` = 862 AND `type_name` = 'default');				# Obstagoon
UPDATE `type_bundle` SET `ability2` = 120 WHERE
(`pokedex_ref` = 106 AND `type_name` = 'default');		# Hitmonlee
UPDATE `type_bundle` SET `hidden_ability` = 120 WHERE
(`pokedex_ref` = 111 AND `type_name` = 'default') OR	# Rhyhorn
(`pokedex_ref` = 112 AND `type_name` = 'default') OR	# Rhydon
(`pokedex_ref` = 396 AND `type_name` = 'default') OR	# Starly
(`pokedex_ref` = 397 AND `type_name` = 'default') OR	# Staravia
(`pokedex_ref` = 398 AND `type_name` = 'default') OR	# Staraptor
(`pokedex_ref` = 464 AND `type_name` = 'default') OR	# Rhyperior
(`pokedex_ref` = 500 AND `type_name` = 'default') OR	# Emboar
(`pokedex_ref` = 619 AND `type_name` = 'default') OR	# Mienfoo
(`pokedex_ref` = 620 AND `type_name` = 'default');		# Mienshao

# Multitype
UPDATE `type_bundle` SET `ability1` = 121 WHERE
(`pokedex_ref` = 493 AND `type_name` = 'default');		# Arceus

# Flower Gift
UPDATE `type_bundle` SET `ability1` = 122 WHERE
(`pokedex_ref` = 421 AND `type_name` = 'default');		# Cherrim

# Bad Dreams
UPDATE `type_bundle` SET `ability1` = 123 WHERE
(`pokedex_ref` = 491 AND `type_name` = 'default');		# Darkrai

# Pickpocket
UPDATE `type_bundle` SET `hidden_ability` = 124 WHERE
(`pokedex_ref` = 215 AND `type_name` = 'default') OR	# Sneasel
(`pokedex_ref` = 273 AND `type_name` = 'default') OR	# Seedot
(`pokedex_ref` = 274 AND `type_name` = 'default') OR	# Nuzleaf
(`pokedex_ref` = 275 AND `type_name` = 'default') OR	# Shiftry
(`pokedex_ref` = 461 AND `type_name` = 'default') OR	# Weavile
(`pokedex_ref` = 688 AND `type_name` = 'default') OR	# Binacle
(`pokedex_ref` = 689 AND `type_name` = 'default') OR	# Barbaracle
(`pokedex_ref` = 859 AND `type_name` = 'default') OR	# Impidimp
(`pokedex_ref` = 860 AND `type_name` = 'default') OR	# Morgrem
(`pokedex_ref` = 861 AND `type_name` = 'default');		# Grimmsnarl

# Sheer Force
UPDATE `type_bundle` SET `ability1` = 125 WHERE
(`pokedex_ref` = 323 AND `type_name` = 'mega') OR				# MEGA Camerupt
(`pokedex_ref` = 555 AND `type_name` = 'standard_mode') OR		# Darmanitan
(`pokedex_ref` = 878 AND `type_name` = 'default') OR			# Cufant
(`pokedex_ref` = 879 AND `type_name` = 'default');				# Copperajah
UPDATE `type_bundle` SET `ability2` = 125 WHERE
(`pokedex_ref` = 532 AND `type_name` = 'default') OR			# Timburr
(`pokedex_ref` = 533 AND `type_name` = 'default') OR			# Gurdurr
(`pokedex_ref` = 534 AND `type_name` = 'default') OR			# Conkeldurr
(`pokedex_ref` = 621 AND `type_name` = 'default') OR			# Druddigon
(`pokedex_ref` = 627 AND `type_name` = 'default') OR			# Rufflet
(`pokedex_ref` = 628 AND `type_name` = 'default') OR			# Braviary
(`pokedex_ref` = 628 AND `type_name` = 'hisui_variant') OR		# Braviary (Hisui)
(`pokedex_ref` = 900 AND `type_name` = 'default');				# Kleavor
UPDATE `type_bundle` SET `hidden_ability` = 125 WHERE
(`pokedex_ref` = 31 AND `type_name` = 'default') OR				# Nidoqueen
(`pokedex_ref` = 34 AND `type_name` = 'default') OR				# Nidoking
(`pokedex_ref` = 98 AND `type_name` = 'default') OR				# Krabby
(`pokedex_ref` = 99 AND `type_name` = 'default') OR				# Kingler
(`pokedex_ref` = 128 AND `type_name` = 'default') OR			# Tauros
(`pokedex_ref` = 158 AND `type_name` = 'default') OR			# Totodile
(`pokedex_ref` = 159 AND `type_name` = 'default') OR			# Croconaw
(`pokedex_ref` = 160 AND `type_name` = 'default') OR			# Feraligatr
(`pokedex_ref` = 208 AND `type_name` = 'default') OR			# Steelix
(`pokedex_ref` = 296 AND `type_name` = 'default') OR			# Makuhita
(`pokedex_ref` = 297 AND `type_name` = 'default') OR			# Hariyama
(`pokedex_ref` = 303 AND `type_name` = 'default') OR			# Mawile
(`pokedex_ref` = 328 AND `type_name` = 'default') OR			# Trapinch
(`pokedex_ref` = 371 AND `type_name` = 'default') OR			# Bagon
(`pokedex_ref` = 408 AND `type_name` = 'default') OR			# Cranidos
(`pokedex_ref` = 409 AND `type_name` = 'default') OR			# Rampardos
(`pokedex_ref` = 645 AND `type_name` = 'incarnate_forme') OR	# Landorus (Incarnate Forme)
(`pokedex_ref` = 733 AND `type_name` = 'default');				# Toucannon

# Contrary
UPDATE `type_bundle` SET `ability1` = 126 WHERE
(`pokedex_ref` = 686 AND `type_name` = 'default') OR			# Inkay
(`pokedex_ref` = 687 AND `type_name` = 'default');				# Malamar
UPDATE `type_bundle` SET `hidden_ability` = 126 WHERE
(`pokedex_ref` = 213 AND `type_name` = 'default') OR			# Shuckle
(`pokedex_ref` = 327 AND `type_name` = 'default') OR			# Spinda
(`pokedex_ref` = 495 AND `type_name` = 'default') OR			# Snivy
(`pokedex_ref` = 496 AND `type_name` = 'default') OR			# Servine
(`pokedex_ref` = 497 AND `type_name` = 'default') OR			# Serperior
(`pokedex_ref` = 753 AND `type_name` = 'default') OR			# Fomantis
(`pokedex_ref` = 754 AND `type_name` = 'default') OR			# Lurantis
(`pokedex_ref` = 905 AND `type_name` = 'incarnate_forme');		# Enamorus (Incarnate Forme)

# Unnerve
UPDATE `type_bundle` SET `ability1` = 127 WHERE
(`pokedex_ref` = 898 AND `type_name` = 'default');		# Calyrex
UPDATE `type_bundle` SET `ability2` = 127 WHERE
(`pokedex_ref` = 595 AND `type_name` = 'default') OR	# Joltik
(`pokedex_ref` = 596 AND `type_name` = 'default') OR	# Galvantula
(`pokedex_ref` = 667 AND `type_name` = 'default') OR	# Litleo
(`pokedex_ref` = 668 AND `type_name` = 'default') OR	# Pyroar
(`pokedex_ref` = 821 AND `type_name` = 'default') OR	# Rookidee
(`pokedex_ref` = 822 AND `type_name` = 'default') OR	# Corvisquire
(`pokedex_ref` = 823 AND `type_name` = 'default');		# Corviknight
UPDATE `type_bundle` SET `hidden_ability` = 127 WHERE
(`pokedex_ref` = 23 AND `type_name` = 'default') OR				# Ekans
(`pokedex_ref` = 24 AND `type_name` = 'default') OR				# Arbok
(`pokedex_ref` = 52 AND `type_name` = 'default') OR				# Meowth
(`pokedex_ref` = 52 AND `type_name` = 'galar_variant') OR		# Meowth (Galar)
(`pokedex_ref` = 53 AND `type_name` = 'default') OR				# Persian
(`pokedex_ref` = 142 AND `type_name` = 'default') OR			# Aerodactyl
(`pokedex_ref` = 150 AND `type_name` = 'default') OR			# Mewtwo
(`pokedex_ref` = 217 AND `type_name` = 'default') OR			# Ursaring
(`pokedex_ref` = 228 AND `type_name` = 'default') OR			# Houndour
(`pokedex_ref` = 229 AND `type_name` = 'default') OR			# Houndoom
(`pokedex_ref` = 248 AND `type_name` = 'default') OR			# Tyranitar
(`pokedex_ref` = 284 AND `type_name` = 'default') OR			# Masquerain
(`pokedex_ref` = 416 AND `type_name` = 'default') OR			# Vespiquen
(`pokedex_ref` = 610 AND `type_name` = 'default') OR			# Axew
(`pokedex_ref` = 611 AND `type_name` = 'default') OR			# Fraxure
(`pokedex_ref` = 612 AND `type_name` = 'default') OR			# Haxorus
(`pokedex_ref` = 760 AND `type_name` = 'default') OR			# Bewear
(`pokedex_ref` = 901 AND `type_name` = 'default');				# Ursaluna

# Defiant
UPDATE `type_bundle` SET `ability1` = 128 WHERE
(`pokedex_ref` = 145 AND `type_name` = 'galar_variant') OR		# Zapdos (Galar)
(`pokedex_ref` = 624 AND `type_name` = 'default') OR			# Pawniard
(`pokedex_ref` = 625 AND `type_name` = 'default');				# Bisharp
UPDATE `type_bundle` SET `hidden_ability` = 128 WHERE
(`pokedex_ref` = 56 AND `type_name` = 'default') OR				# Mankey
(`pokedex_ref` = 57 AND `type_name` = 'default') OR				# Primeape
(`pokedex_ref` = 83 AND `type_name` = 'default') OR				# Farfetch'd
(`pokedex_ref` = 393 AND `type_name` = 'default') OR			# Piplup
(`pokedex_ref` = 394 AND `type_name` = 'default') OR			# Prinplup
(`pokedex_ref` = 395 AND `type_name` = 'default') OR			# Empoleon
(`pokedex_ref` = 432 AND `type_name` = 'default') OR			# Purugly
(`pokedex_ref` = 628 AND `type_name` = 'default') OR			# Braviary
(`pokedex_ref` = 628 AND `type_name` = 'hisui_variant') OR		# Braviary (Hisui)
(`pokedex_ref` = 641 AND `type_name` = 'incarnate_forme') OR	# Tornadus (Incarnate Forme)
(`pokedex_ref` = 642 AND `type_name` = 'incarnate_forme') OR	# Thundrus (Incarnate Forme)
(`pokedex_ref` = 766 AND `type_name` = 'default') OR			# Passimian
(`pokedex_ref` = 862 AND `type_name` = 'default') OR			# Obstagoon
(`pokedex_ref` = 870 AND `type_name` = 'default');				# Falinks

# Defeatist
UPDATE `type_bundle` SET `ability1` = 129 WHERE
(`pokedex_ref` = 566 AND `type_name` = 'default') OR	# Archen
(`pokedex_ref` = 567 AND `type_name` = 'default');		# Archeops

# Cursed Body
UPDATE `type_bundle` SET `ability1` = 130 WHERE
(`pokedex_ref` = 94 AND `type_name` = 'default') OR			# Gengar
(`pokedex_ref` = 105 AND `type_name` = 'alola_variant');	# Marowak (Alola)
UPDATE `type_bundle` SET `ability2` = 130 WHERE
(`pokedex_ref` = 592 AND `type_name` = 'default') OR	# Frillish
(`pokedex_ref` = 593 AND `type_name` = 'default');		# Jellicent
UPDATE `type_bundle` SET `hidden_ability` = 130 WHERE
(`pokedex_ref` = 222 AND `type_name` = 'galar_variant') OR	# Corsola (Galar)
(`pokedex_ref` = 353 AND `type_name` = 'default') OR		# Shuppet
(`pokedex_ref` = 354 AND `type_name` = 'default') OR		# Banette
(`pokedex_ref` = 478 AND `type_name` = 'default') OR		# Froslass
(`pokedex_ref` = 854 AND `type_name` = 'default') OR		# Sinistea
(`pokedex_ref` = 855 AND `type_name` = 'default') OR		# Polteageist
(`pokedex_ref` = 885 AND `type_name` = 'default') OR		# Dreepy
(`pokedex_ref` = 886 AND `type_name` = 'default') OR		# Drakloak
(`pokedex_ref` = 887 AND `type_name` = 'default');			# Dragapult

# Healer
UPDATE `type_bundle` SET `ability1` = 131 WHERE
(`pokedex_ref` = 531 AND `type_name` = 'default') OR			# Audino
(`pokedex_ref` = 531 AND `type_name` = 'mega') OR				# MEGA Audino
(`pokedex_ref` = 594 AND `type_name` = 'default') OR			# Alomomola
(`pokedex_ref` = 682 AND `type_name` = 'default') OR			# Spritzee
(`pokedex_ref` = 683 AND `type_name` = 'default') OR			# Aromatisse
(`pokedex_ref` = 856 AND `type_name` = 'default') OR			# Hatenna
(`pokedex_ref` = 857 AND `type_name` = 'default') OR			# Hattrem
(`pokedex_ref` = 858 AND `type_name` = 'default') OR			# Hatterene
(`pokedex_ref` = 905 AND `type_name` = 'incarnate_forme');		# Enamorus
UPDATE `type_bundle` SET `hidden_ability` = 131 WHERE
(`pokedex_ref` = 113 AND `type_name` = 'default') OR	# Chansey
(`pokedex_ref` = 182 AND `type_name` = 'default') OR	# Bellossom
(`pokedex_ref` = 242 AND `type_name` = 'default');		# Blissey

# Friend Guard
UPDATE `type_bundle` SET `hidden_ability` = 132 WHERE
(`pokedex_ref` = 35 AND `type_name` = 'default') OR		# Clefairy
(`pokedex_ref` = 173 AND `type_name` = 'default') OR	# Cleffa
(`pokedex_ref` = 39 AND `type_name` = 'default') OR		# Jigglypuff
(`pokedex_ref` = 174 AND `type_name` = 'default') OR	# Igglybuff
(`pokedex_ref` = 440 AND `type_name` = 'default') OR	# Happiny
(`pokedex_ref` = 664 AND `type_name` = 'default') OR	# Scatterbug
(`pokedex_ref` = 665 AND `type_name` = 'default') OR	# Spewpa
(`pokedex_ref` = 666 AND `type_name` = 'default');		# Vivillon

# Weak Armor
UPDATE `type_bundle` SET `ability1` = 133 WHERE
(`pokedex_ref` = 222 AND `type_name` = 'galar_variant') OR	# Corsola (Galar)
(`pokedex_ref` = 854 AND `type_name` = 'default') OR		# Sinistea
(`pokedex_ref` = 855 AND `type_name` = 'default') OR		# Polteageist
(`pokedex_ref` = 864 AND `type_name` = 'default');			# Cursola
UPDATE `type_bundle` SET `ability2` = 133 WHERE
(`pokedex_ref` = 524 AND `type_name` = 'default') OR	# Roggenrola
(`pokedex_ref` = 525 AND `type_name` = 'default') OR	# Boldore
(`pokedex_ref` = 569 AND `type_name` = 'default');		# Garbodor
UPDATE `type_bundle` SET `hidden_ability` = 133 WHERE
(`pokedex_ref` = 95 AND `type_name` = 'default') OR		# Onix
(`pokedex_ref` = 138 AND `type_name` = 'default') OR	# Omanyte
(`pokedex_ref` = 139 AND `type_name` = 'default') OR	# Omastar
(`pokedex_ref` = 140 AND `type_name` = 'default') OR	# Kabuto
(`pokedex_ref` = 141 AND `type_name` = 'default') OR	# Kabutops
(`pokedex_ref` = 218 AND `type_name` = 'default') OR	# Slugma
(`pokedex_ref` = 219 AND `type_name` = 'default') OR	# Magcargo
(`pokedex_ref` = 227 AND `type_name` = 'default') OR	# Skarmory
(`pokedex_ref` = 557 AND `type_name` = 'default') OR	# Dwebble
(`pokedex_ref` = 558 AND `type_name` = 'default') OR	# Crustle
(`pokedex_ref` = 582 AND `type_name` = 'default') OR	# Vanillite
(`pokedex_ref` = 583 AND `type_name` = 'default') OR	# Vanillish
(`pokedex_ref` = 584 AND `type_name` = 'default') OR	# Vanilluxe
(`pokedex_ref` = 629 AND `type_name` = 'default') OR	# Vullaby
(`pokedex_ref` = 630 AND `type_name` = 'default');		# Mandibuzz

# Heavy Metal
UPDATE `type_bundle` SET `ability2` = 134 WHERE
(`pokedex_ref` = 884 AND `type_name` = 'default');		# Duraludon
UPDATE `type_bundle` SET `hidden_ability` = 134 WHERE
(`pokedex_ref` = 304 AND `type_name` = 'default') OR	# Aron
(`pokedex_ref` = 305 AND `type_name` = 'default') OR	# Lairon
(`pokedex_ref` = 306 AND `type_name` = 'default') OR	# Aggron
(`pokedex_ref` = 436 AND `type_name` = 'default') OR	# Bronzor
(`pokedex_ref` = 437 AND `type_name` = 'default') OR	# Bronzong
(`pokedex_ref` = 878 AND `type_name` = 'default') OR	# Cufant
(`pokedex_ref` = 879 AND `type_name` = 'default');		# Copperajah

# Light Metal
UPDATE `type_bundle` SET `ability1` = 135 WHERE
(`pokedex_ref` = 884 AND `type_name` = 'default');		# Duraludon
UPDATE `type_bundle` SET `hidden_ability` = 135 WHERE
(`pokedex_ref` = 212 AND `type_name` = 'default') OR	# Scizor
(`pokedex_ref` = 374 AND `type_name` = 'default') OR	# Beldum
(`pokedex_ref` = 375 AND `type_name` = 'default') OR	# Metang
(`pokedex_ref` = 376 AND `type_name` = 'default') OR	# Metagross
(`pokedex_ref` = 379 AND `type_name` = 'default');		# Registeel

# Multiscale
UPDATE `type_bundle` SET `hidden_ability` = 136 WHERE
(`pokedex_ref` = 149 AND `type_name` = 'default') OR	# Dragonite
(`pokedex_ref` = 249 AND `type_name` = 'default');		# Lugia

# Toxic Boost
UPDATE `type_bundle` SET `hidden_ability` = 137 WHERE
(`pokedex_ref` = 335 AND `type_name` = 'default');		# Zangoose

# Flare Boost
UPDATE `type_bundle` SET `hidden_ability` = 138 WHERE
(`pokedex_ref` = 425 AND `type_name` = 'default') OR	# Drifloon
(`pokedex_ref` = 426 AND `type_name` = 'default');		# Drifblim

# Harvest
UPDATE `type_bundle` SET `hidden_ability` = 139 WHERE
(`pokedex_ref` = 102 AND `type_name` = 'default') OR		# Exeggcute
(`pokedex_ref` = 103 AND `type_name` = 'default') OR		# Exeggutor
(`pokedex_ref` = 103 AND `type_name` = 'alola_variant') OR	# Exeggutor (Alola)
(`pokedex_ref` = 357 AND `type_name` = 'default') OR		# Tropius
(`pokedex_ref` = 708 AND `type_name` = 'default') OR		# Phantump
(`pokedex_ref` = 709 AND `type_name` = 'default');			# Trevenant

# Telepathy
UPDATE `type_bundle` SET `ability1` = 140 WHERE
(`pokedex_ref` = 605 AND `type_name` = 'default') OR	# Elgyem
(`pokedex_ref` = 606 AND `type_name` = 'default');		# Beeheeyem
UPDATE `type_bundle` SET `ability2` = 140 WHERE
(`pokedex_ref` = 765 AND `type_name` = 'default');		# Oranguru
UPDATE `type_bundle` SET `hidden_ability` = 140 WHERE
(`pokedex_ref` = 202 AND `type_name` = 'default') OR		# Wobuffet
(`pokedex_ref` = 360 AND `type_name` = 'default') OR		# Wynaut
(`pokedex_ref` = 280 AND `type_name` = 'default') OR		# Raltz
(`pokedex_ref` = 281 AND `type_name` = 'default') OR		# Kirlia
(`pokedex_ref` = 282 AND `type_name` = 'default') OR		# Gardevoir
(`pokedex_ref` = 307 AND `type_name` = 'default') OR		# Meditite
(`pokedex_ref` = 308 AND `type_name` = 'default') OR		# Medicham
(`pokedex_ref` = 483 AND `type_name` = 'default') OR		# Dialga
(`pokedex_ref` = 483 AND `type_name` = 'lord_forme') OR		# Dialga (Lord Forme)
(`pokedex_ref` = 484 AND `type_name` = 'default') OR		# Palkia
(`pokedex_ref` = 484 AND `type_name` = 'lord_forme') OR		# Palkia (Lord Forme)
(`pokedex_ref` = 487 AND `type_name` = 'altered_forme') OR	# Giratina (Altered Forme)
(`pokedex_ref` = 517 AND `type_name` = 'default') OR		# Munna
(`pokedex_ref` = 518 AND `type_name` = 'default') OR		# Musharna
(`pokedex_ref` = 714 AND `type_name` = 'default') OR		# Noibat
(`pokedex_ref` = 715 AND `type_name` = 'default') OR		# Noivern
(`pokedex_ref` = 785 AND `type_name` = 'default') OR		# Tapu Koko
(`pokedex_ref` = 786 AND `type_name` = 'default') OR		# Tapu Lele
(`pokedex_ref` = 787 AND `type_name` = 'default') OR		# Tapu Bulu
(`pokedex_ref` = 788 AND `type_name` = 'default') OR		# Tapu Fini
(`pokedex_ref` = 824 AND `type_name` = 'default') OR		# Blipbug
(`pokedex_ref` = 825 AND `type_name` = 'default') OR		# Dottler
(`pokedex_ref` = 826 AND `type_name` = 'default');			# Orbeetle

# Moody
UPDATE `type_bundle` SET `hidden_ability` = 141 WHERE
(`pokedex_ref` = 223 AND `type_name` = 'default') OR	# Remoraid
(`pokedex_ref` = 224 AND `type_name` = 'default') OR	# Octillery
(`pokedex_ref` = 235 AND `type_name` = 'default') OR	# Smeargle
(`pokedex_ref` = 361 AND `type_name` = 'default') OR	# Snorunt
(`pokedex_ref` = 362 AND `type_name` = 'default') OR	# Glalie
(`pokedex_ref` = 399 AND `type_name` = 'default') OR	# Bidoof
(`pokedex_ref` = 400 AND `type_name` = 'default');		# Bibarel

# Overcoat
UPDATE `type_bundle` SET `ability1` = 142 WHERE
(`pokedex_ref` = 577 AND `type_name` = 'default') OR		# Solosis
(`pokedex_ref` = 578 AND `type_name` = 'default') OR		# Duosion
(`pokedex_ref` = 579 AND `type_name` = 'default') OR		# Reuniclus
(`pokedex_ref` = 905 AND `type_name` = 'therian_forme');	# Enamorus
UPDATE `type_bundle` SET `ability2` = 142 WHERE
(`pokedex_ref` = 629 AND `type_name` = 'default') OR		# Vullaby
(`pokedex_ref` = 630 AND `type_name` = 'default') OR		# Mandibuzz
(`pokedex_ref` = 705 AND `type_name` = 'hisui_variant') OR	# Sliggoo (Hisui)
(`pokedex_ref` = 706 AND `type_name` = 'hisui_variant');	# Goodra (Hisui)
UPDATE `type_bundle` SET `hidden_ability` = 142 WHERE
(`pokedex_ref` = 90 AND `type_name` = 'default') OR			# Shellder
(`pokedex_ref` = 91 AND `type_name` = 'default') OR			# Cloyster
(`pokedex_ref` = 204 AND `type_name` = 'default') OR		# Pineco
(`pokedex_ref` = 205 AND `type_name` = 'default') OR		# Forretress
(`pokedex_ref` = 372 AND `type_name` = 'default') OR		# Shelgon
(`pokedex_ref` = 412 AND `type_name` = 'plant_cloak') OR	# Burmy (Plant Cloak)
(`pokedex_ref` = 412 AND `type_name` = 'sandy_cloak') OR	# Burmy (Sandy Cloak)
(`pokedex_ref` = 412 AND `type_name` = 'trash_cloak') OR	# Burmy (Trash Cloak)
(`pokedex_ref` = 413 AND `type_name` = 'plant_cloak') OR	# Wormadam (Plant Cloak)
(`pokedex_ref` = 413 AND `type_name` = 'sandy_cloak') OR	# Wormadam (Sandy Cloak)
(`pokedex_ref` = 413 AND `type_name` = 'trash_cloak') OR	# Wormadam (Trash Cloak)
(`pokedex_ref` = 540 AND `type_name` = 'default') OR		# Sewaddle
(`pokedex_ref` = 541 AND `type_name` = 'default') OR		# Swadloon
(`pokedex_ref` = 542 AND `type_name` = 'default') OR		# Leavanny
(`pokedex_ref` = 589 AND `type_name` = 'default') OR		# Escavalier
(`pokedex_ref` = 616 AND `type_name` = 'default') OR		# Shelmet
(`pokedex_ref` = 782 AND `type_name` = 'default') OR		# Jangmo-o
(`pokedex_ref` = 783 AND `type_name` = 'default') OR		# Hakomo-o
(`pokedex_ref` = 784 AND `type_name` = 'default');			# Kommo-o

# Poison Touch
UPDATE `type_bundle` SET `ability1` = 143 WHERE
(`pokedex_ref` = 88 AND `type_name` = 'alola_variant') OR	# Grimer (Alola)
(`pokedex_ref` = 89 AND `type_name` = 'alola_variant');		# Muk (Alola)
UPDATE `type_bundle` SET `ability2` = 143 WHERE
(`pokedex_ref` = 537 AND `type_name` = 'default') OR	# Seismitoad
(`pokedex_ref` = 690 AND `type_name` = 'default') OR	# Skrelp
(`pokedex_ref` = 691 AND `type_name` = 'default');		# Dragalge
UPDATE `type_bundle` SET `hidden_ability` = 143 WHERE
(`pokedex_ref` = 88 AND `type_name` = 'default') OR			# Grimer
(`pokedex_ref` = 89 AND `type_name` = 'default') OR			# Muk
(`pokedex_ref` = 215 AND `type_name` = 'hisui_variant') OR	# Sneasel (Hisui)
(`pokedex_ref` = 453 AND `type_name` = 'default') OR		# Croagunk
(`pokedex_ref` = 454 AND `type_name` = 'default') OR		# Toxicroak
(`pokedex_ref` = 903 AND `type_name` = 'default');			# Sneasler

# Regenerator
UPDATE `type_bundle` SET `ability1` = 144 WHERE
(`pokedex_ref` = 641 AND `type_name` = 'therian_forme');	# Tornadus (Therian Forme)
UPDATE `type_bundle` SET `ability2` = 144 WHERE
(`pokedex_ref` = 531 AND `type_name` = 'default') OR	# Audino
(`pokedex_ref` = 619 AND `type_name` = 'default') OR	# Mienfoo
(`pokedex_ref` = 620 AND `type_name` = 'default') OR	# Mienshao
(`pokedex_ref` = 829 AND `type_name` = 'default') OR	# Gossifleur
(`pokedex_ref` = 830 AND `type_name` = 'default');		# Eldegoss
UPDATE `type_bundle` SET `hidden_ability` = 144 WHERE
(`pokedex_ref` = 79 AND `type_name` = 'default') OR			# Slowpoke
(`pokedex_ref` = 79 AND `type_name` = 'galar_variant') OR	# Slowpoke (Galar)
(`pokedex_ref` = 80 AND `type_name` = 'default') OR			# Slowbro
(`pokedex_ref` = 80 AND `type_name` = 'galar_variant') OR	# Slowbro (Galar)
(`pokedex_ref` = 114 AND `type_name` = 'default') OR		# Tangela
(`pokedex_ref` = 199 AND `type_name` = 'default') OR		# Slowking
(`pokedex_ref` = 222 AND `type_name` = 'default') OR		# Corsola
(`pokedex_ref` = 250 AND `type_name` = 'default') OR		# Ho-Oh
(`pokedex_ref` = 465 AND `type_name` = 'default') OR		# Tangrowth
(`pokedex_ref` = 577 AND `type_name` = 'default') OR		# Solosis
(`pokedex_ref` = 578 AND `type_name` = 'default') OR		# Duosion
(`pokedex_ref` = 579 AND `type_name` = 'default') OR		# Reuniclus
(`pokedex_ref` = 590 AND `type_name` = 'default') OR		# Foongus
(`pokedex_ref` = 591 AND `type_name` = 'default') OR		# Amoonguss
(`pokedex_ref` = 594 AND `type_name` = 'default') OR		# Alomomola
(`pokedex_ref` = 747 AND `type_name` = 'default') OR		# Mareanie
(`pokedex_ref` = 748 AND `type_name` = 'default');			# Toxapex

# Big Pecks
UPDATE `type_bundle` SET `ability1` = 145 WHERE
(`pokedex_ref` = 519 AND `type_name` = 'default') OR	# Pidove
(`pokedex_ref` = 520 AND `type_name` = 'default') OR	# Tranquill
(`pokedex_ref` = 521 AND `type_name` = 'default') OR	# Unfezant
(`pokedex_ref` = 629 AND `type_name` = 'default') OR	# Vullaby
(`pokedex_ref` = 630 AND `type_name` = 'default') OR	# Mandibuzz
(`pokedex_ref` = 661 AND `type_name` = 'default');		# Fletchling
UPDATE `type_bundle` SET `ability2` = 145 WHERE
(`pokedex_ref` = 580 AND `type_name` = 'default') OR	# Ducklett
(`pokedex_ref` = 581 AND `type_name` = 'default');		# Swanna
UPDATE `type_bundle` SET `hidden_ability` = 145 WHERE
(`pokedex_ref` = 16 AND `type_name` = 'default') OR		# Pidgey
(`pokedex_ref` = 17 AND `type_name` = 'default') OR		# Pidgeotto
(`pokedex_ref` = 18 AND `type_name` = 'default') OR		# Pidgeot
(`pokedex_ref` = 441 AND `type_name` = 'default') OR	# Chatot
(`pokedex_ref` = 821 AND `type_name` = 'default') OR	# Rookidee
(`pokedex_ref` = 822 AND `type_name` = 'default');		# Corvisquire

# Sand Rush
UPDATE `type_bundle` SET `ability1` = 146 WHERE
(`pokedex_ref` = 529 AND `type_name` = 'default') OR	# Drilbur
(`pokedex_ref` = 530 AND `type_name` = 'default');		# Excadrill
UPDATE `type_bundle` SET `ability2` = 146 WHERE
(`pokedex_ref` = 507 AND `type_name` = 'default') OR	# Herdier
(`pokedex_ref` = 508 AND `type_name` = 'default') OR	# Stoutland
(`pokedex_ref` = 745 AND `type_name` = 'midday_form');	# Lycanroc (Midday Form)
UPDATE `type_bundle` SET `hidden_ability` = 146 WHERE
(`pokedex_ref` = 27 AND `type_name` = 'default') OR		# Sandshrew
(`pokedex_ref` = 28 AND `type_name` = 'default') OR		# Sandslash
(`pokedex_ref` = 880 AND `type_name` = 'default') OR	# Dracozolt
(`pokedex_ref` = 882 AND `type_name` = 'default');		# Dracovish

# Wonder Skin
UPDATE `type_bundle` SET `ability1` = 147 WHERE
(`pokedex_ref` = 561 AND `type_name` = 'default');		# Sigilyph
UPDATE `type_bundle` SET `hidden_ability` = 147 WHERE
(`pokedex_ref` = 49 AND `type_name` = 'default') OR		# Venomoth
(`pokedex_ref` = 300 AND `type_name` = 'default') OR	# Skitty
(`pokedex_ref` = 301 AND `type_name` = 'default') OR	# Delcatty
(`pokedex_ref` = 779 AND `type_name` = 'default');		# Bruxish

# Analytic
UPDATE `type_bundle` SET `hidden_ability` = 148 WHERE
(`pokedex_ref` = 81 AND `type_name` = 'default') OR		# Magnemite
(`pokedex_ref` = 82 AND `type_name` = 'default') OR		# Magneton
(`pokedex_ref` = 120 AND `type_name` = 'default') OR	# Staryu
(`pokedex_ref` = 121 AND `type_name` = 'default') OR	# Starmie
(`pokedex_ref` = 137 AND `type_name` = 'default') OR	# Porygon
(`pokedex_ref` = 233 AND `type_name` = 'default') OR	# Porygon2
(`pokedex_ref` = 462 AND `type_name` = 'default') OR	# Magnezone
(`pokedex_ref` = 474 AND `type_name` = 'default') OR	# Porygon-Z
(`pokedex_ref` = 504 AND `type_name` = 'default') OR	# Patrat
(`pokedex_ref` = 505 AND `type_name` = 'default') OR	# Watchog
(`pokedex_ref` = 605 AND `type_name` = 'default') OR	# Elgyem
(`pokedex_ref` = 606 AND `type_name` = 'default');		# Beeheeyem

# Illusion
UPDATE `type_bundle` SET `ability1` = 149 WHERE
(`pokedex_ref` = 570 AND `type_name` = 'default') OR		# Zorua
(`pokedex_ref` = 570 AND `type_name` = 'hisui_variant') OR	# Zorua (Hisui)
(`pokedex_ref` = 571 AND `type_name` = 'default') OR		# Zoroark
(`pokedex_ref` = 571 AND `type_name` = 'hisui_variant');	# Zoroark (Hisui)

# Imposter
UPDATE `type_bundle` SET `hidden_ability` = 150 WHERE
(`pokedex_ref` = 132 AND `type_name` = 'default');		# Ditto

# Infiltrator
UPDATE `type_bundle` SET `ability2` = 151 WHERE
(`pokedex_ref` = 546 AND `type_name` = 'default') OR		# Cottonee
(`pokedex_ref` = 547 AND `type_name` = 'default') OR		# Whimsicott
(`pokedex_ref` = 677 AND `type_name` = 'default') OR		# Espurr
(`pokedex_ref` = 678 AND `type_name` = 'default_f') OR		# Meowstic (F)
(`pokedex_ref` = 678 AND `type_name` = 'default_m') OR		# Meowstic (M)
(`pokedex_ref` = 714 AND `type_name` = 'default') OR		# Noibat
(`pokedex_ref` = 715 AND `type_name` = 'default') OR		# Noivern
(`pokedex_ref` = 885 AND `type_name` = 'default') OR		# Dreepy
(`pokedex_ref` = 886 AND `type_name` = 'default') OR		# Drakloak
(`pokedex_ref` = 887 AND `type_name` = 'default');			# Dragapult
UPDATE `type_bundle` SET `hidden_ability` = 151 WHERE
(`pokedex_ref` = 41 AND `type_name` = 'default') OR		# Zubat
(`pokedex_ref` = 42 AND `type_name` = 'default') OR		# Golbat
(`pokedex_ref` = 169 AND `type_name` = 'default') OR	# Crobat
(`pokedex_ref` = 187 AND `type_name` = 'default') OR	# Hoppip
(`pokedex_ref` = 188 AND `type_name` = 'default') OR	# Skiploom
(`pokedex_ref` = 189 AND `type_name` = 'default') OR	# Jumpluff
(`pokedex_ref` = 291 AND `type_name` = 'default') OR	# Ninjask
(`pokedex_ref` = 336 AND `type_name` = 'default') OR	# Seviper
(`pokedex_ref` = 442 AND `type_name` = 'default') OR	# Spiritomb
(`pokedex_ref` = 607 AND `type_name` = 'default') OR	# Litwick
(`pokedex_ref` = 608 AND `type_name` = 'default') OR	# Lampent
(`pokedex_ref` = 609 AND `type_name` = 'default') OR	# Chandelure
(`pokedex_ref` = 686 AND `type_name` = 'default') OR	# Inkay
(`pokedex_ref` = 687 AND `type_name` = 'default');		# Malamar

# Mummy
UPDATE `type_bundle` SET `ability1` = 152 WHERE
(`pokedex_ref` = 562 AND `type_name` = 'default') OR	# Yamask
(`pokedex_ref` = 563 AND `type_name` = 'default');		# Cofagrigus

# Moxie
UPDATE `type_bundle` SET `ability2` = 153 WHERE
(`pokedex_ref` = 551 AND `type_name` = 'default') OR	# Sandile
(`pokedex_ref` = 552 AND `type_name` = 'default') OR	# Krokorok
(`pokedex_ref` = 553 AND `type_name` = 'default') OR	# Krookodile
(`pokedex_ref` = 559 AND `type_name` = 'default') OR	# Scraggy
(`pokedex_ref` = 560 AND `type_name` = 'default');		# Scrafty
UPDATE `type_bundle` SET `hidden_ability` = 153 WHERE
(`pokedex_ref` = 127 AND `type_name` = 'default') OR	# Pinsir
(`pokedex_ref` = 130 AND `type_name` = 'default') OR	# Gyarados
(`pokedex_ref` = 214 AND `type_name` = 'default') OR	# Heracross
(`pokedex_ref` = 262 AND `type_name` = 'default') OR	# Mightyena
(`pokedex_ref` = 373 AND `type_name` = 'default') OR	# Salamence
(`pokedex_ref` = 430 AND `type_name` = 'default') OR	# Honchkrow
(`pokedex_ref` = 667 AND `type_name` = 'default') OR	# Litleo
(`pokedex_ref` = 668 AND `type_name` = 'default');		# Pyroar

# Justified
UPDATE `type_bundle` SET `ability1` = 154 WHERE
(`pokedex_ref` = 638 AND `type_name` = 'default') OR			# Cobalion
(`pokedex_ref` = 639 AND `type_name` = 'default') OR			# Terrakion
(`pokedex_ref` = 640 AND `type_name` = 'default') OR			# Virizion
(`pokedex_ref` = 647 AND `type_name` = 'ordinary_form') OR		# Keldeo (Ordinary Form)
(`pokedex_ref` = 647 AND `type_name` = 'resolute_form');		# Keldeo (Resolute Form)
UPDATE `type_bundle` SET `ability2` = 154 WHERE
(`pokedex_ref` = 58 AND `type_name` = 'hisui_variant') OR		# Growlithe (Hisui)
(`pokedex_ref` = 59 AND `type_name` = 'hisui_variant');			# Arcanine (Hisui)
UPDATE `type_bundle` SET `hidden_ability` = 154 WHERE
(`pokedex_ref` = 58 AND `type_name` = 'default') OR				# Growlithe
(`pokedex_ref` = 59 AND `type_name` = 'default') OR				# Arcanine
(`pokedex_ref` = 359 AND `type_name` = 'default') OR			# Absol
(`pokedex_ref` = 448 AND `type_name` = 'default') OR			# Lucario
(`pokedex_ref` = 475 AND `type_name` = 'default');				# Gallade

# Rattled
UPDATE `type_bundle` SET `ability1` = 155 WHERE
(`pokedex_ref` = 550 AND `type_name` = 'white-striped_form') OR	# Basculin (White-Striped Form)
(`pokedex_ref` = 848 AND `type_name` = 'default') OR			# Toxel
(`pokedex_ref` = 902 AND `type_name` = 'default');				# Basculeigon
UPDATE `type_bundle` SET `hidden_ability` = 155 WHERE
(`pokedex_ref` = 52 AND `type_name` = 'alola_variant') OR	# Meowth (Alola)
(`pokedex_ref` = 53 AND `type_name` = 'alola_variant') OR	# Persian (Alola)
(`pokedex_ref` = 129 AND `type_name` = 'default') OR		# Magikarp
(`pokedex_ref` = 165 AND `type_name` = 'default') OR		# Ledyba
(`pokedex_ref` = 185 AND `type_name` = 'default') OR		# Sudowoodo
(`pokedex_ref` = 206 AND `type_name` = 'default') OR		# Dunsparce
(`pokedex_ref` = 209 AND `type_name` = 'default') OR		# Snubbull
(`pokedex_ref` = 210 AND `type_name` = 'default') OR		# Granbull
(`pokedex_ref` = 261 AND `type_name` = 'default') OR		# Poochyena
(`pokedex_ref` = 293 AND `type_name` = 'default') OR		# Whismur
(`pokedex_ref` = 366 AND `type_name` = 'default') OR		# Clamperl
(`pokedex_ref` = 438 AND `type_name` = 'default') OR		# Bonsly
(`pokedex_ref` = 613 AND `type_name` = 'default') OR		# Cubchoo
(`pokedex_ref` = 835 AND `type_name` = 'default');			# Yamper

# Magic Bounce
UPDATE `type_bundle` SET `ability1` = 156 WHERE
(`pokedex_ref` = 302 AND `type_name` = 'mega') OR		# MEGA Sableye
(`pokedex_ref` = 359 AND `type_name` = 'mega') OR		# MEGA Absol
(`pokedex_ref` = 719 AND `type_name` = 'mega');			# MEGA Diancie
UPDATE `type_bundle` SET `hidden_ability` = 156 WHERE
(`pokedex_ref` = 177 AND `type_name` = 'default') OR	# Natu
(`pokedex_ref` = 178 AND `type_name` = 'default') OR	# Xatu
(`pokedex_ref` = 196 AND `type_name` = 'default') OR	# Espeon
(`pokedex_ref` = 856 AND `type_name` = 'default') OR	# Hatenna
(`pokedex_ref` = 857 AND `type_name` = 'default') OR	# Hattrem
(`pokedex_ref` = 858 AND `type_name` = 'default');		# Hatterene

# Sap Sipper
UPDATE `type_bundle` SET `ability1` = 157 WHERE
(`pokedex_ref` = 672 AND `type_name` = 'default') OR		# Skiddo
(`pokedex_ref` = 673 AND `type_name` = 'default') OR		# Gogoat
(`pokedex_ref` = 704 AND `type_name` = 'default') OR		# Goomy
(`pokedex_ref` = 705 AND `type_name` = 'default') OR		# Sliggoo
(`pokedex_ref` = 705 AND `type_name` = 'hisui_variant') OR	# Sliggoo (Hisui)
(`pokedex_ref` = 706 AND `type_name` = 'default') OR		# Goodra
(`pokedex_ref` = 706 AND `type_name` = 'hisui_variant');	# Goodra (Hisui)
UPDATE `type_bundle` SET `ability2` = 157 WHERE
(`pokedex_ref` = 585 AND `type_name` = 'spring_form') OR	# Deerling (Spring Form)
(`pokedex_ref` = 585 AND `type_name` = 'summer_form') OR	# Deerling (Summer Form)
(`pokedex_ref` = 585 AND `type_name` = 'autumn_form') OR	# Deerling (Autumn Form)
(`pokedex_ref` = 585 AND `type_name` = 'winter_form') OR	# Deerling (Winter Form)
(`pokedex_ref` = 586 AND `type_name` = 'spring_form') OR	# Sawsbuck (Spring Form)
(`pokedex_ref` = 586 AND `type_name` = 'summer_form') OR	# Sawsbuck (Summer Form)
(`pokedex_ref` = 586 AND `type_name` = 'autumn_form') OR	# Sawsbuck (Autumn Form)
(`pokedex_ref` = 586 AND `type_name` = 'winter_form') OR	# Sawsbuck (Winter Form)
(`pokedex_ref` = 626 AND `type_name` = 'default') OR		# Bouffalant
(`pokedex_ref` = 780 AND `type_name` = 'default');			# Drampa
UPDATE `type_bundle` SET `hidden_ability` = 157 WHERE
(`pokedex_ref` = 183 AND `type_name` = 'default') OR	# Marill
(`pokedex_ref` = 184 AND `type_name` = 'default') OR	# Azumarill
(`pokedex_ref` = 203 AND `type_name` = 'default') OR	# Girafarig
(`pokedex_ref` = 234 AND `type_name` = 'default') OR	# Stantler
(`pokedex_ref` = 241 AND `type_name` = 'default') OR	# Miltank
(`pokedex_ref` = 298 AND `type_name` = 'default') OR	# Azurill
(`pokedex_ref` = 522 AND `type_name` = 'default') OR	# Blitzle
(`pokedex_ref` = 523 AND `type_name` = 'default') OR	# Zebstrika
(`pokedex_ref` = 899 AND `type_name` = 'default');		# Wyrdeer

# Prankster
UPDATE `type_bundle` SET `ability1` = 158 WHERE
(`pokedex_ref` = 354 AND `type_name` = 'mega') OR				# MEGA Banette
(`pokedex_ref` = 546 AND `type_name` = 'default') OR			# Cottonee
(`pokedex_ref` = 547 AND `type_name` = 'default') OR			# Whimsicott
(`pokedex_ref` = 641 AND `type_name` = 'incarnate_forme') OR	# Tornadus (Incarnate Forme)
(`pokedex_ref` = 642 AND `type_name` = 'incarnate_forme') OR	# Thundrus (Incarnate Forme)
(`pokedex_ref` = 707 AND `type_name` = 'default') OR			# Klefki
(`pokedex_ref` = 859 AND `type_name` = 'default') OR			# Impidimp
(`pokedex_ref` = 860 AND `type_name` = 'default') OR			# Morgrem
(`pokedex_ref` = 861 AND `type_name` = 'default');				# Grimmsnarl
UPDATE `type_bundle` SET `hidden_ability` = 158 WHERE
(`pokedex_ref` = 198 AND `type_name` = 'default') OR	# Murkrow
(`pokedex_ref` = 302 AND `type_name` = 'default') OR	# Sableye
(`pokedex_ref` = 313 AND `type_name` = 'default') OR	# Volbeat
(`pokedex_ref` = 314 AND `type_name` = 'default') OR	# Illumise
(`pokedex_ref` = 447 AND `type_name` = 'default') OR	# Riolu
(`pokedex_ref` = 509 AND `type_name` = 'default') OR	# Purrloin
(`pokedex_ref` = 510 AND `type_name` = 'default') OR	# Liepard
(`pokedex_ref` = 678 AND `type_name` = 'default_m');	# Meowstic (M)

# Sand Force
UPDATE `type_bundle` SET `ability1` = 159 WHERE
(`pokedex_ref` = 208 AND `type_name` = 'mega') OR			# MEGA Steelix
(`pokedex_ref` = 445 AND `type_name` = 'mega') OR			# MEGA Garchomp
(`pokedex_ref` = 645 AND `type_name` = 'incarnate_forme');	# Landorus (Incarnate Forme)
UPDATE `type_bundle` SET `ability2` = 159 WHERE
(`pokedex_ref` = 529 AND `type_name` = 'default') OR	# Drilbur
(`pokedex_ref` = 530 AND `type_name` = 'default');		# Excadrill
UPDATE `type_bundle` SET `hidden_ability` = 159 WHERE
(`pokedex_ref` = 50 AND `type_name` = 'default') OR			# Diglett
(`pokedex_ref` = 50 AND `type_name` = 'alola_variant') OR	# Diglett (Alola)
(`pokedex_ref` = 51 AND `type_name` = 'default') OR			# Dugtrio
(`pokedex_ref` = 51 AND `type_name` = 'alola_variant') OR	# Dugtrio (Alola)
(`pokedex_ref` = 299 AND `type_name` = 'default') OR		# Nosepass
(`pokedex_ref` = 422 AND `type_name` = 'east_sea') OR		# Shellos (East Sea)
(`pokedex_ref` = 422 AND `type_name` = 'west_sea') OR		# Shellos (West Sea)
(`pokedex_ref` = 423 AND `type_name` = 'east_sea') OR		# Gastrodon (East Sea)
(`pokedex_ref` = 423 AND `type_name` = 'west_sea') OR		# Gastrodon (West Sea)
(`pokedex_ref` = 449 AND `type_name` = 'default') OR		# Hippopotas
(`pokedex_ref` = 450 AND `type_name` = 'default') OR		# Hippowdon
(`pokedex_ref` = 476 AND `type_name` = 'default') OR		# Probopass
(`pokedex_ref` = 524 AND `type_name` = 'default') OR		# Roggenrola
(`pokedex_ref` = 525 AND `type_name` = 'default') OR		# Boldore
(`pokedex_ref` = 526 AND `type_name` = 'default');			# Gigalith

# Iron Barbs
UPDATE `type_bundle` SET `ability1` = 160 WHERE
(`pokedex_ref` = 597 AND `type_name` = 'default') OR	# Ferroseed
(`pokedex_ref` = 598 AND `type_name` = 'default') OR	# Ferrothorn
(`pokedex_ref` = 777 AND `type_name` = 'default');		# Togedemaru

# Zen Mode
UPDATE `type_bundle` SET `ability1` = 161 WHERE
(`pokedex_ref` = 555 AND `type_name` = 'zen_mode');		# Darmanitan (Zen Mode)
UPDATE `type_bundle` SET `hidden_ability` = 161 WHERE
(`pokedex_ref` = 555 AND `type_name` = 'standard_mode') OR			# Darmanitan (Standard Mode)
(`pokedex_ref` = 555 AND `type_name` = 'galar_standard_mode') OR	# Darmanitan (Galar Standard Mode)
(`pokedex_ref` = 555 AND `type_name` = 'galar_zen_mode');			# Darmanitan (Galar Zen Mode)

# Victory Star
UPDATE `type_bundle` SET `ability1` = 162 WHERE
(`pokedex_ref` = 494 AND `type_name` = 'default');		# Victini

# Turboblaze
UPDATE `type_bundle` SET `ability1` = 163 WHERE
(`pokedex_ref` = 643 AND `type_name` = 'default') OR		# Reshiram
(`pokedex_ref` = 646 AND `type_name` = 'white_kyurem');		# White Kyurem

# Teravolt
UPDATE `type_bundle` SET `ability1` = 164 WHERE
(`pokedex_ref` = 644 AND `type_name` = 'default') OR		# Zekrom
(`pokedex_ref` = 646 AND `type_name` = 'black_kyurem');		# Black Kyurem

# Aroma Veil
UPDATE `type_bundle` SET `hidden_ability` = 165 WHERE
(`pokedex_ref` = 682 AND `type_name` = 'default') OR	# Spritzee
(`pokedex_ref` = 683 AND `type_name` = 'default') OR	# Aromatisse
(`pokedex_ref` = 868 AND `type_name` = 'default') OR	# Milcery
(`pokedex_ref` = 869 AND `type_name` = 'default');		# Alcremie

# Flower Veil
UPDATE `type_bundle` SET `ability1` = 166 WHERE
(`pokedex_ref` = 669 AND `type_name` = 'default') OR	# Flabébé
(`pokedex_ref` = 670 AND `type_name` = 'default') OR	# Floette
(`pokedex_ref` = 671 AND `type_name` = 'default') OR	# Florges
(`pokedex_ref` = 764 AND `type_name` = 'default');		# Comfey

# Cheek Pouch
UPDATE `type_bundle` SET `ability1` = 167 WHERE
(`pokedex_ref` = 702 AND `type_name` = 'default') OR	# Dedenne
(`pokedex_ref` = 819 AND `type_name` = 'default') OR	# Skwovet
(`pokedex_ref` = 820 AND `type_name` = 'default');		# Greedent
UPDATE `type_bundle` SET `ability2` = 167 WHERE
(`pokedex_ref` = 659 AND `type_name` = 'default') OR	# Bunnelby
(`pokedex_ref` = 660 AND `type_name` = 'default');		# Diggersby

# Protean
UPDATE `type_bundle` SET `hidden_ability` = 168 WHERE
(`pokedex_ref` = 352 AND `type_name` = 'default') OR	# Kecleon
(`pokedex_ref` = 656 AND `type_name` = 'default') OR	# Froakie
(`pokedex_ref` = 657 AND `type_name` = 'default') OR	# Frogadier
(`pokedex_ref` = 658 AND `type_name` = 'default');		# Greninja

# Fur Coat
UPDATE `type_bundle` SET `ability1` = 169 WHERE
(`pokedex_ref` = 53 AND `type_name` = 'alola_variant') OR	# Persian (Alola)
(`pokedex_ref` = 676 AND `type_name` = 'default');			# Furfrou

# Magician
UPDATE `type_bundle` SET `ability1` = 170 WHERE
(`pokedex_ref` = 653 AND `type_name` = 'default') OR			# Fennekin
(`pokedex_ref` = 654 AND `type_name` = 'default') OR			# Braixen
(`pokedex_ref` = 655 AND `type_name` = 'default') OR			# Delphox
(`pokedex_ref` = 720 AND `type_name` = 'hoopa_confined') OR		# Hoopa Confined
(`pokedex_ref` = 720 AND `type_name` = 'hoopa_unbound');		# Hoopa Unbound
UPDATE `type_bundle` SET `hidden_ability` = 170 WHERE
(`pokedex_ref` = 707 AND `type_name` = 'default');		# Klefki

# Bulletproof
UPDATE `type_bundle` SET `ability1` = 171 WHERE
(`pokedex_ref` = 782 AND `type_name` = 'default') OR	# Jangmo-o
(`pokedex_ref` = 783 AND `type_name` = 'default') OR	# Hakomo-o
(`pokedex_ref` = 784 AND `type_name` = 'default');		# Kommo-o
UPDATE `type_bundle` SET `ability2` = 171 WHERE
(`pokedex_ref` = 901 AND `type_name` = 'default');		# Ursaluna
UPDATE `type_bundle` SET `hidden_ability` = 171 WHERE
(`pokedex_ref` = 650 AND `type_name` = 'default') OR	# Chespin
(`pokedex_ref` = 651 AND `type_name` = 'default') OR	# Quilladin
(`pokedex_ref` = 652 AND `type_name` = 'default') OR	# Chesnaught
(`pokedex_ref` = 831 AND `type_name` = 'default') OR	# Wooloo
(`pokedex_ref` = 832 AND `type_name` = 'default') OR	# Dubwool
(`pokedex_ref` = 840 AND `type_name` = 'default');		# Applin

# Competitive
UPDATE `type_bundle` SET `ability1` = 172 WHERE
(`pokedex_ref` = 144 AND `type_name` = 'galar_variant');	# Articuno (Galar)
UPDATE `type_bundle` SET `ability2` = 172 WHERE
(`pokedex_ref` = 39 AND `type_name` = 'default') OR		# Jigglypuff
(`pokedex_ref` = 40 AND `type_name` = 'default') OR		# Wigglytuff
(`pokedex_ref` = 174 AND `type_name` = 'default') OR	# Igglybuff
(`pokedex_ref` = 350 AND `type_name` = 'default') OR	# Milotic
(`pokedex_ref` = 574 AND `type_name` = 'default') OR	# Gothita
(`pokedex_ref` = 575 AND `type_name` = 'default') OR	# Gothorita
(`pokedex_ref` = 576 AND `type_name` = 'default');		# Gothitelle
UPDATE `type_bundle` SET `hidden_ability` = 172 WHERE
(`pokedex_ref` = 678 AND `type_name` = 'default_f') OR	# Meowstic (F)
(`pokedex_ref` = 836 AND `type_name` = 'default');		# Boltund

# Strong Jaw
UPDATE `type_bundle` SET `ability1` = 173 WHERE
(`pokedex_ref` = 319 AND `type_name` = 'mega') OR			# MEGA Sharpedo
(`pokedex_ref` = 696 AND `type_name` = 'default') OR		# Tyrunt
(`pokedex_ref` = 697 AND `type_name` = 'default') OR		# Tyrantrum
(`pokedex_ref` = 713 AND `type_name` = 'hisui_variant') OR	# Avalugg (Hisui)
(`pokedex_ref` = 833 AND `type_name` = 'default') OR		# Chewtle
(`pokedex_ref` = 834 AND `type_name` = 'default') OR		# Drednaw
(`pokedex_ref` = 836 AND `type_name` = 'default');			# Boltund
UPDATE `type_bundle` SET `ability2` = 173 WHERE
(`pokedex_ref` = 734 AND `type_name` = 'default') OR		# Yungoos
(`pokedex_ref` = 735 AND `type_name` = 'default') OR		# Gumshoos
(`pokedex_ref` = 779 AND `type_name` = 'default') OR		# Bruxish
(`pokedex_ref` = 882 AND `type_name` = 'default');			# Dracovish

# Refrigerate
UPDATE `type_bundle` SET `ability1` = 174 WHERE
(`pokedex_ref` = 362 AND `type_name` = 'mega') OR		# MEGA Glalie
(`pokedex_ref` = 698 AND `type_name` = 'default') OR	# Amaura
(`pokedex_ref` = 699 AND `type_name` = 'default');		# Aurorus

# Sweet Veil
UPDATE `type_bundle` SET `ability1` = 175 WHERE
(`pokedex_ref` = 684 AND `type_name` = 'default') OR	# Swirlix
(`pokedex_ref` = 685 AND `type_name` = 'default');		# Slurpuff
UPDATE `type_bundle` SET `ability2` = 175 WHERE
(`pokedex_ref` = 868 AND `type_name` = 'default') OR	# Milcery
(`pokedex_ref` = 869 AND `type_name` = 'default');		# Alcremie
UPDATE `type_bundle` SET `hidden_ability` = 175 WHERE
(`pokedex_ref` = 742 AND `type_name` = 'default') OR	# Cutiefly
(`pokedex_ref` = 743 AND `type_name` = 'default') OR	# Ribombee
(`pokedex_ref` = 761 AND `type_name` = 'default') OR	# Bounsweet
(`pokedex_ref` = 762 AND `type_name` = 'default') OR	# Steenee
(`pokedex_ref` = 763 AND `type_name` = 'default');		# Tsareena

# Stance Change
UPDATE `type_bundle` SET `ability1` = 176 WHERE
(`pokedex_ref` = 681 AND `type_name` = 'default');		# Aegislash

# Gale Wings
UPDATE `type_bundle` SET `hidden_ability` = 177 WHERE
(`pokedex_ref` = 661 AND `type_name` = 'default') OR	# Fletchling
(`pokedex_ref` = 662 AND `type_name` = 'default') OR	# Fletchinder
(`pokedex_ref` = 663 AND `type_name` = 'default');		# Talonflame

# Mega Launcher
UPDATE `type_bundle` SET `ability1` = 178 WHERE
(`pokedex_ref` = 9 AND `type_name` = 'mega') OR			# MEGA Blastoise
(`pokedex_ref` = 692 AND `type_name` = 'default') OR	# Clauncher
(`pokedex_ref` = 693 AND `type_name` = 'default');		# Clawitzer

# Grass Pelt
UPDATE `type_bundle` SET `hidden_ability` = 179 WHERE
(`pokedex_ref` = 672 AND `type_name` = 'default') OR	# Skiddo
(`pokedex_ref` = 673 AND `type_name` = 'default');		# Gogoat

# Symbiosis
UPDATE `type_bundle` SET `hidden_ability` = 180 WHERE
(`pokedex_ref` = 669 AND `type_name` = 'default') OR	# Flabébé
(`pokedex_ref` = 670 AND `type_name` = 'default') OR	# Floette
(`pokedex_ref` = 671 AND `type_name` = 'default') OR	# Florges
(`pokedex_ref` = 765 AND `type_name` = 'default');		# Oranguru

# Tough Claws
UPDATE `type_bundle` SET `ability1` = 181 WHERE
(`pokedex_ref` = 6 AND `type_name` = 'mega_x') OR		# MEGA Charizard X
(`pokedex_ref` = 142 AND `type_name` = 'mega') OR		# MEGA Aerodactyl
(`pokedex_ref` = 376 AND `type_name` = 'mega') OR		# MEGA Metagross
(`pokedex_ref` = 688 AND `type_name` = 'default') OR	# Binacle
(`pokedex_ref` = 689 AND `type_name` = 'default') OR	# Barbaracle
(`pokedex_ref` = 745 AND `type_name` = 'dusk_form');	# Lycanroc (Dusk Form)
UPDATE `type_bundle` SET `ability2` = 181 WHERE
(`pokedex_ref` = 52 AND `type_name` = 'galar_variant') OR	# Meowth (Galar)
(`pokedex_ref` = 863 AND `type_name` = 'default');			# Perrserker

# Pixilate
UPDATE `type_bundle` SET `ability1` = 182 WHERE
(`pokedex_ref` = 282 AND `type_name` = 'mega') OR		# MEGA Gardevoir
(`pokedex_ref` = 334 AND `type_name` = 'mega');			# MEGA Altaria
UPDATE `type_bundle` SET `hidden_ability` = 182 WHERE
(`pokedex_ref` = 700 AND `type_name` = 'default');		# Sylveon

# Gooey
UPDATE `type_bundle` SET `hidden_ability` = 183 WHERE
(`pokedex_ref` = 704 AND `type_name` = 'default') OR		# Goomy
(`pokedex_ref` = 705 AND `type_name` = 'default') OR		# Sliggoo
(`pokedex_ref` = 705 AND `type_name` = 'hisui_variant') OR	# Sliggoo
(`pokedex_ref` = 706 AND `type_name` = 'default') OR		# Goodra
(`pokedex_ref` = 706 AND `type_name` = 'hisui_variant');	# Goodra

# Aerilate
UPDATE `type_bundle` SET `ability1` = 184 WHERE
(`pokedex_ref` = 127 AND `type_name` = 'mega') OR		# MEGA Pinsir
(`pokedex_ref` = 373 AND `type_name` = 'mega');			# MEGA Salamence

# Parental Bond
UPDATE `type_bundle` SET `ability1` = 185 WHERE
(`pokedex_ref` = 115 AND `type_name` = 'mega');		    # MEGA Kangaskhan

# Dark Aura
UPDATE `type_bundle` SET `ability1` = 186 WHERE
(`pokedex_ref` = 717 AND `type_name` = 'default');		# Yveltal

# Fairy Aura
UPDATE `type_bundle` SET `ability1` = 187 WHERE
(`pokedex_ref` = 716 AND `type_name` = 'default');		# Xerneas

# Aura Break
UPDATE `type_bundle` SET `ability1` = 188 WHERE
(`pokedex_ref` = 718 AND `type_name` = 'zygarde_10percent_forme') OR	# Zygarde 10% Forme
(`pokedex_ref` = 718 AND `type_name` = 'zygarde_50percent_forme');		# Zygarde 50% Forme

# Primordial Sea
UPDATE `type_bundle` SET `ability1` = 189 WHERE
(`pokedex_ref` = 382 AND `type_name` = 'primal');	# Primal Kyogre

# Desolate Land
UPDATE `type_bundle` SET `ability1` = 190 WHERE
(`pokedex_ref` = 383 AND `type_name` = 'primal');	# Primal Groudon

# Delta Stream
UPDATE `type_bundle` SET `ability1` = 191 WHERE
(`pokedex_ref` = 384 AND `type_name` = 'mega');		# MEGA Rayquaza

# Stamina
UPDATE `type_bundle` SET `ability2` = 192 WHERE
(`pokedex_ref` = 749 AND `type_name` = 'default') OR	# Mudbray
(`pokedex_ref` = 750 AND `type_name` = 'default');		# Mudsdale

# Wimp Out
UPDATE `type_bundle` SET `ability1` = 193 WHERE
(`pokedex_ref` = 767 AND `type_name` = 'default');		# Wimpod

# Emergency Exit
UPDATE `type_bundle` SET `ability1` = 194 WHERE
(`pokedex_ref` = 768 AND `type_name` = 'default');		# Golisopod

# Water Compaction
UPDATE `type_bundle` SET `ability1` = 195 WHERE
(`pokedex_ref` = 769 AND `type_name` = 'default') OR	# Sandygast
(`pokedex_ref` = 770 AND `type_name` = 'default');		# Palossand

# Merciless
UPDATE `type_bundle` SET `ability1` = 196 WHERE
(`pokedex_ref` = 747 AND `type_name` = 'default') OR	# Mareanie
(`pokedex_ref` = 748 AND `type_name` = 'default');		# Toxapex

# Shields Down
UPDATE `type_bundle` SET `ability1` = 197 WHERE
(`pokedex_ref` = 774 AND `type_name` = 'default');		# Minior

# Stakeout
UPDATE `type_bundle` SET `ability1` = 198 WHERE
(`pokedex_ref` = 734 AND `type_name` = 'default') OR	# Yungoos
(`pokedex_ref` = 735 AND `type_name` = 'default');		# Gumshoos
UPDATE `type_bundle` SET `hidden_ability` = 198 WHERE
(`pokedex_ref` = 827 AND `type_name` = 'default') OR	# Nickit
(`pokedex_ref` = 828 AND `type_name` = 'default');		# Thievul

# Water Bubble
UPDATE `type_bundle` SET `ability1` = 199 WHERE
(`pokedex_ref` = 751 AND `type_name` = 'default') OR	# Dewpider
(`pokedex_ref` = 752 AND `type_name` = 'default');		# Araquanid

# Steelworker
UPDATE `type_bundle` SET `ability1` = 200 WHERE
(`pokedex_ref` = 781 AND `type_name` = 'default');		# Dhelmise

# Berserk
UPDATE `type_bundle` SET `ability1` = 201 WHERE
(`pokedex_ref` = 146 AND `type_name` = 'galar_variant') OR	# Moltres (Galar)
(`pokedex_ref` = 780 AND `type_name` = 'default');			# Drampa

# Slush Rush
UPDATE `type_bundle` SET `ability2` = 202 WHERE
(`pokedex_ref` = 613 AND `type_name` = 'default') OR	# Cubchoo
(`pokedex_ref` = 614 AND `type_name` = 'default');		# Beartic
UPDATE `type_bundle` SET `hidden_ability` = 202 WHERE
(`pokedex_ref` = 27 AND `type_name` = 'alola_variant') OR	# Sandshrew (Alola)
(`pokedex_ref` = 28 AND `type_name` = 'alola_variant') OR	# Sandslash (Alola)
(`pokedex_ref` = 881 AND `type_name` = 'default') OR		# Arctozolt
(`pokedex_ref` = 883 AND `type_name` = 'default');			# Arctovish

# Long Reach
UPDATE `type_bundle` SET `hidden_ability` = 203 WHERE
(`pokedex_ref` = 722 AND `type_name` = 'default') OR		# Rowlet
(`pokedex_ref` = 723 AND `type_name` = 'default') OR		# Dartrix
(`pokedex_ref` = 724 AND `type_name` = 'default') OR		# Decidueye
(`pokedex_ref` = 724 AND `type_name` = 'hisui_variant');	# Decidueye (Hisui)

# Liquid Voice
UPDATE `type_bundle` SET `hidden_ability` = 204 WHERE
(`pokedex_ref` = 728 AND `type_name` = 'default') OR	# Popplio
(`pokedex_ref` = 729 AND `type_name` = 'default') OR	# Brionne
(`pokedex_ref` = 730 AND `type_name` = 'default');		# Primarina

# Triage
UPDATE `type_bundle` SET `ability2` = 205 WHERE
(`pokedex_ref` = 764 AND `type_name` = 'default');		# Comfey

# Galvanize
UPDATE `type_bundle` SET `hidden_ability` = 206 WHERE
(`pokedex_ref` = 74 AND `type_name` = 'alola_variant') OR	# Geodude (Alola)
(`pokedex_ref` = 75 AND `type_name` = 'alola_variant') OR	# Graveler (Alola)
(`pokedex_ref` = 76 AND `type_name` = 'alola_variant');		# Golem (Alola)

# Surge Surfer
UPDATE `type_bundle` SET `ability1` = 207 WHERE
(`pokedex_ref` = 26 AND `type_name` = 'alola_variant');		# Raichu (Alola)

# Schooling
UPDATE `type_bundle` SET `ability1` = 208 WHERE
(`pokedex_ref` = 746 AND `type_name` = 'default');		# Wishiwashi

# Disguise
UPDATE `type_bundle` SET `ability1` = 209 WHERE
(`pokedex_ref` = 778 AND `type_name` = 'default');		# Mimikyu

# Battle Bond
UPDATE `type_bundle` SET `ability1` = 210 WHERE
(`pokedex_ref` = 658 AND `type_name` = 'ash_greninja');	# Greninja (Ash-Greninja)

# Power Construct
UPDATE `type_bundle` SET `ability1` = 211 WHERE
(`pokedex_ref` = 718 AND `type_name` = 'zygarde_complete_forme');		# Zygarde Complete Forme
UPDATE `type_bundle` SET `ability2` = 211 WHERE
(`pokedex_ref` = 718 AND `type_name` = 'zygarde_10percent_forme') OR	# Zygarde 10% Forme
(`pokedex_ref` = 718 AND `type_name` = 'zygarde_50percent_forme');		# Zygarde 50% Forme

# Corrosion
UPDATE `type_bundle` SET `ability1` = 212 WHERE
(`pokedex_ref` = 757 AND `type_name` = 'default') OR	# Salandit
(`pokedex_ref` = 758 AND `type_name` = 'default');		# Salazzle

# Comatose
UPDATE `type_bundle` SET `ability1` = 213 WHERE
(`pokedex_ref` = 775 AND `type_name` = 'default');		# Komala

# Queenly Majesty
UPDATE `type_bundle` SET `ability2` = 214 WHERE
(`pokedex_ref` = 763 AND `type_name` = 'default');		# Tsareena

# Innards Out
UPDATE `type_bundle` SET `ability1` = 215 WHERE
(`pokedex_ref` = 771 AND `type_name` = 'default');		# Pyukumuku

# Dancer
UPDATE `type_bundle` SET `ability1` = 216 WHERE
(`pokedex_ref` = 741 AND `type_name` = 'baile_style') OR	# Oricorio (Baile Style)
(`pokedex_ref` = 741 AND `type_name` = 'pompom_style') OR	# Oricorio (Pompom Style)
(`pokedex_ref` = 741 AND `type_name` = 'pa\'u_style') OR	# Oricorio (Pa'u Style)
(`pokedex_ref` = 741 AND `type_name` = 'sensu_style');		# Oricorio (Sensu Style)

# Battery
UPDATE `type_bundle` SET `ability1` = 217 WHERE
(`pokedex_ref` = 737 AND `type_name` = 'default');		# Charjabug

# Fluffy
UPDATE `type_bundle` SET `ability1` = 218 WHERE
(`pokedex_ref` = 759 AND `type_name` = 'default') OR	# Stufful
(`pokedex_ref` = 760 AND `type_name` = 'default') OR	# Bewear
(`pokedex_ref` = 831 AND `type_name` = 'default') OR	# Wooloo
(`pokedex_ref` = 832 AND `type_name` = 'default');		# Dubwool

# Dazzling
UPDATE `type_bundle` SET `ability1` = 219 WHERE
(`pokedex_ref` = 779 AND `type_name` = 'default');		# Bruxish

# Soul-Heart
UPDATE `type_bundle` SET `ability1` = 220 WHERE
(`pokedex_ref` = 801 AND `type_name` = 'default');		# Magearna

# Tangling Hair
UPDATE `type_bundle` SET `ability2` = 221 WHERE
(`pokedex_ref` = 50 AND `type_name` = 'alola_variant') OR	# Diglett (Alola)
(`pokedex_ref` = 51 AND `type_name` = 'alola_variant');		# Dugtrio (Alola)

# Receiver
UPDATE `type_bundle` SET `ability1` = 222 WHERE
(`pokedex_ref` = 766 AND `type_name` = 'default');		# Passimian

# Power of Alchemy
UPDATE `type_bundle` SET `hidden_ability` = 223 WHERE
(`pokedex_ref` = 88 AND `type_name` = 'alola_variant') OR	# Grimer (Alola)
(`pokedex_ref` = 89 AND `type_name` = 'alola_variant');		# Muk (Alola)

# Beast Boost
UPDATE `type_bundle` SET `ability1` = 224 WHERE
(`pokedex_ref` = 793 AND `type_name` = 'default') OR	# Nihilego
(`pokedex_ref` = 794 AND `type_name` = 'default') OR	# Buzzwole
(`pokedex_ref` = 795 AND `type_name` = 'default') OR	# Pheromosa
(`pokedex_ref` = 796 AND `type_name` = 'default') OR	# Xurkitree
(`pokedex_ref` = 797 AND `type_name` = 'default') OR	# Celesteela
(`pokedex_ref` = 798 AND `type_name` = 'default') OR	# Kartana
(`pokedex_ref` = 799 AND `type_name` = 'default') OR	# Guzzlord
(`pokedex_ref` = 803 AND `type_name` = 'default') OR	# Poipole
(`pokedex_ref` = 804 AND `type_name` = 'default') OR	# Naganadel
(`pokedex_ref` = 805 AND `type_name` = 'default') OR	# Stakataka
(`pokedex_ref` = 806 AND `type_name` = 'default');		# Blacephalon

# RKS System
UPDATE `type_bundle` SET `ability1` = 225 WHERE
(`pokedex_ref` = 773 AND `type_name` = 'default');		# Silvally

# Electric Surge
UPDATE `type_bundle` SET `ability1` = 226 WHERE
(`pokedex_ref` = 785 AND `type_name` = 'default');		# Tapu Koko
UPDATE `type_bundle` SET `hidden_ability` = 226 WHERE
(`pokedex_ref` = 871 AND `type_name` = 'default');		# Pincurchin

# Psychic Surge
UPDATE `type_bundle` SET `ability1` = 227 WHERE
(`pokedex_ref` = 786 AND `type_name` = 'default');		# Tapu Lele
UPDATE `type_bundle` SET `hidden_ability` = 227 WHERE
(`pokedex_ref` = 876 AND `type_name` = 'default_m') OR	# Indeedee (M)
(`pokedex_ref` = 876 AND `type_name` = 'default_f');	# Indeedee (F)

# Misty Surge
UPDATE `type_bundle` SET `ability1` = 228 WHERE
(`pokedex_ref` = 788 AND `type_name` = 'default');		# Tapu Fini
UPDATE `type_bundle` SET `hidden_ability` = 228 WHERE
(`pokedex_ref` = 110 AND `type_name` = 'galar_variant');	# Weezing (Galar)

# Grassy Surge
UPDATE `type_bundle` SET `ability1` = 229 WHERE
(`pokedex_ref` = 787 AND `type_name` = 'default');		# Tapu Bulu
UPDATE `type_bundle` SET `hidden_ability` = 229 WHERE
(`pokedex_ref` = 810 AND `type_name` = 'default') OR	# Grookey
(`pokedex_ref` = 811 AND `type_name` = 'default') OR	# Thwackey
(`pokedex_ref` = 812 AND `type_name` = 'default');		# Rillaboom

# Full Metal Body
UPDATE `type_bundle` SET `ability1` = 230 WHERE
(`pokedex_ref` = 791 AND `type_name` = 'default');		# Solgaleo

# Shadow Shield
UPDATE `type_bundle` SET `ability1` = 231 WHERE
(`pokedex_ref` = 792 AND `type_name` = 'default');		# Lunala

# Prism Armor
UPDATE `type_bundle` SET `ability1` = 232 WHERE
(`pokedex_ref` = 800 AND `type_name` = 'default') OR				# Necrozma
(`pokedex_ref` = 800 AND `type_name` = 'dusk_mane_necrozma') OR		# Dusk Mane Necrozma
(`pokedex_ref` = 800 AND `type_name` = 'dawn_wings_necrozma');		# Dawn Wings Necrozma

# Neuroforce
UPDATE `type_bundle` SET `ability1` = 233 WHERE
(`pokedex_ref` = 800 AND `type_name` = 'ultra_necrozma');	# Ultra Necrozma

# Intrepid Sword
UPDATE `type_bundle` SET `ability1` = 234 WHERE
(`pokedex_ref` = 888 AND `type_name` = 'hero_of_many_battles') OR		# Zacian (Hero of Many Battles)
(`pokedex_ref` = 888 AND `type_name` = 'crowned_sword');				# Zacian (Crowned Sword)

# Dauntless Shield
UPDATE `type_bundle` SET `ability1` = 235 WHERE
(`pokedex_ref` = 889 AND `type_name` = 'hero_of_many_battles') OR		# Zamazenta (Hero of Many Battles)
(`pokedex_ref` = 889 AND `type_name` = 'crowned_shield');				# Zamazenta (Crowned Shield)

# Libero
UPDATE `type_bundle` SET `hidden_ability` = 236 WHERE
(`pokedex_ref` = 813 AND `type_name` = 'default') OR	# Scorbunny
(`pokedex_ref` = 814 AND `type_name` = 'default') OR	# Raboot
(`pokedex_ref` = 815 AND `type_name` = 'default');		# Cinderace

# Ball Fetch
UPDATE `type_bundle` SET `ability1` = 237 WHERE
(`pokedex_ref` = 835 AND `type_name` = 'default');			# Yamper

# Cotton Down
UPDATE `type_bundle` SET `ability1` = 238 WHERE
(`pokedex_ref` = 829 AND `type_name` = 'default') OR	# Gossifleur
(`pokedex_ref` = 830 AND `type_name` = 'default');		# Eldegoss

# Propeller Tail
UPDATE `type_bundle` SET `hidden_ability` = 239 WHERE
(`pokedex_ref` = 846 AND `type_name` = 'default') OR	# Arrokuda
(`pokedex_ref` = 847 AND `type_name` = 'default');		# Barraskewda

# Mirror Armor
UPDATE `type_bundle` SET `hidden_ability` = 240 WHERE
(`pokedex_ref` = 823 AND `type_name` = 'default');		# Corviknight

# Gulp Missile
UPDATE `type_bundle` SET `ability1` = 241 WHERE
(`pokedex_ref` = 845 AND `type_name` = 'default');		# Cramorant

# Stalwart
UPDATE `type_bundle` SET `hidden_ability` = 242 WHERE
(`pokedex_ref` = 884 AND `type_name` = 'default');		# Duraludon

# Steam Engine
UPDATE `type_bundle` SET `ability1` = 243 WHERE
(`pokedex_ref` = 837 AND `type_name` = 'default') OR	# Rolycoly
(`pokedex_ref` = 838 AND `type_name` = 'default') OR	# Carkol
(`pokedex_ref` = 839 AND `type_name` = 'default');		# Coalossal

# Punk Rock
UPDATE `type_bundle` SET `ability1` = 244 WHERE
(`pokedex_ref` = 849 AND `type_name` = 'amped_form') OR		# Toxtricity (Amped Form)
(`pokedex_ref` = 849 AND `type_name` = 'low_key_form');		# Toxtricity (Low Key Form)

# Sand Spit
UPDATE `type_bundle` SET `ability1` = 245 WHERE
(`pokedex_ref` = 843 AND `type_name` = 'default') OR	# Silicobra
(`pokedex_ref` = 844 AND `type_name` = 'default');		# Sandaconda

# Ice Scales
UPDATE `type_bundle` SET `hidden_ability` = 246 WHERE
(`pokedex_ref` = 872 AND `type_name` = 'default') OR	# Snom
(`pokedex_ref` = 873 AND `type_name` = 'default');	    # Frosmoth

# Ripen
UPDATE `type_bundle` SET `ability1` = 247 WHERE
(`pokedex_ref` = 840 AND `type_name` = 'default') OR	# Applin
(`pokedex_ref` = 841 AND `type_name` = 'default') OR	# Flapple
(`pokedex_ref` = 842 AND `type_name` = 'default');		# Appletun

# Ice Face
UPDATE `type_bundle` SET `ability1` = 248 WHERE
(`pokedex_ref` = 875 AND `type_name` = 'default');		# Eiscue

# Power Spot
UPDATE `type_bundle` SET `ability1` = 249 WHERE
(`pokedex_ref` = 874 AND `type_name` = 'default');		# Stonjourner

# Mimicry
UPDATE `type_bundle` SET `ability1` = 250 WHERE
(`pokedex_ref` = 618 AND `type_name` = 'galar_variant');	# Stunfisk (Galar)

# Screen Cleaner
UPDATE `type_bundle` SET `ability2` = 251 WHERE
(`pokedex_ref` = 122 AND `type_name` = 'galar_variant') OR	# Mr Mime (Galar)
(`pokedex_ref` = 866 AND `type_name` = 'default');			# Mr Rime

# Steely Spirit
UPDATE `type_bundle` SET `hidden_ability` = 252 WHERE
(`pokedex_ref` = 863 AND `type_name` = 'default');			# Perrserker

# Perish Body
UPDATE `type_bundle` SET `hidden_ability` = 253 WHERE
(`pokedex_ref` = 864 AND `type_name` = 'default');			# Cursola

# Wandering Spirit
UPDATE `type_bundle` SET `ability1` = 254 WHERE
(`pokedex_ref` = 562 AND `type_name` = 'galar_variant') OR	# Yamask (Galar)
(`pokedex_ref` = 867 AND `type_name` = 'default');			# Runerigus

# Gorrila Tactics
UPDATE `type_bundle` SET `ability1` = 255 WHERE
(`pokedex_ref` = 555 AND `type_name` = 'galar_standard_mode') OR	# Darmanitan (Galar Standard Mode)
(`pokedex_ref` = 555 AND `type_name` = 'galar_zen_mode');			# Darmanitan (Galar Zen Mode)

# Neutralizing Gas
UPDATE `type_bundle` SET `ability2` = 256 WHERE
(`pokedex_ref` = 109 AND `type_name` = 'default') OR		# Koffing
(`pokedex_ref` = 110 AND `type_name` = 'default') OR		# Weezing
(`pokedex_ref` = 110 AND `type_name` = 'galar_variant');	# Weezing (Galar)

# Pastel Veil
UPDATE `type_bundle` SET `ability2` = 257 WHERE
(`pokedex_ref` = 77 AND `type_name` = 'galar_variant') OR	# Ponyta (Galar)
(`pokedex_ref` = 78 AND `type_name` = 'galar_variant');		# Rapidash (Galar)

# Hunger Switch
UPDATE `type_bundle` SET `ability1` = 258 WHERE
(`pokedex_ref` = 877 AND `type_name` = 'default');		# Morpeko

# Quick Draw
UPDATE `type_bundle` SET `ability1` = 259 WHERE
(`pokedex_ref` = 80 AND `type_name` = 'galar_variant');		# Slowbro (Galar)

# Unseen Fist
UPDATE `type_bundle` SET `ability1` = 260 WHERE
(`pokedex_ref` = 892 AND `type_name` = 'single_strike_style') OR	# Urshifu (Single Strike Style)
(`pokedex_ref` = 892 AND `type_name` = 'rapid_strike_style');		# Urshifu (Rapid Strike Style)

# Curious Medicine
UPDATE `type_bundle` SET `ability1` = 261 WHERE
(`pokedex_ref` = 199 AND `type_name` = 'galar_variant');	# Slowking (Galar)

# Transistor
UPDATE `type_bundle` SET `ability1` = 262 WHERE
(`pokedex_ref` = 894 AND `type_name` = 'default');		# Regieleki

# Dragon's Maw
UPDATE `type_bundle` SET `ability1` = 263 WHERE
(`pokedex_ref` = 895 AND `type_name` = 'default');		# Regidrago

# Chilling Neigh
UPDATE `type_bundle` SET `ability1` = 264 WHERE
(`pokedex_ref` = 896 AND `type_name` = 'default');		# Glastrier

# Grim Neigh
UPDATE `type_bundle` SET `ability1` = 265 WHERE
(`pokedex_ref` = 897 AND `type_name` = 'default');		# Spectrier

# As One
UPDATE `type_bundle` SET `ability1` = 266 WHERE
(`pokedex_ref` = 898 AND INSTR(`type_name`, 'rider') > 0);		# Calyrex (Ice Rider and Snow Rider)

DROP TABLE IF EXISTS `base_stats`;
CREATE TABLE `base_stats` (
	`pokedex_ref`	INT NOT NULL,
	`type_name`		VARCHAR(50) NOT NULL,
	`hp`			INT NOT NULL,
    `atk`			INT NOT NULL,
    `def`			INT NOT NULL,
    `spa`			INT NOT NULL,
    `spd`			INT NOT NULL,
    `spe`			INT NOT NULL,
    
    FOREIGN KEY (`type_name`, `pokedex_ref`) REFERENCES `type_bundle` (`type_name`, `pokedex_ref`)
);

# Base Stats: Hisui Variants
INSERT INTO `base_stats` VALUES
(58, 'hisui_variant', 60, 75, 45, 65, 50, 55),
(59, 'hisui_variant', 95, 115, 80, 95, 80, 90),
(100, 'hisui_variant', 40, 30, 50, 55, 55, 100),
(101, 'hisui_variant', 60, 50, 70, 80, 80, 150),
(157, 'hisui_variant', 73, 84, 78, 119, 85, 95),
(211, 'hisui_variant', 65, 95, 85, 55, 55, 85),
(215, 'hisui_variant', 55, 95, 55, 35, 75, 115),
(503, 'hisui_variant', 90, 108, 80, 100, 65, 85),
(549, 'hisui_variant', 70, 105, 75, 50, 75, 105),
(570, 'hisui_variant', 35, 60, 40, 85, 40, 70),
(571, 'hisui_variant', 55, 100, 60, 125, 60, 110),
(628, 'hisui_variant', 110, 83, 70, 112, 70, 65),
(706, 'hisui_variant', 58, 75, 83, 83, 113, 40),
(706, 'hisui_variant', 80, 100, 100, 110, 150, 60),
(713, 'hisui_variant', 95, 127, 184, 34, 36, 38),
(724, 'hisui_variant', 88, 112, 80, 95, 95, 60)
;

DELIMITER //

DROP PROCEDURE IF EXISTS `show_pkmn_rev` //

CREATE PROCEDURE `show_pkmn_rev`(`keyword` VARCHAR(50))
BEGIN
	IF `keyword` = '' THEN
		SELECT * FROM `pokemon_list` pl
		JOIN `type_bundle` tb ON tb.`pokedex_ref` = pl.`id`
        JOIN `pokemon_desc` pd ON pd.`desc` = tb.`type_desc`
		ORDER BY pl.`id` DESC;
    ELSE
		SELECT * FROM `pokemon_list` pl
		JOIN `type_bundle` tb ON tb.`pokedex_ref` = pl.`id`
		JOIN `pokemon_desc` pd ON pd.`desc` = tb.`type_desc`
		WHERE INSTR(`type_name`, `keyword`) > 0
		ORDER BY pl.`id` DESC;
    END IF;
END //

DROP PROCEDURE IF EXISTS `show_pkmn` //

CREATE PROCEDURE `show_pkmn`(`keyword` VARCHAR(50))
BEGIN
	IF `keyword` = '' THEN
		SELECT pl.*, tb.*, pd.`baby`, a1.`ability_name` AS `a1_name`, a2.`ability_name` AS `a2_name`, ha.`ability_name` AS `ha_name`, 
        z.`excl_z_move`, z.`excl_z_move_type`, z.`excl_z_move_cat`, z.`excl_z_crystal`, z.`excl_z_req_move`, z.`excl_z_power`, rd.*
        FROM `pokemon_list` pl
		JOIN `type_bundle` tb ON tb.`pokedex_ref` = pl.`id`
        JOIN `pokemon_desc` pd ON pd.`desc` = tb.`type_desc`
        LEFT JOIN `excl_z` z ON z.id = tb.`excl_z_ref`
        LEFT JOIN `ability` a1 ON a1.`id` = tb.`ability1`
        LEFT JOIN `ability` a2 ON a2.`id` = tb.`ability2`
        LEFT JOIN `ability` ha ON ha.`id` = tb.`hidden_ability`
        LEFT JOIN `regional_dex` rd ON rd.`national_id` = pl.`id`
		ORDER BY pl.`id` ASC;
    ELSE
		SELECT pl.*, tb.*, pd.`baby`, a1.`ability_name` AS `a1_name`, a2.`ability_name` AS `a2_name`, ha.`ability_name` AS `ha_name`, 
        z.`excl_z_move`, z.`excl_z_move_type`, z.`excl_z_move_cat`, z.`excl_z_crystal`, z.`excl_z_req_move`, z.`excl_z_power`, rd.* 
        FROM `pokemon_list` pl
        JOIN `type_bundle` tb ON tb.`pokedex_ref` = pl.`id`
        JOIN `pokemon_desc` pd ON pd.`desc` = tb.`type_desc`
        LEFT JOIN `excl_z` z ON z.id = pl.`id`
        LEFT JOIN `ability` a1 ON a1.`id` = tb.`ability1`
        LEFT JOIN `ability` a2 ON a2.`id` = tb.`ability2`
        LEFT JOIN `ability` ha ON ha.`id` = tb.`hidden_ability`
		LEFT JOIN `regional_dex` rd ON rd.`national_id` = pl.`id`
		WHERE INSTR(`type_name`, `keyword`) > 0
		ORDER BY pl.`id` ASC;
    END IF;
END //

DROP PROCEDURE IF EXISTS `show_one` //

CREATE PROCEDURE `show_one`(`dex_id` INT)
BEGIN	
	# SELECT pl.*, COUNT(tb.`pokedex_ref`) AS `type_count` FROM `pokemon_list` pl
	# JOIN `type_bundle` tb ON tb.`pokedex_ref` = pl.`id`
	# WHERE (INSTR(`type_name`, 'default') > 0 OR INSTR(`type_name`, 'form'))
    # AND pl.`id` = `dex_id`
	# ORDER BY `id` ASC;
    SELECT pl.*, tb.*, pd.`baby`, a1.`ability_name` AS `a1_name`, a2.`ability_name` AS `a2_name`, ha.`ability_name` AS `ha_name`, 
	z.`excl_z_move`, z.`excl_z_move_type`, z.`excl_z_move_cat`, z.`excl_z_crystal`, z.`excl_z_req_move`, z.`excl_z_power`, rd.* FROM `pokemon_list` pl
	JOIN `type_bundle` tb ON tb.`pokedex_ref` = pl.`id`
	JOIN `pokemon_desc` pd ON pd.`desc` = tb.`type_desc`
	LEFT JOIN `excl_z` z ON z.id = tb.`excl_z_ref`
	LEFT JOIN `ability` a1 ON a1.`id` = tb.`ability1`
	LEFT JOIN `ability` a2 ON a2.`id` = tb.`ability2`
	LEFT JOIN `ability` ha ON ha.`id` = tb.`hidden_ability`
	LEFT JOIN `regional_dex` rd ON rd.`national_id` = pl.`id`
    WHERE pl.`id` = `dex_id`
	ORDER BY pl.`id` ASC;
END //

DROP PROCEDURE IF EXISTS `show_one_limit` //

CREATE PROCEDURE `show_one_limit`(`dex_id` INT)
BEGIN
    SELECT pl.*, tb.*, pd.`baby`, a1.`ability_name` AS `a1_name`, a2.`ability_name` AS `a2_name`, ha.`ability_name` AS `ha_name`, 
	z.`excl_z_move`, z.`excl_z_move_type`, z.`excl_z_move_cat`, z.`excl_z_crystal`, z.`excl_z_req_move`, z.`excl_z_power`, rd.* FROM `pokemon_list` pl
	JOIN `type_bundle` tb ON tb.`pokedex_ref` = pl.`id`
	JOIN `pokemon_desc` pd ON pd.`desc` = tb.`type_desc`
	LEFT JOIN `excl_z` z ON z.id = tb.`excl_z_ref`
	LEFT JOIN `ability` a1 ON a1.`id` = tb.`ability1`
	LEFT JOIN `ability` a2 ON a2.`id` = tb.`ability2`
	LEFT JOIN `ability` ha ON ha.`id` = tb.`hidden_ability`
	LEFT JOIN `regional_dex` rd ON rd.`national_id` = pl.`id`
    WHERE pl.`id` = `dex_id`
	ORDER BY pl.`id` ASC
    LIMIT 1;
END //

DROP PROCEDURE IF EXISTS `get_dex_numbers` //

CREATE PROCEDURE `get_dex_numbers`(`dex_id` INT)
BEGIN
	SELECT DISTINCT rd.`dex_name`, rd.`national_id`, rd.`dex_id`, pl.`name`
    FROM `pokemon_list` pl
	LEFT JOIN `regional_dex` rd ON rd.`national_id` = pl.`id`
    WHERE rd.`national_id` = `dex_id`;
END //

DROP PROCEDURE IF EXISTS `count_distinct_entries` //

CREATE PROCEDURE `count_distinct_entries`()
BEGIN
	SELECT COUNT(DISTINCT `id`) AS `count` FROM `pokemon_list`;
END //

DROP PROCEDURE IF EXISTS `count_abilities` //
CREATE PROCEDURE `count_abilities`(`ability_id` INT)
BEGIN
	SELECT COUNT(*) FROM `type_bundle`
	WHERE `ability1` = `ability_id`
	OR `ability2` = `ability_id`
	OR `hidden_ability` = `ability_id`;
END //

DROP PROCEDURE IF EXISTS `show_abilities` //
CREATE PROCEDURE `select_abilities`(`ability_id` INT)
BEGIN
	SELECT pl.`name`, tb.* FROM `type_bundle` tb
    JOIN `pokemon_list` pl on pl.`id` = tb.`pokedex_ref`
	WHERE `ability1` = `ability_id`
	OR `ability2` = `ability_id`
	OR `hidden_ability` = `ability_id`
    ORDER BY pl.`id` ASC;
END //

DELIMITER ;

# CALL `count_distinct_entries`;

# SELECT * FROM `type_bundle`;

CALL `show_pkmn`('');
# CALL `show_pkmn_rev`('');
# CALL `show_pkmn_rev`('mega');
# CALL `show_pkmn_rev`('default');
# CALL `show_pkmn_rev`('alola_variant');
# CALL `show_pkmn_rev`('galar_variant');
# CALL `show_pkmn`('form');

-- CALL `show_one`(351);
-- SELECT `ability_name` FROM `ability` WHERE `id` = 114;
-- CALL `count_abilities`(229);
-- CALL `select_abilities`(174);
