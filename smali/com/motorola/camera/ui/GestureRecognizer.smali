.class public final Lcom/motorola/camera/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public firstCancel:Z

.field public final mDownUpDetector:Lcom/motorola/camera/ui/DownUpDetector;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public final mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

.field public final mPinchDetector:Lcom/motorola/camera/ui/PinchDetector;

.field public mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/GestureRecognizer$Listener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    iput-object p2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(Lcom/motorola/camera/ui/GestureRecognizer;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Lcom/motorola/camera/ui/DownUpDetector;

    new-instance p2, Lcom/google/common/base/Joiner;

    invoke-direct {p2, p0}, Lcom/google/common/base/Joiner;-><init>(Lcom/motorola/camera/ui/GestureRecognizer;)V

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Lcom/google/common/base/Joiner;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mDownUpDetector:Lcom/motorola/camera/ui/DownUpDetector;

    new-instance p1, Lcom/motorola/camera/ui/PinchDetector;

    new-instance p2, Lcom/google/common/base/Splitter$1;

    invoke-direct {p2, p0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/motorola/camera/ui/GestureRecognizer;)V

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/PinchDetector;-><init>(Lcom/google/common/base/Splitter$1;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Lcom/motorola/camera/ui/PinchDetector;

    return-void
.end method
