class AddNameDescriptionDetailsToolsWhereToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :name, :string
    add_column :projects, :description, :string
    add_column :projects, :details, :string
    add_column :projects, :tools, :string, array: true
    add_column :projects, :where, :string
  end
end
