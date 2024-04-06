// To parse this JSON data, do
//
//     final authModel = authModelFromMap(jsonString);

import 'dart:convert';

AuthModel authModelFromMap(String str) => AuthModel.fromMap(json.decode(str));

String authModelToMap(AuthModel data) => json.encode(data.toMap());

class AuthModel {
    int? code;
    String? message;
    Data? data;

    AuthModel({
        this.code,
        this.message,
        this.data,
    });

    factory AuthModel.fromMap(Map<String, dynamic> json) => AuthModel(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "message": message,
        "data": data?.toMap(),
    };
}

class Data {
    int? id;
    String? userType;
    String? surname;
    String? firstName;
    String? lastName;
    String? username;
    String? email;
    int? businessId;
    String? status;
    dynamic roleId;
    dynamic contactIdType;
    String? webLanguage;
    dynamic voide;
    String? voidLimit;
    String? passwordString;
    dynamic fcmToken;
    int? terminalRegister;
    List<Location>? location;
    Business? business;
    Terminal? terminal;
    Subscription? subscription;
    String? role;
    bool? isAdmin;
    List<dynamic>? permissions;
    String? bearer;
    Media? media;

    Data({
        this.id,
        this.userType,
        this.surname,
        this.firstName,
        this.lastName,
        this.username,
        this.email,
        this.businessId,
        this.status,
        this.roleId,
        this.contactIdType,
        this.webLanguage,
        this.voide,
        this.voidLimit,
        this.passwordString,
        this.fcmToken,
        this.terminalRegister,
        this.location,
        this.business,
        this.terminal,
        this.subscription,
        this.role,
        this.isAdmin,
        this.permissions,
        this.bearer,
        this.media,
    });

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"] ?? 0,
        userType: json["user_type"] ?? '',
        surname: json["surname"] ?? '',
        firstName: json["first_name"] ?? '',
        lastName: json["last_name"] ?? '',
        username: json["username"] ?? '',
        email: json["email"] ?? '',
        businessId: json["business_id"] ?? 0,
        status: json["status"] ?? '',
        roleId: json["role_id"],
        contactIdType: json["contact_id_type"],
        webLanguage: json["web_language"] ?? '',
        voide: json["voide"],
        voidLimit: json["void_limit"] ?? '',
        passwordString: json["password_string"] ?? '',
        fcmToken: json["fcm_token"],
        terminalRegister: json["terminal_register"] ?? 0,
        location: json["location"] == null ? [] : List<Location>.from(json["location"]!.map((x) => Location.fromMap(x))),
        business: json["business"] == null ? null : Business.fromMap(json["business"]),
        terminal: json["terminal"] == null ? null : Terminal.fromMap(json["terminal"]),
        subscription: json["subscription"] == null ? null : Subscription.fromMap(json["subscription"]),
        role: json["role"],
        isAdmin: json["is_admin"],
        permissions: json["permissions"] == null ? [] : List<dynamic>.from(json["permissions"]!.map((x) => x)),
        bearer: json["Bearer"],
        media: json["media"] == null ? null : Media.fromMap(json["media"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "user_type": userType,
        "surname": surname,
        "first_name": firstName,
        "last_name": lastName,
        "username": username,
        "email": email,
        "business_id": businessId,
        "status": status,
        "role_id": roleId,
        "contact_id_type": contactIdType,
        "web_language": webLanguage,
        "voide": voide,
        "void_limit": voidLimit,
        "password_string": passwordString,
        "fcm_token": fcmToken,
        "terminal_register": terminalRegister,
        "location": location == null ? [] : List<dynamic>.from(location!.map((x) => x.toMap())),
        "business": business?.toMap(),
        "terminal": terminal?.toMap(),
        "subscription": subscription?.toMap(),
        "role": role,
        "is_admin": isAdmin,
        "permissions": permissions == null ? [] : List<dynamic>.from(permissions!.map((x) => x)),
        "Bearer": bearer,
        "media": media?.toMap(),
    };
}

class Business {
    int? id;
    String? name;
    int? currencyId;
    DateTime? startDate;
    dynamic taxNumber1;
    dynamic taxLabel1;
    dynamic taxNumber2;
    dynamic taxLabel2;
    dynamic defaultSalesTax;
    String? defaultProfitPercent;
    int? ownerId;
    String? timeZone;
    int? fyStartMonth;
    String? accountingMethod;
    String? defaultSalesDiscount;
    String? sellPriceTax;
    dynamic logo;
    dynamic skuPrefix;
    int? enableProductExpiry;
    String? expiryType;
    String? onProductExpiry;
    dynamic stopSellingBefore;
    int? enableTooltip;
    int? purchaseInDiffCurrency;
    dynamic purchaseCurrencyId;
    String? pExchangeRate;
    int? transactionEditDays;
    int? stockExpiryAlertDays;
    String? keyboardShortcuts;
    String? posSettings;
    dynamic manufacturingSettings;
    WeighingScaleSetting? weighingScaleSetting;
    int? enableBrand;
    int? enableCategory;
    int? enableSubCategory;
    int? enablePriceTax;
    int? enablePurchaseStatus;
    int? enableLotNumber;
    int? defaultUnit;
    int? enableSubUnits;
    int? enableRacks;
    int? enableRow;
    int? enablePosition;
    int? enableEditingProductFromPurchase;
    dynamic salesCmsnAgnt;
    int? itemAdditionMethod;
    int? enableInlineTax;
    String? currencySymbolPlacement;
    dynamic enabledModules;
    String? dateFormat;
    String? timeFormat;
    RefNoPrefixes? refNoPrefixes;
    dynamic themeColor;
    dynamic createdBy;
    dynamic repairSettings;
    int? enableRp;
    String? rpName;
    String? amountForUnitRp;
    String? minOrderTotalForRp;
    dynamic maxRpPerOrder;
    String? redeemAmountPerUnitRp;
    String? minOrderTotalForRedeem;
    dynamic minRedeemPoint;
    dynamic maxRedeemPoint;
    dynamic rpExpiryPeriod;
    String? rpExpiryType;
    EmailSettings? emailSettings;
    SmsSettings? smsSettings;
    String? customLabels;
    CommonSettings? commonSettings;
    int? isActive;
    int? couponAmount;
    String? breakTiming;
    String? maxDrawerAmount;
    String? cashbackFee;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? unreadNotificationExceedLimit;
    dynamic employeeTax;
    int? promotionTime;
    String? loyaltyPoint;
    String? loyaltyAmount;
    int? caseWeight;
    int? unitWeight;
    int? weightAtScale;
    int? itemExpireIn;
    int? hotKey;
    int? sendToScale;
    int? specialPrice;
    int? enableEndDate;
    int? enableStartDate;
    int? enableOnSpecial;
    int? packageUpc;
    int? packagePrice;
    int? item;
    int? rebateGroup;
    int? groupPlu;
    int? manufacturer;
    int? mixMatchGroup;
    int? detailType;
    int? onHandQty;
    int? packSize;
    int? dealName;
    int? loyaltyDescription;
    int? smartMenu;
    int? labelLoyaltyPoint;
    int? labelSmartMenu;
    int? labelLoyaltyAmount;
    int? labelItemIngredient;
    int? labelPhotoTags;
    int? labelInventoryGroup;
    int? labelTagAlongItem;
    int? image;
    int? onlineItem;
    int? kitchenPrinter;
    int? showInKiosk;
    int? mustAskQty;
    int? inventory;
    int? showInMenu;
    int? activeItem;
    int? ebtEligible;
    int? ingredient;
    int? wicEligible;
    int? weightItem;
    String? covinienceFee;
    String? covinienceOption;
    String? desktopLanguage;
    String? purchaseOption;
    dynamic quickbookAccessToken;
    dynamic quickbookRefreshToken;
    dynamic quickbookCompanyId;
    int? deliveryRDays;
    int? deliverySFee;
    String? deliverySDays;
    int? alertProduct;
    dynamic deletedAt;
    bool? covinienceFeeApply;
    String? loyaltyType;
    bool? cashInDraw;
    String? cashInDrawNotifyAmount;
    bool? mixMatchProductPrice;
    String? essentialsSettings;
    dynamic woocommerceWhOcSecret;
    dynamic woocommerceWhOuSecret;
    dynamic woocommerceWhOdSecret;
    dynamic woocommerceWhOrSecret;
    dynamic woocommerceSkippedOrders;
    dynamic accountingSettings;
    int? mergeItem;
    dynamic paymentProcessing;
    String? systemHardware;
    String? receiptsSetting;
    String? reportSetting;
    int? currencyPrecision;
    int? quantityPrecision;
    int? batchId;
    dynamic kdsSettings;
    Currency? currency;

