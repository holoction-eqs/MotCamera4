.class public final Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 0

    iput p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;->$this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;->$r8$classId:I

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;->$this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    return-object v0

    :goto_0
    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
