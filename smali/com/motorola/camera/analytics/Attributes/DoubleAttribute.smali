.class public final Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDefault:D

.field public final mMandatory:Z

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mDefault:D

    iput-boolean p4, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mMandatory:Z

    return-void
.end method


# virtual methods
.method public final record(Landroid/os/Bundle;Ljava/lang/Double;)V
    .locals 4

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mMandatory:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mDefault:D

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_3
    return-void
.end method
