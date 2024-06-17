.class public final Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;
.super Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WIDE"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getIconRes()I
    .locals 0

    const p0, 0x7f080239

    return p0
.end method

.method public final getIconSelectedRes()I
    .locals 0

    const p0, 0x7f08023a

    return p0
.end method

.method public final getZoomSegment()Lcom/motorola/camera/utility/ZoomSegment;
    .locals 0

    sget-object p0, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0
.end method
