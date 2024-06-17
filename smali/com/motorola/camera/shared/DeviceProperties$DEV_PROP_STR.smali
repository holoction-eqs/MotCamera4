.class public final enum Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum CAMERA_VARIANT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum CARRIER_INFO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum HARDWARE_RADIO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_IS_PRC:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_IS_WHITE_LABEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_KEY_CPU_ABILIST64:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PRODUCT_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_CUSTOMERID:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_IS_PRODUCTION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum PROPERTY_KEY_REGION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum SOC_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public static final enum TARGET_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;


# instance fields
.field public mSet:Z

.field public final mSystemProperty:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v0, v1

    const-string v2, "ro.camera.storage.default"

    const-string v3, "DEFAULT_STORAGE_LOC"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v1, v2

    const-string v3, "persist.qe"

    const-string v4, "ROOTED_DEVICE"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v2, v3

    const-string v4, "ro.product.device"

    const-string v5, "TARGET_DEVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->TARGET_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v3, v4

    const-string v5, "ro.product.display"

    const-string v6, "PRODUCT_DISPLAY"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v4, v5

    const-string v6, "ro.vendor.product.display"

    const-string v7, "PRODUCT_DISPLAY_VENDOR"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v5, v6

    const-string v7, "ro.vendor.product.display.plain_text"

    const-string v8, "PRODUCT_DISPLAY_VENDOR_TEXT"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_VENDOR_TEXT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v6, v7

    const-string v8, "ro.product.model"

    const-string v9, "PRODUCT_DISPLAY_MODEL"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v7, v8

    const-string v9, "ro.product.white_label"

    const-string v10, "PRODUCT_IS_WHITE_LABEL"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_IS_WHITE_LABEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v8, v9

    const-string v10, "ro.product.brand"

    const-string v11, "PRODUCT_BRAND"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v9, v10

    const-string v11, "ro.product.manufacturer"

    const-string v12, "PRODUCT_MANUFACTURER"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v11, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v10, v11

    const-string v12, "ro.product.is_prc"

    const-string v13, "PRODUCT_IS_PRC"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_IS_PRC:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v12, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v11, v12

    const-string v13, "ro.build.version.qcom"

    const-string v14, "QCOM_VERSION"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v13, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v12, v13

    const-string v14, "ro.vendor.hw.radio"

    const-string v15, "HARDWARE_RADIO"

    move-object/from16 v24, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v14}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_RADIO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v13, v0

    const-string v14, "ro.boot.hardware.sku"

    const-string v15, "HARDWARE_SKU"

    move-object/from16 v25, v1

    const/16 v1, 0xd

    invoke-direct {v0, v15, v1, v14}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v14, v0

    const-string v1, "ro.build.characteristics"

    const-string v15, "BUILD_CHARACTERISTICS"

    move-object/from16 v26, v2

    const/16 v2, 0xe

    invoke-direct {v0, v15, v2, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object v15, v0

    const-string v1, "camera.mot.switch"

    const-string v2, "CAMERA_SWITCH_MODE"

    move-object/from16 v27, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v16, v0

    const-string v1, "ro.vendor.hw.cam_variant"

    const-string v2, "CAMERA_VARIANT"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_VARIANT:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v17, v0

    const-string v1, "ro.build.version.release"

    const-string v2, "RELEASE_VERSION"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v18, v0

    const-string v1, "ro.product.is_production"

    const-string v2, "PROPERTY_KEY_IS_PRODUCTION"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_IS_PRODUCTION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v19, v0

    const-string v1, "ro.mot.build.customerid"

    const-string v2, "PROPERTY_KEY_CUSTOMERID"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_CUSTOMERID:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v20, v0

    const-string v1, "ro.lenovo.region"

    const-string v2, "PROPERTY_KEY_REGION"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_REGION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v21, v0

    const-string v1, "ro.product.cpu.abilist64"

    const-string v2, "PRODUCT_KEY_CPU_ABILIST64"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_KEY_CPU_ABILIST64:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v22, v0

    const-string v1, "ro.hardware.soc.manufacturer"

    const-string v2, "SOC_MANUFACTURER"

    const/16 v3, 0x16

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->SOC_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v23, v0

    const-string v1, "ro.carrier"

    const-string v2, "CARRIER_INFO"

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CARRIER_INFO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    filled-new-array/range {v0 .. v23}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mValue:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSet:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-virtual {v0}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    return-object v0
.end method
