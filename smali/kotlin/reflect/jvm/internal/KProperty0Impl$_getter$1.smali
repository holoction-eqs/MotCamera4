.class public final Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/KProperty0Impl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;->this$0:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;->$r8$classId:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty0Impl$_getter$1;->this$0:Lkotlin/reflect/jvm/internal/KProperty0Impl;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;-><init>(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->computeDelegateSource()Ljava/lang/reflect/Member;

    move-result-object v0

    const-string v1, "delegate method "

    const-string v2, "delegate field/method "

    const/4 v3, 0x2

    :try_start_0
    sget-object v4, Lkotlin/reflect/jvm/internal/KPropertyImpl;->EXTENSION_PROPERTY_DELEGATE:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->isBound()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v5

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->rawBoundReceiver:Ljava/lang/Object;

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->coerceToExpectedReceiverType(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v4, :cond_1

    move v4, v7

    goto :goto_2

    :cond_1
    move v4, v8

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, v6

    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->isBound()Z

    instance-of v4, v0, Ljava/lang/reflect/AccessibleObject;

    if-eqz v4, :cond_3

    move-object v4, v0

    check-cast v4, Ljava/lang/reflect/AccessibleObject;

    goto :goto_4

    :cond_3
    move-object v4, v6

    :goto_4
    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {p0}, Lkotlin/reflect/jvm/KCallablesJvm;->isAccessible(Lkotlin/reflect/jvm/internal/KProperty0Impl;)Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_5
    if-nez v0, :cond_5

    goto/16 :goto_6

    :cond_5
    instance-of p0, v0, Ljava/lang/reflect/Field;

    if-eqz p0, :cond_6

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_6

    :cond_6
    instance-of p0, v0, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_b

    move-object p0, v0

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_a

    if-eq p0, v7, :cond_8

    if-ne p0, v3, :cond_7

    move-object p0, v0

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v5, v1, v8

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v7

    const-string v2, "fieldOrMethod.parameterTypes[1]"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_6

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " should take 0, 1, or 2 parameters"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_8
    move-object p0, v0

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v1, v7, [Ljava/lang/Object;

    if-nez v5, :cond_9

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v8

    const-string v2, "fieldOrMethod.parameterTypes[0]"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    :cond_9
    aput-object v5, v1, v8

    invoke-virtual {p0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_6

    :cond_a
    check-cast v0, Ljava/lang/reflect/Method;

    new-array p0, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v6, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_6
    return-object v6

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " neither field nor method"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/window/core/WindowStrictModeException;

    invoke-direct {v0, p0, v3}, Landroidx/window/core/WindowStrictModeException;-><init>(Ljava/lang/IllegalAccessException;I)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
