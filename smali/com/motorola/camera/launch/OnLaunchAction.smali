.class public final enum Lcom/motorola/camera/launch/OnLaunchAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/launch/OnLaunchAction;

.field public static final enum CAPTURE:Lcom/motorola/camera/launch/OnLaunchAction;

.field public static final enum CAPTURE_SECURE:Lcom/motorola/camera/launch/OnLaunchAction;

.field public static final enum NONE:Lcom/motorola/camera/launch/OnLaunchAction;

.field public static final enum OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

.field public static final enum VIDEO_CAPTURE:Lcom/motorola/camera/launch/OnLaunchAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/launch/OnLaunchAction;

    const-string v1, "OPEN_LOCATION_SETTINGS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/launch/OnLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    new-instance v1, Lcom/motorola/camera/launch/OnLaunchAction;

    const-string v2, "CAPTURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/launch/OnLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/launch/OnLaunchAction;->CAPTURE:Lcom/motorola/camera/launch/OnLaunchAction;

    new-instance v2, Lcom/motorola/camera/launch/OnLaunchAction;

    const-string v3, "CAPTURE_SECURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/launch/OnLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/launch/OnLaunchAction;->CAPTURE_SECURE:Lcom/motorola/camera/launch/OnLaunchAction;

    new-instance v3, Lcom/motorola/camera/launch/OnLaunchAction;

    const-string v4, "VIDEO_CAPTURE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/launch/OnLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/launch/OnLaunchAction;->VIDEO_CAPTURE:Lcom/motorola/camera/launch/OnLaunchAction;

    new-instance v4, Lcom/motorola/camera/launch/OnLaunchAction;

    const-string v5, "NONE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/launch/OnLaunchAction;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/launch/OnLaunchAction;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/launch/OnLaunchAction;->$VALUES:[Lcom/motorola/camera/launch/OnLaunchAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/launch/OnLaunchAction;
    .locals 1

    const-class v0, Lcom/motorola/camera/launch/OnLaunchAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/launch/OnLaunchAction;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/launch/OnLaunchAction;
    .locals 1

    sget-object v0, Lcom/motorola/camera/launch/OnLaunchAction;->$VALUES:[Lcom/motorola/camera/launch/OnLaunchAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/launch/OnLaunchAction;

    return-object v0
.end method
