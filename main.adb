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
   
   PIN1 : constant Integer := 23;
   PIN2 : constant Integer := 18; 
   
   Pin_Out : Integer := 0;
     
begin
   Gpio.Export(PIN1);
   Gpio.Export(PIN2);
   Gpio.Set_Pin_Mode(PIN1,Gpio.Mode_Out);   
   Gpio.Set_Pin_Mode(PIN2,Gpio.Mode_In);
   
   Gpio.Digital_Write(PIN1,GPio.Low);   
   Pin_Out := Gpio.Digital_Read(PIN2);
end Main;

