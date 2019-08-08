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
    def kickstart
        vm = Vm.find_by(:mac => params[:mac])
            @os = vm.os
            @name = vm.name
            @version = vm.version
            @hostname = vm.name
            @ip = vm.ip
            gw_oct = vm.ip.split('.')
            @gw = "#{gw_oct[0]}.#{gw_oct[1]}.#{gw_oct[2]}.1"
            render 'conf/kickstart_install' 
    end
end
