.class public final Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $i:I

.field public final synthetic $parameterizedTypeArguments$delegate:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lkotlinx/serialization/internal/EnumDescriptor;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$r8$classId:I

    .line 1
    iput p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$i:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$parameterizedTypeArguments$delegate:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KTypeImpl;ILkotlin/Lazy;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->this$0:Ljava/lang/Object;

    iput p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$i:I

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$parameterizedTypeArguments$delegate:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$r8$classId:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$parameterizedTypeArguments$delegate:Ljava/lang/Object;

    iget v2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->$i:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    check-cast p0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getJavaType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-class p0, Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v3, v0, Ljava/lang/reflect/GenericArrayType;

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array type has been queried for a non-0th argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v4}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    check-cast v1, Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "argument.lowerBounds"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_5

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "argument.upperBounds"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_5
    move-object p0, v0

    :goto_0
    const-string/jumbo v0, "{\n                      \u2026                        }"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-generic type has been queried for arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v4}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v0

    :goto_1
    new-array v0, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v6, v1

    check-cast v6, Lkotlinx/serialization/internal/EnumDescriptor;

    iget-object v6, v6, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    new-array v7, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    sget-object v8, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE$15:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/DurationKt;->buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
