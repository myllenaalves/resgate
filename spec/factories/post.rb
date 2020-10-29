FactoryBot.define do
  factory :post do
    description { 'encontrei um cachorro na rua das flores' }
    title  { 'vira-lata caramelo' }
    photo  { 'https://www.hypeness.com.br/1/2019/09/Vira-lata_Caramelo_1.jpg'}
    date   { Date.new  }
    user   { association :user }
  end
end
