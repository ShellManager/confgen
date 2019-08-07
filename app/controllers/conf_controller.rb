class ConfController < ApplicationController
    def ipxe
        if ! Vm.find_by(:mac => params[:mac]) 
            render 'conf/ipxe_local' 
        else
            vm = Vm.find_by(:mac => params[:mac])
            @os = vm.os
            @name = vm.name
            @version = vm.version
            render 'conf/ipxe_install' 
        end
    end
end
