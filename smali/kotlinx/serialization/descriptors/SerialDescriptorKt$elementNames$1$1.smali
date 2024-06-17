.class public final Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_elementNames:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public elementsLeft:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 1

    iput p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$this_elementNames:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    return-void

    :cond_0
    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$this_elementNames:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    if-lez p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$r8$classId:I

    iget-object v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$this_elementNames:Lkotlinx/serialization/descriptors/SerialDescriptor;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    iget v2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    iget v2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$r8$classId:I

    const-string v0, "Operation is not supported for read-only collection"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
