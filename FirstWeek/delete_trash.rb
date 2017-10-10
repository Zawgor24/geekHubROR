module DeleteTrash

  @@names = [
    "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
    "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
    "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
    "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
    "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
  ]
  
  private

  def delete_trash
    trashes = ['Mrs. ', 'Miss ' , 'Mrs. ' , 'Dr. ', ' V', ' Jr.']

    @@names.each do |name|  
      trashes.each do |trash|
        name.gsub!(trash, '')
      end
    end
  end
end