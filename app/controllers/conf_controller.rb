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
            render 'conf/kickstart_install' 
    end
    def preseed
        vm = Vm.find_by(:mac => params[:mac])
            @os = vm.os
            @name = vm.name
            @version = vm.version
            @hostname = vm.name
            @ip = vm.ip
            render 'conf/preseed_install' 
    end
end
