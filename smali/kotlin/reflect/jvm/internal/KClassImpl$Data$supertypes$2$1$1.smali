.class public final Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $kotlinType:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->$r8$classId:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->$kotlinType:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->this$0:Ljava/lang/Object;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->this$1:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->$r8$classId:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->this$1:Ljava/lang/Object;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->this$0:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->$kotlinType:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    check-cast v2, Ljava/io/ByteArrayInputStream;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->extensionRegistryLite:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;

    invoke-virtual {p0, v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/ByteArrayInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-eqz v0, :cond_0

    check-cast v2, Ljava/util/List;

    iget-object v0, v0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->disableAnimationsAfterUpdate:Z

    if-eqz v0, :cond_2

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->disableAnimationsAfterUpdate:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v1, Lkotlin/reflect/jvm/internal/KClassImpl;

    iget-object v4, v1, Lkotlin/reflect/jvm/internal/KClassImpl;->jClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/KClassImpl;->jClass:Ljava/lang/Class;

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string/jumbo v0, "{\n                      \u2026ass\n                    }"

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    const-string v5, "jClass.interfaces"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v0

    const-string/jumbo v0, "{\n                      \u2026ex]\n                    }"

    :goto_1
    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No superclass of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in Java reflection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported superclass of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supertype not a class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v0

    :goto_2
    check-cast p0, Lkotlinx/serialization/internal/NamedValueDecoder;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "deserializer"

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;

    invoke-static {p0, v2}, Lkotlinx/coroutines/SupervisorKt;->decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
