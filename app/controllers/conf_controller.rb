class ConfController < ApplicationController
    def ipxe
        if ! Vm.find_by(:mac => params[:mac].upcase, :status => nil) && ! Vm.find_by(:mac => params[:mac].upcase, :status => "installing") && ! Vm.find_by(:mac => params[:mac].upcase, :status => "installed")
            vm = Vm.find_by(:mac => params[:mac].upcase)
            vm.status = "booted_os"
            vm.save!
            render 'conf/ipxe_local' 
            
        else
            vm = Vm.find_by(:mac => params[:mac].upcase)
            @os = vm.os
            @name = vm.name
            @version = vm.version
            vm.status = "booted_install"
            vm.save!
            render 'conf/ipxe_install' 
            
        end
    end
    def kickstart
        vm = Vm.find_by(:mac => params[:mac].upcase)
            @os = vm.os
            @version = vm.version
            @hostname = vm.name
            vm.status = "installing"
            vm.save!
            render 'conf/kickstart_install' 
    end
    def preseed
        vm = Vm.find_by(:mac => params[:mac].upcase)
            @os = vm.os
            @hostname = vm.name
            vm.status = "installing"
            vm.save!
            render 'conf/preseed_install' 
    end
end
