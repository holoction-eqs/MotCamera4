.class public final Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;I)V
    .locals 0

    iput p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;->this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;->$r8$classId:I

    iget-object p0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$_hashCode$2;->this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/internal/GeneratedSerializer;->childSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lkotlinx/serialization/internal/PluginHelperInterfacesKt;->EMPTY_SERIALIZER_ARRAY:[Lkotlinx/serialization/KSerializer;

    :cond_1
    return-object p0

    :pswitch_1
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->typeParameterDescriptors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p0, v0}, Lkotlinx/coroutines/SupervisorKt;->hashCodeImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlinx/serialization/internal/GeneratedSerializer;->typeParametersSerializers()V

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lkotlinx/serialization/internal/Platform_commonKt;->compactArray(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