    Business({
        this.id,
        this.name,
        this.currencyId,
        this.startDate,
        this.taxNumber1,
        this.taxLabel1,
        this.taxNumber2,
        this.taxLabel2,
        this.defaultSalesTax,
        this.defaultProfitPercent,
        this.ownerId,
        this.timeZone,
        this.fyStartMonth,
        this.accountingMethod,
        this.defaultSalesDiscount,
        this.sellPriceTax,
        this.logo,
        this.skuPrefix,
        this.enableProductExpiry,
        this.expiryType,
        this.onProductExpiry,
        this.stopSellingBefore,
        this.enableTooltip,
        this.purchaseInDiffCurrency,
        this.purchaseCurrencyId,
        this.pExchangeRate,
        this.transactionEditDays,
        this.stockExpiryAlertDays,
        this.keyboardShortcuts,
        this.posSettings,
        this.manufacturingSettings,
        this.weighingScaleSetting,
        this.enableBrand,
        this.enableCategory,
        this.enableSubCategory,
        this.enablePriceTax,
        this.enablePurchaseStatus,
        this.enableLotNumber,
        this.defaultUnit,
        this.enableSubUnits,
        this.enableRacks,
        this.enableRow,
        this.enablePosition,
        this.enableEditingProductFromPurchase,
        this.salesCmsnAgnt,
        this.itemAdditionMethod,
        this.enableInlineTax,
        this.currencySymbolPlacement,
        this.enabledModules,
        this.dateFormat,
        this.timeFormat,
        this.refNoPrefixes,
        this.themeColor,
        this.createdBy,
        this.repairSettings,
        this.enableRp,
        this.rpName,
        this.amountForUnitRp,
        this.minOrderTotalForRp,
        this.maxRpPerOrder,
        this.redeemAmountPerUnitRp,
        this.minOrderTotalForRedeem,
        this.minRedeemPoint,
        this.maxRedeemPoint,
        this.rpExpiryPeriod,
        this.rpExpiryType,
        this.emailSettings,
        this.smsSettings,
        this.customLabels,
        this.commonSettings,
        this.isActive,
        this.couponAmount,
        this.breakTiming,
        this.maxDrawerAmount,
        this.cashbackFee,
        this.createdAt,
        this.updatedAt,
        this.unreadNotificationExceedLimit,
        this.employeeTax,
        this.promotionTime,
        this.loyaltyPoint,
        this.loyaltyAmount,
        this.caseWeight,
        this.unitWeight,
        this.weightAtScale,
        this.itemExpireIn,
        this.hotKey,
        this.sendToScale,
        this.specialPrice,
        this.enableEndDate,
        this.enableStartDate,
        this.enableOnSpecial,
        this.packageUpc,
        this.packagePrice,
        this.item,
        this.rebateGroup,
        this.groupPlu,
        this.manufacturer,
        this.mixMatchGroup,
        this.detailType,
        this.onHandQty,
        this.packSize,
        this.dealName,
        this.loyaltyDescription,
        this.smartMenu,
        this.labelLoyaltyPoint,
        this.labelSmartMenu,
        this.labelLoyaltyAmount,
        this.labelItemIngredient,
        this.labelPhotoTags,
        this.labelInventoryGroup,
        this.labelTagAlongItem,
        this.image,
        this.onlineItem,
        this.kitchenPrinter,
        this.showInKiosk,
        this.mustAskQty,
        this.inventory,
        this.showInMenu,
        this.activeItem,
        this.ebtEligible,
        this.ingredient,
        this.wicEligible,
        this.weightItem,
        this.covinienceFee,
        this.covinienceOption,
        this.desktopLanguage,
        this.purchaseOption,
        this.quickbookAccessToken,
        this.quickbookRefreshToken,
        this.quickbookCompanyId,
        this.deliveryRDays,
        this.deliverySFee,
        this.deliverySDays,
        this.alertProduct,
        this.deletedAt,
        this.covinienceFeeApply,
        this.loyaltyType,
        this.cashInDraw,
        this.cashInDrawNotifyAmount,
        this.mixMatchProductPrice,
        this.essentialsSettings,
        this.woocommerceWhOcSecret,
        this.woocommerceWhOuSecret,
        this.woocommerceWhOdSecret,
        this.woocommerceWhOrSecret,
        this.woocommerceSkippedOrders,
        this.accountingSettings,
        this.mergeItem,
        this.paymentProcessing,
        this.systemHardware,
        this.receiptsSetting,
        this.reportSetting,
        this.currencyPrecision,
        this.quantityPrecision,
        this.batchId,
        this.kdsSettings,
        this.currency,
    });

