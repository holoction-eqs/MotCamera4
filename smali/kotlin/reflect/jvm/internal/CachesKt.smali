.class public abstract Lkotlin/reflect/jvm/internal/CachesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

.field public static final K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    sget v1, Lkotlin/reflect/jvm/internal/CacheByClassKt;->$r8$clinit:I

    new-instance v1, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;-><init>(Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$29:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    new-instance v1, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;-><init>(Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$26:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$28:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$27:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    return-void
.end method

.method public static final getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;
    .locals 1

    const-string v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    return-object p0
.end method
