.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;
.source "SourceFile"


# instance fields
.field public final recordComponent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "recordComponent"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;->recordComponent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getMember()Ljava/lang/reflect/Member;
    .locals 8

    const-string v0, "recordComponent"

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;->recordComponent:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzph;->_cache:Lcom/airbnb/lottie/model/MutablePair;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v3, 0x13

    :try_start_0
    new-instance v4, Lcom/airbnb/lottie/model/MutablePair;

    const-string v5, "getType"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getAccessor"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v4, v3, v5, v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    invoke-direct {v0, v3, v2, v2}, Lcom/airbnb/lottie/model/MutablePair;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzph;->_cache:Lcom/airbnb/lottie/model/MutablePair;

    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.reflect.Method"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/Method;

    :goto_1
    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getAccessor` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getType()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;
    .locals 8

    const-string v0, "recordComponent"

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaRecordComponent;->recordComponent:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzph;->_cache:Lcom/airbnb/lottie/model/MutablePair;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v3, 0x13

    :try_start_0
    new-instance v4, Lcom/airbnb/lottie/model/MutablePair;

    const-string v5, "getType"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getAccessor"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v4, v3, v5, v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    invoke-direct {v0, v3, v2, v2}, Lcom/airbnb/lottie/model/MutablePair;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzph;->_cache:Lcom/airbnb/lottie/model/MutablePair;

    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Ljava/lang/Class;

    :goto_1
    if-eqz v2, :cond_2

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;-><init>(Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getType` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