    factory Business.fromMap(Map<String, dynamic> json) => Business(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        currencyId: json["currency_id"] ?? 0,
        startDate: json["start_date"] == null ? DateTime.now() : DateTime.parse(json["start_date"]),
        taxNumber1: json["tax_number_1"],
        taxLabel1: json["tax_label_1"],
        taxNumber2: json["tax_number_2"],
        taxLabel2: json["tax_label_2"],
        defaultSalesTax: json["default_sales_tax"],
        defaultProfitPercent: json["default_profit_percent"] ?? '',
        ownerId: json["owner_id"] ?? 0,
        timeZone: json["time_zone"] ?? '',
        fyStartMonth: json["fy_start_month"] ?? 0,
        accountingMethod: json["accounting_method"] ?? '',
        defaultSalesDiscount: json["default_sales_discount"] ?? '',
        sellPriceTax: json["sell_price_tax"] ?? '',
        logo: json["logo"],
        skuPrefix: json["sku_prefix"],
        enableProductExpiry: json["enable_product_expiry"] ?? 0,
        expiryType: json["expiry_type"] ?? '',
        onProductExpiry: json["on_product_expiry"] ?? '',
        stopSellingBefore: json["stop_selling_before"],
        enableTooltip: json["enable_tooltip"] ?? 0,
        purchaseInDiffCurrency: json["purchase_in_diff_currency"] ?? 0,
        purchaseCurrencyId: json["purchase_currency_id"],
        pExchangeRate: json["p_exchange_rate"] ?? '',
        transactionEditDays: json["transaction_edit_days"] ?? 0,
        stockExpiryAlertDays: json["stock_expiry_alert_days"] ?? 0,
        keyboardShortcuts: json["keyboard_shortcuts"] ?? '',
        posSettings: json["pos_settings"] ?? '',
        manufacturingSettings: json["manufacturing_settings"],
        weighingScaleSetting: json["weighing_scale_setting"] == null ? null : WeighingScaleSetting.fromMap(json["weighing_scale_setting"]),
        enableBrand: json["enable_brand"] ?? 0,
        enableCategory: json["enable_category"] ?? 0,
        enableSubCategory: json["enable_sub_category"] ?? 0,
        enablePriceTax: json["enable_price_tax"] ?? 0,
        enablePurchaseStatus: json["enable_purchase_status"] ?? 0,
        enableLotNumber: json["enable_lot_number"] ?? 0,
        defaultUnit: json["default_unit"] ?? 0,
        enableSubUnits: json["enable_sub_units"] ?? 0,
        enableRacks: json["enable_racks"] ?? 0,
        enableRow: json["enable_row"] ?? 0,
        enablePosition: json["enable_position"] ?? 0,
        enableEditingProductFromPurchase: json["enable_editing_product_from_purchase"] ?? 0,
        salesCmsnAgnt: json["sales_cmsn_agnt"],
        itemAdditionMethod: json["item_addition_method"] ?? 0,
        enableInlineTax: json["enable_inline_tax"] ?? 0,
        currencySymbolPlacement: json["currency_symbol_placement"] ??'',
        enabledModules: json["enabled_modules"],
        dateFormat: json["date_format"] ?? '',
        timeFormat: json["time_format"] ?? '',
        refNoPrefixes: json["ref_no_prefixes"] == null ? null : RefNoPrefixes.fromMap(json["ref_no_prefixes"]),
        themeColor: json["theme_color"],
        createdBy: json["created_by"],
        repairSettings: json["repair_settings"],
        enableRp: json["enable_rp"] ?? 0,
        rpName: json["rp_name"] ?? '',
        amountForUnitRp: json["amount_for_unit_rp"] ?? '',
        minOrderTotalForRp: json["min_order_total_for_rp"] ?? '',
        maxRpPerOrder: json["max_rp_per_order"],
        redeemAmountPerUnitRp: json["redeem_amount_per_unit_rp"] ?? '',
        minOrderTotalForRedeem: json["min_order_total_for_redeem"] ?? '',
        minRedeemPoint: json["min_redeem_point"],
        maxRedeemPoint: json["max_redeem_point"],
        rpExpiryPeriod: json["rp_expiry_period"],
        rpExpiryType: json["rp_expiry_type"] ?? '',
        emailSettings: json["email_settings"] == null ? null : EmailSettings.fromMap(json["email_settings"]),
        smsSettings: json["sms_settings"] == null ? null : SmsSettings.fromMap(json["sms_settings"]),
        customLabels: json["custom_labels"] ?? '',
        commonSettings: json["common_settings"] == null ? null : CommonSettings.fromMap(json["common_settings"]),
        isActive: json["is_active"] ?? 0,
        couponAmount: json["coupon_amount"] ?? 0,
        breakTiming: json["break_timing"] ?? '',
        maxDrawerAmount: json["max_drawer_amount"] ?? '',
        cashbackFee: json["cashback_fee"] ?? '',
        createdAt: json["created_at"] == null ? DateTime.now() : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? DateTime.now() : DateTime.parse(json["updated_at"]),
        unreadNotificationExceedLimit: json["unread_notification_exceed_limit"] ?? 0,
        employeeTax: json["employee_tax"],
        promotionTime: json["promotion_time"] ?? 0,
        loyaltyPoint: json["loyalty_point"] ?? '',
        loyaltyAmount: json["loyalty_amount"] ?? '',
        caseWeight: json["case_weight"] ?? 0,
        unitWeight: json["unit_weight"] ?? 0,
        weightAtScale: json["weight_at_scale"] ?? 0,
        itemExpireIn: json["item_expire_in"] ?? 0,
        hotKey: json["hot_key"] ?? 0,
        sendToScale: json["send_to_scale"] ?? 0,
        specialPrice: json["special_price"] ?? 0,
        enableEndDate: json["enable_end_date"] ?? 0,
        enableStartDate: json["enable_start_date"] ?? 0,
        enableOnSpecial: json["enable_on_special"] ?? 0,
        packageUpc: json["package_upc"] ?? 0,
        packagePrice: json["package_price"] ?? 0,
        item: json["item"] ?? 0,
        rebateGroup: json["rebate_group"] ?? 0,
        groupPlu: json["group_plu"] ?? 0,
        manufacturer: json["manufacturer"] ?? 0,
        mixMatchGroup: json["mix_match_group"] ?? 0,
        detailType: json["detail_type"] ?? 0,
        onHandQty: json["on_hand_qty"] ?? 0,
        packSize: json["pack_size"] ?? 0,
        dealName: json["deal_name"] ?? 0,
        loyaltyDescription: json["loyalty_description"] ?? 0,
        smartMenu: json["smart_menu"] ?? 0,
        labelLoyaltyPoint: json["label_loyalty_point"] ?? 0,
        labelSmartMenu: json["label_smart_menu"] ?? 0,
        labelLoyaltyAmount: json["label_loyalty_amount"] ?? 0,
        labelItemIngredient: json["label_item_ingredient"] ?? 0,
        labelPhotoTags: json["label_photo_tags"] ?? 0,
        labelInventoryGroup: json["label_inventory_group"] ?? 0,
        labelTagAlongItem: json["label_tag_along_item"] ?? 0,
        image: json["image"] ?? 0,
        onlineItem: json["online_item"] ?? 0,
        kitchenPrinter: json["kitchen_printer"] ?? 0,
        showInKiosk: json["show_in_kiosk"] ?? 0,
        mustAskQty: json["must_ask_qty"] ?? 0,
        inventory: json["inventory"] ?? 0,
        showInMenu: json["show_in_menu"] ?? 0,
        activeItem: json["active_item"] ?? 0,
        ebtEligible: json["ebt_eligible"] ?? 0,
        ingredient: json["ingredient"] ?? 0,
        wicEligible: json["wic_eligible"] ?? 0,
        weightItem: json["weight_item"] ?? 0,
        covinienceFee: json["covinience_fee"] ?? '',
        covinienceOption: json["covinience_option"] ?? '',
        desktopLanguage: json["desktop_language"] ?? '',
        purchaseOption: json["purchase_option"] ?? '',
        quickbookAccessToken: json["quickbook_access_token"],
        quickbookRefreshToken: json["quickbook_refresh_token"],
        quickbookCompanyId: json["quickbook_company_id"],
        deliveryRDays: json["delivery_r_days"] ?? 0,
        deliverySFee: json["delivery_s_fee"] ?? 0,
        deliverySDays: json["delivery_s_days"] ?? '',
        alertProduct: json["alert_product"] ??  0,
        deletedAt: json["deleted_at"],
        covinienceFeeApply: json["covinience_fee_apply"] ?? false,
        loyaltyType: json["loyalty_type"] ?? '',
        cashInDraw: json["cash_in_draw"] ?? false,
        cashInDrawNotifyAmount: json["cash_in_draw_notify_amount"] ?? '',
        mixMatchProductPrice: json["mix_match_product_price"] ?? false,
        essentialsSettings: json["essentials_settings"] ?? '',
        woocommerceWhOcSecret: json["woocommerce_wh_oc_secret"],
        woocommerceWhOuSecret: json["woocommerce_wh_ou_secret"],
        woocommerceWhOdSecret: json["woocommerce_wh_od_secret"],
        woocommerceWhOrSecret: json["woocommerce_wh_or_secret"],
        woocommerceSkippedOrders: json["woocommerce_skipped_orders"],
        accountingSettings: json["accounting_settings"],
        mergeItem: json["merge_item"] ?? 0,
        paymentProcessing: json["payment_processing"],
        systemHardware: json["system_hardware"] ?? '',
        receiptsSetting: json["receipts_setting"] ?? '',
        reportSetting: json["report_setting"] ?? '',
        currencyPrecision: json["currency_precision"] ?? 0,
        quantityPrecision: json["quantity_precision"] ?? 0,
        batchId: json["batch_id"] ?? 0,
        kdsSettings: json["kds_settings"],
        currency: json["currency"] == null ? null : Currency.fromMap(json["currency"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "currency_id": currencyId,
        "start_date": "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "tax_number_1": taxNumber1,
        "tax_label_1": taxLabel1,
        "tax_number_2": taxNumber2,
        "tax_label_2": taxLabel2,
        "default_sales_tax": defaultSalesTax,
        "default_profit_percent": defaultProfitPercent,
        "owner_id": ownerId,
        "time_zone": timeZone,
        "fy_start_month": fyStartMonth,
        "accounting_method": accountingMethod,
        "default_sales_discount": defaultSalesDiscount,
        "sell_price_tax": sellPriceTax,
        "logo": logo,
        "sku_prefix": skuPrefix,
        "enable_product_expiry": enableProductExpiry,
        "expiry_type": expiryType,
        "on_product_expiry": onProductExpiry,
        "stop_selling_before": stopSellingBefore,
        "enable_tooltip": enableTooltip,
        "purchase_in_diff_currency": purchaseInDiffCurrency,
        "purchase_currency_id": purchaseCurrencyId,
        "p_exchange_rate": pExchangeRate,
        "transaction_edit_days": transactionEditDays,
        "stock_expiry_alert_days": stockExpiryAlertDays,
        "keyboard_shortcuts": keyboardShortcuts,
        "pos_settings": posSettings,
        "manufacturing_settings": manufacturingSettings,
        "weighing_scale_setting": weighingScaleSetting?.toMap(),
        "enable_brand": enableBrand,
        "enable_category": enableCategory,
        "enable_sub_category": enableSubCategory,
        "enable_price_tax": enablePriceTax,
        "enable_purchase_status": enablePurchaseStatus,
        "enable_lot_number": enableLotNumber,
        "default_unit": defaultUnit,
        "enable_sub_units": enableSubUnits,
        "enable_racks": enableRacks,
        "enable_row": enableRow,
        "enable_position": enablePosition,
        "enable_editing_product_from_purchase": enableEditingProductFromPurchase,
        "sales_cmsn_agnt": salesCmsnAgnt,
        "item_addition_method": itemAdditionMethod,
        "enable_inline_tax": enableInlineTax,
        "currency_symbol_placement": currencySymbolPlacement,
        "enabled_modules": enabledModules,
        "date_format": dateFormat,
        "time_format": timeFormat,
        "ref_no_prefixes": refNoPrefixes?.toMap(),
        "theme_color": themeColor,
        "created_by": createdBy,
        "repair_settings": repairSettings,
        "enable_rp": enableRp,
        "rp_name": rpName,
        "amount_for_unit_rp": amountForUnitRp,
        "min_order_total_for_rp": minOrderTotalForRp,
        "max_rp_per_order": maxRpPerOrder,
        "redeem_amount_per_unit_rp": redeemAmountPerUnitRp,
        "min_order_total_for_redeem": minOrderTotalForRedeem,
        "min_redeem_point": minRedeemPoint,
        "max_redeem_point": maxRedeemPoint,
        "rp_expiry_period": rpExpiryPeriod,
        "rp_expiry_type": rpExpiryType,
        "email_settings": emailSettings?.toMap(),
        "sms_settings": smsSettings?.toMap(),
        "custom_labels": customLabels,
        "common_settings": commonSettings?.toMap(),
        "is_active": isActive,
        "coupon_amount": couponAmount,
        "break_timing": breakTiming,
        "max_drawer_amount": maxDrawerAmount,
        "cashback_fee": cashbackFee,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "unread_notification_exceed_limit": unreadNotificationExceedLimit,
        "employee_tax": employeeTax,
        "promotion_time": promotionTime,
        "loyalty_point": loyaltyPoint,
        "loyalty_amount": loyaltyAmount,
        "case_weight": caseWeight,
        "unit_weight": unitWeight,
        "weight_at_scale": weightAtScale,
        "item_expire_in": itemExpireIn,
        "hot_key": hotKey,
        "send_to_scale": sendToScale,
        "special_price": specialPrice,
        "enable_end_date": enableEndDate,
        "enable_start_date": enableStartDate,
        "enable_on_special": enableOnSpecial,
        "package_upc": packageUpc,
        "package_price": packagePrice,
        "item": item,
        "rebate_group": rebateGroup,
        "group_plu": groupPlu,
        "manufacturer": manufacturer,
        "mix_match_group": mixMatchGroup,
        "detail_type": detailType,
        "on_hand_qty": onHandQty,
        "pack_size": packSize,
        "deal_name": dealName,
        "loyalty_description": loyaltyDescription,
        "smart_menu": smartMenu,
        "label_loyalty_point": labelLoyaltyPoint,
        "label_smart_menu": labelSmartMenu,
        "label_loyalty_amount": labelLoyaltyAmount,
        "label_item_ingredient": labelItemIngredient,
        "label_photo_tags": labelPhotoTags,
        "label_inventory_group": labelInventoryGroup,
        "label_tag_along_item": labelTagAlongItem,
        "image": image,
        "online_item": onlineItem,
        "kitchen_printer": kitchenPrinter,
        "show_in_kiosk": showInKiosk,
        "must_ask_qty": mustAskQty,
        "inventory": inventory,
        "show_in_menu": showInMenu,
        "active_item": activeItem,
        "ebt_eligible": ebtEligible,
        "ingredient": ingredient,
        "wic_eligible": wicEligible,
        "weight_item": weightItem,
        "covinience_fee": covinienceFee,
        "covinience_option": covinienceOption,
        "desktop_language": desktopLanguage,
        "purchase_option": purchaseOption,
        "quickbook_access_token": quickbookAccessToken,
        "quickbook_refresh_token": quickbookRefreshToken,
        "quickbook_company_id": quickbookCompanyId,
        "delivery_r_days": deliveryRDays,
        "delivery_s_fee": deliverySFee,
        "delivery_s_days": deliverySDays,
        "alert_product": alertProduct,
        "deleted_at": deletedAt,
        "covinience_fee_apply": covinienceFeeApply,
        "loyalty_type": loyaltyType,
        "cash_in_draw": cashInDraw,
        "cash_in_draw_notify_amount": cashInDrawNotifyAmount,
        "mix_match_product_price": mixMatchProductPrice,
        "essentials_settings": essentialsSettings,
        "woocommerce_wh_oc_secret": woocommerceWhOcSecret,
        "woocommerce_wh_ou_secret": woocommerceWhOuSecret,
        "woocommerce_wh_od_secret": woocommerceWhOdSecret,
        "woocommerce_wh_or_secret": woocommerceWhOrSecret,
        "woocommerce_skipped_orders": woocommerceSkippedOrders,
        "accounting_settings": accountingSettings,
        "merge_item": mergeItem,
        "payment_processing": paymentProcessing,
        "system_hardware": systemHardware,
        "receipts_setting": receiptsSetting,
        "report_setting": reportSetting,
        "currency_precision": currencyPrecision,
        "quantity_precision": quantityPrecision,
        "batch_id": batchId,
        "kds_settings": kdsSettings,
        "currency": currency?.toMap(),
    };
}

class CommonSettings {
    String? defaultDatatablePageEntries;

    CommonSettings({
        this.defaultDatatablePageEntries,
    });

    factory CommonSettings.fromMap(Map<String, dynamic> json) => CommonSettings(
        defaultDatatablePageEntries: json["default_datatable_page_entries"],
    );

    Map<String, dynamic> toMap() => {
        "default_datatable_page_entries": defaultDatatablePageEntries,
    };
}

class Currency {
    int? id;
    String? country;
    String? currency;
    String? code;
    String? symbol;
    String? thousandSeparator;
    String? decimalSeparator;
    dynamic createdAt;
    dynamic updatedAt;

    Currency({
        this.id,
        this.country,
        this.currency,
        this.code,
        this.symbol,
        this.thousandSeparator,
        this.decimalSeparator,
        this.createdAt,
        this.updatedAt,
    });

    factory Currency.fromMap(Map<String, dynamic> json) => Currency(
        id: json["id"] ?? 0,
        country: json["country"] ?? '',
        currency: json["currency"] ?? '',
        code: json["code"] ?? '',
        symbol: json["symbol"] ?? '',
        thousandSeparator: json["thousand_separator"] ?? '',
        decimalSeparator: json["decimal_separator"] ?? '',
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "country": country,
        "currency": currency,
        "code": code,
        "symbol": symbol,
        "thousand_separator": thousandSeparator,
        "decimal_separator": decimalSeparator,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}

class EmailSettings {
    String? mailDriver;
    dynamic mailHost;
    dynamic mailPort;
    dynamic mailUsername;
    dynamic mailPassword;
    dynamic mailEncryption;
    dynamic mailFromAddress;
    dynamic mailFromName;

    EmailSettings({
        this.mailDriver,
        this.mailHost,
        this.mailPort,
        this.mailUsername,
        this.mailPassword,
        this.mailEncryption,
        this.mailFromAddress,
        this.mailFromName,
    });

    factory EmailSettings.fromMap(Map<String, dynamic> json) => EmailSettings(
        mailDriver: json["mail_driver"],
        mailHost: json["mail_host"],
        mailPort: json["mail_port"],
        mailUsername: json["mail_username"],
        mailPassword: json["mail_password"],
        mailEncryption: json["mail_encryption"],
        mailFromAddress: json["mail_from_address"],
        mailFromName: json["mail_from_name"],
    );

    Map<String, dynamic> toMap() => {
        "mail_driver": mailDriver,
        "mail_host": mailHost,
        "mail_port": mailPort,
        "mail_username": mailUsername,
        "mail_password": mailPassword,
        "mail_encryption": mailEncryption,
        "mail_from_address": mailFromAddress,
        "mail_from_name": mailFromName,
    };
}

class RefNoPrefixes {
    String? purchase;
    dynamic purchaseReturn;
    String? stockTransfer;
    String? stockAdjustment;
    String? sellReturn;
    String? expense;
    String? contacts;
    String? purchasePayment;
    String? sellPayment;
    dynamic expensePayment;
    String? businessLocation;
    dynamic username;
    dynamic subscription;
    dynamic draft;

    RefNoPrefixes({
        this.purchase,
        this.purchaseReturn,
        this.stockTransfer,
        this.stockAdjustment,
        this.sellReturn,
        this.expense,
        this.contacts,
        this.purchasePayment,
        this.sellPayment,
        this.expensePayment,
        this.businessLocation,
        this.username,
        this.subscription,
        this.draft,
    });

    factory RefNoPrefixes.fromMap(Map<String, dynamic> json) => RefNoPrefixes(
        purchase: json["purchase"] ?? '',
        purchaseReturn: json["purchase_return"],
        stockTransfer: json["stock_transfer"] ?? '',
        stockAdjustment: json["stock_adjustment"] ?? '',
        sellReturn: json["sell_return"] ?? '',
        expense: json["expense"] ?? '',
        contacts: json["contacts"] ?? '',
        purchasePayment: json["purchase_payment"] ?? '',
        sellPayment: json["sell_payment"] ?? '',
        expensePayment: json["expense_payment"],
        businessLocation: json["business_location"] ?? '',
        username: json["username"],
        subscription: json["subscription"],
        draft: json["draft"],
    );

    Map<String, dynamic> toMap() => {
        "purchase": purchase,
        "purchase_return": purchaseReturn,
        "stock_transfer": stockTransfer,
        "stock_adjustment": stockAdjustment,
        "sell_return": sellReturn,
        "expense": expense,
        "contacts": contacts,
        "purchase_payment": purchasePayment,
        "sell_payment": sellPayment,
        "expense_payment": expensePayment,
        "business_location": businessLocation,
        "username": username,
        "subscription": subscription,
        "draft": draft,
    };
}

class SmsSettings {
    String? smsService;
    dynamic nexmoKey;
    dynamic nexmoSecret;
    dynamic nexmoFrom;
    dynamic twilioSid;
    dynamic twilioToken;
    dynamic twilioFrom;
    dynamic url;
    String? sendToParamName;
    String? msgParamName;
    String? requestMethod;
    dynamic param1;
    dynamic paramVal1;
    dynamic param2;
    dynamic paramVal2;
    dynamic param3;
    dynamic paramVal3;
    dynamic param4;
    dynamic paramVal4;
    dynamic param5;
    dynamic paramVal5;
    dynamic param6;
    dynamic paramVal6;
    dynamic param7;
    dynamic paramVal7;
    dynamic param8;
    dynamic paramVal8;
    dynamic param9;
    dynamic paramVal9;
    dynamic param10;
    dynamic paramVal10;

    SmsSettings({
        this.smsService,
        this.nexmoKey,
        this.nexmoSecret,
        this.nexmoFrom,
        this.twilioSid,
        this.twilioToken,
        this.twilioFrom,
        this.url,
        this.sendToParamName,
        this.msgParamName,
        this.requestMethod,
        this.param1,
        this.paramVal1,
        this.param2,
        this.paramVal2,
        this.param3,
        this.paramVal3,
        this.param4,
        this.paramVal4,
        this.param5,
        this.paramVal5,
        this.param6,
        this.paramVal6,
        this.param7,
        this.paramVal7,
        this.param8,
        this.paramVal8,
        this.param9,
        this.paramVal9,
        this.param10,
        this.paramVal10,
    });

    factory SmsSettings.fromMap(Map<String, dynamic> json) => SmsSettings(
        smsService: json["sms_service"] ?? '',
        nexmoKey: json["nexmo_key"],
        nexmoSecret: json["nexmo_secret"],
        nexmoFrom: json["nexmo_from"],
        twilioSid: json["twilio_sid"],
        twilioToken: json["twilio_token"],
        twilioFrom: json["twilio_from"],
        url: json["url"],
        sendToParamName: json["send_to_param_name"] ?? '',
        msgParamName: json["msg_param_name"] ?? '',
        requestMethod: json["request_method"] ?? '',
        param1: json["param_1"],
        paramVal1: json["param_val_1"],
        param2: json["param_2"],
        paramVal2: json["param_val_2"],
        param3: json["param_3"],
        paramVal3: json["param_val_3"],
        param4: json["param_4"],
        paramVal4: json["param_val_4"],
        param5: json["param_5"],
        paramVal5: json["param_val_5"],
        param6: json["param_6"],
        paramVal6: json["param_val_6"],
        param7: json["param_7"],
        paramVal7: json["param_val_7"],
        param8: json["param_8"],
        paramVal8: json["param_val_8"],
        param9: json["param_9"],
        paramVal9: json["param_val_9"],
        param10: json["param_10"],
        paramVal10: json["param_val_10"],
    );

    Map<String, dynamic> toMap() => {
        "sms_service": smsService,
        "nexmo_key": nexmoKey,
        "nexmo_secret": nexmoSecret,
        "nexmo_from": nexmoFrom,
        "twilio_sid": twilioSid,
        "twilio_token": twilioToken,
        "twilio_from": twilioFrom,
        "url": url,
        "send_to_param_name": sendToParamName,
        "msg_param_name": msgParamName,
        "request_method": requestMethod,
        "param_1": param1,
        "param_val_1": paramVal1,
        "param_2": param2,
        "param_val_2": paramVal2,
        "param_3": param3,
        "param_val_3": paramVal3,
        "param_4": param4,
        "param_val_4": paramVal4,
        "param_5": param5,
        "param_val_5": paramVal5,
        "param_6": param6,
        "param_val_6": paramVal6,
        "param_7": param7,
        "param_val_7": paramVal7,
        "param_8": param8,
        "param_val_8": paramVal8,
        "param_9": param9,
        "param_val_9": paramVal9,
        "param_10": param10,
        "param_val_10": paramVal10,
    };
}

class WeighingScaleSetting {
    dynamic labelPrefix;
    String? productSkuLength;
    String? qtyLength;
    String? qtyLengthDecimal;

    WeighingScaleSetting({
        this.labelPrefix,
        this.productSkuLength,
        this.qtyLength,
        this.qtyLengthDecimal,
    });

    factory WeighingScaleSetting.fromMap(Map<String, dynamic> json) => WeighingScaleSetting(
        labelPrefix: json["label_prefix"],
        productSkuLength: json["product_sku_length"] ?? '',
        qtyLength: json["qty_length"] ?? '',
        qtyLengthDecimal: json["qty_length_decimal"] ?? '',
    );

    Map<String, dynamic> toMap() => {
        "label_prefix": labelPrefix,
        "product_sku_length": productSkuLength,
        "qty_length": qtyLength,
        "qty_length_decimal": qtyLengthDecimal,
    };
}

class Location {
    int? id;
    int? businessId;
    String? locationId;
    String? name;
    String? landmark;
    String? country;
    String? state;
    String? city;
    String? zipCode;
    int? invoiceSchemeId;
    int? invoiceLayoutId;
    dynamic sellingPriceGroupId;
    int? printReceiptOnInvoice;
    String? receiptPrinterType;
    dynamic printerId;
    String? mobile;
    String? alternateNumber;
    String? email;
    String? website;
    dynamic featuredProducts;
    int? isActive;
    DefaultPaymentAccounts? defaultPaymentAccounts;
    dynamic customField1;
    dynamic customField2;
    dynamic customField3;
    dynamic customField4;
    dynamic deletedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic longitude;
    dynamic latitude;
    int? locationDefault;
    dynamic accountingDefaultMap;
    String? address;

    Location({
        this.id,
        this.businessId,
        this.locationId,
        this.name,
        this.landmark,
        this.country,
        this.state,
        this.city,
        this.zipCode,
        this.invoiceSchemeId,
        this.invoiceLayoutId,
        this.sellingPriceGroupId,
        this.printReceiptOnInvoice,
        this.receiptPrinterType,
        this.printerId,
        this.mobile,
        this.alternateNumber,
        this.email,
        this.website,
        this.featuredProducts,
        this.isActive,
        this.defaultPaymentAccounts,
        this.customField1,
        this.customField2,
        this.customField3,
        this.customField4,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.longitude,
        this.latitude,
        this.locationDefault,
        this.accountingDefaultMap,
        this.address,
    });

    factory Location.fromMap(Map<String, dynamic> json) => Location(
        id: json["id"] ?? 0,
        businessId: json["business_id"] ?? 0,
        locationId: json["location_id"] ?? '',
        name: json["name"] ?? '',
        landmark: json["landmark"] ?? '',
        country: json["country"] ?? '',
        state: json["state"] ?? '',
        city: json["city"] ?? ' ',
        zipCode: json["zip_code"] ?? '',
        invoiceSchemeId: json["invoice_scheme_id"] ?? 0,
        invoiceLayoutId: json["invoice_layout_id"] ?? 0,
        sellingPriceGroupId: json["selling_price_group_id"],
        printReceiptOnInvoice: json["print_receipt_on_invoice"] ?? 0,
        receiptPrinterType: json["receipt_printer_type"] ?? '',
        printerId: json["printer_id"],
        mobile: json["mobile"] ?? '',
        alternateNumber: json["alternate_number"] ?? '',
        email: json["email"] ?? '',
        website: json["website"] ?? '',
        featuredProducts: json["featured_products"],
        isActive: json["is_active"] ?? 0,
        defaultPaymentAccounts: json["default_payment_accounts"] == null ? null : DefaultPaymentAccounts.fromMap(json["default_payment_accounts"]),
        customField1: json["custom_field1"],
        customField2: json["custom_field2"],
        customField3: json["custom_field3"],
        customField4: json["custom_field4"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"] == null ? DateTime.now() : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? DateTime.now() : DateTime.parse(json["updated_at"]),
        longitude: json["longitude"],
        latitude: json["latitude"],
        locationDefault: json["default"] ?? 0,
        accountingDefaultMap: json["accounting_default_map"],
        address: json["address"] ?? '',
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "business_id": businessId,
        "location_id": locationId,
        "name": name,
        "landmark": landmark,
        "country": country,
        "state": state,
        "city": city,
        "zip_code": zipCode,
        "invoice_scheme_id": invoiceSchemeId,
        "invoice_layout_id": invoiceLayoutId,
        "selling_price_group_id": sellingPriceGroupId,
        "print_receipt_on_invoice": printReceiptOnInvoice,
        "receipt_printer_type": receiptPrinterType,
        "printer_id": printerId,
        "mobile": mobile,
        "alternate_number": alternateNumber,
        "email": email,
        "website": website,
        "featured_products": featuredProducts,
        "is_active": isActive,
        "default_payment_accounts": defaultPaymentAccounts?.toMap(),
        "custom_field1": customField1,
        "custom_field2": customField2,
        "custom_field3": customField3,
        "custom_field4": customField4,
        "deleted_at": deletedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "longitude": longitude,
        "latitude": latitude,
        "default": locationDefault,
        "accounting_default_map": accountingDefaultMap,
        "address": address,
    };
}

class DefaultPaymentAccounts {
    BankTransfer? cash;
    BankTransfer? card;
    BankTransfer? cheque;
    BankTransfer? bankTransfer;
    BankTransfer? other;
    BankTransfer? customPay1;
    BankTransfer? customPay2;
    BankTransfer? customPay3;

    DefaultPaymentAccounts({
        this.cash,
        this.card,
        this.cheque,
        this.bankTransfer,
        this.other,
        this.customPay1,
        this.customPay2,
        this.customPay3,
    });

    factory DefaultPaymentAccounts.fromMap(Map<String, dynamic> json) => DefaultPaymentAccounts(
        cash: json["cash"] == null ? null : BankTransfer.fromMap(json["cash"]),
        card: json["card"] == null ? null : BankTransfer.fromMap(json["card"]),
        cheque: json["cheque"] == null ? null : BankTransfer.fromMap(json["cheque"]),
        bankTransfer: json["bank_transfer"] == null ? null : BankTransfer.fromMap(json["bank_transfer"]),
        other: json["other"] == null ? null : BankTransfer.fromMap(json["other"]),
        customPay1: json["custom_pay_1"] == null ? null : BankTransfer.fromMap(json["custom_pay_1"]),
        customPay2: json["custom_pay_2"] == null ? null : BankTransfer.fromMap(json["custom_pay_2"]),
        customPay3: json["custom_pay_3"] == null ? null : BankTransfer.fromMap(json["custom_pay_3"]),
    );

    Map<String, dynamic> toMap() => {
        "cash": cash?.toMap(),
        "card": card?.toMap(),
        "cheque": cheque?.toMap(),
        "bank_transfer": bankTransfer?.toMap(),
        "other": other?.toMap(),
        "custom_pay_1": customPay1?.toMap(),
        "custom_pay_2": customPay2?.toMap(),
        "custom_pay_3": customPay3?.toMap(),
    };
}

class BankTransfer {
    String? isEnabled;
    dynamic account;

    BankTransfer({
        this.isEnabled,
        this.account,
    });

    factory BankTransfer.fromMap(Map<String, dynamic> json) => BankTransfer(
        isEnabled: json["is_enabled"] ?? '',
        account: json["account"],
    );

    Map<String, dynamic> toMap() => {
        "is_enabled": isEnabled,
        "account": account,
    };
}

class Media {
    int? id;
    int? businessId;
    String? fileName;
    dynamic description;
    int? uploadedBy;
    String? modelType;
    int? modelId;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic woocommerceMediaId;
    String? displayName;
    String? displayUrl;

    Media({
        this.id,
        this.businessId,
        this.fileName,
        this.description,
        this.uploadedBy,
        this.modelType,
        this.modelId,
        this.createdAt,
        this.updatedAt,
        this.woocommerceMediaId,
        this.displayName,
        this.displayUrl,
    });

    factory Media.fromMap(Map<String, dynamic> json) => Media(
        id: json["id"] ?? 0,
        businessId: json["business_id"] ?? 0,
        fileName: json["file_name"] ?? '',
        description: json["description"],
        uploadedBy: json["uploaded_by"] ?? 0, 
        modelType: json["model_type"] ?? '',
        modelId: json["model_id"] ?? 0,
        createdAt: json["created_at"] == null ? DateTime.now() : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? DateTime.now() : DateTime.parse(json["updated_at"]),
        woocommerceMediaId: json["woocommerce_media_id"],
        displayName: json["display_name"] ?? '',
        displayUrl: json["display_url"] ?? '',
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "business_id": businessId,
        "file_name": fileName,
        "description": description,
        "uploaded_by": uploadedBy,
        "model_type": modelType,
        "model_id": modelId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "woocommerce_media_id": woocommerceMediaId,
        "display_name": displayName,
        "display_url": displayUrl,
    };
}

class Subscription {
    int? id;
    int? businessId;
    int? packageId;
    DateTime? startDate;
    DateTime? trialEndDate;
    DateTime? endDate;
    String? packagePrice;
    PackageDetails? packageDetails;
    int? createdId;
    String? paidVia;
    String? paymentTransactionId;
    String? status;
    dynamic deletedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    bool? isActive;
    Package? package;
    int? locationsCreated;
    int? usersCreated;
    int? productsCreated;
    int? invoicesCreated;

    Subscription({
        this.id,
        this.businessId,
        this.packageId,
        this.startDate,
        this.trialEndDate,
        this.endDate,
        this.packagePrice,
        this.packageDetails,
        this.createdId,
        this.paidVia,
        this.paymentTransactionId,
        this.status,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.isActive,
        this.package,
        this.locationsCreated,
        this.usersCreated,
        this.productsCreated,
        this.invoicesCreated,
    });

    factory Subscription.fromMap(Map<String, dynamic> json) => Subscription(
        id: json["id"] ?? 0,
        businessId: json["business_id"] ?? 0,
        packageId: json["package_id"] ?? 0,
        startDate: json["start_date"] == null ? DateTime.now() : DateTime.parse(json["start_date"]),
        trialEndDate: json["trial_end_date"] == null ? DateTime.now() : DateTime.parse(json["trial_end_date"]),
        endDate: json["end_date"] == null ? DateTime.now() : DateTime.parse(json["end_date"]),
        packagePrice: json["package_price"] ?? '',
        packageDetails: json["package_details"] == null ? null : PackageDetails.fromMap(json["package_details"]),
        createdId: json["created_id"] ?? 0,
        paidVia: json["paid_via"] ?? '',
        paymentTransactionId: json["payment_transaction_id"] ?? '',
        status: json["status"] ?? '',
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"] == null ? DateTime.now() : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? DateTime.now() : DateTime.parse(json["updated_at"]),
        isActive: json["is_active"] ?? false,
        package: json["package"] == null ? null : Package.fromMap(json["package"]),
        locationsCreated: json["locations_created"],
        usersCreated: json["users_created"] ?? 0,
        productsCreated: json["products_created"] ?? 0,
        invoicesCreated: json["invoices_created"] ?? 0,
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "business_id": businessId,
        "package_id": packageId,
        "start_date": startDate?.toIso8601String(),
        "trial_end_date": "${trialEndDate!.year.toString().padLeft(4, '0')}-${trialEndDate!.month.toString().padLeft(2, '0')}-${trialEndDate!.day.toString().padLeft(2, '0')}",
        "end_date": endDate?.toIso8601String(),
        "package_price": packagePrice,
        "package_details": packageDetails?.toMap(),
        "created_id": createdId,
        "paid_via": paidVia,
        "payment_transaction_id": paymentTransactionId,
        "status": status,
        "deleted_at": deletedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "is_active": isActive,
        "package": package?.toMap(),
        "locations_created": locationsCreated,
        "users_created": usersCreated,
        "products_created": productsCreated,
        "invoices_created": invoicesCreated,
    };
}

class Package {
    int? id;
    String? name;
    String? description;
    int? locationCount;
    int? userCount;
    int? productCount;
    int? invoiceCount;
    String? interval;
    int? intervalCount;
    int? trialDays;
    String? price;
    int? createdBy;
    int? sortOrder;
    bool? isActive;
    dynamic deletedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    bool? bookings;
    bool? kitchen;
    bool? orderScreen;
    bool? tables;
    CustomPermissions? customPermissions;
    bool? isPrivate;
    bool? isOneTime;
    bool? enableCustomLink;
    String? customLink;
    String? customLinkText;

    Package({
        this.id,
        this.name,
        this.description,
        this.locationCount,
        this.userCount,
        this.productCount,
        this.invoiceCount,
        this.interval,
        this.intervalCount,
        this.trialDays,
        this.price,
        this.createdBy,
        this.sortOrder,
        this.isActive,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.bookings,
        this.kitchen,
        this.orderScreen,
        this.tables,
        this.customPermissions,
        this.isPrivate,
        this.isOneTime,
        this.enableCustomLink,
        this.customLink,
        this.customLinkText,
    });

    factory Package.fromMap(Map<String, dynamic> json) => Package(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        description: json["description"] ?? '',
        locationCount: json["location_count"] ?? 0,
        userCount: json["user_count"] ?? 0,
        productCount: json["product_count"] ?? 0 ,
        invoiceCount: json["invoice_count"] ?? 0,
        interval: json["interval"] ?? '',
        intervalCount: json["interval_count"] ?? 0,
        trialDays: json["trial_days"] ?? 0,
        price: json["price"] ?? '',
        createdBy: json["created_by"] ?? 0,
        sortOrder: json["sort_order"] ?? 0,
        isActive: json["is_active"] ?? false,
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"] == null ? DateTime.now() : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? DateTime.now() : DateTime.parse(json["updated_at"]),
        bookings: json["bookings"] ?? false,
        kitchen: json["kitchen"] ?? false,
        orderScreen: json["order_screen"] ?? false,
        tables: json["tables"] ?? false,
        customPermissions: json["custom_permissions"] == null ? null : CustomPermissions.fromMap(json["custom_permissions"]),
        isPrivate: json["is_private"] ?? false,
        isOneTime: json["is_one_time"] ?? false,
        enableCustomLink: json["enable_custom_link"] ?? false,
        customLink: json["custom_link"] ?? '',
        customLinkText: json["custom_link_text"] ?? '',
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "location_count": locationCount,
        "user_count": userCount,
        "product_count": productCount,
        "invoice_count": invoiceCount,
        "interval": interval,
        "interval_count": intervalCount,
        "trial_days": trialDays,
        "price": price,
        "created_by": createdBy,
        "sort_order": sortOrder,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "bookings": bookings,
        "kitchen": kitchen,
        "order_screen": orderScreen,
        "tables": tables,
        "custom_permissions": customPermissions?.toMap(),
        "is_private": isPrivate,
        "is_one_time": isOneTime,
        "enable_custom_link": enableCustomLink,
        "custom_link": customLink,
        "custom_link_text": customLinkText,
    };
}

class CustomPermissions {
    String? accountingModule;
    String? essentialsModule;
    String? woocommerceModule;
    String? purchasesModule;
    String? addSaleModule;
    String? posModule;
    String? stockTransfersModule;
    String? stockAdjustmentModule;
    String? expensesModule;
    String? accountModule;
    String? poOrderModule;
    String? aigleStockModule;
    String? bankModule;
    String? receiverModule;
    String? servicesModule;
    String? promotionsModule;
    String? salesManModule;
    String? pullerModule;
    String? driverModule;
    String? lotteryModule;
    String? gasModule;
    String? dailyBookModule;
    String? reportModule;
    String? maintenanceModule;
    String? ticketsSupportModule;
    String? quickBookModule;
    String? mobilePosModule;

    CustomPermissions({
        this.accountingModule,
        this.essentialsModule,
        this.woocommerceModule,
        this.purchasesModule,
        this.addSaleModule,
        this.posModule,
        this.stockTransfersModule,
        this.stockAdjustmentModule,
        this.expensesModule,
        this.accountModule,
        this.poOrderModule,
        this.aigleStockModule,
        this.bankModule,
        this.receiverModule,
        this.servicesModule,
        this.promotionsModule,
        this.salesManModule,
        this.pullerModule,
        this.driverModule,
        this.lotteryModule,
        this.gasModule,
        this.dailyBookModule,
        this.reportModule,
        this.maintenanceModule,
        this.ticketsSupportModule,
        this.quickBookModule,
        this.mobilePosModule,
    });

    factory CustomPermissions.fromMap(Map<String, dynamic> json) => CustomPermissions(
        accountingModule: json["accounting_module"] ?? '',
        essentialsModule: json["essentials_module"] ?? '',
        woocommerceModule: json["woocommerce_module"] ?? '',
        purchasesModule: json["purchases_module"] ?? '',
        addSaleModule: json["add_sale_module"] ?? '',
        posModule: json["pos_module"] ?? '',
        stockTransfersModule: json["stock_transfers_module"] ?? '',
        stockAdjustmentModule: json["stock_adjustment_module"] ?? '',
        expensesModule: json["expenses_module"] ?? '',
        accountModule: json["account_module"] ?? '',
        poOrderModule: json["po_order_module"] ?? '',
        aigleStockModule: json["aigle_stock_module"] ?? '',
        bankModule: json["bank_module"] ?? '',
        receiverModule: json["receiver_module"] ?? '',
        servicesModule: json["services_module"] ?? '',
        promotionsModule: json["promotions_module"] ?? '',
        salesManModule: json["sales_man_module"] ?? '',
        pullerModule: json["puller_module"] ?? '',
        driverModule: json["driver_module"] ?? '',
        lotteryModule: json["lottery_module"] ?? '',
        gasModule: json["gas_module"] ?? '',
        dailyBookModule: json["daily_book_module"] ?? '',
        reportModule: json["report_module"] ?? '',
        maintenanceModule: json["maintenance_module"] ?? '',
        ticketsSupportModule: json["tickets_support_module"] ?? '',
        quickBookModule: json["quick_book_module"] ?? '',
        mobilePosModule: json["mobile_pos_module"] ?? '',
    );

    Map<String, dynamic> toMap() => {
        "accounting_module": accountingModule,
        "essentials_module": essentialsModule,
        "woocommerce_module": woocommerceModule,
        "purchases_module": purchasesModule,
        "add_sale_module": addSaleModule,
        "pos_module": posModule,
        "stock_transfers_module": stockTransfersModule,
        "stock_adjustment_module": stockAdjustmentModule,
        "expenses_module": expensesModule,
        "account_module": accountModule,
        "po_order_module": poOrderModule,
        "aigle_stock_module": aigleStockModule,
        "bank_module": bankModule,
        "receiver_module": receiverModule,
        "services_module": servicesModule,
        "promotions_module": promotionsModule,
        "sales_man_module": salesManModule,
        "puller_module": pullerModule,
        "driver_module": driverModule,
        "lottery_module": lotteryModule,
        "gas_module": gasModule,
        "daily_book_module": dailyBookModule,
        "report_module": reportModule,
        "maintenance_module": maintenanceModule,
        "tickets_support_module": ticketsSupportModule,
        "quick_book_module": quickBookModule,
        "mobile_pos_module": mobilePosModule,
    };
}

class PackageDetails {
    int? locationCount;
    int? userCount;
    int? productCount;
    int? invoiceCount;
    String? name;
    String? purchasesModule;
    String? stockTransfersModule;
    String? stockAdjustmentModule;
    String? expensesModule;
    String? bankModule;
    String? dailyBookModule;
    String? reportModule;
    String? ticketsSupportModule;
    String? printLabelModule;
    String? tablesModule;
    String? modifiersModule;
    String? serviceStaffModule;
    String? enableBookingsModule;
    String? kitchenForRestaurantsModule;
    String? servicesModule;
    String? woocommerceModule;
    String? gasModule;
    String? lotteryModule;
    String? maintenanceModule;
    String? essentialsModule;
    String? accountingModule;
    String? productcatalogueModule;
    String? promotionsModule;
    String? mobilePosModule;
    String? posModule;
    String? secondaryBusinessIncomeModule;

    PackageDetails({
        this.locationCount,
        this.userCount,
        this.productCount,
        this.invoiceCount,
        this.name,
        this.purchasesModule,
        this.stockTransfersModule,
        this.stockAdjustmentModule,
        this.expensesModule,
        this.bankModule,
        this.dailyBookModule,
        this.reportModule,
        this.ticketsSupportModule,
        this.printLabelModule,
        this.tablesModule,
        this.modifiersModule,
        this.serviceStaffModule,
        this.enableBookingsModule,
        this.kitchenForRestaurantsModule,
        this.servicesModule,
        this.woocommerceModule,
        this.gasModule,
        this.lotteryModule,
        this.maintenanceModule,
        this.essentialsModule,
        this.accountingModule,
        this.productcatalogueModule,
        this.promotionsModule,
        this.mobilePosModule,
        this.posModule,
        this.secondaryBusinessIncomeModule,
    });

    factory PackageDetails.fromMap(Map<String, dynamic> json) => PackageDetails(
        locationCount: json["location_count"] ?? 0,
        userCount: json["user_count"] ?? 0,
        productCount: json["product_count"] ?? 0,
        invoiceCount: json["invoice_count"] ?? 0,
        name: json["name"] ?? '',
        purchasesModule: json["purchases_module"] ?? '',
        stockTransfersModule: json["stock_transfers_module"] ?? '',
        stockAdjustmentModule: json["stock_adjustment_module"] ?? '',
        expensesModule: json["expenses_module"] ?? '',
        bankModule: json["bank_module"] ?? '',
        dailyBookModule: json["daily_book_module"] ?? '',
        reportModule: json["report_module"] ?? '',
        ticketsSupportModule: json["tickets_support_module"] ?? '',
        printLabelModule: json["print_label_module"] ?? '',
        tablesModule: json["tables_module"] ?? '',
        modifiersModule: json["modifiers_module"] ?? '',
        serviceStaffModule: json["service_staff_module"]?? '',
        enableBookingsModule: json["enable_bookings_module"] ?? '',
        kitchenForRestaurantsModule: json["kitchen_(for_restaurants)_module"] ?? '',
        servicesModule: json["services_module"] ?? '',
        woocommerceModule: json["woocommerce_module"] ?? '',
        gasModule: json["gas_module"] ?? '',
        lotteryModule: json["lottery_module"] ?? '',
        maintenanceModule: json["maintenance_module"] ?? '',
        essentialsModule: json["essentials_module"] ?? '',
        accountingModule: json["accounting_module"] ?? '',
        productcatalogueModule: json["productcatalogue_module"] ?? '',
        promotionsModule: json["promotions_module"] ?? '',
        mobilePosModule: json["mobile_pos_module"] ?? '',
        posModule: json["pos_module"] ?? '',
        secondaryBusinessIncomeModule: json["secondary_business_income_module"] ?? '',
    );

    Map<String, dynamic> toMap() => {
        "location_count": locationCount,
        "user_count": userCount,
        "product_count": productCount,
        "invoice_count": invoiceCount,
        "name": name,
        "purchases_module": purchasesModule,
        "stock_transfers_module": stockTransfersModule,
        "stock_adjustment_module": stockAdjustmentModule,
        "expenses_module": expensesModule,
        "bank_module": bankModule,
        "daily_book_module": dailyBookModule,
        "report_module": reportModule,
        "tickets_support_module": ticketsSupportModule,
        "print_label_module": printLabelModule,
        "tables_module": tablesModule,
        "modifiers_module": modifiersModule,
        "service_staff_module": serviceStaffModule,
        "enable_bookings_module": enableBookingsModule,
        "kitchen_(for_restaurants)_module": kitchenForRestaurantsModule,
        "services_module": servicesModule,
        "woocommerce_module": woocommerceModule,
        "gas_module": gasModule,
        "lottery_module": lotteryModule,
        "maintenance_module": maintenanceModule,
        "essentials_module": essentialsModule,
        "accounting_module": accountingModule,
        "productcatalogue_module": productcatalogueModule,
        "promotions_module": promotionsModule,
        "mobile_pos_module": mobilePosModule,
        "pos_module": posModule,
        "secondary_business_income_module": secondaryBusinessIncomeModule,
    };
}

class Terminal {
    int? id;
    int? businessId;
    String? terminalCode;
    String? terminalName;
    int? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? locationId;
    dynamic macAddress;
    dynamic licenseKey;
    dynamic computerName;

    Terminal({
        this.id,
        this.businessId,
        this.terminalCode,
        this.terminalName,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.locationId,
        this.macAddress,
        this.licenseKey,
        this.computerName,
    });

    factory Terminal.fromMap(Map<String, dynamic> json) => Terminal(
        id: json["id"] ?? 0,
        businessId: json["business_id"] ?? 0,
        terminalCode: json["terminal_code"] ?? '',
        terminalName: json["terminal_name"] ?? '',
        status: json["status"] ?? 0,
        createdAt: json["created_at"] == null ? DateTime.now() : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? DateTime.now() : DateTime.parse(json["updated_at"]),
        locationId: json["location_id"] ?? 0,
        macAddress: json["mac_address"],
        licenseKey: json["license_key"],
        computerName: json["computer_name"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "business_id": businessId,
        "terminal_code": terminalCode,
        "terminal_name": terminalName,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "location_id": locationId,
        "mac_address": macAddress,
        "license_key": licenseKey,
        "computer_name": computerName,
    };
}
