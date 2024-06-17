.class public final Lcom/motorola/camera/saving/ImageCaptureManager$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager$1;->$r8$classId:I

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager$1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    if-le p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    :cond_1
    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    if-le p0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
