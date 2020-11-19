class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.string :title
      t.string :office
      t.string :img_url
      t.integer :dog_id

      t.timestamps
    end
  end
end

#Employee.create(first_name: "Jim", last_name: "Halpert", alias: "Big Tuna", title: "Regional Co-Manager", office: "Scranton", dog: Dog.second, img_url: "https://s-i.huffpost.com/gen/2028878/images/n-UPROXX-628x314.jpg")