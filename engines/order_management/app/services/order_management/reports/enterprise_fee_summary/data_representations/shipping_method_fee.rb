# This module provides EnterpriseFeeSummary::Scope DB result to report mappings for shipping method
# fees.

module OrderManagement
  module Reports
    module EnterpriseFeeSummary
      module DataRepresentations
        class ShippingMethodFee
          attr_reader :context

          def initialize(context)
            @context = context
          end

          def fee_type
            context.i18n_translate("fee_type.shipping_method")
          end

          def enterprise_name
            context.data["hub_name"]
          end

          def fee_name
            context.data["shipping_method_name"]
          end

          def fee_placement; end

          def fee_calculated_on_transfer_through_name; end

          def tax_category_name
            context.i18n_translate("tax_category_name.shipping_instance_rate")
          end
        end
      end
    end
  end
end
