.class public final Lcom/motorola/camera/JsonConfig$ZoomOverride;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mJob:I

.field public final mMax:F

.field public final mMin:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mMin:F

    iput p2, p0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mMax:F

    iput p3, p0, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mJob:I

    return-void
.end method
