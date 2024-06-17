.class public final Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;
.super Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "DEFAULT"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
    .locals 0

    const-string p0, "surfaceType"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x22

    if-ne p1, p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x3

    :goto_0
    return-wide p0
.end method
