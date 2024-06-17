.class public final Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;
.super Lkotlin/reflect/jvm/internal/CacheByClass;
.source "SourceFile"


# instance fields
.field public final initializer:Lkotlin/jvm/functions/Function0;

.field public volatile value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/CacheByClass;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->value:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->initializer:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->value:Ljava/lang/Object;

    sget-object v1, Lkotlin/reflect/jvm/internal/CacheByClass;->NULL_VALUE:Lkotlin/reflect/KTypeProjection$Companion;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->initializer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->value:Ljava/lang/Object;

    return-object v0
.end method
