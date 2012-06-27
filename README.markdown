Rails Dump
==========

Rails dump is an attempt to reproduce a very useful Coldfusion feature, the CFDUMP tag is capable of dumping any object, string, array, structs, etc in a human readable way.

Example
===========

You can dump a variable set in your controller in your views using the following syntax

	class UsersController < ApplicationController
		def show
			@user = User.find(1)
			
			@array1 = [1, 2, 3, 4]
			
		end
	end

	<%= dump @user %>
	<%= dump @array1 %>

TODO
===========

* Dump object properties/values
* Build a Dump Version of Module objects