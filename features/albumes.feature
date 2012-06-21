#encoding: utf-8
@javascript
Feature: Create a new album
  I want to create an album
  
  Scenario: Create a new album
  Given that I'm on the home page
  When I fill in "Nombre" with "Fiesta Infantil"
  And I press "Crear Álbum"
  Then I should see "Su álbum fue creado con éxito."
  And I should see "Fiesta Infantil"

  Scenario: Edit an album
  Given that I'm on the home page
  When I fill in "Nombre" with "Fiesta Injuantil"
  And I press "Crear Álbum"
  Given that I'm on the home page
  Then I click on "Cambiar nombre"
  And I fill in "Nombre" with "Fiesta Infantil"
  And I press "Actualizar Álbum"
  Then I should see "Álbum actualizado con éxito."
  And I should see "Fiesta Infantil"

  Scenario: Delete an album
  Given that I'm on the home page
  When I fill in "Nombre" with "Fiesta Infantil"
  And I press "Crear Álbum"
  Given that I'm on the home page
  And I click on "Eliminar álbum"
  Then I must click on "¿Estás seguro?"
  Then I should see "Álbum eliminado con éxito."
  


  
  