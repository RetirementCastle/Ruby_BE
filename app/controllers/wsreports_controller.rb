class WsreportsController < ApplicationController
    soap_service namespace: 'urn:WashOutReport', camelize_wsdl: :lower

     soap_action "checkReport",
                :args => { :reportId => :integer},
                :return => { :reportValid => :boolean}
    def checkReport
        if (Report.exists?(id: params[:reportId]))
            @report = Report.find(params[:reportId])
            render :soap => { :reportValid => true}
        else
            render :soap => { :reportValid => false}
        end
    end
end
