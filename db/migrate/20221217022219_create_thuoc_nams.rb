class CreateThuocNams < ActiveRecord::Migration[7.0]
  def change
    create_table :thuoc_nams do |t|
      t.string :ten
      t.string :dacdiem
      t.string :maula
      t.string :duoctinh
      t.string :luuysudung
      t.string :noitrong

      t.timestamps
    end
  end
end
