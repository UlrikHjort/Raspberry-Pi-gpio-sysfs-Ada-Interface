---------------------------------------------------------------------------
--                 Raspberry Pi sysfs gpio interface
-- 
--             Copyright (C) 2020 By Ulrik Hørlyk Hjort 
--
--  This Program is Free Software; You Can Redistribute It and/or
--  Modify It Under The Terms of The GNU General Public License
--  As Published By The Free Software Foundation; Either Version 2
--  of The License, or (at Your Option) Any Later Version.
--
--  This Program is Distributed in The Hope That It Will Be Useful,
--  But WITHOUT ANY WARRANTY; Without Even The Implied Warranty of
--  MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See The
--  GNU General Public License for More Details.
--
-- You Should Have Received A Copy of The GNU General Public License
-- Along with This Program; if not, See <Http://Www.Gnu.Org/Licenses/>.
---------------------------------------------------------------------------
with Gpio_RaspberryPi; 
  
procedure Main is   
   package Gpio renames Gpio_RaspberryPi;     
   
   PIN23 : constant Integer := 23;
   PIN18 : constant Integer := 18; 
   
   Pin_Out : Integer := 0;
     
begin
   Gpio.Export(PIN23);
   Gpio.Export(PIN18);
   Gpio.Set_Pin_Mode(PIN23,Gpio.Mode_Out);   
   Gpio.Set_Pin_Mode(PIN18,Gpio.Mode_In);
   
   Gpio.Digital_Write(PIN23,GPio.Low);   
   Pin_Out := Gpio.Digital_Read(PIN18);
end Main;

