class IncluirTipoEmUsuarios < ActiveRecord::Migration
  def up 
    		add_column :usuarios, :tipo, :string 
  	end 

  	def down 
    		remove_column :usuarios, :tipo 
  	end
end
