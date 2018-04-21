/*

This file is part of STEMI hexapod library.

Copyright (C) 2017 STEMI d.o.o.
Authors: Luka Fucek, et al.
Contact: info@stemi.education
Web: https://www.stemi.education/

STEMI hexapod library is free software exclusively
for non-commercial activities.

In case of developing any comercial activities involving STEMI
hexapod library please contact stemi.education for providing custom
license at: info@stemi.education.

For non-commercial activities you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License,
or (at your option) any later version.

STEMI hexapod library is
distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with STEMI hexapod library.
If not, see http://www.gnu.org/licenses/.

For additional information please check http://www.stemi.education.

*/

#include "Hexapod.h"
Hexapod  *hexapod;
void setup()
{
	Serial.begin(115200);
	Serial.println("Krenuo!");
	
	hexapod = new Hexapod();
}

void loop()
{
	hexapod->sharedData.moveCtrl.poseVector[0] = 4;
	delay(1000);
	hexapod->sharedData.moveCtrl.linearVelocity = 5;
	hexapod->sharedData.ledCtrl.primarClr[0] = 255;
	delay(2000);
	hexapod->sharedData.moveCtrl.linearVelocity = 0;
	delay(2000);
	hexapod->sharedData.mode = ROBOT_STANDBY_MODE;
	delay(9999999);
}
