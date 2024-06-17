.class public final Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;
.super Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "QSM8250"

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
    .locals 0

    const-string p0, "surfaceType"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x23

    if-ne p1, p0, :cond_2

    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eq p2, p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 p0, 0x20003

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p0, 0x200

    goto :goto_1

    :cond_2
    const/16 p0, 0x22

    if-ne p1, p0, :cond_3

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 p0, 0x3

    :goto_1
    return-wide p0
.end method
