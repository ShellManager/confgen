class ConfController < ApplicationController
    def ipxe
        if ! Vm.find_by(:mac => params[:mac].upcase) 
            render 'conf/ipxe_local' 
        else
            vm = Vm.find_by(:mac => params[:mac].upcase)
            @os = vm.os
            @name = vm.name
            @version = vm.version
            render 'conf/ipxe_install' 
        end
    end
    def kickstart
        vm = Vm.find_by(:mac => params[:mac].upcase)
            @os = vm.os
            @version = vm.version
            @hostname = vm.name
            render 'conf/kickstart_install' 
    end
    def preseed
        vm = Vm.find_by(:mac => params[:mac].upcase)
            @os = vm.os
            @hostname = vm.name
            render 'conf/preseed_install' 
    end
end
