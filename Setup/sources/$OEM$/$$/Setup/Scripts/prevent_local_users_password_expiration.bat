@ECHO OFF
wmic UserAccount where Name="Administrateur" set PasswordExpires=False
wmic UserAccount where Name="Pikachu" set PasswordExpires=False