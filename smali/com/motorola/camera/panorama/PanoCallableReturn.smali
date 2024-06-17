.class public final Lcom/motorola/camera/panorama/PanoCallableReturn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final exception:Ljava/lang/Exception;

.field public final value:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoCallableReturn;->exception:Ljava/lang/Exception;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoCallableReturn;->value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoCallableReturn;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoCallableReturn;->exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
