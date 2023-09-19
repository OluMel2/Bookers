# FactoryBot.define do
#   factory :book do
#     sequence(:title) { |n| "title#{n}"}
#     sequence(:body) { |n| "body#{n}"}
#   end
# end


FactoryBot.define do
#宣言文でありデータの定義を行う際に記述します。
  factory :book do
  #どのモデルに対してデータ定義を行うのか記します。factory :モデル名 do ~ end
    title { Faker::Lorem.characters(number:5) }
    #カラム名｛ 値 ｝の形になっています。※Fakerについては後述
    body { Faker::Lorem.characters(number:20) }
    #カラム名｛ 値 ｝の形になっています。
  end
end



#Faker::Lorem.characters(number:5)
#この記述を分解すると以下のようになります。

#Faker:: ：Fakerを使用する時の宣言
#Lorem：ダミーテキストタイプを選択　※Lorem=lorem ipsumの略でダミーテキストの意味
#characters：文字列を作成
#number：生成文字数の指定

#ランダムな英数文字列を5文字生成するということになります。

