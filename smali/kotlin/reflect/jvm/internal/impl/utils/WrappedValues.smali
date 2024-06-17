.class public abstract Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NULL_VALUE:Lkotlin/ranges/IntRange$Companion;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/ranges/IntRange$Companion;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lkotlin/ranges/IntRange$Companion;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->NULL_VALUE:Lkotlin/ranges/IntRange$Companion;

    return-void
.end method

.method public static unescapeThrowable(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;->throwable:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    throw p0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method
