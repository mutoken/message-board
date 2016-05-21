class Message < ActiveRecord::Base
   #名前は必須かつ20文字以内
   validates :name, length: {maximum: 20}, presence: true
   #年齢は整数のみ
   validates :age, numericality: { only_integer: true }, presence: true
   #内容は必須且つ2文字以上、30文字以内
   validates :body, length: {minimum: 2, maximum:30}, presence: true
end
