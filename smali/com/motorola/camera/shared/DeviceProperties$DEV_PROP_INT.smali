.class public final enum Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum DEVICE_HW_REV:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum DEV_VENDOR_HW_REV:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum EXTRA_FREE_MEM_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum LOW_MEM_KILL_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum MCF_OVERRIDE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum SECURE_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum VM_REQUEST_DURATION_MS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

.field public static final enum VM_REQUEST_SWAPPINESS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;


# instance fields
.field public mSet:Z

.field public final mSystemProperty:Ljava/lang/String;

.field public mValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v1, "persist.sys.mot.encrypt.mmc"

    const-string v2, "MMC_ENCRYPTION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v2, "ro.camera.sound.forced"

    const-string v3, "SOUND_FORCED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v3, "ro.boot.secure_hardware"

    const-string v4, "SECURE_DEVICE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SECURE_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    new-instance v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v4, "ro.sf.lcd_density"

    const-string v5, "LCD_DENSITY"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v5, "ro.boot.hwrev"

    const-string v6, "DEVICE_HW_REV"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->DEVICE_HW_REV:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    new-instance v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v6, "ro.vendor.hw.hwrev"

    const-string v7, "DEV_VENDOR_HW_REV"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->DEV_VENDOR_HW_REV:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    new-instance v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v7, "persist.camera.mot.mcf_override"

    const-string v8, "MCF_OVERRIDE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->MCF_OVERRIDE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    new-instance v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v8, "persist.camera.mot.lowmemkillsize"

    const-string v9, "LOW_MEM_KILL_SIZE"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->LOW_MEM_KILL_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    new-instance v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v9, "persist.camera.mot.extrafreememsize"

    const-string v10, "EXTRA_FREE_MEM_SIZE"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->EXTRA_FREE_MEM_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    new-instance v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v10, "persist.camera.mot.vmrequestswappiness"

    const-string v11, "VM_REQUEST_SWAPPINESS"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_SWAPPINESS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    new-instance v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    const-string v11, "persist.camera.mot.vmrequestdurationms"

    const-string v12, "VM_REQUEST_DURATION_MS"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_DURATION_MS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    filled-new-array/range {v0 .. v10}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSystemProperty:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mValue:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->mSet:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-virtual {v0}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    return-object v0
.end method
