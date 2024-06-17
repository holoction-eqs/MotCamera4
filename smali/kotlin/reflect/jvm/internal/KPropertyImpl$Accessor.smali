.class public abstract Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;
.super Lkotlin/reflect/jvm/internal/KCallableImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KFunction;


# virtual methods
.method public final getContainer()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;->getProperty()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    return-object p0
.end method

.method public abstract getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;
.end method

.method public abstract getProperty()Lkotlin/reflect/jvm/internal/KPropertyImpl;
.end method

.method public final isBound()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;->getProperty()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->isBound()Z

    move-result p0

    return p0
.end method

.method public final isSuspend()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method
