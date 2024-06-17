.class public final synthetic Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v0, "$surfaceType"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_0
    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;->onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
