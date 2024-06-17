.class public final enum Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

.field public static final enum AUDIO_AINR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

.field public static final enum AUDIO_HDR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

.field public static final enum AUDIO_SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;


# instance fields
.field public mSet:Z

.field public mValue:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    const/4 v1, 0x0

    const-string v2, "vendor.audio.hdr.record.enable"

    const-string v3, "AUDIO_HDR"

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->AUDIO_HDR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    new-instance v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    const/4 v2, 0x1

    const-string v3, "ro.vendor.audio.camera_video_ainr.supported"

    const-string v4, "AUDIO_AINR"

    invoke-direct {v1, v4, v2, v3}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->AUDIO_AINR:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    new-instance v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    const/4 v3, 0x2

    const-string v4, "audio.camerasound.force"

    const-string v5, "AUDIO_SOUND_FORCED"

    invoke-direct {v2, v5, v3, v4}, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->AUDIO_SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    iput-boolean p1, p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->$VALUES:[Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    invoke-virtual {v0}, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    return-object v0
.end method
