#encoding: utf-8
@javascript
Feature: Fill an album with photos and delete them
  I want to create and delete a photo
  
  Scenario: Create a new album and upload a photo
  Given that I'm on the home page
  When I fill in "Nombre" with "Fiesta Infantil"
  And I press "Crear Álbum"
  Then I should see "Su álbum fue creado con éxito."
  And I should see "Fiesta Infantil"
  And I attach the file "features/support/picture.jpg" to "Foto"
  And I press "Guardar"
  Then I should see "Foto agregada correctamente."
  And I should see the image "picture.jpg"

  Scenario: Delete a photo
  Given that I'm on the home page
  When I fill in "Nombre" with "Fiesta Infantil"
  And I press "Crear Álbum"
  Then I should see "Su álbum fue creado con éxito."
  And I should see "Fiesta Infantil"
  And I attach the file "features/support/picture.jpg" to "Foto"
  And I press "Guardar"
  Then I should see "Foto agregada correctamente."
  And I should see the image "picture.jpg"
  And I click on "Eliminar"
  Then I should see "Foto eliminada con éxito"
  


  
