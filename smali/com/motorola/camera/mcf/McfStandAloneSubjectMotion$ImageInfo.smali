.class public final Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final motion:F

.field public final timestamp:J


# direct methods
.method public constructor <init>(FJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->timestamp:J

    iput p1, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->motion:F

    return-void
.end method
