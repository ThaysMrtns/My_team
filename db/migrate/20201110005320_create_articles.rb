class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :id_seq
      t.string :nome
      t.string :email
      t.string :cargo
      t.string :salario
      t.timestamps
    end
  end
end
