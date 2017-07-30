class CreateSiteblogs < ActiveRecord::Migration[5.0]
  def change
    create_table :siteblogs do |t|
      t.string :title
      t.string :desc
      t.text :longdesc
      t.boolean :status
      t.datetime :date

      t.timestamps
    end
  end
end
