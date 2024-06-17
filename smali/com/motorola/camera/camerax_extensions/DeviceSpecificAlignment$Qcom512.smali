.class public final Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Qcom512;
.super Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Qcom512"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAlignment()I
    .locals 0

    const/16 p0, 0x200

    return p0
.end method
