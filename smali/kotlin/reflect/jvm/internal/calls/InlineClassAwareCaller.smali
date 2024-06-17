.class public final Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/calls/Caller;


# instance fields
.field public final caller:Lkotlin/reflect/jvm/internal/calls/Caller;

.field public final data:Lcom/motorola/camera/fsm/ChangeEvent;

.field public final isDefault:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/calls/Caller;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Z)V
    .locals 10

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->isDefault:Z

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p3

    invoke-static {p3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/ExceptionsKt;->toInlineClass(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v4, "box-impl"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {p3, p2}, Lkotlin/ExceptionsKt;->getUnboxMethod(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string/jumbo v5, "{\n        getDeclaredMet\u2026riptor).returnType)\n    }"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "No box method found in inline class: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (calling "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isGetterOfUnderlyingPropertyOfInlineClass(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p1, Lcom/motorola/camera/fsm/ChangeEvent;

    sget-object p2, Lkotlin/ranges/IntRange;->EMPTY:Lkotlin/ranges/IntRange;

    new-array p3, v3, [Ljava/lang/reflect/Method;

    invoke-direct {p1, p2, p3, v4}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Lkotlin/ranges/IntRange;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto/16 :goto_d

    :cond_1
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    const-string v5, "descriptor.containingDeclaration"

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    instance-of p3, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz p3, :cond_3

    instance-of p1, p1, Lkotlin/reflect/jvm/internal/calls/BoundCaller;

    if-eqz p1, :cond_5

    :goto_1
    const/4 p1, -0x1

    goto :goto_3

    :cond_3
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object p3

    if-eqz p3, :cond_5

    instance-of p1, p1, Lkotlin/reflect/jvm/internal/calls/BoundCaller;

    if-nez p1, :cond_5

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isInlineClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v3

    :goto_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    goto :goto_4

    :cond_6
    move-object v6, v1

    :goto_4
    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    instance-of v6, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz v6, :cond_8

    move-object v5, p2

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;->getConstructedClass()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v5

    const-string v6, "descriptor.constructedClass"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;->isInner()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v5, :cond_9

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isInlineClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v6

    :goto_5
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v6

    :goto_6
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v5

    const-string v6, "descriptor.valueParameters"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    iget-boolean v5, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->isDefault:Z

    if-eqz v5, :cond_b

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v2

    goto :goto_8

    :cond_b
    move v5, v3

    :goto_8
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isSuspend()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v2

    goto :goto_9

    :cond_c
    move v6, v3

    :goto_9
    add-int/2addr v5, v6

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, p1

    add-int/2addr v6, v5

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->getArity(Lkotlin/reflect/jvm/internal/calls/Caller;)I

    move-result v5

    if-ne v5, v6, :cond_10

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, p1

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    new-array v5, v6, [Ljava/lang/reflect/Method;

    move v7, v3

    :goto_a
    if-ge v7, v6, :cond_f

    iget v8, v0, Lkotlin/ranges/IntProgression;->first:I

    iget v9, v0, Lkotlin/ranges/IntProgression;->last:I

    if-gt v7, v9, :cond_d

    if-gt v8, v7, :cond_d

    move v8, v2

    goto :goto_b

    :cond_d
    move v8, v3

    :goto_b
    if-eqz v8, :cond_e

    sub-int v8, v7, p1

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v8}, Lkotlin/ExceptionsKt;->toInlineClass(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-static {v8, p2}, Lkotlin/ExceptionsKt;->getUnboxMethod(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v8

    goto :goto_c

    :cond_e
    move-object v8, v1

    :goto_c
    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    new-instance p1, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {p1, v0, v5, v4}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Lkotlin/ranges/IntRange;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_d
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->data:Lcom/motorola/camera/fsm/ChangeEvent;

    return-void

    :cond_10
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->getArity(Lkotlin/reflect/jvm/internal/calls/Caller;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nCalling: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nParameter types: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->getParameterTypes()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")\nDefault: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->isDefault:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw p1
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->data:Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object v1, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v1, Lkotlin/ranges/IntRange;

    iget-object v2, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/reflect/Method;

    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "copyOf(this, size)"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v1, Lkotlin/ranges/IntProgression;->first:I

    iget v1, v1, Lkotlin/ranges/IntProgression;->last:I

    if-gt v4, v1, :cond_2

    :goto_0
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    if-eqz v5, :cond_1

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "method.returnType"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    :cond_1
    :goto_1
    aput-object v6, v3, v4

    if-eq v4, v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/calls/Caller;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, p1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public final getMember()Ljava/lang/reflect/Member;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method

.method public final getParameterTypes()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getReturnType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method
